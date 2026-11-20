.class public final Le/w;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field public final a:Lokhttp3/TlsVersion;

.field public final b:Le/i;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/TlsVersion;Le/i;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tlsVersion"    # Lokhttp3/TlsVersion;
    .param p2, "cipherSuite"    # Le/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Le/i;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Le/w;->a:Lokhttp3/TlsVersion;

    .line 45
    iput-object p2, p0, Le/w;->b:Le/i;

    .line 46
    iput-object p3, p0, Le/w;->c:Ljava/util/List;

    .line 47
    iput-object p4, p0, Le/w;->d:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Le/w;
    .locals 9
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "cipherSuiteString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 53
    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    invoke-static {v0}, Le/i;->a(Ljava/lang/String;)Le/i;

    move-result-object v1

    .line 58
    .local v1, "cipherSuite":Le/i;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "tlsVersionString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 60
    const-string v3, "NONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    invoke-static {v2}, Lokhttp3/TlsVersion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    .line 65
    .local v3, "tlsVersion":Lokhttp3/TlsVersion;
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    .line 66
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v4, 0x0

    .line 69
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v4, :cond_0

    .line 70
    invoke-static {v4}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_1
    nop

    .line 73
    .local v5, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 74
    .local v6, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_1

    .line 75
    invoke-static {v6}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :goto_2
    nop

    .line 78
    .local v7, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v8, Le/w;

    invoke-direct {v8, v3, v1, v5, v7}, Le/w;-><init>(Lokhttp3/TlsVersion;Le/i;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 60
    .end local v3    # "tlsVersion":Lokhttp3/TlsVersion;
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v6    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v7    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "tlsVersion == NONE"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "tlsVersion == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    .end local v1    # "cipherSuite":Le/i;
    .end local v2    # "tlsVersionString":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipherSuite == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Le/i;
    .locals 1

    .line 99
    iget-object v0, p0, Le/w;->b:Le/i;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Le/w;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Le/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    move-object v0, p1

    check-cast v0, Le/w;

    .line 129
    .local v0, "that":Le/w;
    iget-object v2, p0, Le/w;->a:Lokhttp3/TlsVersion;

    iget-object v3, v0, Le/w;->a:Lokhttp3/TlsVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/w;->b:Le/i;

    iget-object v3, v0, Le/w;->b:Le/i;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/w;->c:Ljava/util/List;

    iget-object v3, v0, Le/w;->c:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/w;->d:Ljava/util/List;

    iget-object v3, v0, Le/w;->d:Ljava/util/List;

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 129
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Le/w;->a:Lokhttp3/TlsVersion;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Le/w;->b:Le/i;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Le/w;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Le/w;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
