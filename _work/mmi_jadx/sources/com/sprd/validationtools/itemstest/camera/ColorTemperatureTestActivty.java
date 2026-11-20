package com.sprd.validationtools.itemstest.camera;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public class ColorTemperatureTestActivty extends BaseActivity {
    private static final String TAG = "ColorTemperatureTestActivty";
    private static final String tcs3430_als_ir1 = "/sys/devices/virtual/input/input5/tcs3430_als_ir1";
    private static final String tcs3430_als_x = "/sys/devices/virtual/input/input5/tcs3430_als_x";
    private static final String tcs3430_als_y = "/sys/devices/virtual/input/input5/tcs3430_als_y";
    private static final String tcs3430_als_z = "/sys/devices/virtual/input/input5/tcs3430_als_z";
    private static final String tcs3430_calibration_file = "/mnt/vendor/productinfo/tcs3430_calibration.txt";
    private static final String tcs3430_calibration_golden_file = "/mnt/vendor/productinfo/tcs3430_calibration_golden.txt";
    private TextView mGoldenTitleView = null;
    private TextView mGoldenxDataView = null;
    private TextView mGoldenyDataView = null;
    private TextView mGoldenzDataView = null;
    private TextView mGoldenirDataView = null;
    private TextView mUnitTitleView = null;
    private TextView mUnitxDataView = null;
    private TextView mUnityDataView = null;
    private TextView mUnitzDataView = null;
    private TextView mUnitirDataView = null;
    private Button mButtonStart = null;
    private int mtcs3430_als_x = 0;
    private int mtcs3430_als_y = 0;
    private int mtcs3430_als_z = 0;
    private int mtcs3430_als_ir1 = 0;
    private int g_mtcs3430_als_x = 0;
    private int g_mtcs3430_als_y = 0;
    private int g_mtcs3430_als_z = 0;
    private int g_mtcs3430_als_ir1 = 0;
    private Handler mHandler = new Handler();
    private AsyncTask<Void, Void, Void> mColorTemperatureAsyncTask = null;

    private void saveaGoldendataToProdNV(Context context) throws Resources.NotFoundException, NumberFormatException {
        try {
            String[] stringArray = context.getResources().getStringArray(R.array.color_templeture_golden_data);
            int length = stringArray.length;
            Log.d(TAG, "saveaGoldendataToProdNV length=" + length);
            if (length < 4) {
                return;
            }
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            for (int i5 = 0; i5 < length; i5++) {
                Log.d(TAG, "i=" + i5 + ",goldenDatas[i]=" + stringArray[i5]);
                if (i5 == 0) {
                    i = Integer.parseInt(stringArray[i5]);
                }
                if (i5 == 1) {
                    i2 = Integer.parseInt(stringArray[i5]);
                }
                if (i5 == 2) {
                    i3 = Integer.parseInt(stringArray[i5]);
                }
                if (i5 == 3) {
                    i4 = Integer.parseInt(stringArray[i5]);
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(i);
            stringBuffer.append("\n");
            stringBuffer.append(i2);
            stringBuffer.append("\n");
            stringBuffer.append(i3);
            stringBuffer.append("\n");
            stringBuffer.append(i4);
            String string = stringBuffer.toString();
            Log.d(TAG, "saveaGoldendataToProdNV content=" + string + "\n");
            Log.d(TAG, "saveaGoldendataToProdNV tcs3430_calibration_golden_file=/mnt/vendor/productinfo/tcs3430_calibration_golden.txt\n");
            FileUtils.writeFile(tcs3430_calibration_golden_file, string);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void loadGoldenDataFromResources(Context context) throws Resources.NotFoundException {
        if (context == null) {
            return;
        }
        try {
            String[] stringArray = context.getResources().getStringArray(R.array.color_templeture_golden_data);
            int length = stringArray.length;
            Log.d(TAG, "loadGoldenDataFromResources length=" + length);
            if (length < 4) {
                return;
            }
            for (int i = 0; i < length; i++) {
                Log.d(TAG, "i=" + i + ",goldenDatas[i]=" + stringArray[i]);
                if (i == 0) {
                    this.g_mtcs3430_als_x = Integer.parseInt(stringArray[i]);
                }
                if (i == 1) {
                    this.g_mtcs3430_als_y = Integer.parseInt(stringArray[i]);
                }
                if (i == 2) {
                    this.g_mtcs3430_als_z = Integer.parseInt(stringArray[i]);
                }
                if (i == 3) {
                    this.g_mtcs3430_als_ir1 = Integer.parseInt(stringArray[i]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010a A[Catch: IOException -> 0x0106, TRY_LEAVE, TryCatch #0 {IOException -> 0x0106, blocks: (B:59:0x0102, B:63:0x010a), top: B:67:0x0102 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void loadGoldenDataFromProdNV() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 274
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.itemstest.camera.ColorTemperatureTestActivty.loadGoldenDataFromProdNV():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveColorTemperatureInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("\n");
        stringBuffer.append(str2);
        stringBuffer.append("\n");
        stringBuffer.append(str3);
        stringBuffer.append("\n");
        stringBuffer.append(str4);
        stringBuffer.append("\n");
        stringBuffer.append(str5);
        stringBuffer.append("\n");
        stringBuffer.append(str6);
        stringBuffer.append("\n");
        stringBuffer.append(str7);
        stringBuffer.append("\n");
        stringBuffer.append(str8);
        String string = stringBuffer.toString();
        Log.d(TAG, "saveColorTemperatureInfo content=" + string + "\n");
        Log.d(TAG, "saveColorTemperatureInfo tcs3430_calibration_file=/mnt/vendor/productinfo/tcs3430_calibration.txt\n");
        FileUtils.writeFile(tcs3430_calibration_file, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showColorTemperatureInfo(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.ColorTemperatureTestActivty.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ColorTemperatureTestActivty.this.mGoldenxDataView != null) {
                        ColorTemperatureTestActivty.this.mGoldenxDataView.setText("golden_x: " + str);
                    }
                    if (ColorTemperatureTestActivty.this.mGoldenyDataView != null) {
                        ColorTemperatureTestActivty.this.mGoldenyDataView.setText("golden_y: " + str2);
                    }
                    if (ColorTemperatureTestActivty.this.mGoldenzDataView != null) {
                        ColorTemperatureTestActivty.this.mGoldenzDataView.setText("golden_z: " + str3);
                    }
                    if (ColorTemperatureTestActivty.this.mGoldenirDataView != null) {
                        ColorTemperatureTestActivty.this.mGoldenirDataView.setText("golden_ir: " + str4);
                    }
                    if (ColorTemperatureTestActivty.this.mUnitxDataView != null) {
                        ColorTemperatureTestActivty.this.mUnitxDataView.setText("unit_x: " + str5);
                    }
                    if (ColorTemperatureTestActivty.this.mUnityDataView != null) {
                        ColorTemperatureTestActivty.this.mUnityDataView.setText("unit_y: " + str6);
                    }
                    if (ColorTemperatureTestActivty.this.mUnitzDataView != null) {
                        ColorTemperatureTestActivty.this.mUnitzDataView.setText("unit_z: " + str7);
                    }
                    if (ColorTemperatureTestActivty.this.mUnitirDataView != null) {
                        ColorTemperatureTestActivty.this.mUnitirDataView.setText("unit_ir: " + str8);
                    }
                }
            });
        }
    }

    class ColorTemperatureAsyncTask extends AsyncTask<Void, Void, Void> {
        ColorTemperatureAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) throws Throwable {
            ColorTemperatureTestActivty.this.readColorTemperature();
            ColorTemperatureTestActivty.this.loadGoldenDataFromProdNV();
            if (ColorTemperatureTestActivty.this.g_mtcs3430_als_x <= 0) {
                ColorTemperatureTestActivty colorTemperatureTestActivty = ColorTemperatureTestActivty.this;
                colorTemperatureTestActivty.g_mtcs3430_als_x = colorTemperatureTestActivty.mtcs3430_als_x;
            }
            if (ColorTemperatureTestActivty.this.g_mtcs3430_als_y <= 0) {
                ColorTemperatureTestActivty colorTemperatureTestActivty2 = ColorTemperatureTestActivty.this;
                colorTemperatureTestActivty2.g_mtcs3430_als_y = colorTemperatureTestActivty2.mtcs3430_als_y;
            }
            if (ColorTemperatureTestActivty.this.g_mtcs3430_als_z <= 0) {
                ColorTemperatureTestActivty colorTemperatureTestActivty3 = ColorTemperatureTestActivty.this;
                colorTemperatureTestActivty3.g_mtcs3430_als_z = colorTemperatureTestActivty3.mtcs3430_als_z;
            }
            if (ColorTemperatureTestActivty.this.g_mtcs3430_als_ir1 <= 0) {
                ColorTemperatureTestActivty colorTemperatureTestActivty4 = ColorTemperatureTestActivty.this;
                colorTemperatureTestActivty4.g_mtcs3430_als_ir1 = colorTemperatureTestActivty4.mtcs3430_als_ir1;
            }
            ColorTemperatureTestActivty colorTemperatureTestActivty5 = ColorTemperatureTestActivty.this;
            colorTemperatureTestActivty5.showColorTemperatureInfo(String.valueOf(colorTemperatureTestActivty5.g_mtcs3430_als_x), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_y), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_z), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_ir1), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_x), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_y), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_z), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_ir1));
            ColorTemperatureTestActivty colorTemperatureTestActivty6 = ColorTemperatureTestActivty.this;
            colorTemperatureTestActivty6.saveColorTemperatureInfo(String.valueOf(colorTemperatureTestActivty6.g_mtcs3430_als_x), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_y), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_z), String.valueOf(ColorTemperatureTestActivty.this.g_mtcs3430_als_ir1), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_x), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_y), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_z), String.valueOf(ColorTemperatureTestActivty.this.mtcs3430_als_ir1));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readColorTemperature() {
        this.mtcs3430_als_x = FileUtils.getIntFromFile(tcs3430_als_x);
        this.mtcs3430_als_y = FileUtils.getIntFromFile(tcs3430_als_y);
        this.mtcs3430_als_z = FileUtils.getIntFromFile(tcs3430_als_z);
        this.mtcs3430_als_ir1 = FileUtils.getIntFromFile(tcs3430_als_ir1);
        Log.d(TAG, "readColorTemperature mtcs3430_als_x=" + this.mtcs3430_als_x + ",mtcs3430_als_y=" + this.mtcs3430_als_y + ",mtcs3430_als_z=" + this.mtcs3430_als_z + ",mtcs3430_als_ir1=" + this.mtcs3430_als_ir1);
    }

    private void initView() {
        this.mGoldenTitleView = (TextView) findViewById(R.id.golden_title);
        this.mGoldenxDataView = (TextView) findViewById(R.id.x_data_golden);
        this.mGoldenyDataView = (TextView) findViewById(R.id.y_data_golden);
        this.mGoldenzDataView = (TextView) findViewById(R.id.z_data_golden);
        this.mGoldenirDataView = (TextView) findViewById(R.id.ir_data_golden);
        this.mUnitTitleView = (TextView) findViewById(R.id.unit_title);
        this.mUnitxDataView = (TextView) findViewById(R.id.x_data_unit);
        this.mUnityDataView = (TextView) findViewById(R.id.y_data_unit);
        this.mUnitzDataView = (TextView) findViewById(R.id.z_data_unit);
        this.mUnitirDataView = (TextView) findViewById(R.id.ir_data_unit);
        TextView textView = this.mUnitTitleView;
        if (textView != null) {
            textView.setText("Unit Data");
        }
        TextView textView2 = this.mGoldenTitleView;
        if (textView2 != null) {
            textView2.setText("Golden Data");
        }
        Button button = (Button) findViewById(R.id.color_temperature_start_btn);
        this.mButtonStart = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.ColorTemperatureTestActivty.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ColorTemperatureTestActivty.this.mColorTemperatureAsyncTask = ColorTemperatureTestActivty.this.new ColorTemperatureAsyncTask();
                ColorTemperatureTestActivty.this.mColorTemperatureAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        });
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
        setContentView(R.layout.color_temperature);
        initView();
    }
}
