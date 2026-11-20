package com.sprd.logmanager.logui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.sprd.logmanager.R;
import com.sprd.logmanager.utils.ShellUtils;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class DeleteLogsActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private static String TAG = "DeleteLogsActivity";
    private ArrayList<String> mFileList;
    private CheckBoxPreference[] mLogList;
    private PreferenceGroup mPreGroup;
    private ProgressDialog mProgressDialog;

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("key_log_list");
        this.mFileList = stringArrayListExtra;
        if (stringArrayListExtra == null || stringArrayListExtra.size() == 0) {
            Toast.makeText(this, "No file to delete!", 0).show();
            finish();
            return;
        }
        Collections.sort(this.mFileList);
        setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));
        this.mPreGroup = getPreferenceScreen();
        int size = this.mFileList.size();
        this.mLogList = new CheckBoxPreference[size];
        for (int i = 0; i < size; i++) {
            this.mLogList[i] = new CheckBoxPreference(this);
            this.mLogList[i].setTitle(this.mFileList.get(i).split(":")[1]);
            this.mLogList[i].setOnPreferenceChangeListener(this);
            this.mPreGroup.addPreference(this.mLogList[i]);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.log_delete_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        boolean z = true;
        if (itemId == R.id.delete) {
            int i = 0;
            while (true) {
                if (i >= this.mFileList.size()) {
                    z = false;
                    break;
                }
                if (this.mLogList[i].isChecked()) {
                    break;
                }
                i++;
            }
            if (z) {
                new AlertDialog.Builder(this).setTitle("clear").setMessage(getString(R.string.slog_want_clear)).setPositiveButton(getString(R.string.alertdialog_ok), new DialogInterface.OnClickListener() { // from class: com.sprd.logmanager.logui.DeleteLogsActivity.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        DeleteLogsActivity.this.clearLogThread();
                    }
                }).setNegativeButton(getString(R.string.alertdialog_cancel), (DialogInterface.OnClickListener) null).show();
            }
        } else if (itemId == R.id.select_all) {
            for (int i2 = 0; i2 < this.mFileList.size(); i2++) {
                if (!this.mLogList[i2].isChecked()) {
                    this.mLogList[i2].setChecked(true);
                }
            }
        } else if (itemId == R.id.unselect_all) {
            for (int i3 = 0; i3 < this.mFileList.size(); i3++) {
                if (this.mLogList[i3].isChecked()) {
                    this.mLogList[i3].setChecked(false);
                }
            }
        } else {
            Log.v(TAG, "No item match!");
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLogThread() {
        this.mProgressDialog = ProgressDialog.show(this, "Deleting...", "Please wait...", false, false);
        new Thread(new Runnable() { // from class: com.sprd.logmanager.logui.DeleteLogsActivity.2
            @Override // java.lang.Runnable
            public void run() {
                DeleteLogsActivity.this.doDelete();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDelete() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i < this.mFileList.size()) {
                if (this.mLogList[i].isChecked()) {
                    try {
                        ShellUtils.runCommand(String.format("rm -rf %s ", this.mFileList.get(i).replace(":", "")));
                    } catch (Exception e) {
                        e.printStackTrace();
                        z = false;
                    }
                    if (z) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                i++;
            } else {
                final String str = String.format(getString(R.string.delete_log_toast), Integer.valueOf(i2), Integer.valueOf(i3));
                runOnUiThread(new Runnable() { // from class: com.sprd.logmanager.logui.DeleteLogsActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DeleteLogsActivity.this.mProgressDialog != null) {
                            DeleteLogsActivity.this.mProgressDialog.dismiss();
                        }
                        Toast.makeText(DeleteLogsActivity.this, str, 0).show();
                        DeleteLogsActivity.this.finish();
                    }
                });
                return;
            }
        }
    }
}
