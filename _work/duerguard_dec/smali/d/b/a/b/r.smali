.class public final Ld/b/a/b/r;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Ld/b/a/y;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Ld/b/a/b/r;


# instance fields
.field public b:D

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ld/b/a/b/r;

    invoke-direct {v0}, Ld/b/a/b/r;-><init>()V

    sput-object v0, Ld/b/a/b/r;->a:Ld/b/a/b/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Ld/b/a/b/r;->b:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Ld/b/a/b/r;->c:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/b/a/b/r;->d:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/b/r;->f:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/b/r;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld/b/a/b/r;
    .locals 2

    .line 91
    invoke-virtual {p0}, Ld/b/a/b/r;->clone()Ld/b/a/b/r;

    move-result-object v0

    .line 92
    .local v0, "result":Ld/b/a/b/r;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/b/a/b/r;->e:Z

    .line 93
    return-object v0
.end method

.method public a(Ld/b/a/j;Ld/b/a/c/a;)Ld/b/a/x;
    .locals 10
    .param p1, "gson"    # Ld/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b/a/j;",
            "Ld/b/a/c/a<",
            "TT;>;)",
            "Ld/b/a/x<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p2, "type":Ld/b/a/c/a;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Ld/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ld/b/a/b/r;->a(Ljava/lang/Class;Z)Z

    move-result v1

    .line 114
    .local v1, "skipSerialize":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ld/b/a/b/r;->a(Ljava/lang/Class;Z)Z

    move-result v8

    .line 116
    .local v8, "skipDeserialize":Z
    if-nez v1, :cond_0

    if-nez v8, :cond_0

    .line 117
    const/4 v2, 0x0

    return-object v2

    .line 120
    :cond_0
    new-instance v9, Ld/b/a/b/q;

    move-object v2, v9

    move-object v3, p0

    move v4, v8

    move v5, v1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Ld/b/a/b/q;-><init>(Ld/b/a/b/r;ZZLd/b/a/j;Ld/b/a/c/a;)V

    return-object v9
.end method

.method public final a(Ld/b/a/a/d;)Z
    .locals 4
    .param p1, "annotation"    # Ld/b/a/a/d;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Ld/b/a/a/d;->value()D

    move-result-wide v0

    .line 235
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Ld/b/a/b/r;->b:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    return v2

    .line 239
    .end local v0    # "annotationVersion":D
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ld/b/a/a/d;Ld/b/a/a/e;)Z
    .locals 1
    .param p1, "since"    # Ld/b/a/a/d;
    .param p2, "until"    # Ld/b/a/a/e;

    .line 229
    invoke-virtual {p0, p1}, Ld/b/a/b/r;->a(Ld/b/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ld/b/a/b/r;->a(Ld/b/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Ld/b/a/a/e;)Z
    .locals 4
    .param p1, "annotation"    # Ld/b/a/a/e;

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Ld/b/a/a/e;->value()D

    move-result-wide v0

    .line 245
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Ld/b/a/b/r;->b:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    return v2

    .line 249
    .end local v0    # "annotationVersion":D
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 216
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0
.end method

.method public a(Ljava/lang/Class;Z)Z
    .locals 5
    .param p2, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 192
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-wide v0, p0, Ld/b/a/b/r;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Ld/b/a/a/d;

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b/a/a/d;

    const-class v2, Ld/b/a/a/e;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ld/b/a/a/e;

    invoke-virtual {p0, v0, v2}, Ld/b/a/b/r;->a(Ld/b/a/a/d;Ld/b/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    return v1

    .line 197
    :cond_0
    iget-boolean v0, p0, Ld/b/a/b/r;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ld/b/a/b/r;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    return v1

    .line 201
    :cond_1
    invoke-virtual {p0, p1}, Ld/b/a/b/r;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    return v1

    .line 205
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Ld/b/a/b/r;->f:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld/b/a/b/r;->g:Ljava/util/List;

    .line 206
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/b/a/b;

    .line 207
    .local v3, "exclusionStrategy":Ld/b/a/b;
    invoke-interface {v3, p1}, Ld/b/a/b;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    return v1

    .line 210
    .end local v3    # "exclusionStrategy":Ld/b/a/b;
    :cond_4
    goto :goto_1

    .line 212
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .line 150
    iget v0, p0, Ld/b/a/b/r;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    iget-wide v2, p0, Ld/b/a/b/r;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Ld/b/a/a/d;

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b/a/a/d;

    const-class v2, Ld/b/a/a/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ld/b/a/a/e;

    invoke-virtual {p0, v0, v2}, Ld/b/a/b/r;->a(Ld/b/a/a/d;Ld/b/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    return v1

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    return v1

    .line 163
    :cond_2
    iget-boolean v0, p0, Ld/b/a/b/r;->e:Z

    if-eqz v0, :cond_5

    .line 164
    const-class v0, Ld/b/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b/a/a/a;

    .line 165
    .local v0, "annotation":Ld/b/a/a/a;
    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {v0}, Ld/b/a/a/a;->serialize()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ld/b/a/a/a;->deserialize()Z

    move-result v2

    if-nez v2, :cond_5

    .line 166
    :cond_4
    :goto_0
    return v1

    .line 170
    .end local v0    # "annotation":Ld/b/a/a/a;
    :cond_5
    iget-boolean v0, p0, Ld/b/a/b/r;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/b/r;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    return v1

    .line 174
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/b/r;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    return v1

    .line 178
    :cond_7
    if-eqz p2, :cond_8

    iget-object v0, p0, Ld/b/a/b/r;->f:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Ld/b/a/b/r;->g:Ljava/util/List;

    .line 179
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 180
    new-instance v2, Ld/b/a/c;

    invoke-direct {v2, p1}, Ld/b/a/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 181
    .local v2, "fieldAttributes":Ld/b/a/c;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/b/a/b;

    .line 182
    .local v4, "exclusionStrategy":Ld/b/a/b;
    invoke-interface {v4, v2}, Ld/b/a/b;->a(Ld/b/a/c;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 183
    return v1

    .line 185
    .end local v4    # "exclusionStrategy":Ld/b/a/b;
    :cond_9
    goto :goto_2

    .line 188
    .end local v2    # "fieldAttributes":Ld/b/a/c;
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 221
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ld/b/a/b/r;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ld/b/a/b/r;
    .locals 2

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/a/b/r;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ld/b/a/b/r;->clone()Ld/b/a/b/r;

    move-result-object v0

    return-object v0
.end method
