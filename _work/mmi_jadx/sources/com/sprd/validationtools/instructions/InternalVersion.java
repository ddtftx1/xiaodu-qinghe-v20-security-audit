package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.SystemProperties;
import android.widget.TextView;
import androidx.core.os.EnvironmentCompat;
import com.sprd.validationtools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class InternalVersion extends Activity {
    private TextView text;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.info_layout);
        ArrayList arrayList = new ArrayList();
        arrayList.add(SystemProperties.get("ro.boot.hardware.sku", EnvironmentCompat.MEDIA_UNKNOWN));
        arrayList.add(SystemProperties.get("ro.build.custom_version", EnvironmentCompat.MEDIA_UNKNOWN));
        arrayList.add(SystemProperties.get("ro.build.custom_int_version", EnvironmentCompat.MEDIA_UNKNOWN));
        new AlertDialog.Builder(this).setTitle(R.string.internal_version_title).setItems((CharSequence[]) arrayList.toArray(new String[arrayList.size()]), (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.instructions.InternalVersion.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                InternalVersion.this.finish();
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
