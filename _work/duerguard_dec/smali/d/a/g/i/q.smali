.class public final Ld/a/g/i/q;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Le/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/i/r;->a()Le/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ld/a/g/i/r;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/z$a;)Le/I;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    check-cast p1, Le/a/c/h;

    invoke-virtual {p1}, Le/a/c/h;->g()Le/F;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Le/a/c/h;->a(Le/F;)Le/I;

    move-result-object p1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    return-object p1
.end method
