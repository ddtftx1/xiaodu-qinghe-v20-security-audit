.class public Le/C;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Le/f$a;
.implements Le/M;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/C$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final c:Le/q;

.field public final d:Ljava/net/Proxy;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/v$a;

.field public final j:Ljava/net/ProxySelector;

.field public final k:Le/p;

.field public final l:Ljavax/net/SocketFactory;

.field public final m:Ljavax/net/ssl/SSLSocketFactory;

.field public final n:Le/a/h/c;

.field public final o:Ljavax/net/ssl/HostnameVerifier;

.field public final p:Le/g;

.field public final q:Le/c;

.field public final r:Le/c;

.field public final s:Le/l;

.field public final t:Le/s;

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 127
    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Le/C;->a:Ljava/util/List;

    .line 130
    new-array v0, v0, [Le/m;

    sget-object v1, Le/m;->c:Le/m;

    aput-object v1, v0, v3

    sget-object v1, Le/m;->d:Le/m;

    aput-object v1, v0, v4

    invoke-static {v0}, Le/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/C;->b:Ljava/util/List;

    .line 134
    new-instance v0, Le/B;

    invoke-direct {v0}, Le/B;-><init>()V

    sput-object v0, Le/a/a;->a:Le/a/a;

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 231
    new-instance v0, Le/C$a;

    invoke-direct {v0}, Le/C$a;-><init>()V

    invoke-direct {p0, v0}, Le/C;-><init>(Le/C$a;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Le/C$a;)V
    .locals 4
    .param p1, "builder"    # Le/C$a;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iget-object v0, p1, Le/C$a;->a:Le/q;

    iput-object v0, p0, Le/C;->c:Le/q;

    .line 236
    iget-object v0, p1, Le/C$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Le/C;->d:Ljava/net/Proxy;

    .line 237
    iget-object v0, p1, Le/C$a;->c:Ljava/util/List;

    iput-object v0, p0, Le/C;->e:Ljava/util/List;

    .line 238
    iget-object v0, p1, Le/C$a;->d:Ljava/util/List;

    iput-object v0, p0, Le/C;->f:Ljava/util/List;

    .line 239
    iget-object v0, p1, Le/C$a;->e:Ljava/util/List;

    invoke-static {v0}, Le/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/C;->g:Ljava/util/List;

    .line 240
    iget-object v0, p1, Le/C$a;->f:Ljava/util/List;

    invoke-static {v0}, Le/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/C;->h:Ljava/util/List;

    .line 241
    iget-object v0, p1, Le/C$a;->g:Le/v$a;

    iput-object v0, p0, Le/C;->i:Le/v$a;

    .line 242
    iget-object v0, p1, Le/C$a;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Le/C;->j:Ljava/net/ProxySelector;

    .line 243
    iget-object v0, p1, Le/C$a;->i:Le/p;

    iput-object v0, p0, Le/C;->k:Le/p;

    .line 244
    iget-object v0, p1, Le/C$a;->j:Le/d;

    .line 245
    iget-object v0, p1, Le/C$a;->k:Le/a/a/c;

    .line 246
    iget-object v0, p1, Le/C$a;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Le/C;->l:Ljavax/net/SocketFactory;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "isTLS":Z
    iget-object v1, p0, Le/C;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m;

    .line 250
    .local v2, "spec":Le/m;
    if-nez v0, :cond_1

    invoke-virtual {v2}, Le/m;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 251
    .end local v2    # "spec":Le/m;
    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p1, Le/C$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    .line 257
    :cond_3
    invoke-static {}, Le/a/e;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 258
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v1}, Le/C;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Le/C;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 259
    invoke-static {v1}, Le/a/h/c;->a(Ljavax/net/ssl/X509TrustManager;)Le/a/h/c;

    move-result-object v2

    iput-object v2, p0, Le/C;->n:Le/a/h/c;

    goto :goto_4

    .line 254
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :goto_3
    iget-object v1, p1, Le/C$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Le/C;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 255
    iget-object v1, p1, Le/C$a;->n:Le/a/h/c;

    iput-object v1, p0, Le/C;->n:Le/a/h/c;

    .line 262
    :goto_4
    iget-object v1, p0, Le/C;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_5

    .line 263
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v1

    iget-object v2, p0, Le/C;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Le/a/f/f;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 266
    :cond_5
    iget-object v1, p1, Le/C$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v1, p0, Le/C;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 267
    iget-object v1, p1, Le/C$a;->p:Le/g;

    iget-object v2, p0, Le/C;->n:Le/a/h/c;

    invoke-virtual {v1, v2}, Le/g;->a(Le/a/h/c;)Le/g;

    move-result-object v1

    iput-object v1, p0, Le/C;->p:Le/g;

    .line 269
    iget-object v1, p1, Le/C$a;->q:Le/c;

    iput-object v1, p0, Le/C;->q:Le/c;

    .line 270
    iget-object v1, p1, Le/C$a;->r:Le/c;

    iput-object v1, p0, Le/C;->r:Le/c;

    .line 271
    iget-object v1, p1, Le/C$a;->s:Le/l;

    iput-object v1, p0, Le/C;->s:Le/l;

    .line 272
    iget-object v1, p1, Le/C$a;->t:Le/s;

    iput-object v1, p0, Le/C;->t:Le/s;

    .line 273
    iget-boolean v1, p1, Le/C$a;->u:Z

    iput-boolean v1, p0, Le/C;->u:Z

    .line 274
    iget-boolean v1, p1, Le/C$a;->v:Z

    iput-boolean v1, p0, Le/C;->v:Z

    .line 275
    iget-boolean v1, p1, Le/C$a;->w:Z

    iput-boolean v1, p0, Le/C;->w:Z

    .line 276
    iget v1, p1, Le/C$a;->x:I

    iput v1, p0, Le/C;->x:I

    .line 277
    iget v1, p1, Le/C$a;->y:I

    iput v1, p0, Le/C;->y:I

    .line 278
    iget v1, p1, Le/C$a;->z:I

    iput v1, p0, Le/C;->z:I

    .line 279
    iget v1, p1, Le/C$a;->A:I

    iput v1, p0, Le/C;->A:I

    .line 280
    iget v1, p1, Le/C$a;->B:I

    iput v1, p0, Le/C;->B:I

    .line 282
    iget-object v1, p0, Le/C;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 285
    iget-object v1, p0, Le/C;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 288
    return-void

    .line 286
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null network interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/C;->h:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/C;->g:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 292
    :try_start_0
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v0

    invoke-virtual {v0}, Le/a/f/f;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 293
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 295
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Le/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public a()Le/c;
    .locals 1

    .line 366
    iget-object v0, p0, Le/C;->r:Le/c;

    return-object v0
.end method

.method public a(Le/F;)Le/f;
    .locals 1
    .param p1, "request"    # Le/F;

    .line 427
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Le/E;->a(Le/C;Le/F;Z)Le/E;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 302
    iget v0, p0, Le/C;->x:I

    return v0
.end method

.method public c()Le/g;
    .locals 1

    .line 362
    iget-object v0, p0, Le/C;->p:Le/g;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 307
    iget v0, p0, Le/C;->y:I

    return v0
.end method

.method public e()Le/l;
    .locals 1

    .line 374
    iget-object v0, p0, Le/C;->s:Le/l;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Le/C;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Le/p;
    .locals 1

    .line 334
    iget-object v0, p0, Le/C;->k:Le/p;

    return-object v0
.end method

.method public h()Le/q;
    .locals 1

    .line 390
    iget-object v0, p0, Le/C;->c:Le/q;

    return-object v0
.end method

.method public i()Le/s;
    .locals 1

    .line 346
    iget-object v0, p0, Le/C;->t:Le/s;

    return-object v0
.end method

.method public j()Le/v$a;
    .locals 1

    .line 420
    iget-object v0, p0, Le/C;->i:Le/v$a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Le/C;->v:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Le/C;->u:Z

    return v0
.end method

.method public m()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 358
    iget-object v0, p0, Le/C;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Le/C;->g:Ljava/util/List;

    return-object v0
.end method

.method public o()V
    .locals 0

    .line 342
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/z;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Le/C;->h:Ljava/util/List;

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 322
    iget v0, p0, Le/C;->B:I

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Le/C;->e:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/net/Proxy;
    .locals 1

    .line 326
    iget-object v0, p0, Le/C;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public t()Le/c;
    .locals 1

    .line 370
    iget-object v0, p0, Le/C;->q:Le/c;

    return-object v0
.end method

.method public u()Ljava/net/ProxySelector;
    .locals 1

    .line 330
    iget-object v0, p0, Le/C;->j:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 312
    iget v0, p0, Le/C;->z:I

    return v0
.end method

.method public w()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Le/C;->w:Z

    return v0
.end method

.method public x()Ljavax/net/SocketFactory;
    .locals 1

    .line 350
    iget-object v0, p0, Le/C;->l:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public y()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 354
    iget-object v0, p0, Le/C;->m:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public z()I
    .locals 1

    .line 317
    iget v0, p0, Le/C;->A:I

    return v0
.end method
