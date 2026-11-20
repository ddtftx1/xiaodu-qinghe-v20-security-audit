.class public abstract Le/a/e/k$b;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final a:Le/a/e/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 928
    new-instance v0, Le/a/e/l;

    invoke-direct {v0}, Le/a/e/l;-><init>()V

    sput-object v0, Le/a/e/k$b;->a:Le/a/e/k$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/e/k;)V
    .locals 0
    .param p1, "connection"    # Le/a/e/k;

    .line 950
    return-void
.end method

.method public abstract a(Le/a/e/q;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
