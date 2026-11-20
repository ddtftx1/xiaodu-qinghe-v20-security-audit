package com.sprd.validationtools.itemstest.fingerprint;

/* loaded from: classes.dex */
public interface IFactoryTestImpl {
    int deadpixel_test();

    int factory_exit();

    int factory_init();

    int finger_detect(ISprdFingerDetectListener iSprdFingerDetectListener);

    int interrupt_test();

    int spi_test();
}
