package com.sprd.validationtools.itemstest.camera;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;

/* loaded from: classes.dex */
public class SecondaryCameraTestActivity extends BaseActivity implements TextureView.SurfaceTextureListener {
    private static final String TAG = "SecondaryCameraTestActivity";
    private static final String TAKE_IMAGE = "/storage/emulated/0/mmi/sec_backphoto.jpg";
    private HandlerThread mBackgroundThread;
    private CameraDevice mCameraDevice;
    private Handler mHandler;
    private ImageReader mImageReader;
    private CaptureRequest.Builder mPreviewBuilder;
    private TextureView mPreviewView;
    private CameraCaptureSession mSession;
    private Button mTakePhotoBtn;
    protected ImageReader mThumbnailReader;
    private String mCameraID = "2";
    protected boolean mNeedThumb = false;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Log.d(SecondaryCameraTestActivity.TAG, "onImageAvailable");
            SecondaryCameraTestActivity.this.mHandler.post(new ImageSaver(imageReader.acquireNextImage(), new File(SecondaryCameraTestActivity.TAKE_IMAGE)));
        }
    };
    private Runnable mTimeOut = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.2
        @Override // java.lang.Runnable
        public void run() {
        }
    };
    private String mCam3Type = "";
    private CameraDevice.StateCallback mCameraDeviceStateCallback = new CameraDevice.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.5
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
            SecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            Log.i(SecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened in");
            SecondaryCameraTestActivity.this.mCameraDevice = cameraDevice;
            SecondaryCameraTestActivity.this.startPreview(cameraDevice);
            Log.i(SecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened out");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            SecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(SecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onDisconnected");
            if (SecondaryCameraTestActivity.this.mThumbnailReader != null) {
                Log.i(SecondaryCameraTestActivity.TAG, "mThumbnailReader.close");
                SecondaryCameraTestActivity.this.mThumbnailReader.close();
                SecondaryCameraTestActivity.this.mThumbnailReader = null;
            }
            SecondaryCameraTestActivity.this.mNeedThumb = false;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            SecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(SecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onError");
            Toast.makeText(SecondaryCameraTestActivity.this.getApplicationContext(), SecondaryCameraTestActivity.this.getString(R.string.back_camera_fail_tips), 0).show();
            SecondaryCameraTestActivity.this.storeRusult(false);
            SecondaryCameraTestActivity.this.finish();
        }
    };
    private CameraCaptureSession.StateCallback mCameraCaptureSessionStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.6
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) throws CameraAccessException {
            try {
                SecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
                SecondaryCameraTestActivity.this.mSession.setRepeatingRequest(SecondaryCameraTestActivity.this.mPreviewBuilder.build(), SecondaryCameraTestActivity.this.mSessionCaptureCallback, SecondaryCameraTestActivity.this.mHandler);
            } catch (CameraAccessException e) {
                Log.i(SecondaryCameraTestActivity.TAG, e.toString());
            }
        }
    };
    private CameraCaptureSession.CaptureCallback mSessionCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.7
        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            SecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            SecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
        }
    };

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.back_camera_result);
        this.mPreviewView = (TextureView) findViewById(R.id.surfaceView);
        TextView textView = (TextView) findViewById(R.id.light_msg);
        textView.setText(R.string.secondary_msg_text);
        textView.setVisibility(8);
        String str = SystemProperties.get("persist.sys.cam3.type", EnvironmentCompat.MEDIA_UNKNOWN);
        Log.d(TAG, "onCreate cam3.type=" + str);
        if ("back_blur".equals(str)) {
            this.mCameraID = SystemProperties.get("persist.sys.cam3.multi.cam.id", "2");
        } else if ("back_sbs".equals(str)) {
            this.mCameraID = "0";
        }
        this.mCam3Type = str;
        Log.d(TAG, "onCreate mCam3Type=" + this.mCam3Type);
        Log.d(TAG, "onCreate mCameraID=" + this.mCameraID);
        Button button = (Button) findViewById(R.id.start_take_picture);
        this.mTakePhotoBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws CameraAccessException {
                SecondaryCameraTestActivity.this.captureStillPicture();
            }
        });
        this.mTakePhotoBtn.setVisibility(8);
        startBackgroundThread();
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(true);
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.mBackgroundThread.getLooper());
        this.mHandler = handler;
        handler.postDelayed(this.mTimeOut, 120000L);
    }

    private void stopBackgroundThread() {
        try {
            this.mBackgroundThread.quitSafely();
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mHandler = null;
        } catch (InterruptedException | NullPointerException e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onResume() throws CameraAccessException {
        if ("back_sbs".equals(this.mCam3Type)) {
            SystemProperties.set("persist.camera.sbs.mode", "slave");
            SystemProperties.set("persist.sys.camera.raw.mode", "raw");
        }
        if (this.mPreviewView.isAvailable()) {
            Log.d(TAG, "onResume isAvailable reopen camera");
            openCamera(this.mCameraID);
        } else {
            this.mPreviewView.setSurfaceTextureListener(this);
        }
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureStillPicture() throws CameraAccessException {
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.mCameraDevice.createCaptureRequest(1);
            if (builderCreateCaptureRequest == null) {
                return;
            }
            builderCreateCaptureRequest.addTarget(this.mImageReader.getSurface());
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 4);
            CameraCaptureSession.CaptureCallback captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.SecondaryCameraTestActivity.4
                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                    cameraCaptureSession.close();
                }
            };
            Log.d(TAG, "capture  in camera");
            this.mSession.capture(builderCreateCaptureRequest.build(), captureCallback, this.mHandler);
            setPassBtnEnabled(true);
        } catch (CameraAccessException | NullPointerException e) {
            Log.d(TAG, "capture a picture1 fail" + e.toString());
        }
    }

    private void openCamera(String str) throws CameraAccessException {
        CameraManager cameraManager = (CameraManager) getSystemService("camera");
        try {
            String[] cameraIdList = cameraManager.getCameraIdList();
            String str2 = "";
            for (int i = 0; i < cameraIdList.length; i++) {
                str2 = str2 + cameraIdList[i];
                if (i != cameraIdList.length - 1) {
                    str2 = str2 + ",";
                }
            }
            Log.d(TAG, "cameraIdList = " + str2);
            if (!this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Toast.makeText(this, "no CloseLock", 1).show();
                return;
            }
            if ("back_sbs".equals(this.mCam3Type)) {
                this.mImageReader = ImageReader.newInstance(1600, 1200, 256, 1);
            } else {
                this.mImageReader = ImageReader.newInstance(2592, 1944, 256, 1);
            }
            this.mImageReader.setOnImageAvailableListener(this.mOnImageAvailableListener, this.mHandler);
            Log.d(TAG, "openCamera openCamera cameraId:" + str);
            cameraManager.openCamera(str, this.mCameraDeviceStateCallback, this.mHandler);
            Log.d(TAG, "openCamera openCamera end");
        } catch (CameraAccessException e) {
            Log.d(TAG, "CameraAccessException" + e.toString());
        } catch (InterruptedException e2) {
            Log.d(TAG, "InterruptedException" + e2.toString());
        } catch (Exception e3) {
            Log.e(TAG, e3.getMessage(), e3);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws CameraAccessException {
        Log.d(TAG, "onSurfaceTextureAvailable");
        openCamera(this.mCameraID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreview(CameraDevice cameraDevice) throws CameraAccessException {
        Log.i(TAG, "start preview ");
        SurfaceTexture surfaceTexture = this.mPreviewView.getSurfaceTexture();
        surfaceTexture.setDefaultBufferSize(960, 720);
        Surface surface = new Surface(surfaceTexture);
        try {
            this.mPreviewBuilder = cameraDevice.createCaptureRequest(1);
        } catch (CameraAccessException e) {
            Log.i(TAG, e.toString());
        }
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        if (builder != null) {
            builder.addTarget(surface);
        }
        ImageReader imageReader = this.mThumbnailReader;
        if (imageReader != null) {
            imageReader.close();
        }
        try {
            if (this.mNeedThumb) {
                this.mThumbnailReader = ImageReader.newInstance(320, 240, 35, 1);
                cameraDevice.createCaptureSession(Arrays.asList(surface, this.mImageReader.getSurface(), this.mThumbnailReader.getSurface()), this.mCameraCaptureSessionStateCallback, this.mHandler);
            } else {
                cameraDevice.createCaptureSession(Arrays.asList(surface, this.mImageReader.getSurface()), this.mCameraCaptureSessionStateCallback, this.mHandler);
            }
        } catch (CameraAccessException e2) {
            Log.e(TAG, "Failed to create camera capture session", e2);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        String str = this.mCam3Type;
        if (str != null && str.equals("back_sbs")) {
            SystemProperties.set("persist.camera.sbs.mode", "0");
            SystemProperties.set("persist.sys.camera.raw.mode", "0");
        }
        closeCamera();
        super.onPause();
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mTimeOut);
        }
        stopBackgroundThread();
        super.onDestroy();
    }

    private void closeCamera() {
        try {
            try {
                this.mCameraOpenCloseLock.acquire();
                CameraCaptureSession cameraCaptureSession = this.mSession;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                    this.mSession = null;
                }
                CameraDevice cameraDevice = this.mCameraDevice;
                if (cameraDevice != null) {
                    cameraDevice.close();
                    this.mCameraDevice = null;
                }
                ImageReader imageReader = this.mImageReader;
                if (imageReader != null) {
                    imageReader.close();
                    this.mImageReader = null;
                }
            } catch (InterruptedException e) {
                Log.d(TAG, "InterruptedException" + e.toString());
            }
        } finally {
            this.mCameraOpenCloseLock.release();
        }
    }

    public static String bytesToChar(byte[] bArr, int i) {
        return new String(new char[]{(char) (bArr[i] & UByte.MAX_VALUE), (char) (bArr[i + 1] & UByte.MAX_VALUE), (char) (bArr[i + 2] & UByte.MAX_VALUE), (char) (bArr[i + 3] & UByte.MAX_VALUE)});
    }

    private static class ImageSaver implements Runnable {
        private final File mFile;
        private final Image mImage;

        public ImageSaver(Image image, File file) {
            this.mImage = image;
            this.mFile = file;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            FileOutputStream fileOutputStream;
            ByteBuffer buffer = this.mImage.getPlanes()[0].getBuffer();
            byte[] bArr = new byte[buffer.remaining()];
            buffer.get(bArr);
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        if (!this.mFile.getParentFile().exists()) {
                            this.mFile.getParentFile().mkdirs();
                        }
                        if (!this.mFile.exists()) {
                            this.mFile.createNewFile();
                        }
                        fileOutputStream = new FileOutputStream(this.mFile);
                    } catch (IOException e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream.write(bArr);
                    fileOutputStream.flush();
                    this.mImage.close();
                    fileOutputStream.close();
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    this.mImage.close();
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    this.mImage.close();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }
}
