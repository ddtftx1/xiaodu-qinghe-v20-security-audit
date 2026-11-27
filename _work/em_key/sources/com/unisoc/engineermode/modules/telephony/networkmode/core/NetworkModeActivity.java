package com.unisoc.engineermode.modules.telephony.networkmode.core;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.unisoc.engineermode.core.factory.ImplFactory;
import com.unisoc.engineermode.core.impl.nonpublic.SystemPropertiesProxy;
import com.unisoc.engineermode.modules.telephony.R;
import com.unisoc.engineermode.modules.telephony.common.ITelephony;
import com.unisoc.engineermode.modules.telephony.common.NotificationBroadcastReceiver;
import com.unisoc.engineermode.modules.telephony.common.TelephonyManagerSprd;
import com.unisoc.engineermode.modules.telephony.networkmode.INetworkMode;

public class NetworkModeActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private static final String CLOSE_NOTICE = "Close after test";
    private static final int DISMISS_PROGRESS_DIALOG = 0;
    private static final String KEY_CSFB = "csfb_key";
    private static final String KEY_CSFB_RTD = "csfb_rtd_key";
    private static final String KEY_FDD = "fdd_csfb_key";
    private static final String KEY_FDD_CSFB = "FDD_CSFB";
    private static final String KEY_LTE_CSFB = "CSFB";
    private static final String KEY_LTE_CSFB_RTD = "CSFB_RTD";
    private static final String KEY_NRTLWG = "nrtlwg_key";
    private static final String KEY_NRTLWG_NRTLWG = "NRTLWG_NRTLWG";
    private static final String KEY_NRTLWG_TLWG = "NRTLWG_TLWG";
    private static final String KEY_SIM_INDEX = "simindex";
    private static final String KEY_SVLTE = "svlte_key";
    private static final String KEY_TD = "td_key";
    private static final String KEY_TDD = "tdd_csfb_key";
    private static final String KEY_TDD_CSFB = "TDD_CSFB";
    private static final String KEY_TDD_CSFB_RTD = "TDD_CSFB_RTD";
    private static final String KEY_TDD_RTD = "tdd_csfb_rtd_key";
    private static final String KEY_TDD_SVLTE = "TDD_SVLTE";
    private static final String KEY_TDD_TDD = "TDD_TDD";
    private static final String KEY_TDD_TDD_RTD = "TDD_TDD_RTD";
    private static final String KEY_TD_TD = "TD_TD";
    private static final String KEY_TLTWCG = "tltwcg_key";
    private static final String KEY_TLTWCG_RTD = "tltwcg_rtd_key";
    private static final String KEY_TLTWCG_TLTWCG = "TLTWCG_TLTWCG";
    private static final String KEY_TLTWCG_TLTWCG_RTD = "TLTWCG_TLTWCG_RTD";
    private static final String NETWORK_NR_ENABLE = "persist.sys.eng.nr.enable";
    private static final String NEW_MESSAGE = "Notice From EngineerMode!";
    private static final String NORMAL_MODE = "2";
    private static final String NOTIFICATION_CHANNEL_ID = "mobileServiceMessages";
    private static final int NOTIFICATION_ID = 4387;
    private static final String NR_ONLY_MODE = "1";
    private static final String NSA_ONLY_MODE = "0";
    private static final int SHOW_PROGRESS_DIALOG = 1;
    private static final String TAG = "NetworkModeActivity";
    private TelephonyManagerSprd.RadioCapbility mCurrentRadioCapbility;
    private int mCurrentRadioFeatures;
    private ListPreference mListPreferenceCSFB;
    private ListPreference mListPreferenceCSFB_RTD;
    private ListPreference mListPreferenceFDD;
    private ListPreference mListPreferenceNRTLWG;
    private ListPreference mListPreferenceSVLTE;
    private ListPreference mListPreferenceTD;
    private ListPreference mListPreferenceTDD;
    private ListPreference mListPreferenceTDD_RTD;
    private ListPreference mListPreferenceTLTWCG;
    private ListPreference mListPreferenceTLTWCG_RTD;
    private NotificationManager mNotifiCation;
    private ProgressDialog mProgressDialog;
    private SharedPreferences mSharePref;
    private TelephonyManagerSprd mTelephonyManager;
    private int simId;
    private TelephonyManagerSprd.RadioCapbility mLastRadio = null;
    private int mLastValueIndex = 0;
    private boolean isSupportTDD = TelephonyManagerSprd.RadioCapbility.TDD_CSFB.equals(TelephonyManagerSprd.getRadioCapbility());
    private ITelephony teleImpl = (ITelephony) ImplFactory.create(ITelephony.class);
    private INetworkMode impl = (INetworkMode) ImplFactory.create(INetworkMode.class);
    private int mRetValue = 0;
    private LteMainHandler mLteMainHandler = new LteMainHandler();

    public class LteMainHandler extends Handler {
        public LteMainHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    NetworkModeActivity.this.dismissProgressDialog();
                    NetworkModeActivity.this.updateListPreferenceUI();
                    break;
                case 1:
                    NetworkModeActivity.this.showProgressDialog();
                    break;
                default:
                    Log.d(NetworkModeActivity.TAG, "LteMainHandler message is wrong!");
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        String progressDialogHint = getResources().getString(R.string.network_mode_switch_hint);
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mProgressDialog = progressDialog;
        progressDialog.setMessage(progressDialogHint);
        this.mProgressDialog.setProgressStyle(0);
        this.mProgressDialog.setCancelable(false);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        if (this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListPreferenceUI() {
        if (this.mRetValue < 0) {
            retrievePrefIndex(this.mLastRadio, this.mLastValueIndex);
            String switchFailedHint = getResources().getString(R.string.network_mode_switch_faided_hint);
            Toast.makeText(this, switchFailedHint, 0).show();
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.TDD_CSFB) {
            this.mListPreferenceTDD.setValueIndex(changeValueToIndex(KEY_TDD));
            ListPreference listPreference = this.mListPreferenceTDD;
            listPreference.setSummary(listPreference.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.TDD_CSFB_RTD) {
            this.mListPreferenceTDD_RTD.setValueIndex(changeValueToIndex(KEY_TDD_RTD));
            ListPreference listPreference2 = this.mListPreferenceTDD_RTD;
            listPreference2.setSummary(listPreference2.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.FDD_CSFB || this.impl.getValue("ro.product.name").contains("oversea") || this.impl.getValue("ro.build.display.id").contains("oversea")) {
            this.mListPreferenceFDD.setValueIndex(changeValueToIndex(KEY_FDD));
            ListPreference listPreference3 = this.mListPreferenceFDD;
            listPreference3.setSummary(listPreference3.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.CSFB || this.mCurrentRadioCapbility.toString().equals(KEY_TDD_TDD)) {
            this.mListPreferenceCSFB.setValueIndex(changeValueToIndex(KEY_CSFB));
            ListPreference listPreference4 = this.mListPreferenceCSFB;
            listPreference4.setSummary(listPreference4.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.CSFB_RTD || this.mCurrentRadioCapbility.toString().equals(KEY_TDD_TDD_RTD)) {
            this.mListPreferenceCSFB_RTD.setValueIndex(changeValueToIndex(KEY_CSFB_RTD));
            ListPreference listPreference5 = this.mListPreferenceCSFB_RTD;
            listPreference5.setSummary(listPreference5.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG) {
            this.mListPreferenceTLTWCG.setValueIndex(changeValueToIndex(KEY_TLTWCG));
            ListPreference listPreference6 = this.mListPreferenceTLTWCG;
            listPreference6.setSummary(listPreference6.getEntry());
            return;
        }
        if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.TD_TD || this.mCurrentRadioCapbility.toString().equals(KEY_TD_TD)) {
            this.mListPreferenceTD.setValueIndex(changeValueToIndex(KEY_TD));
            ListPreference listPreference7 = this.mListPreferenceTD;
            listPreference7.setSummary(listPreference7.getEntry());
        } else if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG_RTD) {
            this.mListPreferenceTLTWCG_RTD.setValueIndex(changeValueToIndex(KEY_TLTWCG_RTD));
            ListPreference listPreference8 = this.mListPreferenceTLTWCG_RTD;
            listPreference8.setSummary(listPreference8.getEntry());
        } else if (this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.NRTLWG_TLWG || this.mCurrentRadioCapbility == TelephonyManagerSprd.RadioCapbility.NRTLWG_NRTLWG) {
            this.mListPreferenceNRTLWG.setValueIndex(changeValueToIndex(KEY_NRTLWG));
            ListPreference listPreference9 = this.mListPreferenceNRTLWG;
            listPreference9.setSummary(listPreference9.getEntry());
        } else {
            this.mListPreferenceCSFB.setValueIndex(changeValueToIndex(KEY_CSFB));
            ListPreference listPreference10 = this.mListPreferenceCSFB;
            listPreference10.setSummary(listPreference10.getEntry());
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        this.simId = intent.getIntExtra("simindex", 0);
        Log.d(TAG, "onCreate getIntExtra simId = " + this.simId);
        setTitle("SIM" + this.simId);
        addPreferencesFromResource(R.xml.pref_network_mode);
        this.mListPreferenceSVLTE = (ListPreference) findPreference(KEY_SVLTE);
        this.mListPreferenceFDD = (ListPreference) findPreference(KEY_FDD);
        this.mListPreferenceTDD = (ListPreference) findPreference(KEY_TDD);
        this.mListPreferenceCSFB = (ListPreference) findPreference(KEY_CSFB);
        this.mListPreferenceTLTWCG = (ListPreference) findPreference(KEY_TLTWCG);
        this.mListPreferenceNRTLWG = (ListPreference) findPreference(KEY_NRTLWG);
        this.mListPreferenceTDD_RTD = (ListPreference) findPreference(KEY_TDD_RTD);
        this.mListPreferenceCSFB_RTD = (ListPreference) findPreference(KEY_CSFB_RTD);
        this.mListPreferenceTLTWCG_RTD = (ListPreference) findPreference(KEY_TLTWCG_RTD);
        this.mListPreferenceTD = (ListPreference) findPreference(KEY_TD);
        this.mListPreferenceSVLTE.setOnPreferenceChangeListener(this);
        this.mListPreferenceFDD.setOnPreferenceChangeListener(this);
        this.mListPreferenceTDD.setOnPreferenceChangeListener(this);
        this.mListPreferenceCSFB.setOnPreferenceChangeListener(this);
        this.mListPreferenceTLTWCG.setOnPreferenceChangeListener(this);
        this.mListPreferenceNRTLWG.setOnPreferenceChangeListener(this);
        this.mListPreferenceTDD_RTD.setOnPreferenceChangeListener(this);
        this.mListPreferenceCSFB_RTD.setOnPreferenceChangeListener(this);
        this.mListPreferenceTLTWCG_RTD.setOnPreferenceChangeListener(this);
        this.mListPreferenceTD.setOnPreferenceChangeListener(this);
        this.mSharePref = PreferenceManager.getDefaultSharedPreferences(this);
        this.mTelephonyManager = TelephonyManagerSprd.getInstance();
        new NetworkTypeGainAsyncTask().execute(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initNotifiCation() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        this.mNotifiCation = notificationManager;
        notificationManager.createNotificationChannel(new NotificationChannel(NOTIFICATION_CHANNEL_ID, getResources().getString(R.string.app_name), 2));
        RemoteViews mRemoteViews = new RemoteViews(getPackageName(), R.layout.notification);
        mRemoteViews.setTextViewText(R.id.mt_notification, NEW_MESSAGE);
        Intent clickIntent = new Intent(this, (Class<?>) NotificationBroadcastReceiver.class);
        clickIntent.putExtra("notificationId", NOTIFICATION_ID);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(this, 0, clickIntent, 67108864);
        mRemoteViews.setOnClickPendingIntent(R.id.bt_notification, pendingIntent);
        Notification notify = new Notification.Builder(this, NOTIFICATION_CHANNEL_ID).setContent(mRemoteViews).setAutoCancel(true).setContentTitle(NEW_MESSAGE).setContentText(CLOSE_NOTICE).setPriority(0).setOngoing(true).setSmallIcon(R.drawable.cg).build();
        this.mNotifiCation.notify(NOTIFICATION_ID, notify);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int changeValueToIndex(String PrefKey) {
        int i;
        if (PrefKey.equals(KEY_FDD)) {
            int i2 = this.mCurrentRadioFeatures;
            if (i2 == 54) {
                return 0;
            }
            if (i2 == 55) {
                return 1;
            }
            if (i2 == 51) {
                return 2;
            }
            if (i2 == 52) {
                return 3;
            }
            if (i2 == 53) {
                return 4;
            }
            if (i2 == 56) {
                return 5;
            }
            if (i2 == 60) {
                return 6;
            }
            if (i2 == 61) {
                return 7;
            }
            if (i2 != 64) {
                return 5;
            }
            return 8;
        }
        if (PrefKey.equals(KEY_TDD)) {
            int i3 = this.mCurrentRadioFeatures;
            if (i3 == 57) {
                return 0;
            }
            if (i3 == 51) {
                return 1;
            }
            if (i3 == 52) {
                return 2;
            }
            if (i3 == 53) {
                return 3;
            }
            if (i3 == 58) {
                return 4;
            }
            if (i3 == 60) {
                if (this.isSupportTDD) {
                    return 2;
                }
                return 5;
            }
            if (i3 == 62) {
                if (this.isSupportTDD) {
                    return 3;
                }
                return 6;
            }
            if (i3 != 63) {
                return 0;
            }
            if (this.isSupportTDD) {
                return 4;
            }
            return 7;
        }
        if (PrefKey.equals(KEY_TDD_RTD)) {
            int i4 = this.mCurrentRadioFeatures;
            if (i4 == 51) {
                return 0;
            }
            if (i4 == 52) {
                return 1;
            }
            if (i4 == 53) {
                return 2;
            }
            if (i4 == 66) {
                return 3;
            }
            return i4 == 60 ? 4 : 0;
        }
        if (PrefKey.equals(KEY_CSFB)) {
            int i5 = this.mCurrentRadioFeatures;
            if (i5 == 59) {
                return 0;
            }
            if (i5 == 56) {
                return 1;
            }
            if (i5 == 54) {
                return 2;
            }
            if (i5 == 55) {
                return 3;
            }
            if (i5 == 51) {
                return 4;
            }
            if (i5 == 52) {
                return 5;
            }
            if (i5 == 53) {
                return 6;
            }
            if (i5 == 57) {
                return 7;
            }
            if (i5 == 58) {
                return 8;
            }
            if (i5 == 60) {
                return 9;
            }
            if (i5 == 61) {
                return 10;
            }
            if (i5 == 64) {
                return 11;
            }
            if (i5 == 62) {
                return 12;
            }
            return i5 == 63 ? 13 : 0;
        }
        if (PrefKey.equals(KEY_CSFB_RTD)) {
            int i6 = this.mCurrentRadioFeatures;
            if (i6 == 56) {
                return 0;
            }
            if (i6 == 54) {
                return 1;
            }
            if (i6 == 55) {
                return 2;
            }
            if (i6 == 51) {
                return 3;
            }
            if (i6 == 52) {
                return 4;
            }
            if (i6 == 53) {
                return 5;
            }
            if (i6 == 66) {
                return 6;
            }
            if (i6 == 60) {
                return 7;
            }
            if (i6 == 61) {
                return 8;
            }
            return i6 == 64 ? 9 : 0;
        }
        if (PrefKey.equals(KEY_TLTWCG)) {
            int i7 = this.mCurrentRadioFeatures;
            if (i7 == 60) {
                return 0;
            }
            if (i7 == 61) {
                return 1;
            }
            if (i7 == 64) {
                return 2;
            }
            if (i7 == 53) {
                return 3;
            }
            if (i7 == 59) {
                return 4;
            }
            if (i7 == 72) {
                return 5;
            }
            if (i7 == 73) {
                return 6;
            }
            if (i7 == 74) {
                return 7;
            }
            if (i7 == 67) {
                return 8;
            }
            return i7 == 65 ? 9 : 0;
        }
        if (PrefKey.equals(KEY_TLTWCG_RTD)) {
            int i8 = this.mCurrentRadioFeatures;
            if (i8 == 60) {
                return 0;
            }
            if (i8 == 61) {
                return 1;
            }
            if (i8 == 64) {
                return 2;
            }
            if (i8 == 53) {
                return 3;
            }
            if (i8 == 56) {
                return 4;
            }
            if (i8 == 72) {
                return 5;
            }
            if (i8 == 73) {
                return 6;
            }
            if (i8 == 74) {
                return 7;
            }
            if (i8 == 77) {
                return 8;
            }
            return i8 == 76 ? 9 : 0;
        }
        if (PrefKey.equals(KEY_TD)) {
            int i9 = this.mCurrentRadioFeatures;
            if (i9 == 60) {
                return 0;
            }
            if (i9 == 61) {
                return 1;
            }
            if (i9 == 64) {
                return 2;
            }
            if (i9 == 53) {
                return 3;
            }
            if (i9 == 66) {
                return 4;
            }
            if (i9 == 56) {
                return 5;
            }
            if (i9 == 51) {
                return 6;
            }
            if (i9 == 52) {
                return 7;
            }
            if (i9 == 54) {
                return 8;
            }
            if (i9 == 55) {
                return 9;
            }
            return i9 == 68 ? 10 : 0;
        }
        if (!PrefKey.equals(KEY_NRTLWG) || (i = this.mCurrentRadioFeatures) == 56) {
            return 0;
        }
        if (i == 53) {
            return 1;
        }
        if (i == 64) {
            return 2;
        }
        if (i == 61) {
            return 3;
        }
        if (i == 60) {
            return 4;
        }
        if (i == 71) {
            return 5;
        }
        if (i == 70) {
            return 6;
        }
        return i == 69 ? 7 : 0;
    }

    private int changeIndexToValue(TelephonyManagerSprd.RadioCapbility radio, int setValueIndex) {
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.FDD_CSFB)) {
            switch (setValueIndex) {
                case 0:
                    return 54;
                case 1:
                    return 55;
                case 2:
                    return 51;
                case 3:
                    return 52;
                case 4:
                    return 53;
                case 5:
                    return 56;
                case 6:
                    return 60;
                case 7:
                    return 61;
                case 8:
                    return 64;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_CSFB)) {
            switch (setValueIndex) {
                case 0:
                    return 57;
                case 1:
                    return 51;
                case 2:
                    if (this.isSupportTDD) {
                        return 60;
                    }
                    return 52;
                case 3:
                    if (this.isSupportTDD) {
                        return 62;
                    }
                    return 53;
                case 4:
                    if (this.isSupportTDD) {
                        return 63;
                    }
                    return 58;
                case 5:
                    return 60;
                case 6:
                    return 62;
                case 7:
                    return 63;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_CSFB_RTD)) {
            switch (setValueIndex) {
                case 0:
                    return 51;
                case 1:
                    if (this.isSupportTDD) {
                        return 60;
                    }
                    return 52;
                case 2:
                    if (this.isSupportTDD) {
                        return 62;
                    }
                    return 53;
                case 3:
                    if (this.isSupportTDD) {
                        return 63;
                    }
                    return 66;
                case 4:
                    return 60;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB)) {
            switch (setValueIndex) {
                case 0:
                    return 59;
                case 1:
                    return 56;
                case 2:
                    return 54;
                case 3:
                    return 55;
                case 4:
                    return 51;
                case 5:
                    return 52;
                case 6:
                    return 53;
                case 7:
                    return 57;
                case 8:
                    return 58;
                case 9:
                    return 60;
                case 10:
                    return 61;
                case 11:
                    return 64;
                case 12:
                    return 62;
                case 13:
                    return 63;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB_RTD)) {
            switch (setValueIndex) {
                case 0:
                    return 56;
                case 1:
                    return 54;
                case 2:
                    return 55;
                case 3:
                    return 51;
                case 4:
                    return 52;
                case 5:
                    return 53;
                case 6:
                    return 66;
                case 7:
                    return 60;
                case 8:
                    return 61;
                case 9:
                    return 64;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG)) {
            switch (setValueIndex) {
                case 0:
                    return 60;
                case 1:
                    return 61;
                case 2:
                    return 64;
                case 3:
                    return 53;
                case 4:
                    return 59;
                case 5:
                    return 72;
                case 6:
                    return 73;
                case 7:
                    return 74;
                case 8:
                    return 67;
                case 9:
                    return 65;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG_RTD)) {
            switch (setValueIndex) {
                case 0:
                    return 60;
                case 1:
                    return 61;
                case 2:
                    return 64;
                case 3:
                    return 53;
                case 4:
                    return 56;
                case 5:
                    return 72;
                case 6:
                    return 73;
                case 7:
                    return 74;
                case 8:
                    return 77;
                case 9:
                    return 76;
                default:
                    return -1;
            }
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.NRTLWG_TLWG)) {
            switch (setValueIndex) {
                case 0:
                    return 56;
                case 1:
                    return 53;
                case 2:
                    return 64;
                case 3:
                    return 61;
                case 4:
                    return 60;
                case 5:
                    return 71;
                case 6:
                    return 70;
                case 7:
                    return 69;
                default:
                    return -1;
            }
        }
        if (!radio.equals(TelephonyManagerSprd.RadioCapbility.TD_TD)) {
            return -1;
        }
        switch (setValueIndex) {
            case 0:
                return 60;
            case 1:
                return 61;
            case 2:
                return 64;
            case 3:
                return 53;
            case 4:
                return 66;
            case 5:
                return 56;
            case 6:
                return 51;
            case 7:
                return 52;
            case 8:
                return 54;
            case 9:
                return 55;
            case 10:
                return 68;
            default:
                return -1;
        }
    }

    private void setSummary(TelephonyManagerSprd.RadioCapbility radio) {
        if (radio == null) {
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_SVLTE)) {
            ListPreference listPreference = this.mListPreferenceSVLTE;
            listPreference.setSummary(listPreference.getEntry());
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.FDD_CSFB)) {
            ListPreference listPreference2 = this.mListPreferenceFDD;
            listPreference2.setSummary(listPreference2.getEntry());
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_CSFB)) {
            ListPreference listPreference3 = this.mListPreferenceTDD;
            listPreference3.setSummary(listPreference3.getEntry());
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB)) {
            ListPreference listPreference4 = this.mListPreferenceCSFB;
            listPreference4.setSummary(listPreference4.getEntry());
        } else if (radio.equals(TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG)) {
            ListPreference listPreference5 = this.mListPreferenceTLTWCG;
            listPreference5.setSummary(listPreference5.getEntry());
        } else if (radio.equals(TelephonyManagerSprd.RadioCapbility.NRTLWG_TLWG)) {
            ListPreference listPreference6 = this.mListPreferenceNRTLWG;
            listPreference6.setSummary(listPreference6.getEntry());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retrievePrefIndex(TelephonyManagerSprd.RadioCapbility radio, int lastValueIndex) {
        if (radio == null) {
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.FDD_CSFB)) {
            this.mListPreferenceFDD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit = this.mSharePref.edit();
            edit.putString(KEY_FDD, this.mListPreferenceFDD.getValue());
            edit.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_CSFB)) {
            this.mListPreferenceTDD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit2 = this.mSharePref.edit();
            edit2.putString(KEY_TDD, this.mListPreferenceTDD.getValue());
            edit2.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB)) {
            this.mListPreferenceCSFB.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit3 = this.mSharePref.edit();
            edit3.putString(KEY_CSFB, this.mListPreferenceCSFB.getValue());
            edit3.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.NRTLWG_TLWG)) {
            this.mListPreferenceNRTLWG.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit4 = this.mSharePref.edit();
            edit4.putString(KEY_NRTLWG, this.mListPreferenceNRTLWG.getValue());
            edit4.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TD_TD)) {
            this.mListPreferenceTD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit5 = this.mSharePref.edit();
            edit5.putString(KEY_TD, this.mListPreferenceTD.getValue());
            edit5.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_TDD_RTD)) {
            this.mListPreferenceTDD_RTD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit6 = this.mSharePref.edit();
            edit6.putString(KEY_TDD_RTD, this.mListPreferenceTDD_RTD.getValue());
            edit6.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB_RTD)) {
            this.mListPreferenceCSFB_RTD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit7 = this.mSharePref.edit();
            edit7.putString(KEY_CSFB_RTD, this.mListPreferenceCSFB_RTD.getValue());
            edit7.commit();
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG_RTD)) {
            this.mListPreferenceTLTWCG_RTD.setValueIndex(lastValueIndex);
            SharedPreferences.Editor edit8 = this.mSharePref.edit();
            edit8.putString(KEY_TLTWCG_RTD, this.mListPreferenceTLTWCG_RTD.getValue());
            edit8.commit();
        }
    }

    private void retrieveCapbility(TelephonyManagerSprd.RadioCapbility radio) {
        if (radio == null) {
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_SVLTE)) {
            this.mListPreferenceSVLTE.setValue(null);
            return;
        }
        if (radio.equals(TelephonyManagerSprd.RadioCapbility.FDD_CSFB)) {
            this.mListPreferenceFDD.setValue(null);
        } else if (radio.equals(TelephonyManagerSprd.RadioCapbility.TDD_CSFB)) {
            this.mListPreferenceTDD.setValue(null);
        } else if (radio.equals(TelephonyManagerSprd.RadioCapbility.CSFB)) {
            this.mListPreferenceCSFB.setValue(null);
        }
    }

    public AlertDialog showAlertDialog(final TelephonyManagerSprd.RadioCapbility mRadio, int setValueIndex, final int valueIndex) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        final int setRadioFeature = changeIndexToValue(mRadio, setValueIndex);
        Log.d(TAG, "setRadioFeature is " + setRadioFeature);
        builder.setMessage(getString(R.string.setting_dialog_con1)).setCancelable(false).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.unisoc.engineermode.modules.telephony.networkmode.core.NetworkModeActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                if (!NetworkModeActivity.this.teleImpl.isEngTest()) {
                    NetworkModeActivity.this.teleImpl.set(1);
                    Log.d(NetworkModeActivity.TAG, "get vSystemProperties is false");
                    NetworkModeActivity.this.initNotifiCation();
                }
                NetworkModeActivity.this.mLastRadio = mRadio;
                NetworkModeActivity.this.mLastValueIndex = valueIndex;
                NetworkModeActivity.this.setRadioFeatures(setRadioFeature);
            }
        }).setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() { // from class: com.unisoc.engineermode.modules.telephony.networkmode.core.NetworkModeActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                NetworkModeActivity.this.retrievePrefIndex(mRadio, valueIndex);
            }
        });
        AlertDialog alert = builder.create();
        alert.show();
        return alert;
    }

    public void setRadioFeatures(final int setRadioFeature) {
        Log.d(TAG, "now setRadioFeatures: " + setRadioFeature);
        if (setRadioFeature != 69 || !SystemPropertiesProxy.get(NETWORK_NR_ENABLE, NORMAL_MODE).equals(NSA_ONLY_MODE)) {
            this.mLteMainHandler.sendEmptyMessage(1);
            new Thread(new Runnable() { // from class: com.unisoc.engineermode.modules.telephony.networkmode.core.NetworkModeActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    if (NetworkModeActivity.this.teleImpl.isSupportLplusG()) {
                        NetworkModeActivity networkModeActivity = NetworkModeActivity.this;
                        networkModeActivity.mRetValue = networkModeActivity.mTelephonyManager.setPreferredNetworkType(setRadioFeature);
                    } else {
                        NetworkModeActivity networkModeActivity2 = NetworkModeActivity.this;
                        networkModeActivity2.mRetValue = networkModeActivity2.mTelephonyManager.setPreferredNetworkType(setRadioFeature, NetworkModeActivity.this.simId);
                    }
                    Log.d(NetworkModeActivity.TAG, "mRetValue is: " + NetworkModeActivity.this.mRetValue);
                    if (setRadioFeature == 69) {
                        SystemPropertiesProxy.set(NetworkModeActivity.NETWORK_NR_ENABLE, NetworkModeActivity.NR_ONLY_MODE);
                    } else if (SystemPropertiesProxy.get(NetworkModeActivity.NETWORK_NR_ENABLE, NetworkModeActivity.NORMAL_MODE).equals(NetworkModeActivity.NR_ONLY_MODE)) {
                        SystemPropertiesProxy.set(NetworkModeActivity.NETWORK_NR_ENABLE, NetworkModeActivity.NORMAL_MODE);
                    }
                    NetworkModeActivity.this.mCurrentRadioFeatures = setRadioFeature;
                    Log.d(NetworkModeActivity.TAG, "mCurrentRadioFeatures is: " + NetworkModeActivity.this.mCurrentRadioFeatures);
                    NetworkModeActivity.this.mLteMainHandler.sendEmptyMessage(0);
                }
            }).start();
        } else {
            Toast.makeText(this, getResources().getString(R.string.unselect_nr_only_prompt), 1).show();
            this.mListPreferenceNRTLWG.setValueIndex(this.mLastValueIndex);
        }
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        TelephonyManagerSprd.RadioCapbility radioCapbility;
        int valueIndex = 0;
        Log.d(TAG, "get vSystemProperties is " + this.teleImpl.isEngTest());
        this.mCurrentRadioCapbility = TelephonyManagerSprd.getRadioCapbility();
        if (!this.teleImpl.isEngTest()) {
            this.teleImpl.set(1);
            if (this.teleImpl.isSupportLplusG()) {
                this.mCurrentRadioFeatures = this.mTelephonyManager.getPreferredNetworkType();
            } else {
                this.mCurrentRadioFeatures = this.mTelephonyManager.getPreferredNetworkType(this.simId);
            }
            this.teleImpl.set(0);
        } else if (this.teleImpl.isSupportLplusG()) {
            this.mCurrentRadioFeatures = this.mTelephonyManager.getPreferredNetworkType();
        } else {
            this.mCurrentRadioFeatures = this.mTelephonyManager.getPreferredNetworkType(this.simId);
        }
        Log.d(TAG, " onPreferenceChange\nmCurrentRadioCapbility is " + this.mCurrentRadioCapbility + ", mCurrentRadioFeatures is " + this.mCurrentRadioFeatures);
        int setValueIndex = Integer.valueOf(newValue.toString()).intValue();
        if (this.mCurrentRadioCapbility.toString().equals(KEY_FDD_CSFB) || this.impl.getValue("ro.product.name").contains("oversea") || this.impl.getValue("ro.build.display.id").contains("oversea")) {
            valueIndex = changeValueToIndex(KEY_FDD);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_TDD_CSFB)) {
            valueIndex = changeValueToIndex(KEY_TDD);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_LTE_CSFB) || this.mCurrentRadioCapbility.toString().equals(KEY_TDD_TDD)) {
            if (this.mCurrentRadioCapbility.toString().equals(KEY_TD_TD) && isChangeValueToTDSCDMA(this.mCurrentRadioCapbility.toString(), setValueIndex)) {
                Toast.makeText(this, getResources().getString(R.string.network_mode_switch_faided_hint), 0).show();
                return false;
            }
            valueIndex = changeValueToIndex(KEY_CSFB);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_TLTWCG_TLTWCG)) {
            valueIndex = changeValueToIndex(KEY_TLTWCG);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_NRTLWG_TLWG) || this.mCurrentRadioCapbility.toString().equals(KEY_NRTLWG_NRTLWG)) {
            valueIndex = changeValueToIndex(KEY_NRTLWG);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_TDD_CSFB_RTD)) {
            valueIndex = changeValueToIndex(KEY_TDD_RTD);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_LTE_CSFB_RTD) || this.mCurrentRadioCapbility.toString().equals(KEY_TLTWCG_TLTWCG_RTD)) {
            valueIndex = changeValueToIndex(KEY_TLTWCG_RTD);
        } else if (this.mCurrentRadioCapbility.toString().equals(KEY_TD_TD)) {
            valueIndex = changeValueToIndex(KEY_TD);
        }
        if (preference instanceof ListPreference) {
            ListPreference listPreference = (ListPreference) preference;
            String key = listPreference.getKey();
            if (key.equals(KEY_FDD)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.FDD_CSFB;
            } else if (key.equals(KEY_CSFB)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.CSFB;
            } else if (key.equals(KEY_TLTWCG)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG;
            } else if (key.equals(KEY_NRTLWG)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.NRTLWG_TLWG;
            } else if (key.equals(KEY_TDD_RTD)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.TDD_CSFB_RTD;
            } else if (key.equals(KEY_CSFB_RTD)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.CSFB_RTD;
            } else if (key.equals(KEY_TLTWCG_RTD)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.TLTWCG_TLTWCG_RTD;
            } else if (key.equals(KEY_TD)) {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.TD_TD;
            } else {
                radioCapbility = TelephonyManagerSprd.RadioCapbility.TDD_CSFB;
            }
            if (setValueIndex != valueIndex) {
                showAlertDialog(radioCapbility, setValueIndex, valueIndex);
            }
            Log.d(TAG, "mCurrentRadioCapbility is " + this.mCurrentRadioCapbility + ", changeradioCapbility is " + radioCapbility + ", setValueIndex is " + setValueIndex + ", valueIndex is " + valueIndex + ", key is " + key);
            return true;
        }
        return true;
    }

    private boolean isChangeValueToTDSCDMA(String mCurRadioCapbility, int mCurValueIndex) {
        if (mCurRadioCapbility.equals(KEY_TD_TD)) {
            return mCurValueIndex == 7 || mCurValueIndex == 8 || mCurValueIndex == 12 || mCurValueIndex == 13;
        }
        return false;
    }

    private class NetworkTypeGainAsyncTask extends AsyncTask<String, Void, Boolean> {
        public NetworkTypeGainAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... params) {
            Log.d(NetworkModeActivity.TAG, "NetworkTypeGainAsyncTask doInBackground");
            NetworkModeActivity.this.mCurrentRadioCapbility = TelephonyManagerSprd.getRadioCapbility();
            if (!NetworkModeActivity.this.teleImpl.isEngTest()) {
                NetworkModeActivity.this.teleImpl.set(1);
                if (NetworkModeActivity.this.teleImpl.isSupportLplusG()) {
                    NetworkModeActivity networkModeActivity = NetworkModeActivity.this;
                    networkModeActivity.mCurrentRadioFeatures = networkModeActivity.mTelephonyManager.getPreferredNetworkType();
                } else {
                    NetworkModeActivity networkModeActivity2 = NetworkModeActivity.this;
                    networkModeActivity2.mCurrentRadioFeatures = networkModeActivity2.mTelephonyManager.getPreferredNetworkType(NetworkModeActivity.this.simId);
                }
                NetworkModeActivity.this.teleImpl.set(0);
            } else if (NetworkModeActivity.this.teleImpl.isSupportLplusG()) {
                NetworkModeActivity networkModeActivity3 = NetworkModeActivity.this;
                networkModeActivity3.mCurrentRadioFeatures = networkModeActivity3.mTelephonyManager.getPreferredNetworkType();
            } else {
                NetworkModeActivity networkModeActivity4 = NetworkModeActivity.this;
                networkModeActivity4.mCurrentRadioFeatures = networkModeActivity4.mTelephonyManager.getPreferredNetworkType(NetworkModeActivity.this.simId);
            }
            Log.d(NetworkModeActivity.TAG, "onCreate mCurrentRadioCapbility is " + NetworkModeActivity.this.mCurrentRadioCapbility.toString() + ", mCurrentRadioFeatures is " + NetworkModeActivity.this.mCurrentRadioFeatures);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            Log.d(NetworkModeActivity.TAG, "NetworkTypeGainAsyncTask onPostExecute");
            PreferenceScreen prefSet = NetworkModeActivity.this.getPreferenceScreen();
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TDD_SVLTE)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceSVLTE.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_SVLTE));
                NetworkModeActivity.this.mListPreferenceSVLTE.setSummary(NetworkModeActivity.this.mListPreferenceSVLTE.getEntry());
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_FDD_CSFB) || NetworkModeActivity.this.impl.getValue("ro.product.name").contains("oversea") || NetworkModeActivity.this.impl.getValue("ro.build.display.id").contains("oversea")) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceFDD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_FDD));
                NetworkModeActivity.this.mListPreferenceFDD.setSummary(NetworkModeActivity.this.mListPreferenceFDD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TDD_CSFB)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceTDD.setEntries(R.array.list_entries_tdd_csfb_change);
                NetworkModeActivity.this.mListPreferenceTDD.setEntryValues(R.array.list_entriesvalues_tdd_csfb_change);
                NetworkModeActivity.this.mListPreferenceTDD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_TDD));
                NetworkModeActivity.this.mListPreferenceTDD.setSummary(NetworkModeActivity.this.mListPreferenceTDD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_LTE_CSFB) || NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TDD_TDD)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceCSFB.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_CSFB));
                NetworkModeActivity.this.mListPreferenceCSFB.setSummary(NetworkModeActivity.this.mListPreferenceCSFB.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TLTWCG_TLTWCG)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_TLTWCG));
                NetworkModeActivity.this.mListPreferenceTLTWCG.setSummary(NetworkModeActivity.this.mListPreferenceTLTWCG.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_NRTLWG_TLWG) || NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_NRTLWG_NRTLWG)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_NRTLWG));
                NetworkModeActivity.this.mListPreferenceNRTLWG.setSummary(NetworkModeActivity.this.mListPreferenceNRTLWG.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TDD_CSFB_RTD)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_TDD_RTD));
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setSummary(NetworkModeActivity.this.mListPreferenceTDD_RTD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TLTWCG_TLTWCG_RTD)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_TLTWCG_RTD));
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setSummary(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_LTE_CSFB_RTD) || NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TDD_TDD_RTD)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTD);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_CSFB_RTD));
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setSummary(NetworkModeActivity.this.mListPreferenceCSFB_RTD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTD.setValue(null);
                return;
            }
            if (NetworkModeActivity.this.mCurrentRadioCapbility.toString().equals(NetworkModeActivity.KEY_TD_TD)) {
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceSVLTE);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceFDD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceNRTLWG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTDD_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceCSFB_RTD);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG);
                prefSet.removePreference(NetworkModeActivity.this.mListPreferenceTLTWCG_RTD);
                NetworkModeActivity.this.mListPreferenceTD.setValueIndex(NetworkModeActivity.this.changeValueToIndex(NetworkModeActivity.KEY_TD));
                NetworkModeActivity.this.mListPreferenceTD.setSummary(NetworkModeActivity.this.mListPreferenceTD.getEntry());
                NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB.setValue(null);
                NetworkModeActivity.this.mListPreferenceNRTLWG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
                NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
                return;
            }
            NetworkModeActivity.this.mListPreferenceSVLTE.setValue(null);
            NetworkModeActivity.this.mListPreferenceFDD.setValue(null);
            NetworkModeActivity.this.mListPreferenceTDD.setValue(null);
            NetworkModeActivity.this.mListPreferenceTLTWCG.setValue(null);
            NetworkModeActivity.this.mListPreferenceTDD_RTD.setValue(null);
            NetworkModeActivity.this.mListPreferenceCSFB_RTD.setValue(null);
            NetworkModeActivity.this.mListPreferenceTLTWCG_RTD.setValue(null);
            NetworkModeActivity.this.mListPreferenceTD.setValue(null);
        }
    }
}
