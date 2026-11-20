.class public final Ld/b/a/k;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field public a:Ld/b/a/b/r;

.field public b:Lcom/google/gson/LongSerializationPolicy;

.field public c:Ld/b/a/d;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ld/b/a/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Ld/b/a/b/r;->a:Ld/b/a/b/r;

    iput-object v0, p0, Ld/b/a/k;->a:Ld/b/a/b/r;

    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->a:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Ld/b/a/k;->b:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->a:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Ld/b/a/k;->c:Ld/b/a/d;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/b/a/k;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/k;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/k;->f:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b/a/k;->g:Z

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Ld/b/a/k;->i:I

    .line 90
    iput v1, p0, Ld/b/a/k;->j:I

    .line 91
    iput-boolean v0, p0, Ld/b/a/k;->k:Z

    .line 92
    iput-boolean v0, p0, Ld/b/a/k;->l:Z

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/b/a/k;->m:Z

    .line 94
    iput-boolean v0, p0, Ld/b/a/k;->n:Z

    .line 95
    iput-boolean v0, p0, Ld/b/a/k;->o:Z

    .line 96
    iput-boolean v0, p0, Ld/b/a/k;->p:Z

    .line 105
    return-void
.end method


# virtual methods
.method public a()Ld/b/a/j;
    .locals 17

    .line 562
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Ld/b/a/k;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Ld/b/a/k;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    iget-object v2, v0, Ld/b/a/k;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Ld/b/a/k;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 567
    .local v2, "hierarchyFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 568
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 570
    iget-object v3, v0, Ld/b/a/k;->h:Ljava/lang/String;

    iget v4, v0, Ld/b/a/k;->i:I

    iget v5, v0, Ld/b/a/k;->j:I

    invoke-virtual {v0, v3, v4, v5, v1}, Ld/b/a/k;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 572
    new-instance v16, Ld/b/a/j;

    iget-object v4, v0, Ld/b/a/k;->a:Ld/b/a/b/r;

    iget-object v5, v0, Ld/b/a/k;->c:Ld/b/a/d;

    iget-object v6, v0, Ld/b/a/k;->d:Ljava/util/Map;

    iget-boolean v7, v0, Ld/b/a/k;->g:Z

    iget-boolean v8, v0, Ld/b/a/k;->k:Z

    iget-boolean v9, v0, Ld/b/a/k;->o:Z

    iget-boolean v10, v0, Ld/b/a/k;->m:Z

    iget-boolean v11, v0, Ld/b/a/k;->n:Z

    iget-boolean v12, v0, Ld/b/a/k;->p:Z

    iget-boolean v13, v0, Ld/b/a/k;->l:Z

    iget-object v14, v0, Ld/b/a/k;->b:Lcom/google/gson/LongSerializationPolicy;

    move-object/from16 v3, v16

    move-object v15, v1

    invoke-direct/range {v3 .. v15}, Ld/b/a/j;-><init>(Ld/b/a/b/r;Ld/b/a/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v16
.end method

.method public final a(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ld/b/a/y;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ld/b/a/a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1, p1}, Ld/b/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 586
    .local v0, "dateTypeAdapter":Ld/b/a/a;
    new-instance v1, Ld/b/a/a;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, p1}, Ld/b/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 587
    .local v1, "timestampTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v2, Ld/b/a/a;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p1}, Ld/b/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .local v2, "javaSqlDateTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    goto :goto_0

    .line 588
    .end local v0    # "dateTypeAdapter":Ld/b/a/a;
    .end local v1    # "timestampTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    .end local v2    # "javaSqlDateTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    .line 589
    new-instance v0, Ld/b/a/a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1, p2, p3}, Ld/b/a/a;-><init>(Ljava/lang/Class;II)V

    .line 590
    .restart local v0    # "dateTypeAdapter":Ld/b/a/a;
    new-instance v1, Ld/b/a/a;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, p2, p3}, Ld/b/a/a;-><init>(Ljava/lang/Class;II)V

    .line 591
    .restart local v1    # "timestampTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v2, Ld/b/a/a;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p2, p3}, Ld/b/a/a;-><init>(Ljava/lang/Class;II)V

    .line 596
    .restart local v2    # "javaSqlDateTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v0}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-class v3, Ljava/sql/Timestamp;

    invoke-static {v3, v1}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-class v3, Ljava/sql/Date;

    invoke-static {v3, v2}, Ld/b/a/b/a/ha;->a(Ljava/lang/Class;Ld/b/a/x;)Ld/b/a/y;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    return-void

    .line 593
    .end local v0    # "dateTypeAdapter":Ld/b/a/a;
    .end local v1    # "timestampTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    .end local v2    # "javaSqlDateTypeAdapter":Ld/b/a/x;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :cond_1
    return-void
.end method

.method public b()Ld/b/a/k;
    .locals 1

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b/a/k;->m:Z

    .line 387
    return-object p0
.end method

.method public c()Ld/b/a/k;
    .locals 1

    .line 156
    iget-object v0, p0, Ld/b/a/k;->a:Ld/b/a/b/r;

    invoke-virtual {v0}, Ld/b/a/b/r;->a()Ld/b/a/b/r;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/k;->a:Ld/b/a/b/r;

    .line 157
    return-object p0
.end method

.method public d()Ld/b/a/k;
    .locals 1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/a/k;->g:Z

    .line 169
    return-object p0
.end method

.method public e()Ld/b/a/k;
    .locals 1

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/a/k;->n:Z

    .line 362
    return-object p0
.end method
