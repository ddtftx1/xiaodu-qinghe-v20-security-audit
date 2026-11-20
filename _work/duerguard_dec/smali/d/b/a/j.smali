.class public final Ld/b/a/j;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/j$a;
    }
.end annotation


# static fields
.field public static final a:Ld/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ld/b/a/c/a<",
            "*>;",
            "Ld/b/a/j$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld/b/a/c/a<",
            "*>;",
            "Ld/b/a/x<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ld/b/a/b/p;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ld/b/a/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Ld/b/a/c/a;->a(Ljava/lang/Class;)Ld/b/a/c/a;

    move-result-object v0

    sput-object v0, Ld/b/a/j;->a:Ld/b/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 174
    sget-object v1, Ld/b/a/b/r;->a:Ld/b/a/b/r;

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->a:Lcom/google/gson/FieldNamingPolicy;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/gson/LongSerializationPolicy;->a:Lcom/google/gson/LongSerializationPolicy;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 174
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Ld/b/a/j;-><init>(Ld/b/a/b/r;Ld/b/a/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ld/b/a/b/r;Ld/b/a/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 16
    .param p1, "excluder"    # Ld/b/a/b/r;
    .param p2, "fieldNamingStrategy"    # Ld/b/a/d;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "lenient"    # Z
    .param p10, "serializeSpecialFloatingPointValues"    # Z
    .param p11, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/r;",
            "Ld/b/a/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/l<",
            "*>;>;ZZZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/util/List<",
            "Ld/b/a/y;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    .local p12, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v0, Ld/b/a/j;->b:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Ld/b/a/j;->c:Ljava/util/Map;

    .line 187
    new-instance v3, Ld/b/a/b/p;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ld/b/a/b/p;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Ld/b/a/j;->e:Ld/b/a/b/p;

    .line 188
    nop

    .line 189
    nop

    .line 190
    move/from16 v3, p4

    iput-boolean v3, v0, Ld/b/a/j;->f:Z

    .line 191
    move/from16 v5, p6

    iput-boolean v5, v0, Ld/b/a/j;->h:Z

    .line 192
    move/from16 v6, p7

    iput-boolean v6, v0, Ld/b/a/j;->g:Z

    .line 193
    move/from16 v7, p8

    iput-boolean v7, v0, Ld/b/a/j;->i:Z

    .line 194
    move/from16 v8, p9

    iput-boolean v8, v0, Ld/b/a/j;->j:Z

    .line 196
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    sget-object v10, Ld/b/a/b/a/ha;->Y:Ld/b/a/y;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v10, Ld/b/a/b/a/m;->a:Ld/b/a/y;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v10, p12

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v11, Ld/b/a/b/a/ha;->D:Ld/b/a/y;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v11, Ld/b/a/b/a/ha;->m:Ld/b/a/y;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v11, Ld/b/a/b/a/ha;->g:Ld/b/a/y;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v11, Ld/b/a/b/a/ha;->i:Ld/b/a/y;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v11, Ld/b/a/b/a/ha;->k:Ld/b/a/y;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Ld/b/a/j;->a(Lcom/google/gson/LongSerializationPolicy;)Ld/b/a/x;

    move-result-object v11

    .line 215
    .local v11, "longAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Long;

    invoke-static {v12, v13, v11}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Double;

    .line 217
    invoke-virtual {v0, v2}, Ld/b/a/j;->a(Z)Ld/b/a/x;

    move-result-object v14

    .line 216
    invoke-static {v12, v13, v14}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Float;

    .line 219
    invoke-virtual {v0, v2}, Ld/b/a/j;->b(Z)Ld/b/a/x;

    move-result-object v14

    .line 218
    invoke-static {v12, v13, v14}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v12, Ld/b/a/b/a/ha;->x:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v12, Ld/b/a/b/a/ha;->o:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v12, Ld/b/a/b/a/ha;->q:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11}, Ld/b/a/j;->a(Ld/b/a/x;)Ld/b/a/x;

    move-result-object v13

    invoke-static {v12, v13}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v12, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v11}, Ld/b/a/j;->b(Ld/b/a/x;)Ld/b/a/x;

    move-result-object v13

    invoke-static {v12, v13}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v12, Ld/b/a/b/a/ha;->s:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v12, Ld/b/a/b/a/ha;->z:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v12, Ld/b/a/b/a/ha;->F:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v12, Ld/b/a/b/a/ha;->H:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-class v12, Ljava/math/BigDecimal;

    sget-object v13, Ld/b/a/b/a/ha;->B:Ld/b/a/x;

    invoke-static {v12, v13}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v12, Ljava/math/BigInteger;

    sget-object v13, Ld/b/a/b/a/ha;->C:Ld/b/a/x;

    invoke-static {v12, v13}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v12, Ld/b/a/b/a/ha;->J:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v12, Ld/b/a/b/a/ha;->L:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v12, Ld/b/a/b/a/ha;->P:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v12, Ld/b/a/b/a/ha;->R:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v12, Ld/b/a/b/a/ha;->W:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v12, Ld/b/a/b/a/ha;->N:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v12, Ld/b/a/b/a/ha;->d:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v12, Ld/b/a/b/a/e;->a:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v12, Ld/b/a/b/a/ha;->U:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v12, Ld/b/a/b/a/s;->a:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v12, Ld/b/a/b/a/q;->a:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v12, Ld/b/a/b/a/ha;->S:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v12, Ld/b/a/b/a/b;->a:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v12, Ld/b/a/b/a/ha;->b:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v12, Ld/b/a/b/a/c;

    iget-object v13, v0, Ld/b/a/j;->e:Ld/b/a/b/p;

    invoke-direct {v12, v13}, Ld/b/a/b/a/c;-><init>(Ld/b/a/b/p;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v12, Ld/b/a/b/a/k;

    iget-object v13, v0, Ld/b/a/j;->e:Ld/b/a/b/p;

    move/from16 v14, p5

    invoke-direct {v12, v13, v14}, Ld/b/a/b/a/k;-><init>(Ld/b/a/b/p;Z)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v12, Ld/b/a/b/a/f;

    iget-object v13, v0, Ld/b/a/j;->e:Ld/b/a/b/p;

    invoke-direct {v12, v13}, Ld/b/a/b/a/f;-><init>(Ld/b/a/b/p;)V

    iput-object v12, v0, Ld/b/a/j;->k:Ld/b/a/b/a/f;

    .line 250
    iget-object v12, v0, Ld/b/a/j;->k:Ld/b/a/b/a/f;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v12, Ld/b/a/b/a/ha;->Z:Ld/b/a/y;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v12, Ld/b/a/b/a/o;

    iget-object v13, v0, Ld/b/a/j;->e:Ld/b/a/b/p;

    iget-object v15, v0, Ld/b/a/j;->k:Ld/b/a/b/a/f;

    move-object/from16 v2, p2

    invoke-direct {v12, v13, v2, v1, v15}, Ld/b/a/b/a/o;-><init>(Ld/b/a/b/p;Ld/b/a/d;Ld/b/a/b/r;Ld/b/a/b/a/f;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Ld/b/a/j;->d:Ljava/util/List;

    .line 256
    return-void
.end method

.method public static a(Lcom/google/gson/LongSerializationPolicy;)Ld/b/a/x;
    .locals 1
    .param p0, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Ld/b/a/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->a:Lcom/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 332
    sget-object v0, Ld/b/a/b/a/ha;->t:Ld/b/a/x;

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ld/b/a/g;

    invoke-direct {v0}, Ld/b/a/g;-><init>()V

    return-object v0
.end method

.method public static a(Ld/b/a/x;)Ld/b/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/x<",
            "Ljava/lang/Number;",
            ">;)",
            "Ld/b/a/x<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 353
    .local p0, "longAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Ld/b/a/h;

    invoke-direct {v0, p0}, Ld/b/a/h;-><init>(Ld/b/a/x;)V

    .line 361
    invoke-virtual {v0}, Ld/b/a/x;->a()Ld/b/a/x;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method public static a(D)V
    .locals 3
    .param p0, "value"    # D

    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ld/b/a/d/b;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Ld/b/a/d/b;

    .line 860
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->j:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "reader":Ld/b/a/d/b;
    throw v0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "reader":Ld/b/a/d/b;
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 863
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 864
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :cond_1
    :goto_0
    nop

    .line 868
    return-void
.end method

.method public static b(Ld/b/a/x;)Ld/b/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/x<",
            "Ljava/lang/Number;",
            ">;)",
            "Ld/b/a/x<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 365
    .local p0, "longAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Ld/b/a/i;

    invoke-direct {v0, p0}, Ld/b/a/i;-><init>(Ld/b/a/x;)V

    .line 388
    invoke-virtual {v0}, Ld/b/a/x;->a()Ld/b/a/x;

    move-result-object v0

    .line 365
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Ld/b/a/d/b;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 728
    new-instance v0, Ld/b/a/d/b;

    invoke-direct {v0, p1}, Ld/b/a/d/b;-><init>(Ljava/io/Reader;)V

    .line 729
    .local v0, "jsonReader":Ld/b/a/d/b;
    iget-boolean v1, p0, Ld/b/a/j;->j:Z

    invoke-virtual {v0, v1}, Ld/b/a/d/b;->b(Z)V

    .line 730
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ld/b/a/d/c;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    iget-boolean v0, p0, Ld/b/a/j;->h:Z

    if-eqz v0, :cond_0

    .line 714
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    :cond_0
    new-instance v0, Ld/b/a/d/c;

    invoke-direct {v0, p1}, Ld/b/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 717
    .local v0, "jsonWriter":Ld/b/a/d/c;
    iget-boolean v1, p0, Ld/b/a/j;->i:Z

    if-eqz v1, :cond_1

    .line 718
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ld/b/a/d/c;->c(Ljava/lang/String;)V

    .line 720
    :cond_1
    iget-boolean v1, p0, Ld/b/a/j;->f:Z

    invoke-virtual {v0, v1}, Ld/b/a/d/c;->c(Z)V

    .line 721
    return-object v0
.end method

.method public a(Ld/b/a/c/a;)Ld/b/a/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 399
    .local p1, "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Ld/b/a/j;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Ld/b/a/j;->a:Ld/b/a/c/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/x;

    .line 400
    .local v0, "cached":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_1

    .line 401
    return-object v0

    .line 404
    :cond_1
    iget-object v1, p0, Ld/b/a/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 405
    .local v1, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v2, 0x0

    .line 406
    .local v2, "requiresThreadLocalCleanup":Z
    if-nez v1, :cond_2

    .line 407
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 408
    iget-object v3, p0, Ld/b/a/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v2, 0x1

    .line 413
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/b/a/j$a;

    .line 414
    .local v3, "ongoingCall":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v3, :cond_3

    .line 415
    return-object v3

    .line 419
    :cond_3
    :try_start_0
    new-instance v4, Ld/b/a/j$a;

    invoke-direct {v4}, Ld/b/a/j$a;-><init>()V

    .line 420
    .local v4, "call":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v5, p0, Ld/b/a/j;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/b/a/y;

    .line 423
    .local v6, "factory":Ld/b/a/y;
    invoke-interface {v6, p0, p1}, Ld/b/a/y;->a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v7

    .line 424
    .local v7, "candidate":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v7, :cond_5

    .line 425
    invoke-virtual {v4, v7}, Ld/b/a/j$a;->a(Ld/b/a/x;)V

    .line 426
    iget-object v5, p0, Ld/b/a/j;->c:Ljava/util/Map;

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    nop

    .line 432
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v2, :cond_4

    .line 435
    iget-object v5, p0, Ld/b/a/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 427
    :cond_4
    return-object v7

    .line 429
    .end local v6    # "factory":Ld/b/a/y;
    .end local v7    # "candidate":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_5
    goto :goto_1

    .line 430
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSON cannot handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cached":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v1    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    .end local v2    # "requiresThreadLocalCleanup":Z
    .end local v3    # "ongoingCall":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local p1    # "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v4    # "call":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .restart local v0    # "cached":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v1    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    .restart local v2    # "requiresThreadLocalCleanup":Z
    .restart local v3    # "ongoingCall":Ld/b/a/j$a;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .restart local p1    # "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v2, :cond_7

    .line 435
    iget-object v5, p0, Ld/b/a/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v4
.end method

.method public a(Ld/b/a/y;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 4
    .param p1, "skipPast"    # Ld/b/a/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/y;",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 493
    .local p2, "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Ld/b/a/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object p1, p0, Ld/b/a/j;->k:Ld/b/a/b/a/f;

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 498
    .local v0, "skipPastFound":Z
    iget-object v1, p0, Ld/b/a/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/y;

    .line 499
    .local v2, "factory":Ld/b/a/y;
    if-nez v0, :cond_2

    .line 500
    if-ne v2, p1, :cond_1

    .line 501
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :cond_2
    invoke-interface {v2, p0, p2}, Ld/b/a/y;->a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v3

    .line 507
    .local v3, "candidate":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v3, :cond_3

    .line 508
    return-object v3

    .line 510
    .end local v2    # "factory":Ld/b/a/y;
    .end local v3    # "candidate":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_3
    goto :goto_0

    .line 511
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSON cannot serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;)Ld/b/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 521
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ld/b/a/c/a;->a(Ljava/lang/Class;)Ld/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ld/b/a/x;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ld/b/a/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Ld/b/a/b/a/ha;->v:Ld/b/a/x;

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ld/b/a/e;

    invoke-direct {v0, p0}, Ld/b/a/e;-><init>(Ld/b/a/j;)V

    return-object v0
.end method

.method public a(Ld/b/a/d/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Ld/b/a/d/b;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/d/b;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 880
    const/4 v0, 0x1

    .line 881
    .local v0, "isEmpty":Z
    invoke-virtual {p1}, Ld/b/a/d/b;->r()Z

    move-result v1

    .line 882
    .local v1, "oldLenient":Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ld/b/a/d/b;->b(Z)V

    .line 884
    :try_start_0
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    .line 885
    const/4 v0, 0x0

    .line 886
    invoke-static {p2}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v2

    .line 887
    .local v2, "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v2}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v3

    .line 888
    .local v3, "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v3, p1}, Ld/b/a/x;->a(Ld/b/a/d/b;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    .local v4, "object":Ljava/lang/Object;, "TT;"
    nop

    .line 905
    invoke-virtual {p1, v1}, Ld/b/a/d/b;->b(Z)V

    .line 889
    return-object v4

    .line 905
    .end local v2    # "typeToken":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    .end local v3    # "typeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 901
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Ld/b/a/d/b;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3

    .line 899
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Ld/b/a/d/b;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :catch_1
    move-exception v2

    .line 900
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Ld/b/a/d/b;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Ld/b/a/d/b;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :catch_2
    move-exception v2

    .line 895
    .local v2, "e":Ljava/io/EOFException;
    if-eqz v0, :cond_0

    .line 896
    const/4 v3, 0x0

    .line 905
    invoke-virtual {p1, v1}, Ld/b/a/d/b;->b(Z)V

    .line 896
    return-object v3

    .line 898
    :cond_0
    :try_start_2
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isEmpty":Z
    .end local v1    # "oldLenient":Z
    .end local p1    # "reader":Ld/b/a/d/b;
    .end local p2    # "typeOfT":Ljava/lang/reflect/Type;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    .end local v2    # "e":Ljava/io/EOFException;
    .restart local v0    # "isEmpty":Z
    .restart local v1    # "oldLenient":Z
    .restart local p1    # "reader":Ld/b/a/d/b;
    .restart local p2    # "typeOfT":Ljava/lang/reflect/Type;
    :goto_0
    invoke-virtual {p1, v1}, Ld/b/a/d/b;->b(Z)V

    throw v2
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0, p1}, Ld/b/a/j;->a(Ljava/io/Reader;)Ld/b/a/d/b;

    move-result-object v0

    .line 853
    .local v0, "jsonReader":Ld/b/a/d/b;
    invoke-virtual {p0, v0, p2}, Ld/b/a/j;->a(Ld/b/a/d/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 854
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Ld/b/a/j;->a(Ljava/lang/Object;Ld/b/a/d/b;)V

    .line 855
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 798
    if-nez p1, :cond_0

    .line 799
    const/4 v0, 0x0

    return-object v0

    .line 801
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Ld/b/a/j;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 803
    .local v1, "target":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public a(Ld/b/a/p;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonElement"    # Ld/b/a/p;

    .line 687
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 688
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Ld/b/a/j;->a(Ld/b/a/p;Ljava/lang/Appendable;)V

    .line 689
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .line 580
    if-nez p1, :cond_0

    .line 581
    sget-object v0, Ld/b/a/q;->a:Ld/b/a/q;

    invoke-virtual {p0, v0}, Ld/b/a/j;->a(Ld/b/a/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ld/b/a/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 603
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Ld/b/a/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 604
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a(Ld/b/a/p;Ld/b/a/d/c;)V
    .locals 5
    .param p1, "jsonElement"    # Ld/b/a/p;
    .param p2, "writer"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 738
    invoke-virtual {p2}, Ld/b/a/d/c;->q()Z

    move-result v0

    .line 739
    .local v0, "oldLenient":Z
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ld/b/a/d/c;->b(Z)V

    .line 740
    invoke-virtual {p2}, Ld/b/a/d/c;->p()Z

    move-result v1

    .line 741
    .local v1, "oldHtmlSafe":Z
    iget-boolean v2, p0, Ld/b/a/j;->g:Z

    invoke-virtual {p2, v2}, Ld/b/a/d/c;->a(Z)V

    .line 742
    invoke-virtual {p2}, Ld/b/a/d/c;->o()Z

    move-result v2

    .line 743
    .local v2, "oldSerializeNulls":Z
    iget-boolean v3, p0, Ld/b/a/j;->f:Z

    invoke-virtual {p2, v3}, Ld/b/a/d/c;->c(Z)V

    .line 745
    :try_start_0
    invoke-static {p1, p2}, Ld/b/a/b/y;->a(Ld/b/a/p;Ld/b/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-virtual {p2, v0}, Ld/b/a/d/c;->b(Z)V

    .line 750
    invoke-virtual {p2, v1}, Ld/b/a/d/c;->a(Z)V

    .line 751
    invoke-virtual {p2, v2}, Ld/b/a/d/c;->c(Z)V

    .line 752
    nop

    .line 753
    return-void

    .line 749
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 746
    :catch_0
    move-exception v3

    .line 747
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "oldLenient":Z
    .end local v1    # "oldHtmlSafe":Z
    .end local v2    # "oldSerializeNulls":Z
    .end local p1    # "jsonElement":Ld/b/a/p;
    .end local p2    # "writer":Ld/b/a/d/c;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "oldLenient":Z
    .restart local v1    # "oldHtmlSafe":Z
    .restart local v2    # "oldSerializeNulls":Z
    .restart local p1    # "jsonElement":Ld/b/a/p;
    .restart local p2    # "writer":Ld/b/a/d/c;
    :goto_0
    invoke-virtual {p2, v0}, Ld/b/a/d/c;->b(Z)V

    .line 750
    invoke-virtual {p2, v1}, Ld/b/a/d/c;->a(Z)V

    .line 751
    invoke-virtual {p2, v2}, Ld/b/a/d/c;->c(Z)V

    throw v3
.end method

.method public a(Ld/b/a/p;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "jsonElement"    # Ld/b/a/p;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 702
    :try_start_0
    invoke-static {p2}, Ld/b/a/b/y;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/j;->a(Ljava/io/Writer;)Ld/b/a/d/c;

    move-result-object v0

    .line 703
    .local v0, "jsonWriter":Ld/b/a/d/c;
    invoke-virtual {p0, p1, v0}, Ld/b/a/j;->a(Ld/b/a/p;Ld/b/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v0    # "jsonWriter":Ld/b/a/d/c;
    nop

    .line 707
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ld/b/a/d/c;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ld/b/a/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 661
    invoke-static {p2}, Ld/b/a/c/a;->a(Ljava/lang/reflect/Type;)Ld/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/j;->a(Ld/b/a/c/a;)Ld/b/a/x;

    move-result-object v0

    .line 662
    .local v0, "adapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Ld/b/a/d/c;->q()Z

    move-result v1

    .line 663
    .local v1, "oldLenient":Z
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ld/b/a/d/c;->b(Z)V

    .line 664
    invoke-virtual {p3}, Ld/b/a/d/c;->p()Z

    move-result v2

    .line 665
    .local v2, "oldHtmlSafe":Z
    iget-boolean v3, p0, Ld/b/a/j;->g:Z

    invoke-virtual {p3, v3}, Ld/b/a/d/c;->a(Z)V

    .line 666
    invoke-virtual {p3}, Ld/b/a/d/c;->o()Z

    move-result v3

    .line 667
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Ld/b/a/j;->f:Z

    invoke-virtual {p3, v4}, Ld/b/a/d/c;->c(Z)V

    .line 669
    :try_start_0
    invoke-virtual {v0, p3, p1}, Ld/b/a/x;->a(Ld/b/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {p3, v1}, Ld/b/a/d/c;->b(Z)V

    .line 674
    invoke-virtual {p3, v2}, Ld/b/a/d/c;->a(Z)V

    .line 675
    invoke-virtual {p3, v3}, Ld/b/a/d/c;->c(Z)V

    .line 676
    nop

    .line 677
    return-void

    .line 673
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 670
    :catch_0
    move-exception v4

    .line 671
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v4}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "adapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v1    # "oldLenient":Z
    .end local v2    # "oldHtmlSafe":Z
    .end local v3    # "oldSerializeNulls":Z
    .end local p1    # "src":Ljava/lang/Object;
    .end local p2    # "typeOfSrc":Ljava/lang/reflect/Type;
    .end local p3    # "writer":Ld/b/a/d/c;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "adapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v1    # "oldLenient":Z
    .restart local v2    # "oldHtmlSafe":Z
    .restart local v3    # "oldSerializeNulls":Z
    .restart local p1    # "src":Ljava/lang/Object;
    .restart local p2    # "typeOfSrc":Ljava/lang/reflect/Type;
    .restart local p3    # "writer":Ld/b/a/d/c;
    :goto_0
    invoke-virtual {p3, v1}, Ld/b/a/d/c;->b(Z)V

    .line 674
    invoke-virtual {p3, v2}, Ld/b/a/d/c;->a(Z)V

    .line 675
    invoke-virtual {p3, v3}, Ld/b/a/d/c;->c(Z)V

    throw v4
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 647
    :try_start_0
    invoke-static {p3}, Ld/b/a/b/y;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/j;->a(Ljava/io/Writer;)Ld/b/a/d/c;

    move-result-object v0

    .line 648
    .local v0, "jsonWriter":Ld/b/a/d/c;
    invoke-virtual {p0, p1, p2, v0}, Ld/b/a/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ld/b/a/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v0    # "jsonWriter":Ld/b/a/d/c;
    nop

    .line 652
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ld/b/a/p;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .line 561
    new-instance v0, Ld/b/a/b/a/j;

    invoke-direct {v0}, Ld/b/a/b/a/j;-><init>()V

    .line 562
    .local v0, "writer":Ld/b/a/b/a/j;
    invoke-virtual {p0, p1, p2, v0}, Ld/b/a/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ld/b/a/d/c;)V

    .line 563
    invoke-virtual {v0}, Ld/b/a/b/a/j;->v()Ld/b/a/p;

    move-result-object v1

    return-object v1
.end method

.method public final b(Z)Ld/b/a/x;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ld/b/a/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 299
    if-eqz p1, :cond_0

    .line 300
    sget-object v0, Ld/b/a/b/a/ha;->u:Ld/b/a/x;

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ld/b/a/f;

    invoke-direct {v0, p0}, Ld/b/a/f;-><init>(Ld/b/a/j;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ld/b/a/j;->f:Z

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 985
    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/b/a/j;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 986
    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/b/a/j;->e:Ld/b/a/b/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 987
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0
.end method
