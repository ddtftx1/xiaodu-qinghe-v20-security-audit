.class public Lcom/baidu/sofire/jni/Asc;
.super Ljava/lang/Object;
.source "Asc.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    :try_start_0
    const-string v0, "fire"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fai(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native ac([B[B)[B
.end method

.method public native acn([B[B)[B
.end method

.method public native ar([B[B)[B
.end method

.method public native dc([B[B)[B
.end method

.method public native dcn([B[B)[B
.end method

.method public native df(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public native dr([B[B)[B
.end method
