package com.sprd.validationtools.itemstest.camera;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
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

/* loaded from: classes.dex */
public class FrontSecondaryCameraTestActivity extends BaseActivity implements TextureView.SurfaceTextureListener {
    private static final String TAG = "FrontSecondaryCameraTestActivity";
    private static final String TAKE_IMAGE = "/storage/emulated/0/mmi/sec_backphoto.jpg";
    private int[] faceDetectModes;
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
    private Handler mMainHandler = new Handler();
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Log.d(FrontSecondaryCameraTestActivity.TAG, "onImageAvailable");
            FrontSecondaryCameraTestActivity.this.mHandler.post(new ImageSaver(imageReader.acquireNextImage(), new File(FrontSecondaryCameraTestActivity.TAKE_IMAGE)));
        }
    };
    private Runnable mTimeOut = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.2
        @Override // java.lang.Runnable
        public void run() {
            FrontSecondaryCameraTestActivity.this.storeRusult(false);
            FrontSecondaryCameraTestActivity.this.finish();
        }
    };
    private String mCam3Type = "";
    private TextView mFaceMsgTextView = null;
    private CameraDevice.StateCallback mCameraDeviceStateCallback = new CameraDevice.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.5
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
            FrontSecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            Log.i(FrontSecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened in");
            FrontSecondaryCameraTestActivity.this.mCameraDevice = cameraDevice;
            FrontSecondaryCameraTestActivity.this.startPreview(cameraDevice);
            Log.i(FrontSecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened out");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            FrontSecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(FrontSecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onDisconnected");
            if (FrontSecondaryCameraTestActivity.this.mThumbnailReader != null) {
                Log.i(FrontSecondaryCameraTestActivity.TAG, "mThumbnailReader.close");
                FrontSecondaryCameraTestActivity.this.mThumbnailReader.close();
                FrontSecondaryCameraTestActivity.this.mThumbnailReader = null;
            }
            FrontSecondaryCameraTestActivity.this.mNeedThumb = false;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            FrontSecondaryCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(FrontSecondaryCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onError");
        }
    };
    private CameraCaptureSession.StateCallback mCameraCaptureSessionStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.6
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) throws CameraAccessException {
            try {
                FrontSecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
                FrontSecondaryCameraTestActivity.this.mSession.setRepeatingRequest(FrontSecondaryCameraTestActivity.this.mPreviewBuilder.build(), FrontSecondaryCameraTestActivity.this.mSessionCaptureCallback, FrontSecondaryCameraTestActivity.this.mHandler);
            } catch (CameraAccessException e) {
                Log.i(FrontSecondaryCameraTestActivity.TAG, e.toString());
            }
        }
    };
    private CameraCaptureSession.CaptureCallback mSessionCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.7
        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            FrontSecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
            final Face[] faceArr = (Face[]) totalCaptureResult.get(CaptureResult.STATISTICS_FACES);
            if (faceArr != null) {
                Log.d(FrontSecondaryCameraTestActivity.TAG, "mSessionCaptureCallback onCaptureCompleted faces=" + faceArr.length);
                Log.d(FrontSecondaryCameraTestActivity.TAG, "mSessionCaptureCallback faces.length=" + faceArr.length);
                if (faceArr.length <= 10) {
                    return;
                }
                Log.d(FrontSecondaryCameraTestActivity.TAG, "mSessionCaptureCallback faces id=" + faceArr[10].getId());
                Log.d(FrontSecondaryCameraTestActivity.TAG, "mSessionCaptureCallback faces score=" + faceArr[10].getScore());
                if (faceArr[10].getScore() == 0) {
                    return;
                }
                FrontSecondaryCameraTestActivity.this.mMainHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (faceArr[10].getScore() == 2) {
                            if (FrontSecondaryCameraTestActivity.this.mFaceMsgTextView != null) {
                                FrontSecondaryCameraTestActivity.this.mFaceMsgTextView.setVisibility(0);
                            }
                        } else if (FrontSecondaryCameraTestActivity.this.mFaceMsgTextView != null) {
                            FrontSecondaryCameraTestActivity.this.mFaceMsgTextView.setVisibility(8);
                        }
                    }
                });
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            FrontSecondaryCameraTestActivity.this.mSession = cameraCaptureSession;
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
        TextureView textureView = (TextureView) findViewById(R.id.surfaceView);
        this.mPreviewView = textureView;
        textureView.setSurfaceTextureListener(this);
        TextView textView = (TextView) findViewById(R.id.light_msg);
        textView.setText(R.string.secondary_msg_text);
        textView.setVisibility(8);
        String str = SystemProperties.get("persist.sys.cam3.type", EnvironmentCompat.MEDIA_UNKNOWN);
        Log.d(TAG, "onCreate cam3.type=" + str);
        if ("front_blur".equals(str)) {
            this.mCameraID = SystemProperties.get("persist.sys.cam3.multi.cam.id", "2");
        } else if ("front_sbs".equals(str)) {
            this.mCameraID = "1";
        }
        this.mCam3Type = str;
        Log.d(TAG, "onCreate mCameraID=" + this.mCameraID);
        Button button = (Button) findViewById(R.id.start_take_picture);
        this.mTakePhotoBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws CameraAccessException {
                FrontSecondaryCameraTestActivity.this.captureStillPicture();
            }
        });
        this.mTakePhotoBtn.setVisibility(8);
        this.mFaceMsgTextView = (TextView) findViewById(R.id.face_text_msg);
        startBackgroundThread();
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
        if ("front_sbs".equals(this.mCam3Type)) {
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
            builderCreateCaptureRequest.addTarget(this.mImageReader.getSurface());
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 4);
            CameraCaptureSession.CaptureCallback captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontSecondaryCameraTestActivity.4
                @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                    cameraCaptureSession.close();
                }
            };
            Log.d(TAG, "capture  in camera");
            this.mSession.capture(builderCreateCaptureRequest.build(), captureCallback, this.mHandler);
        } catch (CameraAccessException | NullPointerException e) {
            Log.d(TAG, "capture a picture1 fail" + e.toString());
        }
    }

    private void openCamera(String str) throws CameraAccessException {
        CameraManager cameraManager = (CameraManager) getSystemService("camera");
        try {
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
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws CameraAccessException {
        Log.d(TAG, "onSurfaceTextureAvailable");
        try {
            CameraCharacteristics cameraCharacteristics = ((CameraManager) getSystemService("camera")).getCameraCharacteristics(this.mCameraID);
            this.faceDetectModes = (int[]) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES);
            Log.d(TAG, "onSurfaceTextureAvailable maxFaceCount=" + ((Integer) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue());
            openCamera(this.mCameraID);
        } catch (CameraAccessException e) {
            Log.d(TAG, "p1 in" + e.toString());
            Toast.makeText(this, R.string.text_fail, 0).show();
            storeRusult(false);
            finish();
        }
    }

    private int getFaceDetectMode() {
        int[] iArr = this.faceDetectModes;
        if (iArr == null || iArr.length < 1) {
            return 2;
        }
        int i = iArr[iArr.length - 1];
        Log.d(TAG, "getFaceDetectMode faceDetectModes mode=" + i);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreview(CameraDevice cameraDevice) throws CameraAccessException {
        Log.i(TAG, "start preview ");
        SurfaceTexture surfaceTexture = this.mPreviewView.getSurfaceTexture();
        surfaceTexture.setDefaultBufferSize(960, 720);
        Surface surface = new Surface(surfaceTexture);
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(1);
            this.mPreviewBuilder = builderCreateCaptureRequest;
            builderCreateCaptureRequest.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(getFaceDetectMode()));
        } catch (CameraAccessException e) {
            Log.i(TAG, e.toString());
        }
        this.mPreviewBuilder.addTarget(surface);
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
        if (str != null && str.equals("front_sbs")) {
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
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (IOException e) {
                    e = e;
                }
                try {
                    fileOutputStream.write(bArr);
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
