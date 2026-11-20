.class public final Ld/a/g/a/a$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ld/a/g/a/a;


# direct methods
.method public constructor <init>(Ld/a/g/a/a;Landroid/content/Context;)V
    .locals 2

    .line 120
    iput-object p1, p0, Ld/a/g/a/a$a;->a:Ld/a/g/a/a;

    .line 121
    nop

    .line 1026
    iget p1, p1, Ld/a/g/a/a;->b:I

    .line 121
    const-string v0, "tpgcc.db"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 125
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 130
    :try_start_0
    iget-object v0, p0, Ld/a/g/a/a$a;->a:Ld/a/g/a/a;

    .line 2026
    iget-object v0, v0, Ld/a/g/a/a;->c:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 131
    :catch_0
    move-exception p1

    .line 132
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 134
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 142
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    const-string v0, "ALTER TABLE pgn ADD COLUMN pr INTEGER  DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    goto :goto_2

    .line 151
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    .line 173
    :catch_1
    move-exception p1

    goto :goto_7

    .line 154
    :cond_0
    :goto_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    if-lt p3, v0, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 157
    :try_start_4
    const-string v0, "ALTER TABLE pgn ADD COLUMN pdld INTEGER  DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_5

    .line 160
    :catch_2
    move-exception v0

    .line 161
    :try_start_6
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 164
    :goto_4
    goto :goto_6

    .line 163
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 166
    :cond_1
    :goto_6
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    if-lt p3, v0, :cond_2

    .line 168
    :try_start_8
    const-string p2, "drop table if exists tbch"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 171
    return-void

    .line 169
    :catch_3
    move-exception p1

    .line 170
    :try_start_9
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_8

    .line 174
    :goto_7
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 176
    return-void

    .line 175
    :cond_2
    :goto_8
    return-void
.end method
