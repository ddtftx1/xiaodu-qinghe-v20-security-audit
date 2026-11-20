.class public Le/D;
.super Lf/c;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/E;-><init>(Le/C;Le/F;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic k:Le/E;


# direct methods
.method public constructor <init>(Le/E;)V
    .locals 0
    .param p1, "this$0"    # Le/E;

    .line 63
    iput-object p1, p0, Le/D;->k:Le/E;

    invoke-direct {p0}, Lf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 65
    iget-object v0, p0, Le/D;->k:Le/E;

    invoke-virtual {v0}, Le/E;->a()V

    .line 66
    return-void
.end method
