.class public Ld/a/b/e/a;
.super Ljava/lang/Object;
.source "RiskScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/duerguard/risk/RiskScanManager;->a(Ld/a/b/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld/a/b/e;

.field public final synthetic c:Lcom/baidu/duerguard/risk/RiskScanManager;


# direct methods
.method public constructor <init>(Lcom/baidu/duerguard/risk/RiskScanManager;Ljava/lang/String;Ld/a/b/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/duerguard/risk/RiskScanManager;

    .line 62
    iput-object p1, p0, Ld/a/b/e/a;->c:Lcom/baidu/duerguard/risk/RiskScanManager;

    iput-object p2, p0, Ld/a/b/e/a;->a:Ljava/lang/String;

    iput-object p3, p0, Ld/a/b/e/a;->b:Ld/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 65
    move-object/from16 v1, p0

    const-string v2, "%s,please check your network"

    const-string v3, "duerguard innner error:%s"

    const/4 v4, 0x0

    .line 66
    .local v4, "appName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 68
    .local v6, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 69
    .local v7, "fileMD5":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 70
    .local v15, "errorInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, -0x2

    .line 71
    .local v8, "riskCode":I
    const/4 v9, -0x2

    .line 75
    .local v9, "riskSubCode":I
    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-static {}, Ld/a/b/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v13, v1, Ld/a/b/e/a;->a:Ljava/lang/String;

    invoke-static {v0, v13}, Ld/a/a/h;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "apkInfo":[Ljava/lang/String;
    const/4 v13, 0x2

    if-nez v0, :cond_0

    .line 77
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v2, "INVALID_INPUT"

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    move-object/from16 v21, v6

    move v0, v8

    move v2, v9

    goto/16 :goto_3

    .line 81
    :cond_0
    aget-object v14, v0, v12

    move-object v4, v14

    .line 82
    aget-object v14, v0, v11

    move-object v5, v14

    .line 83
    aget-object v21, v0, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    .end local v6    # "version":Ljava/lang/String;
    .local v21, "version":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v14, v1, Ld/a/b/e/a;->a:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Ld/a/a/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 86
    if-nez v7, :cond_1

    .line 87
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-array v2, v11, [Ljava/lang/Object;

    const-string v13, "file md5 generate failed\uff0cplease checkout your apkfile path."

    aput-object v13, v2, v12

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 90
    move v0, v8

    move v2, v9

    goto/16 :goto_3

    .line 98
    .end local v0    # "apkInfo":[Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_1
    nop

    .line 102
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    .line 103
    .local v16, "ts":J
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v4

    invoke-static/range {v16 .. v21}, Ld/a/b/e/a/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "bodyString":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/duerguard/risk/RiskScanManager;->a()Le/A;

    move-result-object v3

    invoke-static {v3, v0}, Le/H;->a(Le/A;Ljava/lang/String;)Le/H;

    move-result-object v3

    .line 106
    .local v3, "body":Le/H;
    sget-boolean v6, Lcom/baidu/duerguard/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 107
    const-string v6, "http://anti-bot-test.baidu.com/apk/fk/pkginfo/search/xd_pad"

    .local v6, "urlStr":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v6    # "urlStr":Ljava/lang/String;
    :cond_2
    const-string v6, "https://safebrowsing.baidu.com/fk/pkginfo/search/xd_pad"

    .line 111
    .restart local v6    # "urlStr":Ljava/lang/String;
    :goto_0
    new-instance v14, Le/F$a;

    invoke-direct {v14}, Le/F$a;-><init>()V

    invoke-virtual {v14, v6}, Le/F$a;->b(Ljava/lang/String;)Le/F$a;

    invoke-virtual {v14, v3}, Le/F$a;->a(Le/H;)Le/F$a;

    invoke-virtual {v14}, Le/F$a;->a()Le/F;

    move-result-object v14

    .line 114
    .local v14, "request":Le/F;
    invoke-static {}, Lcom/baidu/duerguard/risk/RiskScanManager;->b()Le/C;

    move-result-object v11

    invoke-virtual {v11, v14}, Le/C;->a(Le/F;)Le/f;

    move-result-object v11
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v11, Le/E;

    :try_start_3
    invoke-virtual {v11}, Le/E;->c()Le/I;

    move-result-object v11

    .line 115
    .local v11, "response":Le/I;
    invoke-virtual {v11}, Le/I;->k()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_3

    .line 117
    invoke-virtual {v11}, Le/I;->i()Le/K;

    move-result-object v12

    invoke-virtual {v12}, Le/K;->n()Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "resultStr":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "code"

    move-object/from16 v22, v3

    const/4 v3, -0x2

    .end local v3    # "body":Le/H;
    .local v22, "body":Le/H;
    invoke-virtual {v13, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move v8, v10

    .line 120
    const-string v10, "sub_code"

    invoke-virtual {v13, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    .line 121
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v3, "no error."

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, v1, Ld/a/b/e/a;->c:Lcom/baidu/duerguard/risk/RiskScanManager;

    invoke-static {v3, v8, v9, v4, v5}, Lcom/baidu/duerguard/risk/RiskScanManager;->a(Lcom/baidu/duerguard/risk/RiskScanManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v12    # "resultStr":Ljava/lang/String;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 126
    .end local v22    # "body":Le/H;
    .restart local v3    # "body":Le/H;
    :cond_3
    move-object/from16 v22, v3

    .end local v3    # "body":Le/H;
    .restart local v22    # "body":Le/H;
    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v3, "msg=%s,response_code=%d,please try again later"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v11}, Le/I;->n()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    invoke-virtual {v11}, Le/I;->k()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v10, v13

    .line 127
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 138
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v6    # "urlStr":Ljava/lang/String;
    .end local v11    # "response":Le/I;
    .end local v14    # "request":Le/F;
    .end local v16    # "ts":J
    .end local v22    # "body":Le/H;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    move v2, v9

    goto :goto_3

    .line 134
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 130
    :catch_2
    move-exception v0

    .line 131
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 132
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :goto_1
    move v0, v8

    move v2, v9

    goto :goto_3

    .line 92
    :catch_3
    move-exception v0

    move-object/from16 v6, v21

    goto :goto_2

    .end local v21    # "version":Ljava/lang/String;
    .local v6, "version":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 93
    .local v0, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v2, v11

    .line 95
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    move-object/from16 v21, v6

    move v0, v8

    move v2, v9

    .line 146
    .end local v6    # "version":Ljava/lang/String;
    .end local v8    # "riskCode":I
    .end local v9    # "riskSubCode":I
    .local v0, "riskCode":I
    .local v2, "riskSubCode":I
    .restart local v21    # "version":Ljava/lang/String;
    :goto_3
    new-instance v3, Lcom/baidu/model/risk/RiskScanResult;

    iget-object v10, v1, Ld/a/b/e/a;->a:Ljava/lang/String;

    move-object v8, v3

    move-object v9, v15

    move-object v11, v4

    move-object v12, v7

    move-object v13, v5

    move-object/from16 v14, v21

    move-object v6, v15

    .end local v15    # "errorInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "errorInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v15, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/baidu/model/risk/RiskScanResult;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 149
    .local v3, "riskScanResult":Lcom/baidu/model/risk/RiskScanResult;
    iget-object v8, v1, Ld/a/b/e/a;->c:Lcom/baidu/duerguard/risk/RiskScanManager;

    iget-object v9, v1, Ld/a/b/e/a;->b:Ld/a/b/e;

    invoke-static {v8, v9, v3}, Lcom/baidu/duerguard/risk/RiskScanManager;->a(Lcom/baidu/duerguard/risk/RiskScanManager;Ld/a/b/e;Lcom/baidu/model/risk/RiskScanResult;)V

    .line 150
    return-void
.end method
