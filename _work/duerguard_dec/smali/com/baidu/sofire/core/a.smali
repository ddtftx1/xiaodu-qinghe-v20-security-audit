.class public final Lcom/baidu/sofire/core/a;
.super Ljava/lang/Object;
.source "ActivityInfoArray.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/sofire/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/content/pm/ActivityInfo;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sofire/core/a;->a:Ljava/util/ArrayList;

    .line 21
    if-eqz p1, :cond_2

    .line 22
    array-length v0, p1

    .line 23
    if-lez v0, :cond_2

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/baidu/sofire/core/a;->a:Ljava/util/ArrayList;

    .line 25
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 27
    new-instance v2, Lcom/baidu/sofire/core/b;

    invoke-direct {v2}, Lcom/baidu/sofire/core/b;-><init>()V

    .line 28
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->h:I

    .line 29
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->f:I

    .line 30
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->l:I

    .line 31
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->b:I

    .line 32
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 33
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->m:Ljava/lang/String;

    .line 35
    :cond_0
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->j:Ljava/lang/String;

    .line 36
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->k:Ljava/lang/String;

    .line 37
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->c:Ljava/lang/String;

    .line 38
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->g:I

    .line 39
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->i:I

    .line 40
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->e:Ljava/lang/String;

    .line 41
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sofire/core/b;->d:Ljava/lang/String;

    .line 42
    aget-object v3, p1, v1

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    iput v3, v2, Lcom/baidu/sofire/core/b;->a:I

    .line 43
    iget-object v3, p0, Lcom/baidu/sofire/core/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public static a([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/sofire/core/b;",
            ">;"
        }
    .end annotation

    .line 81
    nop

    .line 82
    nop

    .line 84
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    nop

    .line 94
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 97
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 88
    :goto_0
    return-object v2

    .line 92
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    .line 89
    :catch_1
    move-exception v2

    goto :goto_6

    .line 92
    :catchall_1
    move-exception p0

    goto :goto_1

    .line 89
    :catch_2
    move-exception p0

    move-object p0, v0

    goto :goto_6

    .line 92
    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 93
    :goto_1
    if-eqz v0, :cond_0

    .line 94
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_2

    .line 99
    :catch_3
    move-exception v0

    goto :goto_3

    .line 96
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 100
    :goto_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_5

    .line 101
    :cond_1
    :goto_4
    nop

    :goto_5
    throw p0

    .line 89
    :catch_4
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    .line 93
    :goto_6
    if-eqz p0, :cond_2

    .line 94
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_7

    .line 99
    :catch_5
    move-exception p0

    goto :goto_8

    .line 96
    :cond_2
    :goto_7
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 100
    :goto_8
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_a

    .line 101
    :cond_3
    :goto_9
    nop

    .line 90
    :goto_a
    return-object v0
.end method


# virtual methods
.method public final a()[B
    .locals 5

    .line 51
    nop

    .line 52
    nop

    .line 54
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    iget-object v3, p0, Lcom/baidu/sofire/core/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 60
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    nop

    .line 69
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 63
    :goto_0
    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 64
    :catch_1
    move-exception v3

    goto :goto_6

    .line 67
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    .line 64
    :catch_2
    move-exception v2

    move-object v2, v0

    goto :goto_6

    .line 67
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 68
    :goto_1
    if-eqz v2, :cond_0

    .line 69
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    .line 74
    :catch_3
    move-exception v1

    goto :goto_3

    .line 71
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 75
    :goto_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_5

    .line 76
    :cond_1
    :goto_4
    nop

    :goto_5
    throw v0

    .line 64
    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v2, v1

    .line 68
    :goto_6
    if-eqz v2, :cond_2

    .line 69
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_7

    .line 74
    :catch_5
    move-exception v1

    goto :goto_8

    .line 71
    :cond_2
    :goto_7
    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 75
    :goto_8
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_a

    .line 76
    :cond_3
    :goto_9
    nop

    .line 65
    :goto_a
    return-object v0
.end method
