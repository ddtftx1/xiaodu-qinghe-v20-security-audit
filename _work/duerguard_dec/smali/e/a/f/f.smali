.class public Le/a/f/f;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final a:Le/a/f/f;

.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Le/a/f/f;->a()Le/a/f/f;

    move-result-object v0

    sput-object v0, Le/a/f/f;->a:Le/a/f/f;

    .line 81
    const-class v0, Le/C;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/a/f/f;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/a/f/f;
    .locals 4

    .line 201
    invoke-static {}, Le/a/f/a;->e()Le/a/f/f;

    move-result-object v0

    .line 203
    .local v0, "android":Le/a/f/f;
    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 207
    :cond_0
    invoke-static {}, Le/a/f/f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-static {}, Le/a/f/b;->e()Le/a/f/b;

    move-result-object v1

    .line 210
    .local v1, "conscrypt":Le/a/f/f;
    if-eqz v1, :cond_1

    .line 211
    return-object v1

    .line 215
    .end local v1    # "conscrypt":Le/a/f/f;
    :cond_1
    invoke-static {}, Le/a/f/c;->e()Le/a/f/c;

    move-result-object v1

    .line 217
    .local v1, "jdk9":Le/a/f/f;
    if-eqz v1, :cond_2

    .line 218
    return-object v1

    .line 221
    :cond_2
    invoke-static {}, Le/a/f/d;->e()Le/a/f/f;

    move-result-object v2

    .line 223
    .local v2, "jdkWithJettyBoot":Le/a/f/f;
    if-eqz v2, :cond_3

    .line 224
    return-object v2

    .line 228
    :cond_3
    new-instance v3, Le/a/f/f;

    invoke-direct {v3}, Le/a/f/f;-><init>()V

    return-object v3
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 164
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Protocol;

    .line 165
    .local v3, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->a:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "protocol":Lokhttp3/Protocol;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-object v0
.end method

.method public static b()Le/a/f/f;
    .locals 1

    .line 84
    sget-object v0, Le/a/f/f;->a:Le/a/f/f;

    return-object v0
.end method

.method public static b(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 236
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    .line 237
    .local v0, "result":Lf/f;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 238
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Protocol;

    .line 239
    .local v3, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->a:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lf/f;->writeByte(I)Lf/f;

    .line 241
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    .line 237
    .end local v3    # "protocol":Lokhttp3/Protocol;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Lf/f;->k()[B

    move-result-object v1

    return-object v1
.end method

.method public static d()Z
    .locals 2

    .line 190
    const-string v0, "okhttp.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "preferredProvider":Ljava/lang/String;
    const-string v1, "Conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Le/a/h/c;
    .locals 2
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 172
    new-instance v0, Le/a/h/a;

    invoke-virtual {p0, p1}, Le/a/f/f;->b(Ljavax/net/ssl/X509TrustManager;)Le/a/h/e;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/h/a;-><init>(Le/a/h/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "closer"    # Ljava/lang/String;

    .line 147
    sget-object v0, Le/a/f/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 133
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 134
    .local v0, "logLevel":Ljava/util/logging/Level;
    :goto_0
    sget-object v1, Le/a/f/f;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_0
    const/4 v0, 0x5

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, v1}, Le/a/f/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 130
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 120
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 292
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Le/a/h/e;
    .locals 2
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 288
    new-instance v0, Le/a/h/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/h/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljavax/net/ssl/SSLContext;
    .locals 4

    .line 270
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "jvmVersion":Ljava/lang/String;
    const-string v1, "1.7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 275
    :catch_0
    move-exception v1

    .line 281
    :cond_0
    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 282
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TLS provider"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
