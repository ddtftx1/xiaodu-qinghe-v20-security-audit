.class public final Le/m;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m$a;
    }
.end annotation


# static fields
.field public static final a:[Le/i;

.field public static final b:[Le/i;

.field public static final c:Le/m;

.field public static final d:Le/m;


# instance fields
.field public final e:Z

.field public final f:Z

.field public final g:[Ljava/lang/String;

.field public final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 44
    const/16 v0, 0xb

    new-array v1, v0, [Le/i;

    sget-object v2, Le/i;->p:Le/i;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/i;->q:Le/i;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Le/i;->r:Le/i;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Le/i;->s:Le/i;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Le/i;->t:Le/i;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Le/i;->j:Le/i;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Le/i;->l:Le/i;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Le/i;->k:Le/i;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Le/i;->m:Le/i;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Le/i;->o:Le/i;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Le/i;->n:Le/i;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Le/m;->a:[Le/i;

    .line 63
    const/16 v1, 0x12

    new-array v1, v1, [Le/i;

    sget-object v2, Le/i;->p:Le/i;

    aput-object v2, v1, v3

    sget-object v2, Le/i;->q:Le/i;

    aput-object v2, v1, v4

    sget-object v2, Le/i;->r:Le/i;

    aput-object v2, v1, v5

    sget-object v2, Le/i;->s:Le/i;

    aput-object v2, v1, v6

    sget-object v2, Le/i;->t:Le/i;

    aput-object v2, v1, v7

    sget-object v2, Le/i;->j:Le/i;

    aput-object v2, v1, v8

    sget-object v2, Le/i;->l:Le/i;

    aput-object v2, v1, v9

    sget-object v2, Le/i;->k:Le/i;

    aput-object v2, v1, v10

    sget-object v2, Le/i;->m:Le/i;

    aput-object v2, v1, v11

    sget-object v2, Le/i;->o:Le/i;

    aput-object v2, v1, v12

    sget-object v2, Le/i;->n:Le/i;

    aput-object v2, v1, v13

    sget-object v2, Le/i;->h:Le/i;

    aput-object v2, v1, v0

    sget-object v0, Le/i;->i:Le/i;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Le/i;->f:Le/i;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Le/i;->g:Le/i;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Le/i;->d:Le/i;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Le/i;->e:Le/i;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Le/i;->c:Le/i;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Le/m;->b:[Le/i;

    .line 91
    new-instance v0, Le/m$a;

    invoke-direct {v0, v4}, Le/m$a;-><init>(Z)V

    sget-object v1, Le/m;->a:[Le/i;

    .line 92
    invoke-virtual {v0, v1}, Le/m$a;->a([Le/i;)Le/m$a;

    new-array v1, v5, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->b:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 93
    invoke-virtual {v0, v1}, Le/m$a;->a([Lokhttp3/TlsVersion;)Le/m$a;

    .line 94
    invoke-virtual {v0, v4}, Le/m$a;->a(Z)Le/m$a;

    .line 95
    invoke-virtual {v0}, Le/m$a;->a()Le/m;

    .line 98
    new-instance v0, Le/m$a;

    invoke-direct {v0, v4}, Le/m$a;-><init>(Z)V

    sget-object v1, Le/m;->b:[Le/i;

    .line 99
    invoke-virtual {v0, v1}, Le/m$a;->a([Le/i;)Le/m$a;

    new-array v1, v7, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->b:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->c:Lokhttp3/TlsVersion;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/TlsVersion;->d:Lokhttp3/TlsVersion;

    aput-object v2, v1, v6

    .line 100
    invoke-virtual {v0, v1}, Le/m$a;->a([Lokhttp3/TlsVersion;)Le/m$a;

    .line 101
    invoke-virtual {v0, v4}, Le/m$a;->a(Z)Le/m$a;

    .line 102
    invoke-virtual {v0}, Le/m$a;->a()Le/m;

    move-result-object v0

    sput-object v0, Le/m;->c:Le/m;

    .line 105
    new-instance v0, Le/m$a;

    invoke-direct {v0, v4}, Le/m$a;-><init>(Z)V

    sget-object v1, Le/m;->b:[Le/i;

    .line 106
    invoke-virtual {v0, v1}, Le/m$a;->a([Le/i;)Le/m$a;

    new-array v1, v4, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->d:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    .line 107
    invoke-virtual {v0, v1}, Le/m$a;->a([Lokhttp3/TlsVersion;)Le/m$a;

    .line 108
    invoke-virtual {v0, v4}, Le/m$a;->a(Z)Le/m$a;

    .line 109
    invoke-virtual {v0}, Le/m$a;->a()Le/m;

    .line 112
    new-instance v0, Le/m$a;

    invoke-direct {v0, v3}, Le/m$a;-><init>(Z)V

    invoke-virtual {v0}, Le/m$a;->a()Le/m;

    move-result-object v0

    sput-object v0, Le/m;->d:Le/m;

    return-void
.end method

.method public constructor <init>(Le/m$a;)V
    .locals 1
    .param p1, "builder"    # Le/m$a;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-boolean v0, p1, Le/m$a;->a:Z

    iput-boolean v0, p0, Le/m;->e:Z

    .line 121
    iget-object v0, p1, Le/m$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Le/m;->g:[Ljava/lang/String;

    .line 122
    iget-object v0, p1, Le/m$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Le/m;->h:[Ljava/lang/String;

    .line 123
    iget-boolean v0, p1, Le/m$a;->d:Z

    iput-boolean v0, p0, Le/m;->f:Z

    .line 124
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Le/m;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/i;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 152
    invoke-virtual {p0, p1, p2}, Le/m;->b(Ljavax/net/ssl/SSLSocket;Z)Le/m;

    move-result-object v0

    .line 154
    .local v0, "specToApply":Le/m;
    iget-object v1, v0, Le/m;->h:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, v0, Le/m;->g:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 202
    iget-boolean v0, p0, Le/m;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 206
    :cond_0
    iget-object v0, p0, Le/m;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Le/a/e;->o:Ljava/util/Comparator;

    .line 207
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v2, v0, v3}, Le/a/e;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    return v1

    .line 211
    :cond_1
    iget-object v0, p0, Le/m;->g:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Le/i;->a:Ljava/util/Comparator;

    .line 212
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v2, v0, v3}, Le/a/e;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    return v1

    .line 216
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;Z)Le/m;
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 167
    iget-object v0, p0, Le/m;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Le/i;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/m;->g:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Le/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 170
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    iget-object v1, p0, Le/m;->h:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 171
    sget-object v1, Le/a/e;->o:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/m;->h:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Le/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 176
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "supportedCipherSuites":[Ljava/lang/String;
    sget-object v3, Le/i;->a:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Le/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "indexOfFallbackScsv":I
    if-eqz p2, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 180
    aget-object v4, v2, v3

    invoke-static {v0, v4}, Le/a/e;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_2
    new-instance v4, Le/m$a;

    invoke-direct {v4, p0}, Le/m$a;-><init>(Le/m;)V

    .line 185
    invoke-virtual {v4, v0}, Le/m$a;->a([Ljava/lang/String;)Le/m$a;

    .line 186
    invoke-virtual {v4, v1}, Le/m$a;->b([Ljava/lang/String;)Le/m$a;

    .line 187
    invoke-virtual {v4}, Le/m$a;->a()Le/m;

    move-result-object v4

    .line 184
    return-object v4
.end method

.method public b()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Le/m;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Le/m;->f:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Le/m;->h:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/TlsVersion;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 220
    instance-of v0, p1, Le/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 223
    :cond_1
    move-object v2, p1

    check-cast v2, Le/m;

    .line 224
    .local v2, "that":Le/m;
    iget-boolean v3, p0, Le/m;->e:Z

    iget-boolean v4, v2, Le/m;->e:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 226
    :cond_2
    if-eqz v3, :cond_5

    .line 227
    iget-object v3, p0, Le/m;->g:[Ljava/lang/String;

    iget-object v4, v2, Le/m;->g:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 228
    :cond_3
    iget-object v3, p0, Le/m;->h:[Ljava/lang/String;

    iget-object v4, v2, Le/m;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 229
    :cond_4
    iget-boolean v3, p0, Le/m;->f:Z

    iget-boolean v4, v2, Le/m;->f:Z

    if-eq v3, v4, :cond_5

    return v1

    .line 232
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 236
    const/16 v0, 0x11

    .line 237
    .local v0, "result":I
    iget-boolean v1, p0, Le/m;->e:Z

    if-eqz v1, :cond_0

    .line 238
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Le/m;->g:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 239
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Le/m;->h:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 240
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Le/m;->f:Z

    xor-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    .line 242
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    iget-boolean v0, p0, Le/m;->e:Z

    if-nez v0, :cond_0

    .line 247
    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Le/m;->g:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 251
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Le/m;->h:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Le/m;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Le/m;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
