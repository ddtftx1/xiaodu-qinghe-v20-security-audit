.class public final Ld/a/g/d/h;
.super Ljava/lang/Object;
.source "MethodImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/g/d/l;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 170
    iput-object p1, p0, Ld/a/g/d/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 174
    :try_start_0
    iget-object v0, p0, Ld/a/g/d/h;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Ld/a/g/d/f;->a(I)V

    .line 177
    nop

    .line 1195
    invoke-virtual {v0}, Ld/a/g/d/f;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 182
    return-void
.end method
