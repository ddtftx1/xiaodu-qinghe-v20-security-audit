package com.sprd.validationtools.nonpublic;

import java.lang.reflect.Field;
import java.util.Objects;
import kotlin.Metadata;

/* compiled from: ThermalProxy.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/sprd/validationtools/nonpublic/Constants;", "", "()V", "ExtThermalCmd", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Constants {
    public static final Constants INSTANCE = new Constants();

    /* compiled from: ThermalProxy.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/sprd/validationtools/nonpublic/Constants$ExtThermalCmd;", "", "()V", "THERMAL_CONST_CLASS_NAME", "", "THMCMD_GET_CHG_STAT", "", "THMCMD_GET_PA_STAT", "THMCMD_GET_STAT", "THMCMD_SET_CHG_DIS", "THMCMD_SET_CHG_EN", "THMCMD_SET_DIS", "THMCMD_SET_EN", "THMCMD_SET_PA_DIS", "THMCMD_SET_PA_EN", "thermalConstObject", "Ljava/lang/Class;", "getFieldValue", "fieldName", "app_sprdDevRelease"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class ExtThermalCmd {
        public static final ExtThermalCmd INSTANCE = new ExtThermalCmd();
        private static final String THERMAL_CONST_CLASS_NAME = "vendor.sprd.hardware.thermal.V1_0.Constants$ExtThermalCmd";
        public static final int THMCMD_GET_CHG_STAT;
        public static final int THMCMD_GET_PA_STAT;
        public static final int THMCMD_GET_STAT;
        public static final int THMCMD_SET_CHG_DIS;
        public static final int THMCMD_SET_CHG_EN;
        public static final int THMCMD_SET_DIS;
        public static final int THMCMD_SET_EN;
        public static final int THMCMD_SET_PA_DIS;
        public static final int THMCMD_SET_PA_EN;
        private static Class<?> thermalConstObject;

        private ExtThermalCmd() {
        }

        static {
            try {
                thermalConstObject = Class.forName(THERMAL_CONST_CLASS_NAME);
            } catch (Exception unused) {
            }
            ExtThermalCmd extThermalCmd = INSTANCE;
            THMCMD_SET_EN = extThermalCmd.getFieldValue("THMCMD_SET_EN");
            THMCMD_SET_DIS = extThermalCmd.getFieldValue("THMCMD_SET_DIS");
            THMCMD_GET_STAT = extThermalCmd.getFieldValue("THMCMD_GET_STAT");
            THMCMD_SET_PA_EN = extThermalCmd.getFieldValue("THMCMD_SET_PA_EN");
            THMCMD_SET_PA_DIS = extThermalCmd.getFieldValue("THMCMD_SET_PA_DIS");
            THMCMD_GET_PA_STAT = extThermalCmd.getFieldValue("THMCMD_GET_PA_STAT");
            THMCMD_SET_CHG_EN = extThermalCmd.getFieldValue("THMCMD_SET_CHG_EN");
            THMCMD_SET_CHG_DIS = extThermalCmd.getFieldValue("THMCMD_SET_CHG_DIS");
            THMCMD_GET_CHG_STAT = extThermalCmd.getFieldValue("THMCMD_GET_CHG_STAT");
        }

        private final int getFieldValue(String str) throws IllegalAccessException, IllegalArgumentException {
            Field field;
            Class<?> cls = thermalConstObject;
            Object obj = null;
            if (cls != null && (field = cls.getField(str)) != null) {
                obj = field.get(null);
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
            return ((Integer) obj).intValue();
        }
    }

    private Constants() {
    }
}
