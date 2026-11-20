.class public final Ld/a/g/c/a;
.super Ljava/lang/Object;
.source "ReportDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/g/c/a$a;
    }
.end annotation


# static fields
.field public static a:Ld/a/g/c/a;


# instance fields
.field public b:Ld/a/g/c/a$a;

.field public c:Landroid/database/sqlite/SQLiteDatabase;

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ld/a/g/c/a;->d:Landroid/content/Context;

    .line 76
    new-instance v0, Ld/a/g/c/a$a;

    invoke-direct {v0, p0, p1}, Ld/a/g/c/a$a;-><init>(Ld/a/g/c/a;Landroid/content/Context;)V

    iput-object v0, p0, Ld/a/g/c/a;->b:Ld/a/g/c/a$a;

    .line 78
    nop

    .line 1083
    :try_start_0
    iget-object p1, p0, Ld/a/g/c/a;->b:Ld/a/g/c/a$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    return-void

    .line 1084
    :catch_0
    move-exception p1

    .line 1085
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 79
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/c/a;
    .locals 2

    const-class v0, Ld/a/g/c/a;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Ld/a/g/c/a;->a:Ld/a/g/c/a;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ld/a/g/c/a;

    invoke-direct {v1, p0}, Ld/a/g/c/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/c/a;->a:Ld/a/g/c/a;

    .line 93
    :cond_0
    sget-object p0, Ld/a/g/c/a;->a:Ld/a/g/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 177
    nop

    .line 179
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    invoke-virtual {p0, v1}, Ld/a/g/c/a;->b(I)I

    move-result v0

    .line 182
    if-gtz v0, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ld/a/g/g/a;->a:J

    goto :goto_1

    .line 187
    :catch_0
    move-exception p1

    goto :goto_6

    .line 185
    :cond_0
    :goto_1
    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    iget-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_2
    goto :goto_8

    .line 197
    :catch_1
    move-exception p1

    .line 199
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ld/a/g/g/a;->a:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    :goto_3
    goto :goto_5

    .line 200
    :catch_2
    move-exception p1

    .line 201
    :goto_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 203
    :goto_5
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 205
    goto :goto_8

    .line 195
    :catchall_0
    move-exception p1

    goto :goto_9

    .line 189
    :goto_6
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ld/a/g/g/a;->a:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    goto :goto_7

    .line 190
    :catch_3
    move-exception p1

    .line 191
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 193
    :goto_7
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :try_start_5
    iget-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 197
    :catch_4
    move-exception p1

    .line 199
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ld/a/g/g/a;->a:J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 200
    :catch_5
    move-exception p1

    goto :goto_4

    .line 206
    :goto_8
    return v0

    .line 196
    :goto_9
    :try_start_7
    iget-object v0, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 204
    goto :goto_b

    .line 197
    :catch_6
    move-exception v0

    .line 199
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ld/a/g/g/a;->a:J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 202
    goto :goto_a

    .line 200
    :catch_7
    move-exception v0

    .line 201
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 203
    :goto_a
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 204
    :goto_b
    throw p1
.end method

.method public final a(Ld/a/g/e/a;)J
    .locals 5

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    iget-object v1, p1, Ld/a/g/e/a;->b:Ljava/lang/String;

    const-string v2, "b"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v1, p1, Ld/a/g/e/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-wide v1, p1, Ld/a/g/e/a;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    iget v1, p1, Ld/a/g/e/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget v1, p1, Ld/a/g/e/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget v1, p1, Ld/a/g/e/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    iget v1, p1, Ld/a/g/e/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-object v1, p1, Ld/a/g/e/a;->j:Ljava/lang/String;

    const-string v2, "j"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p1, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "xVOTuxgN3lkRN2v4"

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sofire/ac/F;->ae([B[B)[B

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 117
    :goto_0
    const-string v1, "h"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-wide/16 v1, -0x1

    .line 120
    :try_start_1
    iget-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "r"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    goto :goto_1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 124
    :goto_1
    return-wide v1
.end method

.method public final a(Ljava/lang/String;)J
    .locals 3

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    const-string v1, "b"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    nop

    .line 132
    :try_start_0
    iget-object p1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-static {}, Ld/a/g/i/c;->a()V

    const-wide/16 v0, -0x1

    .line 136
    :goto_0
    return-wide v0
.end method

.method public final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/a/g/e/a;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const-string v4, "i=5"

    .line 304
    const-string v8, "d desc"

    .line 305
    nop

    .line 307
    const/4 v10, 0x0

    :try_start_0
    iget-object v1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "r"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "100"

    .line 308
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 310
    if-eqz v10, :cond_0

    .line 311
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Ld/a/g/e/a;

    invoke-direct {v1}, Ld/a/g/e/a;-><init>()V

    .line 313
    const-string v2, "a"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->a:I

    .line 314
    const-string v2, "b"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 315
    const-string v2, "c"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->c:I

    .line 316
    const-string v2, "d"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Ld/a/g/e/a;->e:J

    .line 317
    const-string v2, "g"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->f:I

    .line 318
    const-string v2, "e"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->g:I

    .line 319
    const-string v2, "f"

    .line 320
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->h:I

    .line 321
    const-string v2, "i"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Ld/a/g/e/a;->i:I

    .line 322
    const-string v2, "j"

    .line 323
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ld/a/g/e/a;->j:Ljava/lang/String;

    .line 324
    const-string v2, "h"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "xVOTuxgN3lkRN2v4"

    const-string v6, "utf-8"

    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 328
    invoke-virtual {v3, v4, v5}, Lcom/baidu/sofire/ac/F;->ad([B[B)[B

    move-result-object v3

    .line 330
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    move-object v2, v4

    goto :goto_1

    .line 331
    :catch_0
    move-exception v3

    .line 332
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 335
    :goto_1
    iput-object v2, v1, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    goto/16 :goto_0

    .line 340
    :catch_1
    move-exception v1

    goto :goto_2

    .line 343
    :cond_0
    if-eqz v10, :cond_1

    .line 345
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 343
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 341
    :goto_2
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    if-eqz v10, :cond_1

    .line 345
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 348
    :goto_3
    goto :goto_4

    .line 346
    :catch_2
    move-exception v1

    .line 347
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_3

    .line 352
    :cond_1
    :goto_4
    return-object v0

    .line 343
    :goto_5
    if-eqz v10, :cond_2

    .line 345
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 348
    goto :goto_6

    .line 346
    :catch_3
    move-exception v1

    .line 347
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 348
    :cond_2
    :goto_6
    throw v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ld/a/g/e/a;",
            ">;"
        }
    .end annotation

    .line 215
    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 217
    iget-object v5, v1, Ld/a/g/c/a;->d:Landroid/content/Context;

    invoke-static {v5}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v5

    .line 219
    nop

    .line 2050
    iget-object v6, v5, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v7, "re_net_wt"

    const/4 v8, 0x3

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 219
    const v7, 0x36ee80

    mul-int/2addr v6, v7

    .line 223
    const-string v7, "(d <= ("

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-e*3600000) or e=0 )"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    .line 229
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-e*3600000) or e=0 ) and (g!=2 or d<="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 238
    :goto_0
    const-string v16, "d desc"

    .line 239
    const/4 v3, 0x0

    .line 241
    if-ne v0, v8, :cond_1

    .line 242
    :try_start_0
    iget-object v9, v1, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "r"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v0, 0x64

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 243
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v5}, Ld/a/g/h/a;->v()I

    move-result v0

    .line 249
    iget-object v9, v1, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "r"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 250
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 255
    :goto_1
    if-eqz v3, :cond_2

    .line 256
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    new-instance v4, Ld/a/g/e/a;

    invoke-direct {v4}, Ld/a/g/e/a;-><init>()V

    .line 258
    const-string v0, "a"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->a:I

    .line 259
    const-string v0, "b"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 260
    const-string v0, "c"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->c:I

    .line 261
    const-string v0, "d"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Ld/a/g/e/a;->e:J

    .line 262
    const-string v0, "g"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->f:I

    .line 263
    const-string v0, "e"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->g:I

    .line 264
    const-string v0, "f"

    .line 265
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->h:I

    .line 266
    const-string v0, "i"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Ld/a/g/e/a;->i:I

    .line 267
    const-string v0, "j"

    .line 268
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ld/a/g/e/a;->j:Ljava/lang/String;

    .line 269
    const-string v0, "h"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "xVOTuxgN3lkRN2v4"

    const-string v8, "utf-8"

    .line 274
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 273
    invoke-virtual {v0, v6, v7}, Lcom/baidu/sofire/ac/F;->ad([B[B)[B

    move-result-object v0

    .line 275
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    move-object v5, v6

    goto :goto_3

    .line 276
    :catch_0
    move-exception v0

    .line 277
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 280
    :goto_3
    iput-object v5, v4, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 282
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    goto/16 :goto_2

    .line 285
    :catch_1
    move-exception v0

    goto :goto_4

    .line 288
    :cond_2
    if-eqz v3, :cond_3

    .line 290
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 288
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .line 286
    :goto_4
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    if-eqz v3, :cond_3

    .line 290
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 293
    :goto_5
    goto :goto_6

    .line 291
    :catch_2
    move-exception v0

    .line 292
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_5

    .line 297
    :cond_3
    :goto_6
    return-object v2

    .line 288
    :goto_7
    if-eqz v3, :cond_4

    .line 290
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 293
    goto :goto_8

    .line 291
    :catch_3
    move-exception v0

    .line 292
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 293
    :cond_4
    :goto_8
    throw v2
.end method

.method public final a(ZI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Ld/a/g/e/a;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 362
    if-eqz p1, :cond_0

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "(d < ("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-f*3600000) and f!= 0)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "d<="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0xf731400

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 370
    :goto_0
    const-string v8, "d desc"

    .line 371
    const/4 p1, 0x0

    .line 373
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 374
    :try_start_0
    iget-object v1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "r"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "100"

    .line 375
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 378
    :cond_1
    iget-object p2, p0, Ld/a/g/c/a;->d:Landroid/content/Context;

    invoke-static {p2}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Ld/a/g/h/a;->v()I

    move-result p2

    .line 383
    iget-object v1, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "r"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 386
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 384
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 388
    :goto_1
    if-eqz p1, :cond_2

    .line 389
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 390
    new-instance p2, Ld/a/g/e/a;

    invoke-direct {p2}, Ld/a/g/e/a;-><init>()V

    .line 391
    const-string v1, "a"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->a:I

    .line 392
    const-string v1, "b"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 393
    const-string v1, "c"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->c:I

    .line 394
    const-string v1, "d"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Ld/a/g/e/a;->e:J

    .line 395
    const-string v1, "g"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->f:I

    .line 396
    const-string v1, "e"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->g:I

    .line 397
    const-string v1, "f"

    .line 398
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->h:I

    .line 399
    const-string v1, "i"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Ld/a/g/e/a;->i:I

    .line 400
    const-string v1, "j"

    .line 401
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Ld/a/g/e/a;->j:Ljava/lang/String;

    .line 402
    const-string v1, "h"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :try_start_1
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "xVOTuxgN3lkRN2v4"

    const-string v5, "utf-8"

    .line 407
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 406
    invoke-virtual {v2, v3, v4}, Lcom/baidu/sofire/ac/F;->ad([B[B)[B

    move-result-object v2

    .line 408
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    move-object v1, v3

    goto :goto_3

    .line 409
    :catch_0
    move-exception v2

    .line 410
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 413
    :goto_3
    iput-object v1, p2, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 415
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    goto/16 :goto_2

    .line 418
    :catch_1
    move-exception p2

    goto :goto_4

    .line 421
    :cond_2
    if-eqz p1, :cond_3

    .line 423
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 421
    :catchall_0
    move-exception p2

    goto :goto_7

    .line 419
    :goto_4
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    if-eqz p1, :cond_3

    .line 423
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 426
    :goto_5
    goto :goto_6

    .line 424
    :catch_2
    move-exception p1

    .line 425
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_5

    .line 430
    :cond_3
    :goto_6
    return-object v0

    .line 421
    :goto_7
    if-eqz p1, :cond_4

    .line 423
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 426
    goto :goto_8

    .line 424
    :catch_3
    move-exception p1

    .line 425
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 426
    :cond_4
    :goto_8
    throw p2
.end method

.method public final b()I
    .locals 11

    .line 434
    nop

    .line 435
    nop

    .line 437
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "r"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v2

    goto :goto_2

    .line 444
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 446
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    :goto_1
    goto :goto_3

    .line 447
    :catch_1
    move-exception v0

    .line 448
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_1

    .line 444
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 442
    :goto_2
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    if-eqz v0, :cond_1

    .line 446
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 452
    :cond_1
    :goto_3
    return v1

    .line 444
    :goto_4
    if-eqz v0, :cond_2

    .line 446
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 449
    goto :goto_5

    .line 447
    :catch_2
    move-exception v0

    .line 448
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 449
    :cond_2
    :goto_5
    throw v1
.end method

.method public final b(I)I
    .locals 5

    .line 167
    nop

    .line 169
    :try_start_0
    iget-object v0, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    const-string v2, "a=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception p1

    .line 171
    invoke-static {}, Ld/a/g/i/c;->a()V

    const/4 p1, -0x1

    .line 173
    :goto_0
    return p1
.end method

.method public final c()I
    .locals 8

    .line 509
    nop

    .line 510
    iget-object v0, p0, Ld/a/g/c/a;->d:Landroid/content/Context;

    invoke-static {v0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 512
    nop

    .line 2064
    iget-object v0, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v3, "re_net_over"

    const/4 v4, 0x7

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 512
    const v3, 0x5265c00

    mul-int/2addr v0, v3

    .line 515
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(d <= ? or (d < ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-f*3600000) and f!= 0)) and b != \'1001001\'and i != 5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 523
    iget-object v0, p0, Ld/a/g/c/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "r"

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    invoke-static {}, Ld/a/g/i/c;->a()V

    const/4 v0, -0x1

    .line 527
    :goto_0
    return v0
.end method
