.class public Lb/a/b/e;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/e$a;
    }
.end annotation


# instance fields
.field public a:Lb/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/b/a<",
            "Lb/a/b/c;",
            "Lb/a/b/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/arch/lifecycle/Lifecycle$State;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/b/d;)V
    .locals 1
    .param p1, "provider"    # Lb/a/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Lb/a/a/b/a;

    invoke-direct {v0}, Lb/a/a/b/a;-><init>()V

    iput-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lb/a/b/e;->d:I

    .line 76
    iput-boolean v0, p0, Lb/a/b/e;->e:Z

    .line 77
    iput-boolean v0, p0, Lb/a/b/e;->f:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/e;->g:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/b/e;->c:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->b:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 100
    return-void
.end method

.method public static a(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3
    .param p0, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 261
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    .line 257
    :cond_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    .line 255
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 263
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3
    .param p0, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 235
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 245
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->a:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->e:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    .line 241
    :cond_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->d:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0

    .line 238
    :cond_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->c:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public static a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .param p0, "state1"    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "state2"    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3
    .param p0, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 269
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 276
    :cond_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    .line 274
    :cond_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0

    .line 272
    :cond_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 231
    iget-object v0, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public a(Lb/a/b/c;)V
    .locals 8
    .param p1, "observer"    # Lb/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    iget-object v0, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->a:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->b:Landroid/arch/lifecycle/Lifecycle$State;

    :goto_0
    move-object v0, v1

    .line 162
    .local v0, "initialState":Landroid/arch/lifecycle/Lifecycle$State;
    new-instance v1, Lb/a/b/e$a;

    invoke-direct {v1, p1, v0}, Lb/a/b/e$a;-><init>(Lb/a/b/c;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 163
    .local v1, "statefulObserver":Lb/a/b/e$a;
    iget-object v2, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v2, p1, v1}, Lb/a/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    .line 165
    .local v2, "previous":Lb/a/b/e$a;
    if-eqz v2, :cond_1

    .line 166
    return-void

    .line 168
    :cond_1
    iget-object v3, p0, Lb/a/b/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/d;

    .line 169
    .local v3, "lifecycleOwner":Lb/a/b/d;
    if-nez v3, :cond_2

    .line 171
    return-void

    .line 174
    :cond_2
    iget v4, p0, Lb/a/b/e;->d:I

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lb/a/b/e;->e:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    .line 175
    .local v4, "isReentrance":Z
    :goto_2
    invoke-virtual {p0, p1}, Lb/a/b/e;->c(Lb/a/b/c;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 176
    .local v6, "targetState":Landroid/arch/lifecycle/Lifecycle$State;
    iget v7, p0, Lb/a/b/e;->d:I

    add-int/2addr v7, v5

    iput v7, p0, Lb/a/b/e;->d:I

    .line 177
    :goto_3
    iget-object v7, v1, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v7, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gez v7, :cond_5

    iget-object v7, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 178
    invoke-virtual {v7, p1}, Lb/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    iget-object v7, v1, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v7}, Lb/a/b/e;->d(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 180
    iget-object v7, v1, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v7}, Lb/a/b/e;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lb/a/b/e$a;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 181
    invoke-virtual {p0}, Lb/a/b/e;->c()V

    .line 183
    invoke-virtual {p0, p1}, Lb/a/b/e;->c(Lb/a/b/c;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v6

    goto :goto_3

    .line 186
    :cond_5
    if-nez v4, :cond_6

    .line 188
    invoke-virtual {p0}, Lb/a/b/e;->d()V

    .line 190
    :cond_6
    iget v7, p0, Lb/a/b/e;->d:I

    sub-int/2addr v7, v5

    iput v7, p0, Lb/a/b/e;->d:I

    .line 191
    return-void
.end method

.method public final a(Lb/a/b/d;)V
    .locals 5
    .param p1, "lifecycleOwner"    # Lb/a/b/d;

    .line 299
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 300
    invoke-virtual {v0}, Lb/a/a/b/c;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .local v0, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/a/b/e;->f:Z

    if-nez v1, :cond_1

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    .line 304
    .local v2, "observer":Lb/a/b/e$a;
    :goto_1
    iget-object v3, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lb/a/b/e;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 307
    .local v3, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    invoke-static {v3}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-virtual {p0, v4}, Lb/a/b/e;->d(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 308
    invoke-virtual {v2, p1, v3}, Lb/a/b/e$a;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 309
    invoke-virtual {p0}, Lb/a/b/e;->c()V

    .line 310
    .end local v3    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    goto :goto_1

    .line 311
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Lb/a/b/e$a;
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method public b(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-static {p1}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 123
    .local v0, "next":Landroid/arch/lifecycle/Lifecycle$State;
    invoke-virtual {p0, v0}, Lb/a/b/e;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 124
    return-void
.end method

.method public b(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0
    .param p1, "state"    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lb/a/b/e;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 111
    return-void
.end method

.method public b(Lb/a/b/c;)V
    .locals 1
    .param p1, "observer"    # Lb/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v0, p1}, Lb/a/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public final b(Lb/a/b/d;)V
    .locals 5
    .param p1, "lifecycleOwner"    # Lb/a/b/d;

    .line 284
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 285
    invoke-virtual {v0}, Lb/a/a/b/c;->b()Lb/a/a/b/c$d;

    move-result-object v0

    .line 286
    .local v0, "ascendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/a/b/e;->f:Z

    if-nez v1, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    .line 289
    .local v2, "observer":Lb/a/b/e$a;
    :goto_1
    iget-object v3, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lb/a/b/e;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v3}, Lb/a/b/e;->d(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lb/a/b/e;->e(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lb/a/b/e$a;->a(Lb/a/b/d;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-virtual {p0}, Lb/a/b/e;->c()V

    goto :goto_1

    .line 295
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Lb/a/b/e$a;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 142
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v0}, Lb/a/a/b/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v0}, Lb/a/a/b/c;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/e$a;

    iget-object v0, v0, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 146
    .local v0, "eldestObserverState":Landroid/arch/lifecycle/Lifecycle$State;
    iget-object v2, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v2}, Lb/a/a/b/c;->c()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    iget-object v2, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 147
    .local v2, "newestObserverState":Landroid/arch/lifecycle/Lifecycle$State;
    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Lb/a/b/c;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 4
    .param p1, "observer"    # Lb/a/b/c;

    .line 151
    iget-object v0, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v0, p1}, Lb/a/a/b/a;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 153
    .local v0, "previous":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    iget-object v2, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 154
    .local v2, "siblingState":Landroid/arch/lifecycle/Lifecycle$State;
    :goto_0
    iget-object v3, p0, Lb/a/b/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lb/a/b/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/Lifecycle$State;

    .line 156
    .local v1, "parentState":Landroid/arch/lifecycle/Lifecycle$State;
    :cond_1
    iget-object v3, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3, v2}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v3

    invoke-static {v3, v1}, Lb/a/b/e;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v3

    return-object v3
.end method

.method public final c()V
    .locals 2

    .line 194
    iget-object v0, p0, Lb/a/b/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public final c(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 2
    .param p1, "next"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 127
    iget-object v0, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean v0, p0, Lb/a/b/e;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lb/a/b/e;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iput-boolean v1, p0, Lb/a/b/e;->e:Z

    .line 137
    invoke-virtual {p0}, Lb/a/b/e;->d()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/b/e;->e:Z

    .line 139
    return-void

    .line 132
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lb/a/b/e;->f:Z

    .line 134
    return-void
.end method

.method public final d()V
    .locals 4

    .line 317
    iget-object v0, p0, Lb/a/b/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/d;

    .line 318
    .local v0, "lifecycleOwner":Lb/a/b/d;
    if-nez v0, :cond_0

    .line 319
    const-string v1, "LifecycleRegistry"

    const-string v2, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/b/e;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 324
    iput-boolean v2, p0, Lb/a/b/e;->f:Z

    .line 326
    iget-object v1, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v2}, Lb/a/a/b/c;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/e$a;

    iget-object v2, v2, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 327
    invoke-virtual {p0, v0}, Lb/a/b/e;->a(Lb/a/b/d;)V

    .line 329
    :cond_1
    iget-object v1, p0, Lb/a/b/e;->a:Lb/a/a/b/a;

    invoke-virtual {v1}, Lb/a/a/b/c;->c()Ljava/util/Map$Entry;

    move-result-object v1

    .line 330
    .local v1, "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    iget-boolean v2, p0, Lb/a/b/e;->f:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lb/a/b/e;->b:Landroid/arch/lifecycle/Lifecycle$State;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/e$a;

    iget-object v3, v3, Lb/a/b/e$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_2

    .line 332
    invoke-virtual {p0, v0}, Lb/a/b/e;->b(Lb/a/b/d;)V

    .line 334
    .end local v1    # "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    :cond_2
    goto :goto_0

    .line 335
    :cond_3
    iput-boolean v2, p0, Lb/a/b/e;->f:Z

    .line 336
    return-void
.end method

.method public final d(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 198
    iget-object v0, p0, Lb/a/b/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method
