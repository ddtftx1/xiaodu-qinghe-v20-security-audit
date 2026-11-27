package com.baidu.duershow.crab.util;

import android.util.Log;
import com.baidu.duershow.crab.monitor.HardwareMonitor;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

public class CommandExecutor {
    private static final String COMMAND_EXIT = "exit\n";
    private static final String COMMAND_LINE_END = "\n";
    private static final String COMMAND_SH = "sh";
    private static final String TAG = "CommandExecution";

    /* JADX WARN: Code duplicated, block: B:106:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:109:0x0173 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0119 A[EDGE_INSN: B:137:0x0119->B:39:0x0119 BREAK  A[LOOP:4: B:36:0x010f->B:38:0x0115], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0115 A[Catch: all -> 0x0141, Exception -> 0x0143, LOOP:4: B:36:0x010f->B:38:0x0115, LOOP_END, TryCatch #13 {Exception -> 0x0143, all -> 0x0141, blocks: (B:12:0x0068, B:14:0x0070, B:16:0x0085, B:18:0x008c, B:22:0x009e, B:24:0x00a4, B:25:0x00c3, B:27:0x00c9, B:28:0x00cd, B:30:0x00d3, B:32:0x00df, B:36:0x010f, B:38:0x0115, B:39:0x0119, B:33:0x00fd, B:35:0x0103), top: B:118:0x0068 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x016a A[Catch: all -> 0x0197, TryCatch #9 {all -> 0x0197, blocks: (B:71:0x0164, B:73:0x016a, B:74:0x016e), top: B:113:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x016e A[Catch: all -> 0x0197, TRY_LEAVE, TryCatch #9 {all -> 0x0197, blocks: (B:71:0x0164, B:73:0x016a, B:74:0x016e), top: B:113:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0179 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x017b A[Catch: IOException -> 0x0177, TryCatch #2 {IOException -> 0x0177, blocks: (B:76:0x0173, B:80:0x017b, B:82:0x0180), top: B:109:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0180 A[Catch: IOException -> 0x0177, TRY_LEAVE, TryCatch #2 {IOException -> 0x0177, blocks: (B:76:0x0173, B:80:0x017b, B:82:0x0180), top: B:109:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0193 A[PHI: r4
      0x0193: PHI (r4v6 java.lang.Process) = (r4v5 java.lang.Process), (r4v8 java.lang.Process), (r4v8 java.lang.Process), (r4v8 java.lang.Process) binds: [B:88:0x0191, B:46:0x013c, B:45:0x0137, B:40:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:96:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x01a2 A[Catch: IOException -> 0x019e, TryCatch #12 {IOException -> 0x019e, blocks: (B:93:0x019a, B:97:0x01a2, B:99:0x01a7), top: B:114:0x019a }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01a7 A[Catch: IOException -> 0x019e, TRY_LEAVE, TryCatch #12 {IOException -> 0x019e, blocks: (B:93:0x019a, B:97:0x01a2, B:99:0x01a7), top: B:114:0x019a }] */
    public static CommandResult execCommand(String str) throws Throwable {
        Process processExec;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        String message;
        String line;
        String line2;
        CommandResult commandResult = new CommandResult();
        if (str == null || str.isEmpty()) {
            return commandResult;
        }
        DataOutputStream dataOutputStream = null;
        try {
            processExec = Runtime.getRuntime().exec(COMMAND_SH);
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
                try {
                    dataOutputStream2.write(str.getBytes());
                    dataOutputStream2.writeBytes(COMMAND_LINE_END);
                    dataOutputStream2.flush();
                    dataOutputStream2.writeBytes(COMMAND_EXIT);
                    dataOutputStream2.flush();
                    commandResult.result = processExec.waitFor();
                    StringBuilder sb = new StringBuilder();
                    StringBuilder sb2 = new StringBuilder();
                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    try {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
                        try {
                            try {
                                if (str.equals(C.DUMP_CPU_INFO)) {
                                    JSONArray procArray = HardwareMonitor.getInstance().getProcArray();
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add("TOTAL");
                                    int i = 0;
                                    if (procArray != null) {
                                        int length = procArray.length();
                                        for (int i2 = 0; i2 < length; i2++) {
                                            arrayList.add(procArray.optString(i2));
                                        }
                                    }
                                    while (true) {
                                        int i3 = i + 1;
                                        if (i >= 15 || (line2 = bufferedReader.readLine()) == null) {
                                            break;
                                        }
                                        BLog.i("dumpsys cpuinfo -l readLine:" + line2);
                                        sb.append(line2);
                                        sb.append(COMMAND_LINE_END);
                                        commandResult.successMsgByLine.add(line2);
                                        i = i3;
                                    }
                                    while (true) {
                                        String line3 = bufferedReader.readLine();
                                        if (line3 == null) {
                                            break;
                                        }
                                        Iterator it = arrayList.iterator();
                                        while (it.hasNext()) {
                                            if (line3.contains((String) it.next())) {
                                                BLog.i("dumpsys cpuinfo -l readLine:" + line3);
                                                sb.append(line3);
                                                sb.append(COMMAND_LINE_END);
                                                commandResult.successMsgByLine.add(line3);
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    while (true) {
                                        String line4 = bufferedReader.readLine();
                                        if (line4 == null) {
                                            break;
                                        }
                                        sb.append(line4);
                                        sb.append(COMMAND_LINE_END);
                                        commandResult.successMsgByLine.add(line4);
                                    }
                                    while (true) {
                                        line = bufferedReader2.readLine();
                                        if (line != null) {
                                            break;
                                        }
                                        sb2.append(line);
                                    }
                                    commandResult.successMsg = sb.toString();
                                    commandResult.errorMsg = sb2.toString();
                                    dataOutputStream2.close();
                                    bufferedReader.close();
                                    bufferedReader2.close();
                                    processExec.destroy();
                                    return commandResult;
                                }
                                dataOutputStream2.close();
                                bufferedReader.close();
                                bufferedReader2.close();
                            } catch (IOException e) {
                                String message2 = e.getMessage();
                                if (message2 != null) {
                                    Log.e(TAG, message2);
                                } else {
                                    e.printStackTrace();
                                }
                            }
                            while (true) {
                                line = bufferedReader2.readLine();
                                if (line != null) {
                                    break;
                                    break;
                                }
                                sb2.append(line);
                            }
                            commandResult.successMsg = sb.toString();
                            commandResult.errorMsg = sb2.toString();
                        } catch (Exception e2) {
                            e = e2;
                            dataOutputStream = dataOutputStream2;
                            try {
                                message = e.getMessage();
                                if (message != null) {
                                    Log.e(TAG, message);
                                } else {
                                    e.printStackTrace();
                                }
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (bufferedReader2 != null) {
                                            bufferedReader2.close();
                                        }
                                    } catch (IOException e3) {
                                        String message3 = e3.getMessage();
                                        if (message3 != null) {
                                            Log.e(TAG, message3);
                                        } else {
                                            e3.printStackTrace();
                                        }
                                        if (processExec != null) {
                                            processExec.destroy();
                                        }
                                        return commandResult;
                                    }
                                } else {
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (bufferedReader2 != null) {
                                        bufferedReader2.close();
                                    }
                                }
                                if (processExec != null) {
                                }
                                return commandResult;
                            } catch (Throwable th) {
                                th = th;
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (bufferedReader2 != null) {
                                            bufferedReader2.close();
                                        }
                                    } catch (IOException e4) {
                                        String message4 = e4.getMessage();
                                        if (message4 != null) {
                                            Log.e(TAG, message4);
                                        } else {
                                            e4.printStackTrace();
                                        }
                                        if (processExec != null) {
                                            processExec.destroy();
                                        }
                                        throw th;
                                    }
                                } else {
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (bufferedReader2 != null) {
                                        bufferedReader2.close();
                                    }
                                }
                                if (processExec != null) {
                                    processExec.destroy();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = dataOutputStream2;
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                            } else {
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                            }
                            if (processExec != null) {
                                processExec.destroy();
                            }
                            throw th;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        bufferedReader2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    bufferedReader = null;
                    bufferedReader2 = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader = null;
                    bufferedReader2 = null;
                }
            } catch (Exception e7) {
                e = e7;
                bufferedReader = null;
                bufferedReader2 = bufferedReader;
                message = e.getMessage();
                if (message != null) {
                    Log.e(TAG, message);
                } else {
                    e.printStackTrace();
                }
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                } else {
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                return commandResult;
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = null;
                bufferedReader2 = bufferedReader;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                } else {
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                throw th;
            }
        } catch (Exception e8) {
            e = e8;
            processExec = null;
            bufferedReader = null;
        } catch (Throwable th6) {
            th = th6;
            processExec = null;
            bufferedReader = null;
        }
        processExec.destroy();
        return commandResult;
    }
}
