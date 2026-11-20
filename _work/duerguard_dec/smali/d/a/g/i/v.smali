.class public final Ld/a/g/i/v;
.super Ljava/lang/Object;
.source "ProviderAccessUtil.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 28
    const-string v0, "On7h9W1_KIkIa50wk9Fnl1friw1cdOsubmr_O-Hrgss="

    const-string v1, "73Ry_SRX9WDHPoeAkGWfJbuntGR7RQ3rde1s6KyyCoo="

    const-string v2, "iQirV45vitYDQfzxgr68ylBY1DWLBKje2Pl428sE27Q="

    const-string v3, "czwe2zUrt14MfnaeH474T5prOCIik3agOnBud_KwFa0="

    const-string v4, "JzLix2JtXzSSsVkQFD0Cnf37028Rco5rGb7_-t_C8Qk="

    const-string v5, "lUApGLCwwTIqYrpC4ZaqkVItjc8DeoJ5fB_pxizrjnc="

    const-string v6, "6PzPHS4JINi0q8yUj180JTMbpq1Q44DuQggknxVmVPA="

    const-string v7, "fCbyLrInjq1BOByP4wH4mUGBidquiIKIy6zcJCBuKtk="

    const-string v8, "qEeaB7chq_oSIUyWhq_EwETFQIu3w3myIFyGD80p_u8="

    const-string v9, "UNzyljxPfmKANfePasqvdfmpLS4aJ1v0S1Aj2BGl75o="

    const-string v10, "xbOAOB93VGI-kwCx1KZxzESB35X3hv9xe1VSXGErZbY="

    const-string v11, "WtGvBTWjt2PyMX5rQclkgiNR3aDxFtoBNe1UnNpbL1I="

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/g/i/v;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 59
    const-string v0, "sofire"

    invoke-static {p0, p1, p2, v0}, Ld/a/g/i/v;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2

    .line 204
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    nop

    .line 209
    const/16 v1, 0x18

    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    nop

    .line 215
    :try_start_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    :goto_0
    return-object p1

    .line 214
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 211
    :catch_0
    move-exception p1

    goto :goto_1

    .line 214
    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_3

    .line 211
    :catch_1
    move-exception p0

    move-object p0, v0

    .line 212
    :goto_1
    :try_start_4
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz p0, :cond_2

    .line 215
    :try_start_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 223
    :cond_2
    :goto_2
    return-object v0

    .line 214
    :goto_3
    if-eqz p0, :cond_4

    .line 215
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_3

    .line 217
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 219
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    :goto_4
    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 227
    :catch_2
    move-exception p0

    .line 228
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 230
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16

    .line 77
    nop

    .line 79
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move-object v2, v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_1
    invoke-static {}, Ld/a/g/i/c;->a()V

    move-object v2, v1

    .line 87
    :goto_0
    if-eqz v2, :cond_8

    array-length v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 92
    :cond_0
    sget-object v3, Ld/a/g/i/v;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_7

    aget-object v0, v3, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    nop

    .line 96
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const-string v8, "30212102dicudiab"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v9, 0xa

    .line 97
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 96
    invoke-static {v8, v0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object v0

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    .line 100
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    move-object v7, v1

    .line 102
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    const-string v0, "sofire"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    return-object v1

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "content://"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ac.provider"

    .line 118
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    array-length v8, v2

    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v10, v2, v9

    .line 125
    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 129
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 132
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {v11, v12, v13, v10}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v10

    .line 135
    const-string v14, "handle_flag"

    .line 136
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 137
    const-string v15, "server_version"

    .line 138
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 140
    if-eqz v14, :cond_2

    move-object/from16 v14, p3

    invoke-static {v15, v14}, Ld/a/g/i/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v15, :cond_4

    .line 141
    return-object v10

    .line 140
    :cond_2
    move-object/from16 v14, p3

    goto :goto_4

    .line 129
    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 123
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    goto :goto_5

    .line 102
    :cond_6
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 92
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 158
    :cond_7
    goto :goto_7

    .line 88
    :cond_8
    :goto_6
    return-object v1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 159
    :goto_7
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 243
    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 244
    return v3

    .line 246
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 248
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 249
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    .line 250
    if-eqz v2, :cond_2

    .line 251
    if-lez v2, :cond_1

    return v3

    :cond_1
    return v1

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_3
    array-length p0, p0

    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, p1, :cond_4

    return v3

    :cond_4
    return v1

    .line 255
    :catch_0
    move-exception p0

    .line 256
    return v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".ac.provider"

    .line 180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 182
    invoke-static {p0, p1, p2, p3}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 183
    :catch_0
    move-exception p0

    .line 184
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 186
    const/4 p0, 0x0

    return-object p0
.end method
