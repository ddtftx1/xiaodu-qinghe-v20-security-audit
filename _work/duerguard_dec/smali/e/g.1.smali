.class public final Le/g;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g$a;,
        Le/g$b;
    }
.end annotation


# static fields
.field public static final a:Le/g;


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Le/g$a;

    invoke-direct {v0}, Le/g$a;-><init>()V

    invoke-virtual {v0}, Le/g$a;->a()Le/g;

    move-result-object v0

    sput-object v0, Le/g;->a:Le/g;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Le/a/h/c;)V
    .locals 0
    .param p2, "certificateChainCleaner"    # Le/a/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/g$b;",
            ">;",
            "Le/a/h/c;",
            ")V"
        }
    .end annotation

    .line 134
    .local p1, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokhttp3/CertificatePinner$Pin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Le/g;->b:Ljava/util/Set;

    .line 136
    iput-object p2, p0, Le/g;->c:Le/a/h/c;

    .line 137
    return-void
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .line 243
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Le/g;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 250
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->c()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 254
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->d()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Le/a/h/c;)Le/g;
    .locals 2
    .param p1, "certificateChainCleaner"    # Le/a/h/c;

    .line 231
    iget-object v0, p0, Le/g;->c:Le/a/h/c;

    invoke-static {v0, p1}, Le/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    move-object v0, p0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Le/g;

    iget-object v1, p0, Le/g;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Le/g;-><init>(Ljava/util/Set;Le/a/h/c;)V

    .line 231
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/g$b;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/CertificatePinner$Pin;>;"
    iget-object v1, p0, Le/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/g$b;

    .line 220
    .local v2, "pin":Le/g$b;
    invoke-virtual {v2, p1}, Le/g$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 222
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v2    # "pin":Le/g$b;
    :cond_1
    goto :goto_0

    .line 225
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 162
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Le/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "pins":Ljava/util/List;, "Ljava/util/List<Lokhttp3/CertificatePinner$Pin;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Le/g;->c:Le/a/h/c;

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1, p2, p1}, Le/a/h/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 169
    :cond_1
    const/4 v1, 0x0

    .local v1, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "certsSize":I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 170
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 173
    .local v3, "x509Certificate":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 174
    .local v4, "sha1":Lokio/ByteString;
    const/4 v5, 0x0

    .line 176
    .local v5, "sha256":Lokio/ByteString;
    const/4 v6, 0x0

    .local v6, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "pinsSize":I
    :goto_1
    if-ge v6, v7, :cond_7

    .line 177
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/g$b;

    .line 178
    .local v8, "pin":Le/g$b;
    iget-object v9, v8, Le/g$b;->c:Ljava/lang/String;

    const-string v10, "sha256/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 179
    if-nez v5, :cond_2

    invoke-static {v3}, Le/g;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v5

    .line 180
    :cond_2
    iget-object v9, v8, Le/g$b;->d:Lokio/ByteString;

    invoke-virtual {v9, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-void

    .line 181
    :cond_3
    iget-object v9, v8, Le/g$b;->c:Ljava/lang/String;

    const-string v10, "sha1/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 182
    if-nez v4, :cond_4

    invoke-static {v3}, Le/g;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v4

    .line 183
    :cond_4
    iget-object v9, v8, Le/g$b;->d:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-void

    .line 176
    .end local v8    # "pin":Le/g$b;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 185
    .restart local v8    # "pin":Le/g$b;
    :cond_6
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported hashAlgorithm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Le/g$b;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 169
    .end local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "sha1":Lokio/ByteString;
    .end local v5    # "sha256":Lokio/ByteString;
    .end local v6    # "p":I
    .end local v7    # "pinsSize":I
    .end local v8    # "pin":Le/g$b;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "c":I
    .end local v2    # "certsSize":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v2, "Certificate pinning failure!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, "\n  Peer certificate chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "certsSize":I
    :goto_2
    const-string v4, "\n    "

    if-ge v2, v3, :cond_9

    .line 195
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 196
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Le/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    .end local v2    # "c":I
    .end local v3    # "certsSize":I
    :cond_9
    const-string v2, "\n  Pinned certificates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v2, 0x0

    .local v2, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "pinsSize":I
    :goto_3
    if-ge v2, v3, :cond_a

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/g$b;

    .line 202
    .local v5, "pin":Le/g$b;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .end local v5    # "pin":Le/g$b;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 204
    .end local v2    # "p":I
    .end local v3    # "pinsSize":I
    :cond_a
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Le/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/g;->c:Le/a/h/c;

    move-object v2, p1

    check-cast v2, Le/g;

    iget-object v2, v2, Le/g;->c:Le/a/h/c;

    .line 142
    invoke-static {v1, v2}, Le/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/g;->b:Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Le/g;

    iget-object v2, v2, Le/g;->b:Ljava/util/Set;

    .line 143
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 147
    iget-object v0, p0, Le/g;->c:Le/a/h/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Le/g;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
