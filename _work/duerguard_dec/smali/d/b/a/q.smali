.class public final Ld/b/a/q;
.super Ld/b/a/p;
.source "JsonNull.java"


# static fields
.field public static final a:Ld/b/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ld/b/a/q;

    invoke-direct {v0}, Ld/b/a/q;-><init>()V

    sput-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ld/b/a/p;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 65
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ld/b/a/q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    const-class v0, Ld/b/a/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
