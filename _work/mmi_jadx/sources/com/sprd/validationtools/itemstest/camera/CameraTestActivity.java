package com.sprd.validationtools.itemstest.camera;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.sprd.validationtools.BaseActivity;
import com.sprd.validationtools.Const;
import com.sprd.validationtools.Constant;
import com.sprd.validationtools.R;
import com.sprd.validationtools.utils.FileUtils;
import com.sprd.validationtools.utils.StorageUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CameraTestActivity extends BaseActivity implements TextureView.SurfaceTextureListener {
    private static final int BACK_CAMERA = 0;
    private static final int CAMERA_FLASH_LIGHT = 0;
    private static final int CAMERA_FLASH_LIGHT_CLOSE = 2;
    private static final int CAMERA_SECOND_FLASH_LIGHT = 1;
    private static final int CAMERA_SECOND_FLASH_LIGHT_CLOSE = 3;
    public static final int CAMERA_START = 0;
    private static final int CAMERA_TIME_OUT = 4;
    private static final int FOCUS_FAIL = 12;
    private static final int FOCUS_SUCCESS = 11;
    private static final int FRONT_CAMERA = 1;
    private static final boolean IS_SUPPORT_FLASHLIGHT = false;
    private static final int REMOVE_FOCUS = 13;
    private static final String TAG = "CameraTestActivity";
    private static final boolean mIsAutoPass = false;
    private int groupId;
    private ImageView mAutoFocus;
    private HandlerThread mBackgroundThread;
    private Handler mCameraHandler;
    private CameraScreenNailProxy mCameraScreenNailProxy;
    private ComboPreferences mPreferences;
    private PreviewFrameLayout mPreviewFrameLayout;
    private Button mTakePhotoBtn;
    private Camera mCamera = null;
    private int mCameraId = 0;
    private TextureView mTextureView = null;
    private SurfaceTexture mSurfaceTexture = null;
    private TextView mLightMsg = null;
    private boolean mFlag = false;
    private boolean isSurportCameraFlash = false;
    private boolean mIsPause = false;
    private boolean mIsFreezeScreen = Const.isBoardISharkL210c10();
    private boolean enableTouchFocus = true;
    Camera.AutoFocusCallback touchfocusCallback = new Camera.AutoFocusCallback() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.1
        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            if (z) {
                CameraTestActivity.this.mAutoFocus.setImageResource(R.drawable.focus_focused);
                CameraTestActivity.this.mCamera.cancelAutoFocus();
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 13;
            CameraTestActivity.this.myHandler.sendMessageDelayed(messageObtain, 1000L);
        }
    };
    private Handler myHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.d(CameraTestActivity.TAG, "FocusCallback  msg>>>>" + message);
            switch (message.what) {
                case 11:
                    CameraTestActivity.this.mCamera.cancelAutoFocus();
                    CameraTestActivity.this.mAutoFocus.setImageResource(R.drawable.focus_focused);
                    CameraTestActivity.this.mCamera.takePicture(null, null, null, CameraTestActivity.this.mPicture);
                    break;
                case 12:
                    CameraTestActivity.this.mAutoFocus.setImageResource(R.drawable.focus_focus_failed);
                    break;
                case 13:
                    CameraTestActivity.this.mAutoFocus.setImageDrawable(null);
                    CameraTestActivity.this.mTakePhotoBtn.setVisibility(0);
                    break;
            }
            super.handleMessage(message);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.3
        @Override // android.os.Handler
        public void handleMessage(Message message) throws IOException {
            int i = message.what;
            if (i == 0) {
                CameraTestActivity.this.openFlashLight(0);
            } else if (i == 1) {
                CameraTestActivity.this.openFlashLight(1);
            } else if (i == 2) {
                CameraTestActivity.this.closeFlashLight(0);
            } else if (i == 3) {
                CameraTestActivity.this.closeFlashLight(1);
            }
            super.handleMessage(message);
        }
    };
    private Runnable mTimeOut = new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.4
        @Override // java.lang.Runnable
        public void run() {
        }
    };
    private Camera.ShutterCallback shutterCallback = new Camera.ShutterCallback() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.7
        @Override // android.hardware.Camera.ShutterCallback
        public void onShutter() {
        }
    };
    private Camera.PictureCallback mPicture = new Camera.PictureCallback() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.8
        @Override // android.hardware.Camera.PictureCallback
        public void onPictureTaken(byte[] bArr, Camera camera) throws Throwable {
            FileOutputStream fileOutputStream;
            File file = new File(StorageUtil.getInternalStoragePath() + "/mmi/backphoto.jpg");
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
                MediaScannerConnection.scanFile(CameraTestActivity.this.getApplicationContext(), new String[]{file.getAbsolutePath()}, null, null);
                fileOutputStream.close();
            } catch (FileNotFoundException e4) {
                e = e4;
                fileOutputStream2 = fileOutputStream;
                Log.d(CameraTestActivity.TAG, "File not found: " + e.getMessage());
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                CameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CameraTestActivity.this.mCamera != null) {
                            CameraTestActivity.this.mCamera.startPreview();
                            CameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                            CameraTestActivity.this.enableTouchFocus = true;
                            CameraTestActivity.this.displayRsultBtn(CameraTestActivity.this.findViewById(R.id.result_btn));
                            CameraTestActivity.this.setPassBtnEnabled(true);
                        }
                    }
                }, 1000L);
            } catch (IOException e5) {
                e = e5;
                fileOutputStream2 = fileOutputStream;
                Log.d(CameraTestActivity.TAG, "Error accessing file: " + e.getMessage());
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                CameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CameraTestActivity.this.mCamera != null) {
                            CameraTestActivity.this.mCamera.startPreview();
                            CameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                            CameraTestActivity.this.enableTouchFocus = true;
                            CameraTestActivity.this.displayRsultBtn(CameraTestActivity.this.findViewById(R.id.result_btn));
                            CameraTestActivity.this.setPassBtnEnabled(true);
                        }
                    }
                }, 1000L);
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
            CameraTestActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.8.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraTestActivity.this.mCamera != null) {
                        CameraTestActivity.this.mCamera.startPreview();
                        CameraTestActivity.this.mTakePhotoBtn.setEnabled(true);
                        CameraTestActivity.this.enableTouchFocus = true;
                        CameraTestActivity.this.displayRsultBtn(CameraTestActivity.this.findViewById(R.id.result_btn));
                        CameraTestActivity.this.setPassBtnEnabled(true);
                    }
                }
            }, 1000L);
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
            Display defaultDisplay = CameraTestActivity.this.getWindowManager().getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            Tuple<Integer, Integer> tuple = new Tuple<>(Integer.valueOf(displayMetrics.widthPixels), Integer.valueOf(displayMetrics.heightPixels));
            this.mScreenSize = tuple;
            Log.d(TAG, String.format("screen size = { %dx%d }", tuple.first, this.mScreenSize.second));
        }

        protected Tuple<Integer, Integer> getOptimalSize(int i, ComboPreferences comboPreferences) {
            boolean screenState = CameraTestActivity.this.getScreenState(comboPreferences);
            int orientation = getOrientation();
            int iIntValue = this.mScreenSize.first.intValue();
            int iIntValue2 = this.mScreenSize.second.intValue();
            Camera.Parameters parameters = CameraTestActivity.this.mCamera.getParameters();
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
            return CameraTestActivity.getCameraDisplayOrientation(CameraTestActivity.this.mCameraId, CameraTestActivity.this.mCamera);
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
        this.mAutoFocus = (ImageView) findViewById(R.id.autofocus_img);
        if (Constant.JAVA_FEATURE_CAMERA_AF) {
            this.mAutoFocus.setVisibility(0);
        }
        this.mTextureView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && Constant.JAVA_FEATURE_CAMERA_AF && CameraTestActivity.this.enableTouchFocus && CameraTestActivity.this.mCamera != null && CameraTestActivity.this.mCamera.previewEnabled()) {
                    CameraTestActivity.this.mTakePhotoBtn.setVisibility(0);
                    CameraTestActivity.this.mAutoFocus.setImageResource(R.drawable.focus_focusing);
                    CameraTestActivity.this.mCamera.autoFocus(CameraTestActivity.this.touchfocusCallback);
                }
                return false;
            }
        });
        TextView textView = (TextView) findViewById(R.id.light_msg);
        this.mLightMsg = textView;
        textView.setText(getString(R.string.light_msg_text));
        Button button = (Button) findViewById(R.id.start_take_picture);
        this.mTakePhotoBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CameraTestActivity.this.enableTouchFocus = false;
                if (CameraTestActivity.this.mCamera != null) {
                    CameraTestActivity.this.mTakePhotoBtn.setEnabled(false);
                    CameraTestActivity cameraTestActivity = CameraTestActivity.this;
                    cameraTestActivity.unDisplayRsultBtn(cameraTestActivity.findViewById(R.id.result_btn));
                    CameraTestActivity.this.mCamera.takePicture(CameraTestActivity.this.shutterCallback, null, CameraTestActivity.this.mPicture);
                    return;
                }
                Log.d(CameraTestActivity.TAG, "mCamera is null.");
                Toast.makeText(CameraTestActivity.this.getApplicationContext(), CameraTestActivity.this.getString(R.string.back_camera_fail_tips), 0).show();
                CameraTestActivity.this.storeRusult(false);
                CameraTestActivity.this.finish();
            }
        });
        Log.d(TAG, "oncreate IS_SUPPORT_FLASHLIGHT=false");
        this.mHandler.sendEmptyMessageDelayed(4, 120000L);
        startBackgroundThread();
        initRsultBtn(findViewById(R.id.result_btn));
        setPassBtnEnabled(false);
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.mBackgroundThread.getLooper());
        this.mCameraHandler = handler;
        handler.postDelayed(this.mTimeOut, 120000L);
    }

    private void stopBackgroundThread() {
        try {
            this.mBackgroundThread.quitSafely();
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mCameraHandler = null;
        } catch (InterruptedException | NullPointerException e) {
            e.printStackTrace();
        }
    }

    private void openFlashLightByCameraId(int i) throws IOException {
        if (this.mIsPause) {
            return;
        }
        Log.d(TAG, "openFlashLightByCameraId cameraId=" + i);
        if (i == 1) {
            writeFlashDev("0x20");
        } else {
            writeFlashDev("0x10");
        }
    }

    private void startDoubleFlashLightTest() {
        this.mHandler.sendEmptyMessageDelayed(0, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openFlashLight(int i) throws IOException {
        if (this.mIsPause) {
            return;
        }
        if (i == 0) {
            writeFlashDev("0x10");
            this.mHandler.sendEmptyMessageDelayed(2, 1000L);
        } else {
            writeFlashDev("0x20");
            this.mHandler.sendEmptyMessageDelayed(3, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeFlashLight(int i) throws IOException {
        if (i == 0) {
            writeFlashDev("0x11");
            this.mHandler.sendEmptyMessageDelayed(1, 1000L);
        } else {
            writeFlashDev("0x21");
            this.mHandler.sendEmptyMessageDelayed(0, 1000L);
        }
    }

    private void writeFlashDev(String str) throws IOException {
        FileUtils.writeFile(Const.CAMERA_FLASH, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCamera() throws IOException {
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
            this.mCamera = Camera.open(this.mCameraId);
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
            setCameraDisplayOrientation(this.mCameraId, camera2);
            Camera.Parameters parameters = this.mCamera.getParameters();
            Camera.Size pictureSize = parameters.getPictureSize();
            Log.v(TAG, "PictureSize is " + pictureSize.width + "x" + pictureSize.height);
            Camera.Size optimalPreviewSize = getOptimalPreviewSize(this, parameters.getSupportedPreviewSizes(), pictureSize.width / pictureSize.height);
            if (!parameters.getPreviewSize().equals(optimalPreviewSize)) {
                parameters.setPreviewSize(optimalPreviewSize.width, optimalPreviewSize.height);
            }
            Log.v(TAG, "Preview size is " + optimalPreviewSize.width + "x" + optimalPreviewSize.height);
            parameters.setPictureFormat(256);
            parameters.set("orientation", "portrait");
            parameters.setRotation(90);
            isSupported("torch", parameters.getSupportedFlashModes());
            parameters.setFlashMode("torch");
            isSupported("continuous-picture", parameters.getSupportedFocusModes());
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
            } catch (Exception unused2) {
                this.mCamera.release();
            }
        }
    }

    private boolean isSupported(String str, List<String> list) {
        return list != null && list.indexOf(str) >= 0;
    }

    public static Camera.Size getOptimalPreviewSize(Activity activity, List<Camera.Size> list, double d) {
        double dAbs;
        Camera.Size next;
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
            next = it.next();
            double d2 = next.width / next.height;
            if (d2 == 1.7777777777777777d && next.height == point.x) {
                break;
            }
            if (Math.abs(d2 - d) <= 0.001d && Math.abs(next.height - iMin) < Double.MAX_VALUE) {
                Log.d(TAG, "getOptimalPreviewSize minDiff=" + Math.abs(next.height - iMin));
                break;
            }
        }
        size = next;
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
    protected void onResume() {
        super.onResume();
        this.mIsPause = false;
        if (this.mFlag) {
            this.mCameraHandler.post(new Runnable() { // from class: com.sprd.validationtools.itemstest.camera.CameraTestActivity.9
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    CameraTestActivity.this.startCamera();
                }
            });
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mIsPause = true;
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
        camera.setDisplayOrientation(getCameraDisplayOrientation(i, camera));
    }

    public static int getCameraDisplayOrientation(int i, Camera camera) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        int displayRotation = getDisplayRotation();
        if (cameraInfo.facing == 1) {
            return (cameraInfo.orientation + displayRotation) % 360;
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
        this.mHandler.removeMessages(4);
        try {
            writeFlashDev("0x11");
            writeFlashDev("0x21");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        stopBackgroundThread();
        super.onDestroy();
    }
}
