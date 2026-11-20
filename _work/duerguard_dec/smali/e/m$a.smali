.class public final Le/m$a;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Le/m;)V
    .locals 1
    .param p1, "connectionSpec"    # Le/m;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget-boolean v0, p1, Le/m;->e:Z

    iput-boolean v0, p0, Le/m$a;->a:Z

    .line 271
    iget-object v0, p1, Le/m;->g:[Ljava/lang/String;

    iput-object v0, p0, Le/m$a;->b:[Ljava/lang/String;

    .line 272
    iget-object v0, p1, Le/m;->h:[Ljava/lang/String;

    iput-object v0, p0, Le/m$a;->c:[Ljava/lang/String;

    .line 273
    iget-boolean v0, p1, Le/m;->f:Z

    iput-boolean v0, p0, Le/m$a;->d:Z

    .line 274
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-boolean p1, p0, Le/m$a;->a:Z

    .line 267
    return-void
.end method


# virtual methods
.method public a(Z)Le/m$a;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    .line 332
    iget-boolean v0, p0, Le/m$a;->a:Z

    if-eqz v0, :cond_0

    .line 333
    iput-boolean p1, p0, Le/m$a;->d:Z

    .line 334
    return-object p0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a([Le/i;)Le/m$a;
    .locals 3
    .param p1, "cipherSuites"    # [Le/i;

    .line 283
    iget-boolean v0, p0, Le/m$a;->a:Z

    if-eqz v0, :cond_1

    .line 285
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 286
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 287
    aget-object v2, p1, v1

    iget-object v2, v2, Le/i;->u:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Le/m$a;->a([Ljava/lang/String;)Le/m$a;

    return-object p0

    .line 283
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a([Ljava/lang/String;)Le/m$a;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 293
    iget-boolean v0, p0, Le/m$a;->a:Z

    if-eqz v0, :cond_1

    .line 295
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Le/m$a;->b:[Ljava/lang/String;

    .line 300
    return-object p0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a([Lokhttp3/TlsVersion;)Le/m$a;
    .locals 3
    .param p1, "tlsVersions"    # [Lokhttp3/TlsVersion;

    .line 310
    iget-boolean v0, p0, Le/m$a;->a:Z

    if-eqz v0, :cond_1

    .line 312
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 314
    aget-object v2, p1, v1

    iget-object v2, v2, Lokhttp3/TlsVersion;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Le/m$a;->b([Ljava/lang/String;)Le/m$a;

    return-object p0

    .line 310
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Le/m;
    .locals 1

    .line 338
    new-instance v0, Le/m;

    invoke-direct {v0, p0}, Le/m;-><init>(Le/m$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Le/m$a;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .line 321
    iget-boolean v0, p0, Le/m$a;->a:Z

    if-eqz v0, :cond_1

    .line 323
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Le/m$a;->c:[Ljava/lang/String;

    .line 328
    return-object p0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
