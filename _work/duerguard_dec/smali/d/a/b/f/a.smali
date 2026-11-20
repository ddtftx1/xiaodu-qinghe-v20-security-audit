.class public Ld/a/b/f/a;
.super Ljava/lang/Object;
.source "AppCtx.java"


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .line 20
    sget-object v0, Ld/a/b/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .line 16
    sput-object p0, Ld/a/b/f/a;->a:Landroid/content/Context;

    .line 17
    return-void
.end method
