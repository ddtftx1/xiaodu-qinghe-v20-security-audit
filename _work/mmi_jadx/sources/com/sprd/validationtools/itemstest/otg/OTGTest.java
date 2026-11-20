package com.sprd.validationtools.itemstest.otg;

import android.content.Intent;
import android.content.UriPermission;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import com.sprd.validationtools.nonpublic.EnvironmentExProxy;
import com.sprd.validationtools.utils.StorageUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

/* loaded from: classes.dex */
public class OTGTest extends BaseActivity {
    static final int REQUEST_CODE = 1;
    private static final String SPRD_OTG_TESTFILE = "otgtest";
    private Uri docUri;
    private TextView noticeView;
    private Uri otgUri;
    private TextView resultView;
    private Uri rootUri;
    private String TAG = "OTGTest";
    private StorageManager mStorageManager = null;
    private boolean isUsb = false;
    private String usbMassStoragePath = "/mnt/media_rw/usbdisk";
    private String otgPath = null;
    public byte[] mOTGTestFlag = new byte[1];
    byte[] result = new byte[1];
    byte[] mounted = new byte[1];
    private long time = 20;
    public Handler mHandler = new Handler();
    public Runnable mRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.otg.OTGTest.1
        @Override // java.lang.Runnable
        public void run() {
            Log.i(OTGTest.this.TAG, "=== display OTG test succeed info! ===");
            if (OTGTest.this.mounted[0] == 0) {
                OTGTest.this.resultView.setText(OTGTest.this.getResources().getText(R.string.otg_test_success));
                OTGTest.this.resultView.setTextColor(-16711936);
                OTGTest.this.storeRusult(true);
                OTGTest.this.finish();
                return;
            }
            OTGTest.this.resultView.setText(OTGTest.this.getResources().getText(R.string.otg_test_fail));
            OTGTest.this.resultView.setTextColor(SupportMenu.CATEGORY_MASK);
        }
    };
    public Runnable mCheckRunnable = new Runnable() { // from class: com.sprd.validationtools.itemstest.otg.OTGTest.2
        @Override // java.lang.Runnable
        public void run() {
            Log.i(OTGTest.this.TAG, "=== checkOTGdevices! ===");
            OTGTest.this.checkOTGdevices();
            if (OTGTest.this.mounted[0] != 0) {
                OTGTest.this.resultView.setText(OTGTest.this.getResources().getText(R.string.otg_test_result_begain));
                OTGTest.this.mHandler.postDelayed(OTGTest.this.mCheckRunnable, 1000L);
            }
        }
    };

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.otg_layout);
        setTitle(R.string.otg_test);
        TextView textView = (TextView) findViewById(R.id.notice);
        this.noticeView = textView;
        textView.setText(getResources().getText(R.string.otg_test_notice));
        TextView textView2 = (TextView) findViewById(R.id.result);
        this.resultView = textView2;
        textView2.setText(getResources().getText(R.string.otg_test_result_begain));
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkOTGdevices() {
        String externalStorageAppPath = StorageUtil.getExternalStorageAppPath(getApplicationContext(), 2);
        if (externalStorageAppPath != null) {
            this.mounted[0] = 0;
            Log.i(this.TAG, "=== OTG mount succeed ===");
            this.usbMassStoragePath = externalStorageAppPath;
            this.mHandler.postDelayed(this.mRunnable, 2000L);
            return;
        }
        this.mounted[0] = 1;
        Log.i(this.TAG, "=== OTG mount Fail ===");
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mounted[0] = 1;
        this.result[0] = 1;
        checkOTGdevices();
        if (this.mounted[0] != 0) {
            this.resultView.setText(getResources().getText(R.string.otg_test_result_begain));
            this.mHandler.postDelayed(this.mCheckRunnable, 1000L);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.mHandler.removeCallbacks(this.mCheckRunnable);
        super.onPause();
    }

    private void startVtThread() {
        Log.i(this.TAG, "=== create thread to execute OTG test command! ===");
        if (this.mounted[0] == 0) {
            new VtThread().start();
        }
    }

    class VtThread extends Thread {
        VtThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Exception {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
            AutoCloseable autoCloseable;
            FileOutputStream fileOutputStreamCreateOutputStream;
            FileInputStream fileInputStreamCreateInputStream = null;
            try {
                try {
                    if (OTGTest.this.mounted[0] == 0) {
                        OTGTest oTGTest = OTGTest.this;
                        Uri currentAccessUri = oTGTest.getCurrentAccessUri(oTGTest.usbMassStoragePath);
                        OTGTest oTGTest2 = OTGTest.this;
                        Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(currentAccessUri, DocumentsContract.getTreeDocumentId(oTGTest2.getCurrentAccessUri(oTGTest2.usbMassStoragePath)));
                        OTGTest oTGTest3 = OTGTest.this;
                        oTGTest3.docUri = DocumentsContract.createDocument(oTGTest3.getContentResolver(), uriBuildDocumentUriUsingTree, "text/plain", OTGTest.SPRD_OTG_TESTFILE);
                        Log.d(OTGTest.this.TAG, "docUri= " + OTGTest.this.docUri);
                        parcelFileDescriptorOpenFileDescriptor = OTGTest.this.getContentResolver().openFileDescriptor(OTGTest.this.docUri, "rw");
                        try {
                            fileOutputStreamCreateOutputStream = OTGTest.this.createOutputStream(parcelFileDescriptorOpenFileDescriptor);
                            try {
                                OTGTest.this.mOTGTestFlag[0] = 55;
                                fileOutputStreamCreateOutputStream.write(OTGTest.this.mOTGTestFlag, 0, 1);
                                fileOutputStreamCreateOutputStream.close();
                                fileInputStreamCreateInputStream = OTGTest.this.createInputStream(parcelFileDescriptorOpenFileDescriptor);
                                fileInputStreamCreateInputStream.read(OTGTest.this.mOTGTestFlag, 0, 1);
                                fileInputStreamCreateInputStream.close();
                                if (OTGTest.this.mOTGTestFlag[0] == 55) {
                                    OTGTest.this.result[0] = 0;
                                } else {
                                    OTGTest.this.result[0] = 1;
                                }
                            } catch (Exception e) {
                                e = e;
                                Log.i(OTGTest.this.TAG, "=== error: Exception happens when OTG I/O! ===");
                                e.printStackTrace();
                                try {
                                    try {
                                        DocumentsContract.deleteDocument(OTGTest.this.getContentResolver(), OTGTest.this.docUri);
                                    } catch (Exception e2) {
                                        Log.e(OTGTest.this.TAG, "deleteDocument exception");
                                        e2.printStackTrace();
                                    }
                                } finally {
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            fileOutputStreamCreateOutputStream = null;
                            Log.i(OTGTest.this.TAG, "=== error: Exception happens when OTG I/O! ===");
                            e.printStackTrace();
                            DocumentsContract.deleteDocument(OTGTest.this.getContentResolver(), OTGTest.this.docUri);
                        } catch (Throwable th) {
                            th = th;
                            autoCloseable = null;
                            try {
                                try {
                                    DocumentsContract.deleteDocument(OTGTest.this.getContentResolver(), OTGTest.this.docUri);
                                } finally {
                                    OTGTest.closeQuietly(null);
                                    OTGTest.closeQuietly(autoCloseable);
                                    OTGTest.closeQuietly(parcelFileDescriptorOpenFileDescriptor);
                                }
                            } catch (Exception e4) {
                                Log.e(OTGTest.this.TAG, "deleteDocument exception");
                                e4.printStackTrace();
                            }
                            throw th;
                        }
                    } else {
                        parcelFileDescriptorOpenFileDescriptor = null;
                        fileOutputStreamCreateOutputStream = null;
                    }
                    OTGTest.this.mHandler.postDelayed(OTGTest.this.mRunnable, 2000L);
                    try {
                        try {
                            DocumentsContract.deleteDocument(OTGTest.this.getContentResolver(), OTGTest.this.docUri);
                        } catch (Exception e5) {
                            Log.e(OTGTest.this.TAG, "deleteDocument exception");
                            e5.printStackTrace();
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e6) {
                e = e6;
                parcelFileDescriptorOpenFileDescriptor = null;
                fileOutputStreamCreateOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                parcelFileDescriptorOpenFileDescriptor = null;
                autoCloseable = null;
            }
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 1) {
            this.otgUri = intent.getData();
            Log.d(this.TAG, "onActivityResult " + this.otgUri);
            int flags = intent.getFlags() & 3;
            if (this.otgUri != null) {
                getContentResolver().takePersistableUriPermission(this.otgUri, flags);
            } else {
                Toast.makeText(this, R.string.external_access_failed, 1).show();
            }
        }
    }

    private boolean onScopedDirectoryTest(String str) {
        if (getCurrentAccessUri(str) != null) {
            return true;
        }
        for (StorageVolume storageVolume : getVolumes()) {
            File pathFile = storageVolume.getPathFile();
            if (!storageVolume.isPrimary() && pathFile != null && EnvironmentExProxy.getUsbdiskVolumeState(pathFile).equals("mounted")) {
                requestScopedDirectoryAccess(storageVolume, null);
            }
        }
        return false;
    }

    private void requestScopedDirectoryAccess(StorageVolume storageVolume, String str) {
        Intent intentCreateOpenDocumentTreeIntent = storageVolume.createOpenDocumentTreeIntent();
        if (intentCreateOpenDocumentTreeIntent != null) {
            startActivityForResult(intentCreateOpenDocumentTreeIntent, 1);
        }
    }

    private List<StorageVolume> getVolumes() {
        return ((StorageManager) getSystemService("storage")).getStorageVolumes();
    }

    public Uri getCurrentAccessUri(String str) {
        String exactStorageName = getExactStorageName(str);
        List<UriPermission> persistedUriPermissions = getContentResolver().getPersistedUriPermissions();
        Log.i(this.TAG, "getCurrentAccessUri exactStorageName " + exactStorageName);
        for (UriPermission uriPermission : persistedUriPermissions) {
            Log.i(this.TAG, "getCurrentAccessUri permission: " + uriPermission.toString());
            if (exactStorageName != null && uriPermission.getUri().toString().contains(exactStorageName)) {
                Log.i(this.TAG, "getCurrentAccessUri return " + uriPermission.getUri());
                this.rootUri = uriPermission.getUri();
            }
        }
        Log.i(this.TAG, "getCurrentAccessUri return rootUri=" + this.rootUri);
        return this.rootUri;
    }

    private String getExactStorageName(String str) {
        Log.i(this.TAG, "getExactStorageName, storagePath: " + str);
        if (str == null) {
            return null;
        }
        return str.split("/")[r2.length - 1];
    }

    public FileOutputStream createOutputStream(ParcelFileDescriptor parcelFileDescriptor) {
        return new FileOutputStream(parcelFileDescriptor.getFileDescriptor());
    }

    public FileInputStream createInputStream(ParcelFileDescriptor parcelFileDescriptor) {
        return new FileInputStream(parcelFileDescriptor.getFileDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void closeQuietly(AutoCloseable autoCloseable) throws Exception {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }
}
