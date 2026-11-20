.class public Ld/a/b/c/a/c;
.super Ljava/lang/Object;
.source "PrivacyRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b/c/a/b$b;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/model/privacy/PrivacyRecordItem;

.field public final synthetic b:Ld/a/b/c/a/b$b;


# direct methods
.method public constructor <init>(Ld/a/b/c/a/b$b;Lcom/baidu/model/privacy/PrivacyRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Ld/a/b/c/a/b$b;

    .line 125
    iput-object p1, p0, Ld/a/b/c/a/c;->b:Ld/a/b/c/a/b$b;

    iput-object p2, p0, Ld/a/b/c/a/c;->a:Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 128
    iget-object v0, p0, Ld/a/b/c/a/c;->b:Ld/a/b/c/a/b$b;

    iget-object v0, v0, Ld/a/b/c/a/b$b;->i:Ld/a/b/c/a/b$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Ld/a/b/c/a/c;->a:Lcom/baidu/model/privacy/PrivacyRecordItem;

    invoke-interface {v0, v1}, Ld/a/b/c/a/b$a;->a(Lcom/baidu/model/privacy/PrivacyRecordItem;)V

    .line 131
    :cond_0
    return-void
.end method
