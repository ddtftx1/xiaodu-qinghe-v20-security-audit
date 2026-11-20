.class public final Le/a/a/b;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Le/F;

.field public final b:Le/I;


# direct methods
.method public constructor <init>(Le/F;Le/I;)V
    .locals 0
    .param p1, "networkRequest"    # Le/F;
    .param p2, "cacheResponse"    # Le/I;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Le/a/a/b;->a:Le/F;

    .line 59
    iput-object p2, p0, Le/a/a/b;->b:Le/I;

    .line 60
    return-void
.end method

.method public static a(Le/I;Le/F;)Z
    .locals 3
    .param p0, "response"    # Le/I;
    .param p1, "request"    # Le/F;

    .line 66
    invoke-virtual {p0}, Le/I;->k()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Le/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Le/I;->j()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 88
    invoke-virtual {p0}, Le/I;->j()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Le/I;->j()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    return v2

    .line 79
    :cond_2
    :pswitch_1
    nop

    .line 100
    :cond_3
    :goto_1
    invoke-virtual {p0}, Le/I;->j()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->i()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Le/F;->b()Le/e;

    move-result-object v0

    invoke-virtual {v0}, Le/e;->i()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
