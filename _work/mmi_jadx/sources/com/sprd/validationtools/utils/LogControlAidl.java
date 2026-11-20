package com.sprd.validationtools.utils;

import com.sprd.validationtools.nonpublic.ServiceManagerProxy;
import vendor.sprd.hardware.log.ILogControl;

/* loaded from: classes.dex */
public class LogControlAidl {
    private static final String TAG = "MMI-LogControlAidl";
    private ILogControl mLogControlAidlService;

    public LogControlAidl() {
        try {
            this.mLogControlAidlService = ILogControl.Stub.asInterface(ServiceManagerProxy.getService("vendor.sprd.hardware.log.ILogControl/default"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String sendCmd(String str, String str2) {
        try {
            if (this.mLogControlAidlService == null) {
                this.mLogControlAidlService = ILogControl.Stub.asInterface(ServiceManagerProxy.getService("vendor.sprd.hardware.log.ILogControl/default"));
            }
            ILogControl iLogControl = this.mLogControlAidlService;
            if (iLogControl != null) {
                return iLogControl.sendCmd(str, str2);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
