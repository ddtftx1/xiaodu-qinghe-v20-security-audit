package com.sprd.validationtools.instructions;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.sprd.validationtools.R;

/* loaded from: classes.dex */
public class FactoryReset extends Activity {
    private TextView text;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(128, 128);
        setContentView(R.layout.info_layout);
        new AlertDialog.Builder(this).setTitle(R.string.reset).setMessage(R.string.factory_reset_message).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.instructions.FactoryReset.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FactoryReset.this.finish();
            }
        }).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sprd.validationtools.instructions.FactoryReset.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.intent.action.FACTORY_RESET");
                intent.setPackage("android");
                intent.addFlags(268435456);
                intent.putExtra("android.intent.extra.REASON", "MasterClearConfirm");
                intent.putExtra("android.intent.extra.WIPE_EXTERNAL_STORAGE", false);
                FactoryReset.this.sendBroadcast(intent);
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
