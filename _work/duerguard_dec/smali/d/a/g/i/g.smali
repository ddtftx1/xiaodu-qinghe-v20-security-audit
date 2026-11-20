.class public final Ld/a/g/i/g;
.super Ljava/lang/Object;
.source "EncryptConnUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Ld/a/g/i/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 42
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.baidu.input_huawei"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ld/a/g/h/a;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Landroid/accounts/NetworkErrorException;

    const-string p1, "conn is blocked"

    invoke-direct {p0, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Ld/a/g/d/p;->a()[B

    move-result-object v5

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_2

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 1016
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1017
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1018
    invoke-static {v6, p2}, Ld/a/g/i/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1019
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1021
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1022
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1024
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1026
    nop

    .line 61
    nop

    .line 66
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object p2

    invoke-virtual {p2, v8, v5}, Lcom/baidu/sofire/ac/F;->ae([B[B)[B

    move-result-object p2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 74
    :goto_1
    invoke-static {p0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v6}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 80
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lcom/baidu/sofire/ac/F;->re([B[B)[B

    move-result-object v5

    .line 85
    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/100/"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string p1, "/"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 93
    const-string p1, "?skey="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "utf-8"

    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_3
    nop

    .line 108
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/r;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    new-instance p1, Ld/a/g/i/r;

    invoke-direct {p1, p0}, Ld/a/g/i/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ld/a/g/i/r;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 111
    :cond_4
    new-instance p1, Ld/a/g/i/m;

    invoke-direct {p1, p0}, Ld/a/g/i/m;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ld/a/g/i/m;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_2

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 121
    :goto_2
    if-eqz p3, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 122
    nop

    .line 1170
    :try_start_1
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 1460
    iget-object p4, p1, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v0, "pu_cl_fd"

    const-wide/16 v4, 0x0

    invoke-interface {p4, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1461
    cmp-long p4, v6, v4

    if-nez p4, :cond_5

    .line 1462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1463
    invoke-virtual {p1}, Ld/a/g/h/a;->g()V

    .line 1465
    :cond_5
    nop

    .line 1171
    sub-long/2addr p2, v6

    const-wide/32 v4, 0x5265c00

    cmp-long p2, p2, v4

    if-lez p2, :cond_7

    .line 1172
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1173
    invoke-static {p0}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-string p4, "1"

    const-string v0, "0"

    if-eqz p3, :cond_6

    .line 1174
    :try_start_2
    invoke-virtual {p1}, Ld/a/g/h/a;->i()I

    move-result p3

    add-int/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {p1}, Ld/a/g/h/a;->j()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1177
    :cond_6
    invoke-virtual {p1}, Ld/a/g/h/a;->i()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-virtual {p1}, Ld/a/g/h/a;->j()I

    move-result p3

    add-int/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    :goto_3
    nop

    .line 1510
    iget-object p3, p1, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string p4, "mo_fa_pu_cl"

    invoke-interface {p3, p4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1511
    iget-object p3, p1, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1181
    nop

    .line 2501
    iget-object p3, p1, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string p4, "wi_fa_pu_cl"

    invoke-interface {p3, p4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2502
    iget-object p3, p1, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1182
    invoke-virtual {p1}, Ld/a/g/h/a;->g()V

    .line 1183
    const-string p1, "1003112"

    invoke-static {p0, p1, p2, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1184
    goto :goto_4

    .line 1185
    :cond_7
    invoke-static {p0}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1186
    invoke-virtual {p1}, Ld/a/g/h/a;->i()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ld/a/g/h/a;->a(I)V

    goto :goto_4

    .line 1188
    :cond_8
    invoke-virtual {p1}, Ld/a/g/h/a;->j()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ld/a/g/h/a;->b(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1193
    goto :goto_4

    .line 1191
    :catch_1
    move-exception p0

    .line 1192
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 123
    :goto_4
    new-instance p0, Landroid/accounts/NetworkErrorException;

    const-string p1, "response is empty"

    invoke-direct {p0, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_9
    if-nez p4, :cond_a

    .line 127
    return-object v7

    .line 130
    :cond_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    const-string p2, "skey"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 142
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object p3

    invoke-virtual {p3, p2, v6}, Lcom/baidu/sofire/ac/F;->rd([B[B)[B

    move-result-object p2

    .line 147
    const-string p3, "response"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 148
    const-string p4, "request_id"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 158
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/baidu/sofire/ac/F;->ad([B[B)[B

    move-result-object p2

    .line 159
    if-eqz p1, :cond_c

    array-length p1, p1

    if-lez p1, :cond_c

    if-eqz p2, :cond_b

    array-length p1, p2

    if-eqz p1, :cond_b

    goto :goto_5

    .line 161
    :cond_b
    invoke-static {p0}, Ld/a/g/i/c;->h(Landroid/content/Context;)V

    .line 162
    new-instance p0, Landroid/accounts/NetworkErrorException;

    const-string p1, "aes is fail"

    invoke-direct {p0, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_c
    :goto_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    .line 165
    return-object p0
.end method
