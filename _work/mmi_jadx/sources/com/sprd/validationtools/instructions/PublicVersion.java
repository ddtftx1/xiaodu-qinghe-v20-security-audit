package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.SystemProperties;
import android.widget.TextView;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class PublicVersion extends Activity {
    private TextView text;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.info_layout);
        new AlertDialog.Builder(this).setTitle(R.string.public_version_title).setMessage(SystemProperties.get("ro.build.display.id", EnvironmentCompat.MEDIA_UNKNOWN)).setPositiveButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.instructions.PublicVersion.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                PublicVersion.this.finish();
            }
        }).show();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
