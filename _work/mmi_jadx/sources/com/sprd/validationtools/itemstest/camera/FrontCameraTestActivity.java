package com.sprd.validationtools.itemstest.camera;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.TextureView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.StorageUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FrontCameraTestActivity extends BaseActivity implements TextureView.SurfaceTextureListener {
    public static final int CAMERA_START = 0;
    private static final int FRONT_CAMERA = 1;
    private static final String TAG = "FrontCameraTestActivity";
    private static final boolean mIsAutoPass = false;
    private int groupId;
    private CameraScreenNailProxy mCameraScreenNailProxy;
    private Handler mHandler;
    private ComboPreferences mPreferences;
    private PreviewFrameLayout mPreviewFrameLayout;
    private Button mTakePhotoBtn;
    private Camera mCamera = null;
    private TextureView mTextureView = null;
    private SurfaceTexture mSurfaceTexture = null;
    private TextView mLightMsg = null;
    private boolean mFlag = false;
    private Runnable mTimeOut = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.1
        @Override // java.lang.Runnable
        public void run() {
        }
    };
    private Camera.ShutterCallback shutterCallback = new Camera.ShutterCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.3
        @Override // android.hardware.Camera.ShutterCallback
        public void onShutter() {
        }
    };
    private Camera.PictureCallback mPicture = new Camera.PictureCallback() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.4
        @Override // android.hardware.Camera.PictureCallback
        public void onPictureTaken(byte[] bArr, Camera camera) throws Throwable {
            FileOutputStream fileOutputStream;
            File file = new File(StorageUtil.getInternalStoragePath() + "/mmi/frontPhoto.jpg");
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }
                        if (!file.exists()) {
                            file.createNewFile();
                        }
                        fileOutputStream = new FileOutputStream(file);
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (FileNotFoundException e) {
                    e = e;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            try {
                fileOutputStream.write(bArr);
                MediaScannerConnection.scanFile(FrontCameraTestActivity.this.getApplicationContext(), new String[]{file.getAbsolutePath()}, null, null);
                fileOutputStream.close();
            } catch (FileNotFoundException e4) {
                e = e4;
                fileOutputStream2 = fileOutputStream;
                Log.d(FrontCameraTestActivity.TAG, "File not found: " + e.getMessage());
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                FrontCameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (FrontCameraTestActivity.this.mCamera != null) {
                            FrontCameraTestActivity.this.mCamera.startPreview();
                            FrontCameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                        }
                    }
                }, 1000L);
                FrontCameraTestActivity.this.setPassBtnEnabled(true);
            } catch (IOException e5) {
                e = e5;
                fileOutputStream2 = fileOutputStream;
                Log.d(FrontCameraTestActivity.TAG, "Error accessing file: " + e.getMessage());
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                FrontCameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (FrontCameraTestActivity.this.mCamera != null) {
                            FrontCameraTestActivity.this.mCamera.startPreview();
                            FrontCameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                        }
                    }
                }, 1000L);
                FrontCameraTestActivity.this.setPassBtnEnabled(true);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
            FrontCameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.4.1
                @Override // java.lang.Runnable
                public void run() {
                    if (FrontCameraTestActivity.this.mCamera != null) {
                        FrontCameraTestActivity.this.mCamera.startPreview();
                        FrontCameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                    }
                }
            }, 1000L);
            FrontCameraTestActivity.this.setPassBtnEnabled(true);
        }
    };

    public static int getDisplayRotation() {
        return 0;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    protected class CameraScreenNailProxy {
        public static final int KEY_SIZE_PICTURE = 0;
        public static final int KEY_SIZE_PREVIEW = 1;
        private static final String TAG = "CameraScreenNailProxy";
        private Tuple<Integer, Integer> mScreenSize;

        protected CameraScreenNailProxy() {
            initializeScreenSize();
        }

        private void initializeScreenSize() {
            Display defaultDisplay = FrontCameraTestActivity.this.getWindowManager().getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            Tuple<Integer, Integer> tuple = new Tuple<>(Integer.valueOf(displayMetrics.widthPixels), Integer.valueOf(displayMetrics.heightPixels));
            this.mScreenSize = tuple;
            Log.d(TAG, String.format("screen size = { %dx%d }", tuple.first, this.mScreenSize.second));
        }

        protected Tuple<Integer, Integer> getOptimalSize(int i, ComboPreferences comboPreferences) {
            boolean screenState = FrontCameraTestActivity.this.getScreenState(comboPreferences);
            int orientation = getOrientation();
            int iIntValue = this.mScreenSize.first.intValue();
            int iIntValue2 = this.mScreenSize.second.intValue();
            Camera.Parameters parameters = FrontCameraTestActivity.this.mCamera.getParameters();
            if (i == 0) {
                Camera.Size pictureSize = parameters.getPictureSize();
                Tuple<Integer, Integer> optimalSize = Util.getOptimalSize(this.mScreenSize.first.intValue(), this.mScreenSize.second.intValue(), pictureSize.width, pictureSize.height, screenState);
                iIntValue2 = optimalSize.first.intValue();
                iIntValue = optimalSize.second.intValue();
                if (orientation % 180 != 0) {
                    iIntValue2 = iIntValue;
                    iIntValue = iIntValue2;
                }
            }
            if (1 == i) {
                Camera.Size previewSize = parameters.getPreviewSize();
                Tuple<Integer, Integer> optimalSize2 = Util.getOptimalSize(this.mScreenSize.first.intValue(), this.mScreenSize.second.intValue(), previewSize.width, previewSize.height, screenState);
                iIntValue = optimalSize2.first.intValue();
                int iIntValue3 = optimalSize2.second.intValue();
                if (orientation % 180 == 0) {
                    iIntValue2 = iIntValue;
                    iIntValue = iIntValue3;
                } else {
                    iIntValue2 = iIntValue3;
                }
            }
            Tuple<Integer, Integer> tuple = new Tuple<>(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2));
            Log.d(TAG, String.format("get optimal size: key = %d, is_full_screen = %b, size = { %dx%d }", Integer.valueOf(i), Boolean.valueOf(screenState), tuple.first, tuple.second));
            return tuple;
        }

        private int getOrientation() {
            return FrontCameraTestActivity.getCameraDisplayOrientation(1, FrontCameraTestActivity.this.mCamera);
        }
    }

    protected boolean getScreenState(ComboPreferences comboPreferences) {
        if (comboPreferences == null) {
            return false;
        }
        String string = getString(R.string.pref_entry_value_on);
        String string2 = comboPreferences.getString("pref_camera_video_full_screen_key", null);
        return string2 != null && string2.equals(string);
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.groupId = getIntent().getIntExtra("groupId", 0);
        Log.d(TAG, "groupId" + this.groupId);
        setTitle(getResources().getText(R.string.back_camera_title_text));
        getWindow().setFlags(128, 128);
        setContentView(R.layout.back_camera_result);
        setTitle(R.string.camera_test_title);
        setRequestedOrientation(1);
        this.mCameraScreenNailProxy = new CameraScreenNailProxy();
        this.mPreviewFrameLayout = (PreviewFrameLayout) findViewById(R.id.frame);
        TextureView textureView = (TextureView) findViewById(R.id.surfaceView);
        this.mTextureView = textureView;
        textureView.setSurfaceTextureListener(this);
        TextView textView = (TextView) findViewById(R.id.light_msg);
        this.mLightMsg = textView;
        textView.setText(R.string.font_msg_text);
        this.mHandler = new Handler();
        Button button = (Button) findViewById(R.id.start_take_picture);
        this.mTakePhotoBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.FrontCameraTestActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FrontCameraTestActivity.this.mCamera != null) {
                    FrontCameraTestActivity.this.mTakePhotoBtn.setEnabled(false);
                    FrontCameraTestActivity.this.mCamera.takePicture(FrontCameraTestActivity.this.shutterCallback, null, FrontCameraTestActivity.this.mPicture);
                } else {
                    Log.d(FrontCameraTestActivity.TAG, "mCamera is null.");
                    Toast.makeText(FrontCameraTestActivity.this.getApplicationContext(), FrontCameraTestActivity.this.getString(R.string.front_camera_fail_tips), 0).show();
                    FrontCameraTestActivity.this.storeRusult(false);
                    FrontCameraTestActivity.this.finish();
                }
            }
        });
        this.mHandler.postDelayed(this.mTimeOut, 120000L);
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    private int getSensorOrientation(Context context, int i) {
        Log.i(TAG, "filter effect cameraId = " + i);
        try {
            return ((Integer) ((CameraManager) context.getSystemService("camera")).getCameraCharacteristics(Integer.toString(i)).get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
        } catch (CameraAccessException unused) {
            Log.e(TAG, "cannot get correct camera characteristics!");
            return 270;
        }
    }

    private int getCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i = 0; i < numberOfCameras; i++) {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 1) {
                Log.d(TAG, "Camera found cameraId = " + i);
                return i;
            }
        }
        return -1;
    }

    private void startCamera() throws IOException {
        if (this.mFlag) {
            Log.e(TAG, "stop & close");
            Camera camera = this.mCamera;
            if (camera != null) {
                camera.stopPreview();
                this.mCamera.release();
                this.mFlag = false;
            }
        }
        try {
            Log.e(TAG, "open");
            this.mCamera = Camera.open(1);
            if (Constant.currentPlatform.equals(Constant.MEDIATEK)) {
                enterCameraMode();
            }
        } catch (RuntimeException e) {
            Log.e(TAG, "fail to open camera");
            e.printStackTrace();
            this.mCamera = null;
        }
        Camera camera2 = this.mCamera;
        if (camera2 != null) {
            setCameraDisplayOrientation(1, camera2);
            Camera.Parameters parameters = this.mCamera.getParameters();
            parameters.setPictureFormat(256);
            parameters.set("orientation", "portrait");
            int sensorOrientation = getSensorOrientation(this, getCameraId());
            Log.d(TAG, "sensorOrientation = " + sensorOrientation);
            parameters.setRotation(sensorOrientation);
            Camera.Size pictureSize = parameters.getPictureSize();
            Camera.Size optimalPreviewSize = getOptimalPreviewSize(this, parameters.getSupportedPreviewSizes(), pictureSize.width / pictureSize.height);
            if (!parameters.getPreviewSize().equals(optimalPreviewSize)) {
                parameters.setPreviewSize(optimalPreviewSize.width, optimalPreviewSize.height);
            }
            Log.v(TAG, "Preview size is " + optimalPreviewSize.width + "x" + optimalPreviewSize.height);
            parameters.setWhiteBalance("auto");
            try {
                this.mCamera.setParameters(parameters);
            } catch (Exception unused) {
                Toast.makeText(getApplicationContext(), getString(R.string.back_camera_fail_tips), 0).show();
                storeRusult(false);
                finish();
            }
            try {
                this.mCamera.setPreviewTexture(this.mSurfaceTexture);
                Log.e(TAG, "start preview");
                this.mCamera.startPreview();
                this.mFlag = true;
                initializeCameraOpenAfter();
            } catch (IOException | NullPointerException unused2) {
                this.mCamera.release();
            }
        }
    }

    public static Camera.Size getOptimalPreviewSize(Activity activity, List<Camera.Size> list, double d) {
        double dAbs;
        Camera.Size size = null;
        if (list == null) {
            return null;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int iMin = Math.min(point.x, point.y);
        Iterator<Camera.Size> it = list.iterator();
        while (true) {
            dAbs = Double.MAX_VALUE;
            if (!it.hasNext()) {
                break;
            }
            Camera.Size next = it.next();
            if (Math.abs((next.width / next.height) - d) <= 0.001d && Math.abs(next.height - iMin) < Double.MAX_VALUE) {
                Log.d(TAG, "getOptimalPreviewSize minDiff=" + Math.abs(next.height - iMin));
                size = next;
                break;
            }
        }
        if (size == null) {
            Log.w(TAG, "No preview size match the aspect ratio");
            for (Camera.Size size2 : list) {
                if (Math.abs(size2.height - iMin) < dAbs) {
                    dAbs = Math.abs(size2.height - iMin);
                    size = size2;
                }
            }
        }
        return size;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws IOException {
        Log.d(TAG, "onSurfaceTextureAvailable");
        this.mSurfaceTexture = surfaceTexture;
        startCamera();
    }

    @Override // android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (this.mFlag) {
            startCamera();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            Camera camera = this.mCamera;
            if (camera != null) {
                Camera.Parameters parameters = camera.getParameters();
                parameters.setFlashMode("off");
                this.mCamera.setParameters(parameters);
                this.mCamera.stopPreview();
                this.mCamera.release();
                this.mCamera = null;
                if (Constant.currentPlatform.equals(Constant.MEDIATEK)) {
                    exitCameraMode();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void setCameraDisplayOrientation(int i, Camera camera) {
        int cameraDisplayOrientation = getCameraDisplayOrientation(i, camera);
        camera.setDisplayOrientation(cameraDisplayOrientation);
        Log.d(TAG, "setDisplayOrientation result = " + cameraDisplayOrientation);
    }

    public static int getCameraDisplayOrientation(int i, Camera camera) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        int displayRotation = getDisplayRotation();
        if (cameraInfo.facing == 1) {
            return (360 - ((cameraInfo.orientation + displayRotation) % 360)) % 360;
        }
        return ((cameraInfo.orientation - displayRotation) + 360) % 360;
    }

    private void initializeCameraOpenAfter() {
        Tuple<Integer, Integer> optimalSize = this.mCameraScreenNailProxy.getOptimalSize(1, this.mPreferences);
        PreviewFrameLayout previewFrameLayout = this.mPreviewFrameLayout;
        if (previewFrameLayout != null) {
            previewFrameLayout.setAspectRatio(optimalSize.first.intValue() / optimalSize.second.intValue(), true);
        }
    }

    @Override // com.sprd.validationtools.BaseActivity, android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mTimeOut);
        super.onDestroy();
    }
}
