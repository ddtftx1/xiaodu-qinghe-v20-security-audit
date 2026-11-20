.class public final Ld/b/a/b/a/e;
.super Ld/b/a/x;
.source "DateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/b/a/x<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld/b/a/y;


# instance fields
.field public final b:Ljava/text/DateFormat;

.field public final c:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ld/b/a/b/a/d;

    invoke-direct {v0}, Ld/b/a/b/a/d;-><init>()V

    sput-object v0, Ld/b/a/b/a/e;->a:Ld/b/a/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ld/b/a/x;-><init>()V

    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/b/a/e;->b:Ljava/text/DateFormat;

    .line 51
    nop

    .line 52
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Ld/b/a/b/a/e;->c:Ljava/text/DateFormat;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld/b/a/d/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Ld/b/a/b/a/e;->a(Ld/b/a/d/b;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/b/a/d/b;)Ljava/util/Date;
    .locals 2
    .param p1, "in"    # Ld/b/a/d/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ld/b/a/d/b;->B()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Ld/b/a/d/b;->y()V

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ld/b/a/d/b;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/b/a/e;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Ld/b/a/b/a/e;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    .end local p0    # "this":Ld/b/a/b/a/e;
    .end local p1    # "json":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 65
    .restart local p1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    :try_start_1
    iget-object v0, p0, Ld/b/a/b/a/e;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    :catch_1
    move-exception v0

    .line 72
    :try_start_2
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Ld/b/a/b/a/a/a;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    :catch_2
    move-exception v0

    .line 74
    .local v0, "e":Ljava/text/ParseException;
    :try_start_3
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v0    # "e":Ljava/text/ParseException;
    .end local p1    # "json":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ld/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Ld/b/a/b/a/e;->a(Ld/b/a/d/c;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized a(Ld/b/a/d/c;Ljava/util/Date;)V
    .locals 1
    .param p1, "out"    # Ld/b/a/d/c;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    if-nez p2, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ld/b/a/d/c;->s()Ld/b/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Ld/b/a/b/a/e;
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/b/a/b/a/e;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "dateFormatAsString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ld/b/a/d/c;->e(Ljava/lang/String;)Ld/b/a/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 78
    .end local v0    # "dateFormatAsString":Ljava/lang/String;
    .end local p1    # "out":Ld/b/a/d/c;
    .end local p2    # "value":Ljava/util/Date;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
