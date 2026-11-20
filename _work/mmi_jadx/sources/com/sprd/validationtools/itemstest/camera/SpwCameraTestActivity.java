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
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
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
public class SpwCameraTestActivity extends BaseActivity implements TextureView.SurfaceTextureListener {
    private static final String TAG = "SpwCameraTestActivity";
    private static final String TAKE_IMAGE = "/storage/emulated/0/mmi/sec_backphoto.jpg";
    private HandlerThread mBackgroundThread;
    private CameraDevice mCameraDevice;
    private String mCameraID;
    private CameraManager mCameraManager;
    private Handler mHandler;
    private ImageReader mImageReader;
    private CaptureRequest.Builder mPreviewBuilder;
    private TextureView mPreviewView;
    private CameraCaptureSession mSession;
    private Button mTakePhotoBtn;
    protected ImageReader mThumbnailReader;
    protected boolean mNeedThumb = false;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Log.d(SpwCameraTestActivity.TAG, "onImageAvailable");
            SpwCameraTestActivity.this.mHandler.post(new ImageSaver(imageReader.acquireNextImage(), new File(SpwCameraTestActivity.TAKE_IMAGE)));
        }
    };
    private Runnable mTimeOut = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.2
        @Override // java.lang.Runnable
        public void run() {
            SpwCameraTestActivity.this.storeRusult(false);
            SpwCameraTestActivity.this.finish();
        }
    };
    private CameraDevice.StateCallback mCameraDeviceStateCallback = new CameraDevice.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.5
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
            SpwCameraTestActivity.this.mCameraOpenCloseLock.release();
            Log.i(SpwCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened in");
            SpwCameraTestActivity.this.mCameraDevice = cameraDevice;
            SpwCameraTestActivity.this.startPreview(cameraDevice);
            Log.i(SpwCameraTestActivity.TAG, "CameraDevice.StateCallback onOpened out");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            SpwCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(SpwCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onDisconnected");
            if (SpwCameraTestActivity.this.mThumbnailReader != null) {
                Log.i(SpwCameraTestActivity.TAG, "mThumbnailReader.close");
                SpwCameraTestActivity.this.mThumbnailReader.close();
                SpwCameraTestActivity.this.mThumbnailReader = null;
            }
            SpwCameraTestActivity.this.mNeedThumb = false;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            SpwCameraTestActivity.this.mCameraOpenCloseLock.release();
            cameraDevice.close();
            Log.i(SpwCameraTestActivity.TAG, "CameraDevice.StateCallback1 stay onError");
        }
    };
    private CameraCaptureSession.StateCallback mCameraCaptureSessionStateCallback = new CameraCaptureSession.StateCallback() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.6
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) throws CameraAccessException {
            try {
                SpwCameraTestActivity.this.mSession = cameraCaptureSession;
                SpwCameraTestActivity.this.mSession.setRepeatingRequest(SpwCameraTestActivity.this.mPreviewBuilder.build(), SpwCameraTestActivity.this.mSessionCaptureCallback, SpwCameraTestActivity.this.mHandler);
            } catch (CameraAccessException e) {
                Log.i(SpwCameraTestActivity.TAG, e.toString());
            }
        }
    };
    private CameraCaptureSession.CaptureCallback mSessionCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.7
        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            SpwCameraTestActivity.this.mSession = cameraCaptureSession;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            SpwCameraTestActivity.this.mSession = cameraCaptureSession;
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
        this.mCameraManager = (CameraManager) getSystemService("camera");
        TextureView textureView = (TextureView) findViewById(R.id.surfaceView);
        this.mPreviewView = textureView;
        textureView.setSurfaceTextureListener(this);
        TextView textView = (TextView) findViewById(R.id.light_msg);
        textView.setText(R.string.secondary_msg_text);
        textView.setVisibility(8);
        this.mCameraID = getCameraID();
        Log.d(TAG, "onCreate mCameraID=" + this.mCameraID);
        if (this.mCameraID == null) {
            Toast.makeText(this, "SpwCamera Open Fialed!", 0).show();
            storeRusult(false);
            finish();
        }
        Button button = (Button) findViewById(R.id.start_take_picture);
        this.mTakePhotoBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws CameraAccessException {
                SpwCameraTestActivity.this.captureStillPicture();
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
            CameraCaptureSession.CaptureCallback captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sprd.validationtools.itemstest.camera.SpwCameraTestActivity.4
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
        try {
            if (!this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                Toast.makeText(this, "no CloseLock", 1).show();
                return;
            }
            ImageReader imageReaderNewInstance = ImageReader.newInstance(2592, 1944, 256, 1);
            this.mImageReader = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(this.mOnImageAvailableListener, this.mHandler);
            Log.d(TAG, "openCamera openCamera cameraId:" + str);
            this.mCameraManager.openCamera(str, this.mCameraDeviceStateCallback, this.mHandler);
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

    private String getCameraID() throws CameraAccessException {
        try {
            String[] cameraIdList = this.mCameraManager.getCameraIdList();
            if (cameraIdList.length >= 4) {
                return cameraIdList[3];
            }
            return null;
        } catch (CameraAccessException e) {
            Log.d(TAG, "CameraAccessException" + e.toString());
            return null;
        }
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
