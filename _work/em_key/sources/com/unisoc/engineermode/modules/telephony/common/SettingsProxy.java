package com.unisoc.engineermode.modules.telephony.common;

import android.provider.Settings;
import kotlin.Metadata;

/* compiled from: SettingsProxy.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/unisoc/engineermode/modules/telephony/common/SettingsProxy;", "", "()V", "Global", "vendor__sprd__platform__packages__apps__EngineerMode__modules__telephony__android_common__em-modules-telephony"}, k = 1, mv = {1, 4, 2}, xi = 48)
public final class SettingsProxy {
    public static final SettingsProxy INSTANCE = new SettingsProxy();

    private SettingsProxy() {
    }

    /* compiled from: SettingsProxy.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unisoc/engineermode/modules/telephony/common/SettingsProxy$Global;", "", "()V", "BLE_SCAN_ALWAYS_AVAILABLE", "", "MULTI_SIM_DATA_CALL_SUBSCRIPTION", "PREFERRED_NETWORK_MODE", "getFieldValue", "fieldName", "vendor__sprd__platform__packages__apps__EngineerMode__modules__telephony__android_common__em-modules-telephony"}, k = 1, mv = {1, 4, 2}, xi = 48)
    public static final class Global {
        public static final String BLE_SCAN_ALWAYS_AVAILABLE;
        public static final Global INSTANCE;
        public static final String MULTI_SIM_DATA_CALL_SUBSCRIPTION;
        public static final String PREFERRED_NETWORK_MODE;

        private Global() {
        }

        static {
            Global global = new Global();
            INSTANCE = global;
            PREFERRED_NETWORK_MODE = global.getFieldValue("PREFERRED_NETWORK_MODE");
            MULTI_SIM_DATA_CALL_SUBSCRIPTION = global.getFieldValue("MULTI_SIM_DATA_CALL_SUBSCRIPTION");
            BLE_SCAN_ALWAYS_AVAILABLE = global.getFieldValue("BLE_SCAN_ALWAYS_AVAILABLE");
        }

        private final String getFieldValue(String fieldName) throws IllegalAccessException {
            Object obj = Settings.Global.class.getField(fieldName).get(null);
            if (obj != null) {
                return (String) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
    }
}
