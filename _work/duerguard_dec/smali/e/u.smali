.class public Le/u;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Le/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/v;->a(Le/v;)Le/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/v;


# direct methods
.method public constructor <init>(Le/v;)V
    .locals 0

    .line 57
    iput-object p1, p0, Le/u;->a:Le/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f;)Le/v;
    .locals 1
    .param p1, "call"    # Le/f;

    .line 59
    iget-object v0, p0, Le/u;->a:Le/v;

    return-object v0
.end method
