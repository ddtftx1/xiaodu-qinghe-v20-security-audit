package com.sprd.validationtools.background;

import android.content.Context;
import com.sprd.validationtools.itemstest.storage.SDCardTest;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import com.sprd.validationtools.utils.SocketUtils;

/* loaded from: classes.dex */
public class BackgroundSdTest implements BackgroundTest {
    private static final String PHONE_STORAGE_PATH = "/data/data/com.sprd.validationtools/";
    private static final String SPRD_SD_TESTFILE = "sprdtest.txt";
    private static final String TEST_CLASS_NAME = SDCardTest.class.getName();
    private Context mContext;
    private int testResult = -1;
    private byte[] mounted = new byte[2];
    private Thread thread = null;

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getTestItemIdx() {
        return -1;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void stopTest() {
    }

    public BackgroundSdTest(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public void startTest() {
        Thread thread = new Thread() { // from class: com.sprd.validationtools.background.BackgroundSdTest.1
            /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:75:0x011e A[Catch: IOException -> 0x0122, TRY_ENTER, TryCatch #12 {IOException -> 0x0122, blocks: (B:55:0x00fb, B:57:0x0100, B:75:0x011e, B:79:0x0126), top: B:99:0x0044 }] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0126 A[Catch: IOException -> 0x0122, TRY_LEAVE, TryCatch #12 {IOException -> 0x0122, blocks: (B:55:0x00fb, B:57:0x0100, B:75:0x011e, B:79:0x0126), top: B:99:0x0044 }] */
            /* JADX WARN: Removed duplicated region for block: B:89:0x0139 A[Catch: IOException -> 0x0135, TRY_LEAVE, TryCatch #3 {IOException -> 0x0135, blocks: (B:85:0x0131, B:89:0x0139), top: B:95:0x0131 }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 332
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.background.BackgroundSdTest.AnonymousClass1.run():void");
            }
        };
        this.thread = thread;
        thread.start();
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public int getResult() {
        return this.testResult;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public String getResultStr() {
        if (1 == this.testResult) {
            return "SD:PASS";
        }
        return "SD:" + SocketUtils.FAIL;
    }

    @Override // com.sprd.validationtools.background.BackgroundTest
    public TestItem getTestItem(Context context) {
        return UnitTestItemList.getInstance(this.mContext).getTestItemByClassName(TEST_CLASS_NAME);
    }
}
