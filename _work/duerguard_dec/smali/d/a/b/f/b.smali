.class public Ld/a/b/f/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# static fields
.field public static volatile a:Ld/a/b/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "duerguard.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Ld/a/b/f/b;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    sget-object v0, Ld/a/b/f/b;->a:Ld/a/b/f/b;

    .line 53
    .local v0, "tempHelper":Ld/a/b/f/b;
    if-nez v0, :cond_1

    .line 54
    const-class v1, Ld/a/b/f/b;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v2, Ld/a/b/f/b;->a:Ld/a/b/f/b;

    move-object v0, v2

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v2, Ld/a/b/f/b;

    invoke-direct {v2, p0}, Ld/a/b/f/b;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 58
    sput-object v0, Ld/a/b/f/b;->a:Ld/a/b/f/b;

    .line 60
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 62
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    const-string v0, "SqliteHelper"

    const-string v1, "create privacy_record_info table."

    invoke-static {v0, v1}, Ld/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE privacy_record_info ( id INTEGER PRIMARY KEY AUTOINCREMENT, packageName TEXT, ops TEXT, mode INTEGER, permissionGroup TEXT, count INTEGER, startTime TEXT, endTime TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 74
    return-void
.end method
