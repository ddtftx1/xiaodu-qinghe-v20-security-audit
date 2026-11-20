.class public final Ld/a/g/a/a;
.super Ljava/lang/Object;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/g/a/a$a;
    }
.end annotation


# static fields
.field public static a:Ld/a/g/a/a;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ld/a/g/a/a$a;

.field public e:Landroid/database/sqlite/SQLiteDatabase;

.field public f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Ld/a/g/a/a;->b:I

    .line 56
    const-string v0, "create table pgn(k INTEGER PRIMARY KEY ON CONFLICT ABORT,p TEXT UNIQUE ON CONFLICT ABORT,v TEXT,n INTEGER,s INTEGER,i INTEGER,u INTEGER,la INTEGER,o INTEGER,r INTEGER,ap INTEGER,apk TEXT,cl TEXT,b TEXT,t TEXT,ac BLOB,st INTEGER,du INTEGER,th INTEGER,m5 TEXT,rs INTEGER,l TEXT,pr INTEGER DEFAULT -1,pdld INTEGER DEFAULT 0,a TEXT)"

    iput-object v0, p0, Ld/a/g/a/a;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ld/a/g/a/a;->f:Landroid/content/Context;

    .line 93
    new-instance v0, Ld/a/g/a/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ld/a/g/a/a$a;-><init>(Ld/a/g/a/a;Landroid/content/Context;)V

    iput-object v0, p0, Ld/a/g/a/a;->d:Ld/a/g/a/a$a;

    .line 95
    :try_start_0
    iget-object p1, p0, Ld/a/g/a/a;->d:Ld/a/g/a/a$a;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 99
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/a/g/a/a;
    .locals 2

    const-class v0, Ld/a/g/a/a;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ld/a/g/a/a;

    invoke-direct {v1, p0}, Ld/a/g/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    .line 112
    :cond_0
    sget-object p0, Ld/a/g/a/a;->a:Ld/a/g/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 108
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    .line 645
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 646
    const-string v1, "u"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    iget-object p2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return p1

    .line 651
    :catch_0
    move-exception p1

    .line 652
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/baidu/sofire/core/ApkInfo;)J
    .locals 8

    .line 180
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 181
    return-wide v0

    .line 183
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 184
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    const-string v4, "p"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    const-string v4, "a"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    const-string v4, "l"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    const-string v4, "v"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->dexPath:Ljava/lang/String;

    const-string v4, "apk"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ap"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    const-string v4, "cl"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-wide v3, p1, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "st"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "du"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    const-string v4, "m5"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "th"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pr"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v3, p1, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 199
    new-instance v4, Lcom/baidu/sofire/core/a;

    invoke-direct {v4, v3}, Lcom/baidu/sofire/core/a;-><init>([Landroid/content/pm/ActivityInfo;)V

    .line 200
    nop

    .line 201
    invoke-virtual {v4}, Lcom/baidu/sofire/core/a;->a()[B

    move-result-object v3

    .line 200
    const-string v4, "ac"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 204
    :cond_1
    iget v3, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {p0, v3}, Ld/a/g/a/a;->b(I)Z

    move-result v3

    .line 207
    const/4 v4, 0x0

    const-string v5, "pgn"

    if-eqz v3, :cond_2

    .line 208
    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "k="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v5, v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    .line 211
    :cond_2
    const-string v3, "k"

    iget p1, p1, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    iget-object p1, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v5, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-wide v0

    .line 215
    :catch_0
    move-exception p1

    .line 216
    return-wide v0
.end method

.method public final a(I)Lcom/baidu/sofire/core/ApkInfo;
    .locals 9

    .line 363
    nop

    .line 365
    nop

    .line 367
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgn"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "k="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 368
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    new-instance v2, Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v2}, Lcom/baidu/sofire/core/ApkInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 375
    const-string p1, "n"

    .line 376
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    .line 377
    const-string p1, "p"

    .line 378
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 379
    const-string p1, "a"

    .line 380
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 381
    const-string p1, "l"

    .line 382
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 383
    const-string p1, "v"

    .line 384
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 385
    const-string p1, "apk"

    .line 386
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->dexPath:Ljava/lang/String;

    .line 387
    const-string p1, "ap"

    .line 388
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    .line 389
    const-string p1, "cl"

    .line 390
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    .line 391
    const-string p1, "th"

    .line 392
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    .line 393
    const-string p1, "st"

    .line 394
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    .line 395
    const-string p1, "du"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    .line 396
    const-string p1, "m5"

    .line 397
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 398
    const-string p1, "pr"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 399
    const-string p1, "ac"

    .line 400
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 401
    if-eqz p1, :cond_0

    .line 402
    nop

    .line 403
    invoke-static {p1}, Lcom/baidu/sofire/core/a;->a([B)Ljava/util/ArrayList;

    move-result-object p1

    .line 404
    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 406
    if-lez v0, :cond_0

    .line 407
    new-array v3, v0, [Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 408
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 409
    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 410
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->a:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 411
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->j:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 412
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->h:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 413
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->f:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 414
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->l:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 415
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->b:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 416
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->m:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 417
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->k:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 418
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->c:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 419
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->g:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 420
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->i:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 421
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->e:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 422
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->d:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 423
    iget-object v5, v2, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aput-object v4, v5, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 434
    :cond_0
    move-object v0, v2

    goto :goto_2

    .line 430
    :catch_0
    move-exception p1

    goto :goto_1

    .line 433
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 430
    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 434
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 437
    :catch_2
    move-exception p1

    .line 438
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 440
    goto :goto_7

    .line 439
    :cond_2
    :goto_3
    goto :goto_7

    .line 433
    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_8

    .line 430
    :catch_3
    move-exception p1

    move-object v2, v0

    .line 431
    :goto_4
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 435
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 437
    :catch_4
    move-exception p1

    .line 438
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 440
    goto :goto_6

    .line 439
    :cond_3
    :goto_5
    nop

    .line 442
    :goto_6
    move-object v0, v2

    :goto_7
    return-object v0

    .line 434
    :goto_8
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 437
    :catch_5
    move-exception v0

    .line 438
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_a

    .line 439
    :cond_4
    :goto_9
    nop

    :goto_a
    throw p1
.end method

.method public final a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/sofire/core/ApkInfo;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    nop

    .line 225
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "pgn"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v2}, Lcom/baidu/sofire/core/ApkInfo;-><init>()V

    .line 229
    const-string v3, "k"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 230
    const-string v3, "p"

    .line 231
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 232
    const-string v3, "a"

    .line 233
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 234
    const-string v3, "l"

    .line 235
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 236
    const-string v3, "v"

    .line 237
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 238
    const-string v3, "st"

    .line 239
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    .line 240
    const-string v3, "du"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    .line 241
    const-string v3, "pr"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    goto :goto_1

    .line 249
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 248
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 246
    :goto_1
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 252
    :catch_1
    move-exception v1

    .line 253
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 256
    goto :goto_3

    .line 254
    :cond_1
    :goto_2
    nop

    .line 258
    :goto_3
    return-object v0

    .line 249
    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 252
    :catch_2
    move-exception v1

    .line 253
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 254
    :cond_2
    :goto_5
    nop

    :goto_6
    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    .line 841
    if-lez p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and v=?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 846
    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    return-void

    .line 853
    :catch_0
    move-exception p1

    .line 854
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 856
    return-void

    .line 842
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    const-string v2, "p=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 518
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-void

    .line 520
    :catch_0
    move-exception p1

    .line 521
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 523
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;
    .locals 10

    .line 870
    nop

    .line 871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 872
    return-object v1

    .line 874
    :cond_0
    nop

    .line 876
    :try_start_0
    iget-object v2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "pgn"

    const/4 v4, 0x0

    const-string v5, "p=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 877
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 880
    if-eqz p1, :cond_2

    .line 881
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    new-instance v2, Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v2}, Lcom/baidu/sofire/core/ApkInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    :try_start_2
    const-string v1, "k"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 884
    const-string v1, "n"

    .line 885
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    .line 886
    const-string v1, "p"

    .line 887
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 888
    const-string v1, "a"

    .line 889
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 890
    const-string v1, "l"

    .line 891
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->libPath:Ljava/lang/String;

    .line 892
    const-string v1, "v"

    .line 893
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 894
    const-string v1, "apk"

    .line 895
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->dexPath:Ljava/lang/String;

    .line 896
    const-string v1, "ap"

    .line 897
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->apkParseSuc:I

    .line 898
    const-string v1, "cl"

    .line 899
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->className:Ljava/lang/String;

    .line 900
    const-string v1, "th"

    .line 901
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->applicationTheme:I

    .line 902
    const-string v1, "st"

    .line 903
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/sofire/core/ApkInfo;->startTime:J

    .line 904
    const-string v1, "du"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->duration:I

    .line 905
    const-string v1, "m5"

    .line 906
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 907
    const-string v1, "pr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/baidu/sofire/core/ApkInfo;->priority:I

    .line 908
    const-string v1, "ac"

    .line 909
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 910
    if-eqz v1, :cond_1

    .line 911
    nop

    .line 912
    invoke-static {v1}, Lcom/baidu/sofire/core/a;->a([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 913
    if-eqz v1, :cond_1

    .line 914
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 915
    if-lez v3, :cond_1

    .line 916
    new-array v4, v3, [Landroid/content/pm/ActivityInfo;

    iput-object v4, v2, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 917
    nop

    :goto_0
    if-ge v0, v3, :cond_1

    .line 918
    new-instance v4, Landroid/content/pm/ActivityInfo;

    invoke-direct {v4}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 919
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->a:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 920
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->j:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 921
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->h:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 922
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->f:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 923
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->l:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 924
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->b:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 925
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->m:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 926
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->k:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 927
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->c:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 928
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->g:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 929
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget v5, v5, Lcom/baidu/sofire/core/b;->i:I

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 930
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->e:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 931
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/b;

    iget-object v5, v5, Lcom/baidu/sofire/core/b;->d:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 932
    iget-object v5, v2, Lcom/baidu/sofire/core/ApkInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aput-object v4, v5, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 943
    :cond_1
    move-object v1, v2

    goto :goto_2

    .line 939
    :catch_0
    move-exception v0

    goto :goto_1

    .line 942
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 939
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    move-object v1, p1

    goto :goto_4

    .line 943
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 944
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 946
    :catch_2
    move-exception p1

    .line 947
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 949
    goto :goto_7

    .line 948
    :cond_3
    :goto_3
    goto :goto_7

    .line 942
    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_8

    .line 939
    :catch_3
    move-exception p1

    move-object v2, v1

    .line 940
    :goto_4
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 943
    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 944
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 946
    :catch_4
    move-exception p1

    .line 947
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 949
    goto :goto_6

    .line 948
    :cond_4
    :goto_5
    nop

    .line 951
    :goto_6
    move-object v1, v2

    :goto_7
    return-object v1

    .line 943
    :goto_8
    if-eqz p1, :cond_5

    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 944
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 946
    :catch_5
    move-exception p1

    .line 947
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_a

    .line 948
    :cond_5
    :goto_9
    nop

    :goto_a
    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    const-string v0, "\'"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
    nop

    .line 305
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    const/4 v5, 0x0

    const-string v6, "n=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 306
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_0

    .line 310
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    const-string v3, "k"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 312
    const-string v4, "v"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    goto :goto_1

    .line 320
    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 319
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 317
    :goto_1
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 326
    goto :goto_3

    .line 325
    :cond_1
    :goto_2
    nop

    .line 328
    :goto_3
    return-object v1

    .line 320
    :goto_4
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 323
    :catch_2
    move-exception v1

    .line 324
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 325
    :cond_2
    :goto_5
    nop

    :goto_6
    throw v0
.end method

.method public final b(II)V
    .locals 4

    .line 732
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 733
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "pdld"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    :try_start_0
    iget-object p2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    return-void

    .line 739
    :catch_0
    move-exception p1

    .line 740
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 742
    return-void
.end method

.method public final b(I)Z
    .locals 10

    .line 446
    nop

    .line 448
    const-string v1, "pgn"

    .line 450
    nop

    .line 452
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "p"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 453
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 457
    if-eqz v9, :cond_0

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    .line 459
    const/4 p1, 0x1

    move v8, p1

    goto :goto_0

    .line 462
    :catch_0
    move-exception p1

    goto :goto_2

    .line 466
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 467
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 469
    :catch_1
    move-exception p1

    .line 470
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 472
    goto :goto_3

    .line 471
    :cond_1
    :goto_1
    goto :goto_3

    .line 465
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 463
    :goto_2
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    if-eqz v9, :cond_1

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 467
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 474
    :goto_3
    return v8

    .line 466
    :goto_4
    if-eqz v9, :cond_2

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 469
    :catch_2
    move-exception v0

    .line 470
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 471
    :cond_2
    :goto_5
    nop

    :goto_6
    throw p1
.end method

.method public final c(I)I
    .locals 11

    .line 478
    const-string v0, "n"

    .line 480
    nop

    .line 482
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "k="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 483
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_0

    .line 490
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    goto :goto_0

    .line 494
    :catch_0
    move-exception p1

    goto :goto_2

    .line 498
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 501
    :catch_1
    move-exception p1

    .line 502
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 504
    goto :goto_3

    .line 503
    :cond_1
    :goto_1
    goto :goto_3

    .line 497
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 495
    :goto_2
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 506
    :goto_3
    return v1

    .line 498
    :goto_4
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 501
    :catch_2
    move-exception v0

    .line 502
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 503
    :cond_2
    :goto_5
    nop

    :goto_6
    throw p1
.end method

.method public final c()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    nop

    .line 336
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "pgn"

    const/4 v4, 0x0

    const-string v5, "n=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 337
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_0

    .line 341
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "k"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 343
    const-string v3, "p"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    goto :goto_1

    .line 351
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 350
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 348
    :goto_1
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 354
    :catch_1
    move-exception v1

    .line 355
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 357
    goto :goto_3

    .line 356
    :cond_1
    :goto_2
    nop

    .line 359
    :goto_3
    return-object v0

    .line 351
    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 352
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 354
    :catch_2
    move-exception v1

    .line 355
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 356
    :cond_2
    :goto_5
    nop

    :goto_6
    throw v0
.end method

.method public final c(II)V
    .locals 4

    .line 860
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 861
    const-string v1, "pr"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    iget-object p2, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    return-void

    .line 864
    :catch_0
    move-exception p1

    .line 865
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 867
    return-void
.end method

.method public final d()V
    .locals 7

    .line 527
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-virtual {p0}, Ld/a/g/a/a;->a()Ljava/util/List;

    move-result-object v1

    .line 530
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sofire/core/ApkInfo;

    .line 531
    iget-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->pkgPath:Ljava/lang/String;

    .line 532
    invoke-static {v3}, Ld/a/g/i/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ld/a/g/d/n;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Ld/a/g/d/n;->d:Ljava/util/List;

    iget v4, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 535
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_0
    goto :goto_0

    .line 539
    :cond_1
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v1

    .line 540
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sofire/core/ApkInfo;

    .line 541
    if-eqz v1, :cond_2

    .line 542
    iget-object v3, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ld/a/g/d/n;->b(Ljava/lang/String;)Z

    .line 545
    :cond_2
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "k="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ld/a/g/a/a;->f:Landroid/content/Context;

    .line 552
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {v3}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Ld/a/g/a/a;->f:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 556
    iget-object v3, p0, Ld/a/g/a/a;->f:Landroid/content/Context;

    iget-object v2, v2, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 557
    invoke-virtual {v3, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-static {v2}, Ld/a/g/i/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_3
    goto :goto_1

    .line 562
    :cond_4
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 563
    return-void
.end method

.method public final d(I)Z
    .locals 11

    .line 566
    const-string v0, "u"

    .line 568
    nop

    .line 570
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "k="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 571
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 577
    if-eqz v2, :cond_1

    .line 578
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 579
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_1

    .line 582
    :catch_0
    move-exception p1

    goto :goto_3

    .line 586
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 587
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 589
    :catch_1
    move-exception p1

    .line 590
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 592
    goto :goto_4

    .line 591
    :cond_2
    :goto_2
    goto :goto_4

    .line 585
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 583
    :goto_3
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 587
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 594
    :goto_4
    return v1

    .line 586
    :goto_5
    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 587
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 589
    :catch_2
    move-exception v0

    .line 590
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_7

    .line 591
    :cond_3
    :goto_6
    nop

    :goto_7
    throw p1
.end method

.method public final e(I)Z
    .locals 11

    .line 598
    const-string v0, "s"

    .line 600
    nop

    .line 602
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "k="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 603
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 608
    if-eqz v2, :cond_1

    .line 609
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 610
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_1

    .line 613
    :catch_0
    move-exception p1

    goto :goto_3

    .line 617
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 618
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 620
    :catch_1
    move-exception p1

    .line 621
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 623
    goto :goto_4

    .line 622
    :cond_2
    :goto_2
    goto :goto_4

    .line 616
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 614
    :goto_3
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 618
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 624
    :goto_4
    return v1

    .line 617
    :goto_5
    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 618
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 620
    :catch_2
    move-exception v0

    .line 621
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_7

    .line 622
    :cond_3
    :goto_6
    nop

    :goto_7
    throw p1
.end method

.method public final f(I)V
    .locals 5

    .line 659
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 660
    const-string v1, "n"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    iget-object v1, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pgn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "k="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    return-void

    .line 663
    :catch_0
    move-exception p1

    .line 664
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 666
    return-void
.end method

.method public final g(I)I
    .locals 11

    .line 745
    const-string v0, "pdld"

    .line 747
    nop

    .line 749
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pgn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "k="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 750
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 755
    if-eqz v2, :cond_0

    .line 756
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    goto :goto_0

    .line 760
    :catch_0
    move-exception p1

    goto :goto_2

    .line 764
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 767
    :catch_1
    move-exception p1

    .line 768
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 770
    goto :goto_3

    .line 769
    :cond_1
    :goto_1
    goto :goto_3

    .line 763
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 761
    :goto_2
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 772
    :goto_3
    return v1

    .line 764
    :goto_4
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 767
    :catch_2
    move-exception v0

    .line 768
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_6

    .line 769
    :cond_2
    :goto_5
    nop

    :goto_6
    throw p1
.end method

.method public final h(I)V
    .locals 4

    .line 822
    if-gtz p1, :cond_0

    .line 823
    return-void

    .line 826
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/a/g/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pgn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 827
    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    return-void

    .line 832
    :catch_0
    move-exception p1

    .line 833
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 835
    return-void
.end method
