package com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.unisoc.engineermode.modules.debuglog.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class PingActivity extends Activity implements View.OnClickListener {
    private static final String TAG = "PingActivity";
    private static final int UPDATE = 1;
    private EditText mAddressEditText;
    private Button mClearBtn;
    private EditText mCountEditText;
    private Button mOnOffBtn;
    private RadioGroup mPingAddress;
    private RadioButton mPingIPV4;
    private RadioButton mPingIPV6;
    private EditText mSizeEditText;
    private TextView mText;
    private boolean paused = true;
    Message message = null;
    private String CMD = null;
    private String mStrAddress = null;
    private String mStrCount = null;
    private String mStrSize = null;
    private boolean mIPV4 = true;
    private Process proc = null;
    private String mResult = "";
    private Handler handler = new Handler() { // from class: com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages.PingActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (!PingActivity.this.paused) {
                        String result = (String) msg.obj;
                        if (result == null || result.equals("null")) {
                            PingActivity.this.mText.setText(PingActivity.this.getString(R.string.result_empty));
                        } else {
                            PingActivity.this.mText.setText(result);
                        }
                    }
                    break;
            }
        }
    };
    private Runnable runnable = new Runnable() { // from class: com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages.PingActivity.2
        @Override // java.lang.Runnable
        public void run() {
            if (!PingActivity.this.paused) {
                PingActivity pingActivity = PingActivity.this;
                pingActivity.runCMD(pingActivity.GenerateCMD(pingActivity.CMD));
            }
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ping_package);
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.radio_group);
        this.mPingAddress = radioGroup;
        RadioButton radioButton = (RadioButton) radioGroup.findViewById(R.id.radio_btn_ipv4);
        this.mPingIPV4 = radioButton;
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) this.mPingAddress.findViewById(R.id.radio_btn_ipv6);
        this.mPingIPV6 = radioButton2;
        radioButton2.setOnClickListener(this);
        this.mAddressEditText = (EditText) findViewById(R.id.ping_addr);
        this.mSizeEditText = (EditText) findViewById(R.id.ping_size);
        this.mCountEditText = (EditText) findViewById(R.id.ping_count);
        Button button = (Button) findViewById(R.id.start_btn);
        this.mOnOffBtn = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.clear_btn);
        this.mClearBtn = button2;
        button2.setOnClickListener(this);
        this.mText = (TextView) findViewById(R.id.result_text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String runCMD(String[] cmd) {
        try {
            Process processExec = Runtime.getRuntime().exec(cmd);
            this.proc = processExec;
            InputStream is = processExec.getInputStream();
            BufferedReader buf = new BufferedReader(new InputStreamReader(is));
            while (true) {
                String line = buf.readLine();
                Log.d(TAG, "run ShellUtiles line: " + line);
                if (line == null) {
                    break;
                }
                String str = this.mResult + line + "\n\n";
                this.mResult = str;
                Message messageObtainMessage = this.handler.obtainMessage(1, str);
                this.message = messageObtainMessage;
                this.handler.sendMessageDelayed(messageObtainMessage, 200L);
            }
            Log.d(TAG, "run ShellUtiles line END");
            if (is != null) {
                buf.close();
                is.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
        return this.mResult;
    }

    @Override // android.app.Activity
    public void onStart() {
        Log.d(TAG, "onStart");
        super.onStart();
    }

    @Override // android.app.Activity
    public void onResume() {
        Log.d(TAG, "onResume");
        super.onResume();
    }

    @Override // android.app.Activity
    public void onStop() {
        Log.d(TAG, "onStop");
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        Log.d(TAG, "onBackPressed");
        this.paused = true;
        Process process = this.proc;
        if (process != null) {
            process.destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] GenerateCMD(String strCMD) {
        String[] strings = strCMD.replaceAll("\\\\", "/").split("\\s+");
        for (String str : strings) {
            Log.d(TAG, "strCMD:" + str);
        }
        return strings;
    }

    private String GetPingCMD() {
        this.mStrAddress = this.mAddressEditText.getText().toString();
        String string = this.mCountEditText.getText().toString();
        this.mStrCount = string;
        if (this.mIPV4) {
            this.CMD = "ping ";
        } else {
            this.CMD = "ping6 ";
        }
        if (string == null || string.equals("")) {
            this.CMD += " -c 4 ";
        } else {
            this.CMD += " -c " + this.mStrCount + " ";
        }
        String string2 = this.mSizeEditText.getText().toString();
        this.mStrSize = string2;
        if (string2 != null && !string2.equals("")) {
            this.CMD += " -s " + this.mStrSize + " ";
        }
        String str = this.mStrAddress;
        if (str == null || str.equals("")) {
            this.mStrAddress = " www.baidu.com";
        }
        this.CMD += this.mStrAddress;
        Log.d(TAG, "onClick start_btn CMD: " + this.CMD);
        return this.CMD;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.start_btn) {
            if (this.paused) {
                GetPingCMD();
                this.paused = false;
                new Thread(this.runnable).start();
                this.mOnOffBtn.setText(R.string.adb_shell_finish);
                this.mOnOffBtn.setBackground(getResources().getDrawable(R.drawable.btn_pause));
                return;
            }
            this.paused = true;
            this.mOnOffBtn.setText(R.string.adb_shell_start);
            this.mOnOffBtn.setBackground(getResources().getDrawable(R.drawable.btn_refresh));
            Process process = this.proc;
            if (process != null) {
                process.destroy();
                return;
            }
            return;
        }
        if (id == R.id.clear_btn) {
            Log.d(TAG, "onClick clear_btn");
            this.mText.setText("");
            this.mResult = "";
        } else if (id == R.id.radio_btn_ipv4) {
            Log.d(TAG, "onClick radio_btn_ipv4");
            this.mIPV4 = true;
        } else if (id == R.id.radio_btn_ipv6) {
            Log.d(TAG, "onClick radio_btn_ipv6");
            this.mIPV4 = false;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.function_introduction, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.function_introduction) {
            createDialog();
        }
        return super.onOptionsItemSelected(item);
    }

    private void createDialog() {
        AlertDialog alertDialog = new AlertDialog.Builder(this).setTitle(getString(R.string.function_introduction)).setMessage(getString(R.string.ping_packages_introduction)).setCancelable(false).setPositiveButton(getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.unisoc.engineermode.modules.debuglog.designfortest.pingpackages.PingActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PingActivity.lambda$createDialog$0(dialogInterface, i);
            }
        }).create();
        alertDialog.show();
    }

    static /* synthetic */ void lambda$createDialog$0(DialogInterface dialog, int which) {
    }
}
