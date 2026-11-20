.class public final Le/i;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/i;

.field public static final d:Le/i;

.field public static final e:Le/i;

.field public static final f:Le/i;

.field public static final g:Le/i;

.field public static final h:Le/i;

.field public static final i:Le/i;

.field public static final j:Le/i;

.field public static final k:Le/i;

.field public static final l:Le/i;

.field public static final m:Le/i;

.field public static final n:Le/i;

.field public static final o:Le/i;

.field public static final p:Le/i;

.field public static final q:Le/i;

.field public static final r:Le/i;

.field public static final s:Le/i;

.field public static final t:Le/i;


# instance fields
.field public final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Le/h;

    invoke-direct {v0}, Le/h;-><init>()V

    sput-object v0, Le/i;->a:Ljava/util/Comparator;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Le/i;->b:Ljava/util/Map;

    .line 72
    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 73
    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 74
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 75
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 76
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 79
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 80
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 81
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->c:Le/i;

    .line 88
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 89
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 90
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 91
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 92
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 93
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 94
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 95
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 96
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 97
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 98
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 99
    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 100
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 101
    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 103
    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 104
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 105
    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 107
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 109
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 110
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 112
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 116
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->d:Le/i;

    .line 119
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 120
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 121
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 122
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->e:Le/i;

    .line 125
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 126
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 127
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 128
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 129
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 130
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 133
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 134
    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 137
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 138
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 140
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 143
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 144
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 145
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 146
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 147
    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 150
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 151
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 153
    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 154
    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 155
    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 156
    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 165
    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 171
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->f:Le/i;

    .line 172
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->g:Le/i;

    .line 173
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 174
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 177
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 178
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 181
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 182
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 213
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 214
    const-string v0, "TLS_FALLBACK_SCSV"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 215
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 216
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 217
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 218
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 219
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 220
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 221
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 222
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 223
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 224
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 225
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 226
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 227
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 228
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 229
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 230
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 231
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 232
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 233
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->h:Le/i;

    .line 234
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->i:Le/i;

    .line 235
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 236
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 237
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 238
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 239
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 249
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 250
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 251
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 252
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 253
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 254
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 255
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 256
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 257
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->j:Le/i;

    .line 258
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->k:Le/i;

    .line 259
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 260
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 261
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->l:Le/i;

    .line 262
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->m:Le/i;

    .line 263
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 264
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 267
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 268
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 390
    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->n:Le/i;

    .line 391
    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->o:Le/i;

    .line 392
    const-string v0, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 394
    const-string v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 399
    const-string v0, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->p:Le/i;

    .line 400
    const-string v0, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->q:Le/i;

    .line 401
    const-string v0, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->r:Le/i;

    .line 402
    const-string v0, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->s:Le/i;

    .line 403
    const-string v0, "TLS_AES_256_CCM_8_SHA256"

    invoke-static {v0}, Le/i;->b(Ljava/lang/String;)Le/i;

    move-result-object v0

    sput-object v0, Le/i;->t:Le/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "javaName"    # Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    if-eqz p1, :cond_0

    .line 448
    iput-object p1, p0, Le/i;->u:Ljava/lang/String;

    .line 449
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Le/i;
    .locals 4
    .param p0, "javaName"    # Ljava/lang/String;

    const-class v0, Le/i;

    monitor-enter v0

    .line 412
    :try_start_0
    sget-object v1, Le/i;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i;

    .line 413
    .local v1, "result":Le/i;
    if-nez v1, :cond_1

    .line 414
    sget-object v2, Le/i;->b:Ljava/util/Map;

    invoke-static {p0}, Le/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i;

    move-object v1, v2

    .line 416
    if-nez v1, :cond_0

    .line 417
    new-instance v2, Le/i;

    invoke-direct {v2, p0}, Le/i;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 421
    :cond_0
    sget-object v2, Le/i;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_1
    monitor-exit v0

    return-object v1

    .line 411
    .end local v1    # "result":Le/i;
    .end local p0    # "javaName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "cipherSuites"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/i;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/CipherSuite;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 439
    .local v3, "cipherSuite":Ljava/lang/String;
    invoke-static {v3}, Le/i;->a(Ljava/lang/String;)Le/i;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v3    # "cipherSuite":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Le/i;
    .locals 2
    .param p0, "javaName"    # Ljava/lang/String;

    .line 457
    new-instance v0, Le/i;

    invoke-direct {v0, p0}, Le/i;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "suite":Le/i;
    sget-object v1, Le/i;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "javaName"    # Ljava/lang/String;

    .line 427
    const-string v0, "TLS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "SSL_"

    if-eqz v1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_1
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Le/i;->u:Ljava/lang/String;

    return-object v0
.end method
