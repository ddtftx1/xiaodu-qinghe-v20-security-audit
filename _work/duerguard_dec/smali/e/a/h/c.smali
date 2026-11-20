.class public abstract Le/a/h/c;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Le/a/h/c;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 41
    invoke-static {}, Le/a/f/f;->b()Le/a/f/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/f/f;->a(Ljavax/net/ssl/X509TrustManager;)Le/a/h/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
