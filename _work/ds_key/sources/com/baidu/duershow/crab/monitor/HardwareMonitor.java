package com.baidu.duershow.crab.monitor;

import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.duershow.crab.CrabConfig;
import com.baidu.duershow.crab.CrabSDK;
import com.baidu.duershow.crab.OnCrabDeviceInfoCallBackListener;
import com.baidu.duershow.crab.collector.CMDResultCollector;
import com.baidu.duershow.crab.collector.CPUCollector;
import com.baidu.duershow.crab.collector.IonMemCollector;
import com.baidu.duershow.crab.collector.MemoryCollector;
import com.baidu.duershow.crab.collector.StorageCollector;
import com.baidu.duershow.crab.monitor.hardware.CommonMemData;
import com.baidu.duershow.crab.monitor.hardware.StorageData;
import com.baidu.duershow.crab.monitor.hardware.TemperatureData;
import com.baidu.duershow.crab.monitor.hardware.ThermalInfoUtil;
import com.baidu.duershow.crab.util.AppSizeUtils;
import com.baidu.duershow.crab.util.BLog;
import com.baidu.duershow.crab.util.C;
import com.baidu.duershow.crab.util.CommonUtil;
import com.baidu.duershow.crab.util.FileUtils;
import com.baidu.duershow.crab.util.GetDeviceType;
import com.baidu.duershow.crab.util.Task;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HardwareMonitor {
    private static final String CPU_FREQ_DIR_NAME = "cpu0";
    private static final String CPU_FREQ_PATH = "/sys/devices/system/cpu/cpu0/cpufreq";
    private static final String GPU_LOAD_PATH_GED = "/sys/kernel/ged/hal/gpu_utilization";
    private static final String GPU_LOAD_PATH_PVR = "/d/pvr/status";
    private static final String GPU_LOAD_PATH_RK3326 = "/sys/devices/platform/ff400000.gpu/utilisation";
    private static final String ION_MEM_SUMMARY_PATH = "/sys/kernel/debug/ion/clients/clients_summary_ces";
    private static boolean isInstanceCreated = false;
    private String apTemperPath;
    private String cpuCoreNumPath;
    private String cpuTemperPath;
    private String gpuTemperPath;
    private int interval;
    private boolean isCentigradeUsed;
    private JSONArray mApkDiskData;
    private ExecutorService mApkDiskExecutor;
    private boolean mCanTicked;
    private String mEmmcBadBlock;
    private String mEmmcValue;
    private long mLastEmmcTime;
    private long mLastVendorTime;
    private boolean mStopResident;
    private Map<String, String> mStorageInfo;
    private boolean mSwitchApk;
    private boolean mThreadActive;
    private JSONArray mTimeArray;
    private MonitorThread monitorThread;
    private String pmicTemperPath;
    private JSONArray procArray;
    private boolean switchCpu;
    private boolean switchDisk;
    private boolean switchGpu;
    private boolean switchMem;
    private boolean switchTemper;

    public static HardwareMonitor getInstance() {
        isInstanceCreated = true;
        return SingletonHolder.sInstance;
    }

    public static class SingletonHolder {
        private static final HardwareMonitor sInstance = new HardwareMonitor();

        private SingletonHolder() {
        }
    }

    public static boolean isInstanceCreated() {
        return isInstanceCreated;
    }

    private HardwareMonitor() {
        this.mThreadActive = false;
        this.mStopResident = false;
        this.switchTemper = false;
        this.switchMem = false;
        this.switchCpu = false;
        this.switchGpu = false;
        this.switchDisk = false;
        this.mSwitchApk = false;
        this.mTimeArray = null;
        this.interval = 300;
        this.procArray = null;
        this.isCentigradeUsed = false;
        this.mStorageInfo = new HashMap();
        this.mEmmcValue = "00";
        this.mEmmcBadBlock = "00";
        this.mLastEmmcTime = SystemClock.uptimeMillis();
        this.mLastVendorTime = 0L;
        this.mCanTicked = false;
        this.mApkDiskData = null;
        this.mApkDiskExecutor = null;
        AppSizeUtils.getInstance().setDatasListener(new AppDataListener());
    }

    public void startMonitor() {
        if (this.monitorThread == null) {
            MonitorThread monitorThread = new MonitorThread();
            this.monitorThread = monitorThread;
            this.mThreadActive = true;
            monitorThread.start();
            BLog.i("Monitor thread start.");
            return;
        }
        BLog.w("Monitor thread is already running.");
    }

    public void pauseMonitor() {
        if (!this.mThreadActive || this.monitorThread == null) {
            return;
        }
        this.mStopResident = true;
    }

    public void resumeMonitor() {
        if (!this.mThreadActive || this.monitorThread == null) {
            return;
        }
        this.mStopResident = false;
    }

    public void stopMonitor() {
        if (this.mThreadActive && this.monitorThread != null) {
            BLog.i("UsageUpdateService.stopThread");
            this.mThreadActive = false;
            while (true) {
                try {
                    this.monitorThread.join();
                    this.monitorThread = null;
                    return;
                } catch (InterruptedException e) {
                    BLog.e("stop thread error!", e);
                }
            }
        } else {
            BLog.i("UsageUpdateService.stopThread: no thread");
        }
    }

    public boolean isMonitorStopped() {
        return this.monitorThread == null;
    }

    public class MonitorThread extends Thread {
        private MonitorThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            while (HardwareMonitor.this.monitorThread != null && HardwareMonitor.this.mThreadActive) {
                BLog.d("hardware monitor thread is running...");
                SystemClock.sleep(HardwareMonitor.this.interval * 1000);
                if (HardwareMonitor.this.monitorThread != null && HardwareMonitor.this.mThreadActive && !HardwareMonitor.this.mStopResident) {
                    HardwareMonitor.this.excuteMonitorTask();
                }
            }
        }
    }

    public class AppDataListener implements AppSizeUtils.OnBackListener {
        private AppDataListener() {
        }

        @Override // com.baidu.duershow.crab.util.AppSizeUtils.OnBackListener
        public void backData(JSONObject jSONObject, JSONArray jSONArray, JSONObject jSONObject2, boolean z, long j, long j2, long j3) {
            try {
                jSONObject2.put("proc_cache", String.valueOf(j / 1024));
                jSONObject2.put("proc_userdata", String.valueOf(j2 / 1024));
                jSONObject2.put("proc_codesize", String.valueOf(j3 / 1024));
                jSONArray.put(jSONObject2);
                if (z) {
                    if (jSONArray.length() > 0) {
                        jSONObject.put("proc_data", jSONArray);
                    }
                    OnCrabDeviceInfoCallBackListener onCrabDeviceInfoCallBackListener = CrabConfig.onCrabDeviceInfoCallBackListener;
                    if (onCrabDeviceInfoCallBackListener != null) {
                        onCrabDeviceInfoCallBackListener.onTransferData(new JSONObject(jSONObject) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.AppDataListener.1
                            public final /* synthetic */ JSONObject val$healthData;

                            {
                                this.val$healthData = jSONObject;
                                put("health_data", jSONObject);
                            }
                        }.toString());
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void excuteMonitorTask() throws Throwable {
        long procMemInfo;
        try {
            if (this.mSwitchApk) {
                BLog.i("Apk cache monitor is opened!");
                JSONArray jSONArray = this.mTimeArray;
                if (jSONArray != null && jSONArray.length() > 0) {
                    JSONArray jSONArray2 = new JSONArray(this.mTimeArray.toString());
                    BLog.i("After:" + jSONArray2.toString());
                    int i = new GregorianCalendar().get(11);
                    int i2 = jSONArray2.getInt(0);
                    if (i < i2) {
                        BLog.i("Take time is:" + i2);
                        this.mCanTicked = true;
                    } else if (this.mCanTicked) {
                        BLog.i("Start collecting apk disk now...");
                        this.mCanTicked = false;
                        if (this.mApkDiskExecutor == null) {
                            this.mApkDiskExecutor = Executors.newSingleThreadExecutor(new ApkDiskThreadFactory());
                        }
                        this.mApkDiskExecutor.execute(new CollectApkDiskTask(new IApkDiskCallback() { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.1
                            @Override // com.baidu.duershow.crab.monitor.IApkDiskCallback
                            public void onCollectFinished(JSONArray jSONArray3) {
                                BLog.i("Collected apk disk data:" + jSONArray3.toString());
                                try {
                                    HardwareMonitor.this.mApkDiskData = new JSONArray(jSONArray3.toString());
                                } catch (Exception e) {
                                    BLog.e("CollectFinished callback error!", e);
                                    HardwareMonitor.this.mApkDiskData = null;
                                }
                            }
                        }));
                    }
                }
            } else {
                BLog.i("Apk cache monitor is closed!");
            }
        } catch (Exception e) {
            BLog.e("Apk Disk error!", e);
        }
        try {
            List<String> reportByLineFromTask = CommonUtil.getReportByLineFromTask(new Task(C.CPU_INFO, C.DUMP_CPU_INFO));
            JSONObject jSONObject = new JSONObject();
            if (this.mApkDiskData != null) {
                jSONObject.put("apk_disk", new JSONArray(this.mApkDiskData.toString()));
                this.mApkDiskData = null;
            }
            if (this.switchTemper) {
                for (TemperatureData temperatureData : gatherTemp()) {
                    jSONObject.put(temperatureData.getJsonKey(), new JSONObject(temperatureData, reportByLineFromTask) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.2
                        public final /* synthetic */ List val$cpuInfosFromCmd;
                        public final /* synthetic */ TemperatureData val$temperatureData;

                        {
                            this.val$temperatureData = temperatureData;
                            this.val$cpuInfosFromCmd = reportByLineFromTask;
                            put("tempType", temperatureData.getSensorType());
                            put("tempValue", String.valueOf(temperatureData.getTemperature()));
                            if (temperatureData.isCpuTemperature()) {
                                put("cpuCoreNum", temperatureData.getCpuCoreNum());
                                put("subModel", CrabSDK.getCrabConfig().getSubModel());
                                JSONObject cpuFreqInfo = HardwareMonitor.this.getCpuFreqInfo(reportByLineFromTask);
                                if (cpuFreqInfo != null) {
                                    put("cpuFreq", cpuFreqInfo);
                                }
                            }
                        }
                    });
                }
            }
            if (this.switchDisk) {
                StorageData storageDataGatherStorage = gatherStorage();
                JSONObject jSONObject2 = new JSONObject();
                if (storageDataGatherStorage != null) {
                    Map<String, JSONArray> data = storageDataGatherStorage.getData();
                    for (String str : data.keySet()) {
                        JSONArray jSONArray3 = data.get(str);
                        jSONObject2.put(str + "_ttl", jSONArray3.opt(0));
                        jSONObject2.put(str + "_use", jSONArray3.opt(1));
                    }
                }
                jSONObject.put("disk", jSONObject2);
            }
            if (this.switchMem) {
                jSONObject.put("common_mem", new JSONObject(gatherMem()) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.3
                    public final /* synthetic */ CommonMemData val$memData;

                    {
                        this.val$memData = commonMemData;
                        put("mem_ttl", String.valueOf(commonMemData.getTotalMem()));
                        put("mem_avl", String.valueOf(commonMemData.getAvailMem()));
                        put("swap_ttl", String.valueOf(commonMemData.getSwapTotal()));
                        put("swap_avl", String.valueOf(commonMemData.getSwapFree()));
                    }
                });
                jSONObject.put("cg_mem", new JSONObject(CommonUtil.getMemArray()) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.4
                    public final /* synthetic */ String[] val$memArray;

                    {
                        this.val$memArray = strArr;
                        put("mem_usage", strArr[0]);
                        put("memsw_usage", strArr[1]);
                    }
                });
                if (FileUtils.fileExists(ION_MEM_SUMMARY_PATH)) {
                    JSONArray ionMem = IonMemCollector.getIonMem(ION_MEM_SUMMARY_PATH);
                    if (ionMem != null && ionMem.length() > 0) {
                        jSONObject.put("ion_mem", ionMem);
                    } else {
                        BLog.e("IONMEM ionData is null");
                    }
                }
            }
            if (this.switchCpu) {
                jSONObject.put("common_cpu", new JSONObject(CPUCollector.getProcCpuPercent(reportByLineFromTask, "TOTAL"), CPUCollector.getCpuLoadAdjPercent(reportByLineFromTask)) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.5
                    public final /* synthetic */ float val$total;
                    public final /* synthetic */ float val$totalAdj;

                    {
                        this.val$total = f;
                        this.val$totalAdj = f;
                        put("usage_ttl", String.valueOf(f));
                        put("usage_ttl_adj", String.valueOf(f));
                    }
                });
            }
            if (this.switchGpu) {
                jSONObject.put("common_gpu", new JSONObject(gatherGpu()) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.6
                    public final /* synthetic */ String val$total;

                    {
                        this.val$total = str;
                        put("usage_ttl", String.valueOf(str));
                    }
                });
            }
            OnCrabDeviceInfoCallBackListener onCrabDeviceInfoCallBackListener = CrabConfig.onCrabDeviceInfoCallBackListener;
            if (onCrabDeviceInfoCallBackListener != null) {
                onCrabDeviceInfoCallBackListener.onAddScreenData(jSONObject);
            }
            if (SystemClock.uptimeMillis() - this.mLastEmmcTime >= 86400000) {
                if (GetDeviceType.cpuType.equals(GetDeviceType.MT8188)) {
                    this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.PATH_EMMC_BAD_BLOCK_INFO);
                    this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.PATH_EMMC_VALUE_INFO);
                } else if (GetDeviceType.cpuType.equals(GetDeviceType.MT810)) {
                    this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.MT810_UFS_BAD_BLOCK_INFO);
                    this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.MT810_UFS_VALUE_INFO);
                } else if (GetDeviceType.cpuType.equals(GetDeviceType.T616)) {
                    this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.T616_UFS_BAD_BLOCK_INFO);
                    this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.T616_UFS_VALUE_INFO);
                } else {
                    this.mEmmcBadBlock = gatherEmmcInfo(535);
                    this.mEmmcValue = gatherEmmcInfo(537);
                }
                this.mLastEmmcTime = SystemClock.uptimeMillis();
            }
            jSONObject.put("flash", new JSONObject() { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.7
                {
                    put("emmc", HardwareMonitor.this.mEmmcValue);
                    put("emmc_badblock", HardwareMonitor.this.mEmmcBadBlock);
                }
            });
            jSONObject.put("reg", getRegInfo());
            if (GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS10E) || GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS13E) || GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS15E)) {
                if (this.mLastVendorTime == 0 && SystemClock.uptimeMillis() - this.mLastVendorTime >= 600000) {
                    BLog.i("first boot, and more than 10min, collect vendor info....");
                    jSONObject.put("vendor", gatherVendorInfo());
                    this.mLastVendorTime = SystemClock.uptimeMillis();
                }
            } else if (SystemClock.uptimeMillis() - this.mLastVendorTime >= 86400000) {
                BLog.i("Last vendor more than 24h, collect again....");
                jSONObject.put("vendor", gatherVendorInfo());
                this.mLastVendorTime = SystemClock.uptimeMillis();
            }
            if (this.procArray != null) {
                JSONArray jSONArray4 = new JSONArray();
                JSONArray jSONArray5 = new JSONArray(this.procArray.toString());
                int length = jSONArray5.length();
                int i3 = 0;
                while (i3 < length) {
                    String strOptString = jSONArray5.optString(i3);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("proc_name", strOptString);
                    if (this.switchCpu) {
                        jSONObject3.put("proc_usage", String.valueOf(CPUCollector.getProcCpuPercent(reportByLineFromTask, strOptString)));
                    }
                    if (this.switchMem) {
                        List<String> reportByLineFromTask2 = CommonUtil.getReportByLineFromTask(new Task(C.MEM_INFO, " dumpsys meminfo --local  " + strOptString));
                        if (GetDeviceType.androidVersion.compareTo(GetDeviceType.ANDROID12) >= 0) {
                            procMemInfo = MemoryCollector.getProcMemInfo(reportByLineFromTask2, "TOTAL PSS:");
                        } else {
                            procMemInfo = MemoryCollector.getProcMemInfo(reportByLineFromTask2, "TOTAL:");
                        }
                        long procMemInfo2 = MemoryCollector.getProcMemInfo(reportByLineFromTask2, "Dalvik Heap");
                        long procMemInfo3 = MemoryCollector.getProcMemInfo(reportByLineFromTask2, "Native Heap");
                        jSONObject3.put("proc_ttl", String.valueOf(procMemInfo));
                        jSONObject3.put("proc_nat", String.valueOf(procMemInfo3));
                        jSONObject3.put("proc_jvm", String.valueOf(procMemInfo2));
                    }
                    int i4 = i3 + 1;
                    AppSizeUtils.getInstance().getAppStorageInfo(CrabSDK.getCrabConfig().getContext(), strOptString, i4 == length, jSONObject, jSONArray4, jSONObject3);
                    i3 = i4;
                }
                return;
            }
            BLog.e("ProcArray is null, there is no proc data to collect!");
            OnCrabDeviceInfoCallBackListener onCrabDeviceInfoCallBackListener2 = CrabConfig.onCrabDeviceInfoCallBackListener;
            if (onCrabDeviceInfoCallBackListener2 != null) {
                onCrabDeviceInfoCallBackListener2.onTransferData(new JSONObject(jSONObject) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.8
                    public final /* synthetic */ JSONObject val$heathData;

                    {
                        this.val$heathData = jSONObject;
                        put("health_data", jSONObject);
                    }
                }.toString());
            }
        } catch (Exception e2) {
            BLog.e("excuteMonitorTask error!", e2);
        }
    }

    private boolean fillTemperatureData(String str, TemperatureData temperatureData) {
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return false;
        }
        temperatureData.setSensorType(ThermalInfoUtil.getCpuTempType(str));
        long cpuTempValue = ThermalInfoUtil.getCpuTempValue(str);
        if (!this.isCentigradeUsed) {
            cpuTempValue /= 1000;
        }
        temperatureData.setTemperature(cpuTempValue);
        return true;
    }

    private long round1000(long j) {
        return (j + 500) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject getCpuFreqInfo(List<String> list) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            try {
                long jRound1000 = round1000(ThermalInfoUtil.getFileContentAsLong("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
                long jRound1001 = round1000(ThermalInfoUtil.getFileContentAsLong("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"));
                long jRound1002 = round1000(ThermalInfoUtil.getFileContentAsLong("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"));
                long jRound1003 = round1000(CPUCollector.getCpuAverageFrequency(list));
                if (jRound1000 == 0) {
                    BLog.i("ignore freq value for: cpu0 maxFreq: " + jRound1000 + " curFreq: " + jRound1002);
                    return null;
                }
                try {
                    jSONObject2.put(CPU_FREQ_DIR_NAME, new JSONObject(jRound1000, jRound1001, jRound1002, jRound1003) { // from class: com.baidu.duershow.crab.monitor.HardwareMonitor.9
                        public final /* synthetic */ long val$maxFreq;
                        public final /* synthetic */ long val$scalingAvgFreq;
                        public final /* synthetic */ long val$scalingCurFreq;
                        public final /* synthetic */ long val$scalingMaxFreq;

                        {
                            this.val$maxFreq = jRound1000;
                            this.val$scalingMaxFreq = jRound1001;
                            this.val$scalingCurFreq = jRound1002;
                            this.val$scalingAvgFreq = jRound1003;
                            put("max_freq", String.valueOf(jRound1000));
                            put("scaling_max", String.valueOf(jRound1001));
                            put("scaling_cur", String.valueOf(jRound1002));
                            put("scaling_avg", String.valueOf(jRound1003));
                        }
                    });
                    return jSONObject2;
                } catch (JSONException e) {
                    e = e;
                    jSONObject = null;
                    BLog.e("catch exception: ", e);
                    return jSONObject;
                }
            } catch (Exception e2) {
                BLog.e("catch exception: ", e2);
                return null;
            }
        } catch (JSONException e3) {
            e = e3;
            jSONObject = null;
        }
    }

    private List<TemperatureData> gatherTemp() {
        ArrayList arrayList = new ArrayList();
        TemperatureData temperatureData = new TemperatureData(TemperatureData.CPU_TEMP_KEY);
        fillTemperatureData(this.cpuTemperPath, temperatureData);
        if (!TextUtils.isEmpty(this.cpuCoreNumPath) && new File(this.cpuCoreNumPath).exists()) {
            temperatureData.setCpuCoreNum(FileUtils.getLineByPath(this.cpuCoreNumPath));
        }
        arrayList.add(temperatureData);
        if (!TextUtils.isEmpty(this.pmicTemperPath)) {
            TemperatureData temperatureData2 = new TemperatureData(TemperatureData.PMIC_TEMP_KEY);
            if (fillTemperatureData(this.pmicTemperPath, temperatureData2)) {
                arrayList.add(temperatureData2);
            }
        }
        if (!TextUtils.isEmpty(this.apTemperPath)) {
            TemperatureData temperatureData3 = new TemperatureData(TemperatureData.AP_TEMP_KEY);
            if (fillTemperatureData(this.apTemperPath, temperatureData3)) {
                arrayList.add(temperatureData3);
            }
        }
        if (!TextUtils.isEmpty(this.gpuTemperPath)) {
            TemperatureData temperatureData4 = new TemperatureData(TemperatureData.GPU_TEMP_KEY);
            if (fillTemperatureData(this.gpuTemperPath, temperatureData4)) {
                arrayList.add(temperatureData4);
            }
        }
        return arrayList;
    }

    private StorageData gatherStorage() {
        Map<String, String> map = this.mStorageInfo;
        if (map == null || map.isEmpty()) {
            return null;
        }
        StorageData storageData = new StorageData();
        for (String str : this.mStorageInfo.keySet()) {
            String str2 = this.mStorageInfo.get(str);
            if (new File(str2).exists()) {
                long totalDiskSize = StorageCollector.getTotalDiskSize(str2);
                long availableDiskSize = StorageCollector.getAvailableDiskSize(str2);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(totalDiskSize / 1024);
                jSONArray.put((totalDiskSize - availableDiskSize) / 1024);
                HashMap map2 = new HashMap();
                map2.put(str, jSONArray);
                storageData.addData(map2);
            }
        }
        return storageData;
    }

    private CommonMemData gatherMem() {
        CommonMemData commonMemData = new CommonMemData();
        commonMemData.setTotalMem(MemoryCollector.getMemInfoLong("MemTotal"));
        commonMemData.setAvailMem(MemoryCollector.getMemAvailable());
        commonMemData.setSwapTotal(MemoryCollector.getMemInfoLong("SwapTotal"));
        commonMemData.setSwapFree(MemoryCollector.getMemInfoLong("SwapFree"));
        return commonMemData;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0050 A[Catch: IOException -> 0x004c, TRY_LEAVE, TryCatch #8 {IOException -> 0x004c, blocks: (B:27:0x0048, B:31:0x0050), top: B:83:0x0048 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0087 A[Catch: IOException -> 0x0083, TRY_LEAVE, TryCatch #2 {IOException -> 0x0083, blocks: (B:45:0x007f, B:49:0x0087), top: B:72:0x007f }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    private String gatherGpu() throws Throwable {
        int length;
        Throwable th;
        BufferedReader bufferedReader;
        String str;
        FileReader fileReader;
        String[] strArrSplit;
        if (FileUtils.fileExists(GPU_LOAD_PATH_PVR)) {
            String line = null;
            line = null;
            bufferedReader = null;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    length = new FileReader(GPU_LOAD_PATH_PVR);
                    try {
                        bufferedReader = new BufferedReader(length, 8192);
                        do {
                            try {
                                line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                            } catch (Exception e) {
                                e = e;
                                String str2 = line;
                                bufferedReader2 = bufferedReader;
                                str = str2;
                                fileReader = length;
                                BLog.e("get gpuload fail.", e);
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                        if (fileReader != 0) {
                                            fileReader.close();
                                        }
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        line = str;
                                        length = fileReader;
                                        if (line != null) {
                                        }
                                        return CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
                                    }
                                } else if (fileReader != 0) {
                                    fileReader.close();
                                }
                                line = str;
                                length = fileReader;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } while (!line.startsWith("GPU Utilisation"));
                        try {
                            bufferedReader.close();
                            length.close();
                            length = length;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            length = length;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        str = null;
                        fileReader = length;
                    }
                } catch (Throwable th3) {
                    String str3 = line;
                    th = th3;
                    bufferedReader = str3;
                }
            } catch (Exception e5) {
                e = e5;
                str = null;
                fileReader = 0;
            } catch (Throwable th4) {
                length = 0;
                th = th4;
                bufferedReader = 0;
            }
            if (line != null || (strArrSplit = line.split(":")) == null || (length = strArrSplit.length) != 2) {
                return CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
            }
            BLog.i(line);
            return strArrSplit[1].replace("%", "").trim();
            if (bufferedReader != 0) {
                try {
                    bufferedReader.close();
                    if (length != 0) {
                        length.close();
                    }
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            } else if (length != 0) {
                length.close();
            }
            throw th;
        }
        if (FileUtils.fileExists(GPU_LOAD_PATH_RK3326)) {
            try {
                String lineByPath = FileUtils.getLineByPath(GPU_LOAD_PATH_RK3326);
                return !TextUtils.isEmpty(lineByPath) ? lineByPath : CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
            } catch (Exception e7) {
                e7.printStackTrace();
                return CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
            }
        }
        if (!FileUtils.fileExists(GPU_LOAD_PATH_GED)) {
            return CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
        }
        try {
            String lineByPath2 = FileUtils.getLineByPath(GPU_LOAD_PATH_GED);
            return !TextUtils.isEmpty(lineByPath2) ? lineByPath2.substring(0, lineByPath2.indexOf(" ")) : CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
        } catch (Exception e8) {
            e8.printStackTrace();
            return CMDResultCollector.IDLE_PID_LOG_LOG_NUM;
        }
    }

    private String gatherEmmcInfo(int i) throws Throwable {
        if (TextUtils.isEmpty(C.Vendor.sPathEmmcValue) || i <= 0) {
            return "00";
        }
        String lineByPath = FileUtils.getLineByPath(C.Vendor.sPathEmmcValue);
        if (TextUtils.isEmpty(lineByPath)) {
            return "00";
        }
        int i2 = i + 1;
        if (lineByPath.length() >= i2) {
            String strSubstring = lineByPath.substring(i - 1, i2);
            BLog.i("Emmc bit is: " + i + " num is:" + strSubstring);
            return strSubstring;
        }
        BLog.i("Emmc length is not long enough");
        return "00";
    }

    private String gatherEmmcEolAndLife(String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return "00";
        }
        try {
            String lineByPath = FileUtils.getLineByPath(str);
            if (TextUtils.isEmpty(lineByPath)) {
                return "00";
            }
            String[] strArrSplit = lineByPath.split(" ");
            String str2 = strArrSplit[0];
            for (String str3 : strArrSplit) {
                if (str3.compareTo(str2) > 0) {
                    str2 = str3;
                }
            }
            BLog.i("Emmc path: " + str + ", Emmc num is:" + str2);
            return str2.replace("0x", "");
        } catch (Exception e) {
            e.printStackTrace();
            return "00";
        }
    }

    public JSONObject gatherVendorInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mmc_manfid", FileUtils.getLineByPath(C.Vendor.sPathEmmcMid));
            jSONObject.put("mmc_name", FileUtils.getLineByPath(C.Vendor.sPathEmmcName));
            jSONObject.put("lcm", FileUtils.getLineByPath(C.Vendor.PATH_LCM_INFO));
            jSONObject.put("tp", FileUtils.getLineByPath(C.Vendor.PATH_TP_INFO));
            if (GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS10E) || GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS15E) || GetDeviceType.model.equals(GetDeviceType.DUEROS_XPS13E)) {
                jSONObject.put("camera", new JSONObject(FileUtils.getMultipleCameraData(C.Vendor.PATH_CAMERA_INFO)));
            } else {
                jSONObject.put("camera", FileUtils.getLineByPath(C.Vendor.PATH_CAMERA_INFO));
            }
            jSONObject.put("adc", FileUtils.getLineByPath(C.Vendor.PATH_ADC_INFO));
            jSONObject.put("charger", FileUtils.getLineByPath(C.Vendor.PATH_CHARGER_INFO));
            jSONObject.put("battery_id", FileUtils.getLineByPath(C.Vendor.PATH_BATTERY_INFO));
        } catch (Exception e) {
            BLog.e("Gather vendor info error!", e);
        }
        return jSONObject;
    }

    public JSONObject getRegInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rtc_reg", FileUtils.getLineByPath(C.PATH_RTC_REG_INFO));
        } catch (Exception e) {
            BLog.e("Get REG info error!", e);
        }
        return jSONObject;
    }

    public void setSwitchTemper(int i) {
        this.switchTemper = i != 0;
    }

    public void setSwitchMem(int i) {
        this.switchMem = i != 0;
    }

    public void setSwitchCpu(int i) {
        this.switchCpu = i != 0;
    }

    public void setSwitchGpu(int i) {
        this.switchGpu = i != 0;
    }

    public void setSwitchDisk(int i) {
        this.switchDisk = i != 0;
    }

    public void setInterval(int i) {
        this.interval = i;
    }

    public void setProcArray(JSONArray jSONArray) {
        this.procArray = jSONArray;
    }

    public JSONArray getProcArray() {
        return this.procArray;
    }

    public void setSwitchApk(int i) {
        this.mSwitchApk = i != 0;
    }

    public void setTimeArray(JSONArray jSONArray) {
        this.mTimeArray = jSONArray;
    }

    public void setTemperaturePath(String str) {
        this.cpuTemperPath = str;
    }

    public void setPmicTemperaturePath(String str) {
        this.pmicTemperPath = str;
    }

    public void setApTemperaturePath(String str) {
        this.apTemperPath = str;
    }

    public void setGpuTemperaturePath(String str) {
        this.gpuTemperPath = str;
    }

    public void setCpuCoreNumPath(String str) {
        this.cpuCoreNumPath = str;
    }

    public void setIsCentigradeUsed(boolean z) {
        this.isCentigradeUsed = z;
    }

    public void setStoragePathInfo(Map<String, String> map) {
        this.mStorageInfo = map;
    }

    public void setEmmcPathAndInit(String str) {
        C.Vendor.sPathEmmcValue = "/sys/kernel/debug/" + str + "/ext_csd";
        C.Vendor.sPathEmmcMid = "/sys/class/mmc_host/" + str + "/manfid";
        C.Vendor.sPathEmmcName = "/sys/class/mmc_host/" + str + "/name";
        StringBuilder sb = new StringBuilder();
        sb.append("Emmc getCpuType: ");
        sb.append(GetDeviceType.cpuType);
        BLog.i(sb.toString());
        if (GetDeviceType.cpuType.equals(GetDeviceType.MT8188)) {
            this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.PATH_EMMC_BAD_BLOCK_INFO);
            this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.PATH_EMMC_VALUE_INFO);
        } else if (GetDeviceType.cpuType.equals(GetDeviceType.MT810)) {
            this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.MT810_UFS_BAD_BLOCK_INFO);
            this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.MT810_UFS_VALUE_INFO);
        } else if (GetDeviceType.cpuType.equals(GetDeviceType.T616)) {
            this.mEmmcBadBlock = gatherEmmcEolAndLife(C.Vendor.T616_UFS_BAD_BLOCK_INFO);
            this.mEmmcValue = gatherEmmcEolAndLife(C.Vendor.T616_UFS_VALUE_INFO);
        } else {
            this.mEmmcBadBlock = gatherEmmcInfo(535);
            this.mEmmcValue = gatherEmmcInfo(537);
        }
        this.mLastEmmcTime = SystemClock.uptimeMillis();
    }

    public static class ApkDiskThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "APK-DISK-TASK");
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }
}
