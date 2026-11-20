.class public final Ld/a/a/d;
.super Ljava/lang/Object;
.source "InterProcessStorage.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "storageName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ld/a/a/d;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Ld/a/a/d;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld/a/a/d;->b:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ld/a/a/d;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "storageName"    # Ljava/lang/String;

    .line 29
    new-instance v0, Ld/a/a/d;

    invoke-direct {v0, p0, p1}, Ld/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 164
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ld/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "strSrc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "InterProcessStorage"

    if-lez v2, :cond_0

    .line 169
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 175
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 180
    :cond_1
    :try_start_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 184
    :cond_2
    return-object p2

    .line 188
    :cond_3
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 189
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 192
    :cond_4
    return-object p2

    .line 195
    :cond_5
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 196
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 199
    :cond_6
    return-object p2

    .line 202
    :cond_7
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_9

    .line 203
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 204
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 206
    :cond_8
    return-object p2

    .line 209
    :cond_9
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_b

    .line 210
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 213
    :cond_a
    return-object p2

    .line 218
    :cond_b
    goto :goto_1

    .line 216
    :catch_1
    move-exception v2

    .line 217
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p2
.end method

.method public final a()Ljava/lang/String;
    .locals 13

    .line 58
    const-string v0, "InterProcessStorage"

    invoke-virtual {p0}, Ld/a/a/d;->c()V

    .line 59
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld/a/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 61
    return-object v3

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 67
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 68
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 70
    .local v5, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .local v6, "channel":Ljava/nio/channels/FileChannel;
    const-wide/16 v7, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v4

    move-object v5, v4

    .line 73
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 76
    .local v4, "temp":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    if-lez v7, :cond_1

    .line 77
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v9, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 83
    .end local v4    # "temp":[B
    .end local v8    # "len":I
    :cond_1
    if-eqz v5, :cond_2

    .line 85
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v4

    goto :goto_3

    .line 80
    :catch_1
    move-exception v4

    goto :goto_1

    .line 83
    .end local v6    # "channel":Ljava/nio/channels/FileChannel;
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v6

    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    goto :goto_5

    .line 80
    :catch_2
    move-exception v6

    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "channel":Ljava/nio/channels/FileChannel;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_2

    .line 85
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    :goto_2
    goto :goto_4

    .line 86
    :catch_3
    move-exception v4

    .line 87
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    invoke-static {v6}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 91
    invoke-static {v3}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 92
    nop

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :catchall_1
    move-exception v4

    :goto_5
    if-eqz v5, :cond_3

    .line 85
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    goto :goto_6

    .line 86
    :catch_4
    move-exception v7

    .line 87
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    invoke-static {v6}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 91
    invoke-static {v3}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 92
    throw v4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;

    .line 97
    const-string v0, "InterProcessStorage"

    invoke-virtual {p0}, Ld/a/a/d;->c()V

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 100
    .local v2, "lock":Ljava/nio/channels/FileLock;
    const/4 v3, 0x0

    .line 101
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld/a/a/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ld/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v1, v5

    .line 105
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    move-object v2, v5

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz v2, :cond_0

    .line 115
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v5

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 110
    :catch_1
    move-exception v5

    .line 111
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 115
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 118
    :goto_0
    goto :goto_2

    .line 116
    :catch_2
    move-exception v5

    .line 117
    .local v5, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-static {v1}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v3}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 122
    nop

    .line 123
    return-void

    .line 113
    :goto_3
    if-eqz v2, :cond_1

    .line 115
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 118
    goto :goto_4

    .line 116
    :catch_3
    move-exception v6

    .line 117
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    invoke-static {v1}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 121
    invoke-static {v3}, Ld/a/a/f;->a(Ljava/io/Closeable;)V

    .line 122
    throw v5
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 46
    iget-object v0, p0, Ld/a/a/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "folderPath":Ljava/lang/String;
    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "indexPlugin":I
    if-lez v1, :cond_0

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "duerguard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Ld/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "strSrc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "InterProcessStorage"

    if-lez v2, :cond_0

    .line 130
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 136
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 140
    :cond_1
    :try_start_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 141
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 142
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 143
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 144
    :cond_3
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 145
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 146
    :cond_4
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 147
    move-object v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 148
    :cond_5
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 149
    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 150
    :cond_6
    instance-of v2, p2, Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    .line 151
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 153
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_1
    goto :goto_2

    .line 155
    :catch_1
    move-exception v2

    .line 156
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ld/a/a/d;->a(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public final c()V
    .locals 3

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ld/a/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string v1, "InterProcessStorage"

    const-string v2, "mkdirs failed!"

    invoke-static {v1, v2}, Ld/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
