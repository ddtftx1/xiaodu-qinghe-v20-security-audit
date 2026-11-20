.class public Ld/a/a/c;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public static a()J
    .locals 8

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 165
    .local v7, "calendar":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 166
    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 165
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 167
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # J
    .param p2, "pattern"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 59
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "res":Ljava/lang/String;
    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "timeStr"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "dateStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 127
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 128
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    const/16 v4, 0xb

    const/16 v5, 0x17

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v4, 0xc

    const/16 v5, 0x3b

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v4, 0xe

    const/16 v5, 0x3e7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 133
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 136
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "tempTime"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 45
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 49
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "end"    # Ljava/lang/String;

    .line 148
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Ld/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 149
    .local v1, "stTimeStamp":J
    invoke-static {p1, v0}, Ld/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 150
    .local v3, "edTimeStamp":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
