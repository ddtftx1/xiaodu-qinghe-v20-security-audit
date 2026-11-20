package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.TextView;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class SarInfo extends Activity {
    private TextView text;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.info_layout);
        new AlertDialog.Builder(this).setTitle(R.string.sar_title).setMessage("0.65 W/kg @ 1g (Head)\n 1.35 W/kg @ 1g (Body)").setPositiveButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.instructions.SarInfo.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SarInfo.this.finish();
            }
        }).show().setCanceledOnTouchOutside(false);
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
