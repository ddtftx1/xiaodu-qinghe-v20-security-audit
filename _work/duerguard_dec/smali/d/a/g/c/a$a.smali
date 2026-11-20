.class public final Ld/a/g/c/a$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ReportDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/g/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ld/a/g/c/a;Landroid/content/Context;)V
    .locals 2

    .line 533
    nop

    .line 534
    const-string p1, "d.db"

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 536
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 540
    const-string v0, "create table if not exists r(a integer primary key autoincrement, b text, c integer, e integer,f integer,h text, g integer, i integer, j text, d long);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    const-string v0, "create table if not exists c(a integer primary key autoincrement, b text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 546
    const/4 p3, 0x1

    if-gt p2, p3, :cond_0

    .line 547
    const-string p3, "alter table r add i integer default 0;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    :cond_0
    const/4 p3, 0x2

    if-gt p2, p3, :cond_1

    .line 551
    const-string p2, "ALTER TABLE r ADD COLUMN j TEXT"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 556
    :cond_1
    return-void
.end method
