.class public final Ld/a/g/d/l;
.super Ljava/lang/Object;
.source "MethodImpl.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:J

.field public static f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, ""

    sput-object v0, Ld/a/g/d/l;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Ld/a/g/d/l;->b:Z

    .line 38
    sput-boolean v0, Ld/a/g/d/l;->c:Z

    .line 40
    sput-boolean v0, Ld/a/g/d/l;->d:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Ld/a/g/d/l;->f:[I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    .line 771
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "status"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 776
    :try_start_0
    const-string v4, "gzfi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/4 v7, 0x7

    const-string v8, "args"

    const/4 v9, 0x2

    const-string v10, "handle_flag"

    const-string v11, "result"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_4

    .line 778
    :try_start_1
    invoke-virtual {v3, v10, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 779
    if-eqz v1, :cond_b

    .line 780
    nop

    .line 781
    nop

    .line 782
    nop

    .line 783
    new-instance v0, Lcom/baidu/sofire/core/CallArgs;

    invoke-direct {v0}, Lcom/baidu/sofire/core/CallArgs;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 785
    :try_start_2
    const-class v4, Lcom/baidu/sofire/MyProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 786
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/baidu/sofire/core/CallArgs;

    .line 787
    if-eqz v1, :cond_1

    .line 788
    iget-object v1, v1, Lcom/baidu/sofire/core/CallArgs;->e:[Ljava/lang/Object;

    array-length v4, v1

    if-ne v4, v9, :cond_0

    .line 789
    aget-object v4, v1, v13

    check-cast v4, Ljava/lang/String;

    .line 790
    aget-object v1, v1, v14

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v16, v12

    move-object v12, v4

    move-object/from16 v4, v16

    goto :goto_0

    .line 794
    :cond_0
    array-length v4, v1

    if-ne v4, v5, :cond_1

    .line 795
    aget-object v4, v1, v13

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 796
    aget-object v4, v1, v14

    check-cast v4, Ljava/lang/Integer;

    .line 797
    aget-object v1, v1, v9

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    goto :goto_0

    .line 800
    :cond_1
    move-object v1, v12

    move-object v4, v1

    :goto_0
    if-nez v1, :cond_2

    move v1, v13

    goto :goto_1

    .line 801
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    move-object/from16 v15, p0

    invoke-static {v15, v12, v1, v4}, Ld/a/g/d/l;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 803
    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 805
    :cond_3
    iput-object v1, v0, Lcom/baidu/sofire/core/CallArgs;->f:Ljava/lang/Object;

    .line 806
    invoke-virtual {v3, v11, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 807
    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 809
    :goto_2
    return-object v3

    .line 810
    :catch_0
    move-exception v0

    .line 812
    :try_start_3
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 813
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    return-object v3

    .line 818
    :cond_4
    move-object/from16 v15, p0

    const-string v4, "invokeMethod"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 820
    invoke-virtual {v3, v10, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 821
    if-eqz v1, :cond_b

    .line 822
    new-instance v4, Lcom/baidu/sofire/core/CallArgs;

    invoke-direct {v4}, Lcom/baidu/sofire/core/CallArgs;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 824
    :try_start_4
    const-class v0, Lcom/baidu/sofire/MyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 825
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sofire/core/CallArgs;

    .line 826
    iget v1, v0, Lcom/baidu/sofire/core/CallArgs;->a:I

    .line 827
    iget v6, v0, Lcom/baidu/sofire/core/CallArgs;->b:I

    .line 828
    iget-object v8, v0, Lcom/baidu/sofire/core/CallArgs;->c:Ljava/lang/String;

    .line 829
    iget-object v9, v0, Lcom/baidu/sofire/core/CallArgs;->d:[Ljava/lang/Object;

    .line 830
    nop

    .line 831
    if-eqz v9, :cond_7

    .line 832
    array-length v10, v9

    new-array v12, v10, [Ljava/lang/Class;

    .line 833
    nop

    :goto_3
    array-length v10, v9

    if-ge v13, v10, :cond_7

    .line 834
    aget-object v10, v9, v13

    check-cast v10, Ljava/lang/String;

    .line 835
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "@@"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 836
    invoke-static {v10}, Ld/a/g/i/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 837
    if-eqz v10, :cond_6

    .line 843
    aput-object v10, v12, v13

    goto :goto_4

    .line 847
    :cond_5
    aget-object v10, v9, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v12, v13

    .line 833
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 850
    :cond_7
    iget-object v0, v0, Lcom/baidu/sofire/core/CallArgs;->e:[Ljava/lang/Object;

    .line 851
    if-ne v6, v14, :cond_9

    .line 853
    if-ne v1, v14, :cond_8

    const-string v5, "xgz"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 854
    nop

    .line 855
    invoke-static {v8, v12, v0}, Ld/a/g/d/l;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_5

    .line 857
    :cond_8
    nop

    .line 858
    invoke-static {v1, v8, v12, v0}, Ld/a/g/d/l;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 861
    :goto_5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 862
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_a

    .line 863
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iput-object v0, v4, Lcom/baidu/sofire/core/CallArgs;->f:Ljava/lang/Object;

    goto :goto_6

    .line 865
    :cond_9
    if-nez v6, :cond_a

    .line 866
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 867
    new-instance v9, Ld/a/g/d/j;

    invoke-direct {v9, v3, v4, v6, v8}, Ld/a/g/d/j;-><init>(Landroid/os/Bundle;Lcom/baidu/sofire/core/CallArgs;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    invoke-static {v1, v8, v9, v12, v0}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 900
    const-wide/32 v0, 0x2bf20

    :try_start_5
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 905
    goto :goto_7

    .line 901
    :catch_1
    move-exception v0

    .line 902
    :try_start_6
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 904
    invoke-static {}, Ld/a/g/i/c;->a()V

    goto :goto_7

    .line 865
    :cond_a
    :goto_6
    nop

    .line 910
    :goto_7
    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 911
    return-object v3

    .line 912
    :catch_2
    move-exception v0

    .line 913
    :try_start_7
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 916
    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 917
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    return-object v3

    .line 939
    :cond_b
    goto :goto_9

    .line 920
    :cond_c
    const-string v1, "gz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 922
    invoke-virtual {v3, v10, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    invoke-static/range {p0 .. p0}, Ld/a/g/d/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 925
    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 927
    :cond_d
    new-instance v1, Lcom/baidu/sofire/core/CallArgs;

    invoke-direct {v1}, Lcom/baidu/sofire/core/CallArgs;-><init>()V

    .line 928
    iput-object v0, v1, Lcom/baidu/sofire/core/CallArgs;->f:Ljava/lang/Object;

    .line 929
    invoke-virtual {v3, v11, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 930
    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    :goto_8
    return-object v3

    .line 934
    :cond_e
    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 935
    return-object v3

    .line 937
    :catch_3
    move-exception v0

    .line 938
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 940
    :goto_9
    const/16 v0, 0xa

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    return-object v3
.end method

.method public static a()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1136
    invoke-static {}, Ld/a/g/d/b;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 195
    if-nez v1, :cond_0

    .line 196
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 198
    :cond_0
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    new-instance p0, Landroid/util/Pair;

    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 201
    :cond_1
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v2

    .line 202
    if-nez v2, :cond_2

    .line 206
    new-instance p0, Landroid/util/Pair;

    const/16 p1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 208
    :cond_2
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 213
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 221
    :cond_3
    invoke-static {v1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p0, p1, p2, p3}, Ld/a/g/d/f;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    invoke-static {v2}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 232
    invoke-static {v1, p0, p1, p2, p3}, Ld/a/g/d/l;->b(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 235
    return-object p0

    .line 241
    :cond_5
    invoke-static {v1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v1

    .line 242
    invoke-virtual {v1, p0, p1, p2, p3}, Ld/a/g/d/f;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 246
    :catch_0
    move-exception p0

    .line 247
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 249
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 992
    nop

    .line 994
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 995
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 998
    :cond_0
    const-string v3, "gzfi"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gz"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1002
    :cond_1
    const-string v3, "invokeMethod"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v1

    goto :goto_1

    .line 999
    :cond_2
    :goto_0
    nop

    .line 1000
    move-object v3, p3

    .line 1004
    :goto_1
    :try_start_1
    new-instance v5, Lcom/baidu/sofire/core/CallArgs;

    invoke-direct {v5}, Lcom/baidu/sofire/core/CallArgs;-><init>()V

    .line 1005
    iput p1, v5, Lcom/baidu/sofire/core/CallArgs;->a:I

    .line 1006
    iput-object p3, v5, Lcom/baidu/sofire/core/CallArgs;->c:Ljava/lang/String;

    .line 1007
    iput p2, v5, Lcom/baidu/sofire/core/CallArgs;->b:I

    .line 1008
    if-eqz p4, :cond_6

    .line 1009
    array-length p1, p4

    new-array p1, p1, [Ljava/lang/Object;

    .line 1010
    nop

    :goto_2
    array-length p2, p4

    if-ge v1, p2, :cond_5

    .line 1011
    aget-object p2, p4, v1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1013
    aget-object p2, p4, v1

    invoke-static {p2}, Ld/a/g/i/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 1014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1015
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@@"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1017
    :cond_3
    goto :goto_3

    .line 1018
    :cond_4
    aget-object p2, p4, v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1010
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1021
    :cond_5
    iput-object p1, v5, Lcom/baidu/sofire/core/CallArgs;->d:[Ljava/lang/Object;

    .line 1023
    :cond_6
    iput-object p5, v5, Lcom/baidu/sofire/core/CallArgs;->e:[Ljava/lang/Object;

    .line 1024
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1025
    const-string p2, "args"

    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1026
    nop

    .line 1027
    invoke-static {p0, v3, p1}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 1028
    if-nez p0, :cond_7

    .line 1029
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1031
    :cond_7
    const-class p1, Lcom/baidu/sofire/core/CallArgs;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1032
    const-string p1, "status"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1033
    nop

    .line 1034
    if-nez p1, :cond_8

    .line 1035
    const-string p2, "result"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/baidu/sofire/core/CallArgs;

    goto :goto_4

    .line 1034
    :cond_8
    move-object p0, v2

    .line 1037
    :goto_4
    nop

    .line 1038
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p0, :cond_9

    move-object p0, v2

    goto :goto_5

    :cond_9
    iget-object p0, p0, Lcom/baidu/sofire/core/CallArgs;->f:Ljava/lang/Object;

    :goto_5
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1039
    return-object p0

    .line 1040
    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move v4, v1

    .line 1041
    :goto_6
    if-eqz v4, :cond_a

    .line 1042
    invoke-static {p0}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/a/g/d/b;->b(Ljava/lang/String;)V

    .line 1044
    :cond_a
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1046
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6

    .line 34
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Ld/a/g/d/l;->a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 257
    if-nez v1, :cond_0

    .line 258
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 260
    :cond_0
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v2

    .line 261
    if-nez v2, :cond_1

    .line 262
    new-instance p0, Landroid/util/Pair;

    const/16 p1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 264
    :cond_1
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    invoke-static {v2}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    sget-object v2, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 269
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 274
    :cond_2
    invoke-static {v1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    .line 275
    invoke-static {p0, p1, p2}, Ld/a/g/d/l;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 279
    :cond_3
    invoke-static {v2}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    const/4 v2, 0x1

    .line 282
    invoke-static {v1, v2, p0, p1, p2}, Ld/a/g/d/l;->b(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 284
    return-object p0

    .line 287
    :cond_4
    invoke-static {v1}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    .line 288
    invoke-static {p0, p1, p2}, Ld/a/g/d/l;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 292
    :catch_0
    move-exception p0

    .line 293
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 295
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 627
    :try_start_0
    sget-object v0, Ld/a/g/d/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    sget-object p0, Ld/a/g/d/l;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 630
    :cond_0
    const-string v0, ""

    if-nez p0, :cond_1

    .line 631
    return-object v0

    .line 633
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v2

    .line 634
    if-nez v2, :cond_2

    .line 638
    return-object v0

    .line 640
    :cond_2
    invoke-static {p0}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    return-object v0

    .line 649
    :cond_3
    invoke-static {p0}, Ld/a/g/d/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :cond_4
    invoke-static {v2}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 658
    const-string v2, "gz"

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3, v4}, Ld/a/g/d/l;->b(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 659
    if-eqz p0, :cond_6

    .line 660
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    .line 661
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 663
    :cond_5
    return-object v0

    .line 666
    :cond_6
    goto :goto_0

    .line 671
    :cond_7
    invoke-static {p0}, Ld/a/g/d/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 675
    :catch_0
    move-exception p0

    .line 676
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 678
    :goto_0
    const-string p0, "74FFB5E615AA72E0B057EE43E3D5A23A8BA34AAC1672FC9B56A7106C57BA03"

    .line 679
    sput-object p0, Ld/a/g/d/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 683
    nop

    .line 686
    const-string v0, ""

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 689
    :cond_0
    const-string v1, "xgz"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 690
    invoke-static {v1, v3, v2}, Ld/a/g/d/l;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 691
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 695
    :cond_1
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    const/16 p1, 0x1f6

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    goto :goto_3

    .line 697
    :catch_0
    move-exception p1

    goto :goto_2

    .line 687
    :cond_3
    :goto_1
    return-object v0

    .line 699
    :goto_2
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 700
    const/16 p1, 0x1f5

    .line 703
    :goto_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "rc"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "z"

    invoke-static {p0}, Ld/a/g/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    goto :goto_4

    .line 704
    :catch_1
    move-exception p0

    .line 705
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 707
    :goto_4
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 482
    const-string v0, ""

    if-nez p0, :cond_0

    .line 483
    const/16 p0, 0x3e9

    :try_start_0
    invoke-static {p0}, Ld/a/g/d/b;->a(I)V

    .line 484
    return-object v0

    .line 486
    :cond_0
    sget-object v1, Ld/a/g/d/l;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 487
    if-eqz p2, :cond_2

    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 488
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ice"

    if-eqz p0, :cond_1

    .line 489
    :try_start_1
    new-array p0, v4, [Ljava/lang/Class;

    const-class p3, Ljava/lang/String;

    aput-object p3, p0, v6

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p0, v5

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v6

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    .line 489
    invoke-static {v5, v1, v3, p0, p3}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_1
    new-array p0, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, p0, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, p0, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, p0, v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 494
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p3, v2, v4

    .line 492
    invoke-static {v5, v1, v3, p0, v2}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 497
    :cond_2
    :goto_0
    sget-object p0, Ld/a/g/d/l;->a:Ljava/lang/String;

    return-object p0

    .line 500
    :cond_3
    invoke-static {p0, v6}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 501
    if-nez v1, :cond_4

    .line 505
    const/16 p0, 0x3ea

    invoke-static {p0}, Ld/a/g/d/b;->a(I)V

    .line 506
    invoke-static {}, Ld/a/g/i/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/a/g/d/b;->a(Ljava/lang/String;)V

    .line 507
    return-object v0

    .line 509
    :cond_4
    invoke-static {p0}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 514
    const/16 p0, 0x3eb

    invoke-static {p0}, Ld/a/g/d/b;->a(I)V

    .line 515
    invoke-static {}, Ld/a/g/i/c;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/a/g/d/b;->a(Ljava/lang/String;)V

    .line 516
    return-object v0

    .line 522
    :cond_5
    invoke-static {p0, p1, p2, p3}, Ld/a/g/d/l;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 526
    :cond_6
    invoke-static {v1}, Ld/a/g/i/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 531
    const-string v1, "gzfi"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p3, v2, v4

    .line 532
    invoke-static {p0, v6, v1, v3, v2}, Ld/a/g/d/l;->b(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 534
    const/16 p1, 0x3ec

    if-eqz p0, :cond_8

    .line 535
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_7

    .line 536
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 538
    :cond_7
    invoke-static {p1}, Ld/a/g/d/b;->a(I)V

    .line 539
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ld/a/g/d/b;->b(I)V

    .line 540
    return-object v0

    .line 543
    :cond_8
    invoke-static {p1}, Ld/a/g/d/b;->a(I)V

    .line 544
    const/16 p0, -0x3e9

    invoke-static {p0}, Ld/a/g/d/b;->b(I)V

    .line 546
    goto :goto_1

    .line 551
    :cond_9
    invoke-static {p0, p1, p2, p3}, Ld/a/g/d/l;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 556
    :catch_0
    move-exception p0

    invoke-static {p0}, Ld/a/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/a/g/d/b;->b(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 559
    :goto_1
    const/16 p0, 0x3ed

    invoke-static {p0}, Ld/a/g/d/b;->a(I)V

    .line 560
    const/16 p0, -0x3ea

    invoke-static {p0}, Ld/a/g/d/b;->b(I)V

    .line 561
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 713
    const/16 v0, 0x8

    if-eqz p0, :cond_9

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 716
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    invoke-static {p0, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 721
    :cond_1
    const-string v1, "retrieveToken"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    .line 724
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    aput-object p4, v4, v8

    .line 722
    const p1, 0x186e3

    invoke-static {p1, v1, v3, v4}, Ld/a/g/d/l;->a(ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 725
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_3

    .line 727
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 732
    return-object p1

    .line 734
    :cond_2
    const/16 p1, 0x9

    invoke-static {p0, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 741
    :cond_3
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x5

    if-eq p3, v2, :cond_7

    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    .line 742
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v8, :cond_4

    goto :goto_1

    .line 755
    :cond_4
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p4, :cond_6

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 756
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_5

    goto :goto_0

    .line 764
    :cond_5
    goto :goto_4

    .line 758
    :cond_6
    :goto_0
    const/4 p1, 0x7

    invoke-static {p0, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 744
    :cond_7
    :goto_1
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p3

    .line 748
    aget-object v1, p3, v5

    aget-object p3, p3, v6

    new-array v2, v6, [I

    aput p1, v2, v5

    invoke-static {p0, v5, v1, p3, v2}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V

    .line 750
    nop

    .line 751
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_8

    .line 752
    goto :goto_2

    .line 751
    :cond_8
    move p4, v7

    .line 754
    :goto_2
    invoke-static {p0, p4}, Ld/a/g/i/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 714
    :cond_9
    :goto_3
    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 762
    :catch_0
    move-exception p1

    .line 763
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 766
    :goto_4
    invoke-static {p0, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/sofire/ac/BDModuleLoadCallback;Z)V
    .locals 4

    .line 1101
    if-lez p1, :cond_4

    if-eqz p2, :cond_4

    .line 1102
    invoke-static {p1}, Ld/a/g/i/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-interface {p2, p1}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onSuccess(I)V

    .line 1105
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ld/a/g/d/l;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1106
    const/16 p0, 0x8

    invoke-interface {p2, p1, p0}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onFailure(II)V

    .line 1107
    return-void

    .line 1109
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ld/a/g/d/l;->e:J

    .line 1110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1113
    const/16 p0, 0xa

    invoke-interface {p2, p1, p0}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onFailure(II)V

    .line 1114
    return-void

    .line 1119
    :cond_2
    invoke-static {p1, p2}, Lcom/baidu/sofire/ac/U;->addCallback(ILcom/baidu/sofire/ac/BDModuleLoadCallback;)V

    .line 1120
    if-eqz p3, :cond_4

    sget-boolean p1, Lcom/baidu/sofire/ac/U;->sIsRunning:Z

    if-nez p1, :cond_4

    .line 1121
    invoke-static {p0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object p1

    new-instance p2, Lcom/baidu/sofire/ac/U;

    .line 1123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3, v1}, Lcom/baidu/sofire/ac/U;-><init>(Landroid/content/Context;IZ)V

    .line 1122
    invoke-virtual {p1, p2}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I

    return-void

    .line 1130
    :cond_3
    const/16 p0, 0x9

    invoke-interface {p2, p1, p0}, Lcom/baidu/sofire/ac/BDModuleLoadCallback;->onFailure(II)V

    .line 1133
    :cond_4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 12

    move-object v8, p3

    .line 3949
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3950
    if-eqz v8, :cond_0

    .line 3951
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p3, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3953
    :cond_0
    return-void

    .line 3956
    :cond_1
    invoke-static {p0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v0

    new-instance v11, Ld/a/g/d/k;

    move-object v1, v11

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Ld/a/g/d/k;-><init>(Lcom/baidu/sofire/ac/Callback;Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    return-void

    .line 3975
    :catch_0
    move-exception v0

    .line 3977
    if-eqz v8, :cond_2

    .line 3978
    :try_start_1
    new-array v0, v10, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p3, v0}, Lcom/baidu/sofire/ac/Callback;->onError([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3980
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3982
    :cond_2
    :goto_0
    nop

    .line 3983
    :goto_1
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    .locals 8

    const-class v0, Ld/a/g/d/l;

    monitor-enter v0

    .line 67
    if-nez p0, :cond_0

    .line 68
    monitor-exit v0

    return-void

    .line 70
    :cond_0
    :try_start_0
    sget-boolean v1, Ld/a/g/d/l;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 71
    monitor-exit v0

    return-void

    .line 73
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ld/a/g/d/l;->b:Z

    .line 75
    sput-object p0, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 76
    const/4 v1, 0x0

    invoke-static {p0, p5, p4, v1}, Ld/a/g/d/l;->a(Landroid/content/Context;ILcom/baidu/sofire/ac/BDModuleLoadCallback;Z)V

    .line 77
    invoke-static {p0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object p4

    new-instance v7, Ld/a/g/d/g;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p1

    invoke-direct/range {v1 .. v6}, Ld/a/g/d/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p4, v7}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 157
    :catch_0
    move-exception p0

    .line 158
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    .line 66
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[I)V
    .locals 7

    const-class v0, Ld/a/g/d/l;

    monitor-enter v0

    .line 49
    nop

    .line 50
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    :try_start_0
    array-length v3, p4

    if-le v3, v1, :cond_0

    .line 53
    sput-object p4, Ld/a/g/d/l;->f:[I

    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 54
    :cond_0
    if-eqz p4, :cond_1

    array-length v3, p4

    if-ne v3, v1, :cond_1

    .line 56
    aget v2, p4, v2

    move v6, v2

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    move v6, v2

    :goto_1
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Ld/a/g/d/l;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/sofire/ac/BDModuleLoadCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    .line 48
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .line 618
    if-eqz p0, :cond_1

    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 622
    invoke-virtual {p0, p1}, Ld/a/g/h/a;->a(Z)V

    .line 623
    return-void

    .line 619
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/baidu/sofire/ac/Callback;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/d/f;->b:Landroid/content/Context;

    .line 340
    invoke-static {v1}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v1

    new-instance v8, Ld/a/g/d/i;

    move-object v2, v8

    move-object v3, p2

    move v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Ld/a/g/d/i;-><init>(Lcom/baidu/sofire/ac/Callback;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ld/a/g/i/w;->a(Ljava/lang/Runnable;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    .line 473
    :catch_0
    move-exception p0

    .line 474
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 476
    return v0
.end method

.method public static varargs b(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1053
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Ld/a/g/d/l;->a(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 304
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 308
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v3

    .line 309
    if-nez v3, :cond_1

    .line 310
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 313
    :cond_1
    const-string v4, "com.baidu.sofire.x0"

    invoke-virtual {v3, v4}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_2

    .line 315
    iget-object v3, v3, Lcom/baidu/sofire/core/ApkInfo;->classLoader:Ljava/lang/ClassLoader;

    check-cast v3, Ld/a/g/d/m;

    .line 317
    const-string v4, "com.baidu.sofire.engine.EngineImpl"

    .line 318
    invoke-virtual {v3, v4}, Ld/a/g/d/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 320
    const-string v4, "getInstance"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 321
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Ld/a/g/d/f;->b:Landroid/content/Context;

    aput-object v5, v2, v7

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    nop

    .line 324
    invoke-static {v2, p0, p1, p2}, Ld/a/g/i/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 325
    new-instance p1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 329
    :cond_2
    goto :goto_0

    .line 327
    :catch_0
    move-exception p0

    .line 328
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 330
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 566
    if-nez p0, :cond_0

    .line 567
    const-string p0, ""

    return-object p0

    .line 569
    :cond_0
    if-eqz p2, :cond_2

    .line 570
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ice"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    new-array p3, v3, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p3, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, v5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v5, v2, v1, p3, v0}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_1
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 574
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    aput-object p3, v0, v3

    .line 573
    invoke-static {v5, v2, v1, v6, v0}, Ld/a/g/d/l;->a(ILjava/lang/String;Lcom/baidu/sofire/ac/Callback;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 577
    :cond_2
    :goto_0
    invoke-static {p0}, Ld/a/g/d/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Ld/a/g/d/l;

    monitor-enter v0

    .line 165
    if-nez p0, :cond_0

    .line 166
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    :try_start_0
    sget-boolean v1, Ld/a/g/d/l;->c:Z

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x0

    sput-boolean v1, Ld/a/g/d/l;->c:Z

    .line 170
    invoke-static {p0}, Ld/a/g/i/w;->a(Landroid/content/Context;)Ld/a/g/i/w;

    move-result-object v1

    new-instance v2, Ld/a/g/d/h;

    invoke-direct {v2, p0}, Ld/a/g/d/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ld/a/g/i/w;->b(Ljava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    monitor-exit v0

    return-void

    .line 164
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 185
    :catch_0
    move-exception p0

    .line 186
    :try_start_1
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit v0

    return-void

    .line 164
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1088
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1091
    :cond_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 1092
    nop

    .line 3271
    iget-object v0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "s_h_d_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3272
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3273
    iget-object p0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1093
    :catch_0
    move-exception p0

    .line 1094
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 1096
    return-void

    .line 1089
    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Z)V
    .locals 3

    const-class v0, Ld/a/g/d/l;

    monitor-enter v0

    .line 1058
    if-nez p0, :cond_0

    .line 1059
    monitor-exit v0

    return-void

    .line 1063
    :cond_0
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result v1

    .line 1064
    if-nez v1, :cond_1

    .line 1066
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1067
    const-string v2, "_agree_policy"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1068
    const-string p1, "setAgreePolicy"

    .line 1069
    invoke-static {p0, p1, v1}, Ld/a/g/i/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1073
    :try_start_1
    invoke-static {p0, p1}, Ld/a/g/i/u;->a(Landroid/content/Context;Z)V

    .line 1074
    if-eqz p1, :cond_2

    sget-boolean p1, Ld/a/g/d/l;->d:Z

    if-nez p1, :cond_2

    .line 1075
    sput-boolean v2, Ld/a/g/d/l;->d:Z

    .line 1076
    invoke-static {p0}, Ld/a/g/d/l;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    :cond_2
    monitor-exit v0

    return-void

    .line 1057
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1080
    :catch_0
    move-exception p0

    .line 1081
    :try_start_2
    invoke-static {}, Ld/a/g/i/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1083
    monitor-exit v0

    return-void

    .line 1057
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static synthetic b()[I
    .locals 1

    .line 34
    sget-object v0, Ld/a/g/d/l;->f:[I

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 582
    const-string v0, "xytk_m"

    const-string v1, "74FFB5E615AA72E0B057EE43E3D5A23A8BA34AAC1672FC9B56A7106C57BA03"

    :try_start_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ld/a/g/h/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 585
    sput-object v3, Ld/a/g/d/l;->a:Ljava/lang/String;

    .line 586
    return-object v3

    .line 588
    :cond_0
    nop

    .line 2624
    iget-object v3, v2, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    nop

    .line 589
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    sput-object v3, Ld/a/g/d/l;->a:Ljava/lang/String;

    .line 591
    return-object v3

    .line 593
    :cond_1
    invoke-static {p0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 595
    const-string v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 596
    if-eqz p0, :cond_3

    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget-object v5, p0, v4

    .line 597
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 601
    :cond_2
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v5

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/baidu/sofire/ac/F;->re([B[B)[B

    move-result-object v4

    .line 602
    if-eqz v4, :cond_4

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v3

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ld/a/g/i/c;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 604
    nop

    .line 2628
    iget-object v3, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2630
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    nop

    .line 606
    sput-object p0, Ld/a/g/d/l;->a:Ljava/lang/String;

    return-object p0

    .line 598
    :cond_3
    :goto_0
    nop

    .line 599
    sput-object v1, Ld/a/g/d/l;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 612
    :cond_4
    goto :goto_1

    .line 610
    :catch_0
    move-exception p0

    .line 611
    invoke-static {}, Ld/a/g/i/c;->a()V

    .line 613
    :goto_1
    nop

    .line 614
    sput-object v1, Ld/a/g/d/l;->a:Ljava/lang/String;

    return-object v1
.end method

.method public static synthetic c()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Ld/a/g/d/l;->c:Z

    return v0
.end method
