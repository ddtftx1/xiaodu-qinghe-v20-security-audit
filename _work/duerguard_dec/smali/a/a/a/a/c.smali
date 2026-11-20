.class public abstract La/a/a/a/c;
.super Ljava/lang/Object;
.source "BaseReporter.java"


# instance fields
.field public a:La/a/a/e/b;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, La/a/a/a/c;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, La/a/a/a/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lorg/json/JSONObject;IIZ)V
.end method
