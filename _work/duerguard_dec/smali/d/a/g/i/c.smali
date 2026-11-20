.class public final Ld/a/g/i/c;
.super Ljava/lang/Object;
.source "CommonMethods.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:Lorg/json/JSONArray;

.field public static i:Lcom/baidu/sofire/MyReceiver;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/sofire/core/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static r:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Ld/a/g/i/c;->a:Z

    .line 84
    sput v0, Ld/a/g/i/c;->d:I

    .line 86
    const-string v0, "3"

    sput-object v0, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 87
    const-string v0, "925fc15df8a49bed0b3eca8d2b44cb7b"

    sput-object v0, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    sput v0, Ld/a/g/i/c;->g:I

    .line 92
    const/4 v1, 0x0

    sput-object v1, Ld/a/g/i/c;->h:Lorg/json/JSONArray;

    .line 96
    const-string v2, "liantian"

    const-string v3, "sofire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "1000001"

    sput-object v2, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 102
    const-string v2, "0a2ff98dd00fdca15fcdbc895fc09e6b"

    sput-object v2, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 110
    :cond_0
    sput-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    .line 115
    const-string v1, ""

    sput-object v1, Ld/a/g/i/c;->j:Ljava/lang/String;

    .line 116
    sput-object v1, Ld/a/g/i/c;->k:Ljava/lang/String;

    .line 117
    sput-object v1, Ld/a/g/i/c;->l:Ljava/lang/String;

    .line 118
    sput-object v1, Ld/a/g/i/c;->m:Ljava/lang/String;

    .line 119
    sput v0, Ld/a/g/i/c;->n:I

    .line 120
    sput v0, Ld/a/g/i/c;->o:I

    .line 121
    sput v0, Ld/a/g/i/c;->p:I

    .line 124
    nop

    .line 128
    const-wide/16 v0, 0x0

    sput-wide v0, Ld/a/g/i/c;->r:J

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .line 276
    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/baidu/sofire/MyProvider;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 277
    return v2

    .line 279
    :cond_0
    sget v1, Ld/a/g/i/c;->g:I

    if-ne v1, v0, :cond_3

    .line 280
    invoke-static {p0}, Ld/a/g/i/c;->p(Landroid/content/Context;)I

    move-result p0

    .line 281
    if-ne p0, v2, :cond_1

    .line 282
    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    .line 290
    invoke-static {}, Lcom/baidu/sofire/MyProvider;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sput v2, Ld/a/g/i/c;->g:I

    .line 296
    :cond_3
    sget p0, Ld/a/g/i/c;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 297
    :catch_0
    move-exception p0

    .line 7131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 300
    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 200
    :try_start_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 202
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 204
    :cond_1
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 206
    :cond_2
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 208
    :cond_3
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 210
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 212
    :cond_5
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 214
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 215
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 219
    :cond_7
    goto :goto_0

    .line 217
    :catch_0
    move-exception p0

    .line 5131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 220
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 903
    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "paramTypes or args fail"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 917
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 918
    const/4 v1, 0x0

    .line 919
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 920
    invoke-static {v4, p1, p2}, Ld/a/g/i/c;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 921
    nop

    .line 922
    move-object v1, v4

    goto :goto_2

    .line 919
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 925
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 933
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 929
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot find method in target methodName="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 907
    :cond_5
    new-instance p2, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "object="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 385
    const-string v0, "tk_sa_pu_cl"

    const-string v1, ""

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 388
    rsub-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    nop

    :goto_0
    if-lez v2, :cond_0

    .line 391
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ld/a/g/i/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 397
    const-string v2, "30212102dicudiab"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 397
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object p1

    .line 399
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 400
    nop

    .line 9497
    iget-object v2, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 400
    nop

    .line 401
    add-int/lit8 v2, v2, 0x1

    .line 10492
    iget-object v3, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10493
    iget-object p0, p0, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    invoke-static {p1, v2}, Ld/a/g/i/c;->a([BI)Ljava/lang/String;

    move-result-object p0

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    const-string v0, "A"

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 407
    :catch_0
    move-exception p0

    .line 11131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 410
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 589
    move-object/from16 v0, p2

    const-string v1, "provider"

    .line 590
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v5, p0

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 592
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 593
    if-eqz v3, :cond_24

    .line 594
    nop

    .line 597
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_1

    if-ne v6, v8, :cond_0

    .line 604
    :cond_1
    if-eq v6, v7, :cond_2

    .line 605
    return-object v2

    .line 608
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "manifest"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 609
    return-object v2

    .line 612
    :cond_3
    const-string v6, "package"

    invoke-interface {v3, v2, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 613
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_6

    .line 616
    :cond_4
    nop

    .line 16551
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 16552
    nop

    .line 16553
    nop

    .line 16554
    const/4 v10, 0x0

    move v13, v8

    move v11, v10

    move v12, v11

    :goto_0
    if-ge v11, v9, :cond_c

    .line 16555
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 16556
    const/16 v15, 0x61

    if-lt v14, v15, :cond_5

    const/16 v15, 0x7a

    if-le v14, v15, :cond_6

    :cond_5
    const/16 v15, 0x41

    if-lt v14, v15, :cond_7

    const/16 v15, 0x5a

    if-gt v14, v15, :cond_7

    .line 16557
    :cond_6
    nop

    .line 16558
    move v13, v10

    goto :goto_1

    .line 16560
    :cond_7
    if-nez v13, :cond_9

    .line 16561
    const/16 v15, 0x30

    if-lt v14, v15, :cond_8

    const/16 v15, 0x39

    if-le v14, v15, :cond_a

    :cond_8
    const/16 v15, 0x5f

    if-eq v14, v15, :cond_a

    .line 16565
    :cond_9
    const/16 v12, 0x2e

    if-ne v14, v12, :cond_b

    .line 16566
    nop

    .line 16567
    nop

    .line 16568
    move v12, v8

    move v13, v12

    .line 16554
    :cond_a
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 16570
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bad character \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 16572
    :cond_c
    if-eqz v12, :cond_d

    move-object v9, v2

    goto :goto_2

    :cond_d
    const-string v9, "must have at least one \'.\' separator"

    .line 617
    :goto_2
    if-eqz v9, :cond_e

    const-string v9, "android"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 618
    return-object v2

    .line 620
    :cond_e
    nop

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    const-string v9, "receiver"

    const-string v10, "service"

    if-eqz v6, :cond_f

    .line 622
    :try_start_1
    const-class v0, Lcom/baidu/sofire/MyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 624
    :cond_f
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 625
    const-class v0, Lcom/baidu/sofire/MyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 626
    :cond_10
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 627
    const-class v0, Lcom/baidu/sofire/MyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 626
    :cond_11
    move-object v6, v2

    .line 632
    :cond_12
    :goto_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_24

    .line 633
    if-eq v0, v7, :cond_14

    if-eq v0, v4, :cond_13

    .line 728
    move-object/from16 v11, p1

    goto :goto_3

    .line 726
    :cond_13
    move-object/from16 v11, p1

    goto :goto_3

    .line 635
    :cond_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    const-string v12, ":"

    const-string v13, "process"

    const-string v14, "name"

    const-string v15, "http://schemas.android.com/apk/res/android"

    if-eqz v11, :cond_1b

    .line 639
    nop

    .line 640
    :try_start_2
    invoke-interface {v3, v15, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 642
    const-string v0, "multiprocess"

    invoke-interface {v3, v15, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 645
    const-string v11, "true"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 646
    return-object v2

    .line 649
    :cond_15
    const-string v0, "authorities"

    invoke-interface {v3, v15, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v11, :cond_19

    .line 652
    move-object/from16 v11, p1

    :try_start_3
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 653
    return-object v2

    .line 658
    :cond_16
    nop

    .line 659
    invoke-interface {v3, v15, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 662
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 663
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 665
    :cond_17
    return-object v0

    .line 668
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 671
    :catch_0
    move-exception v0

    goto :goto_4

    .line 656
    :cond_19
    return-object v2

    .line 673
    :cond_1a
    move-object/from16 v11, p1

    goto :goto_5

    .line 671
    :catch_1
    move-exception v0

    move-object/from16 v11, p1

    .line 17131
    :goto_4
    :try_start_4
    invoke-static {}, Ld/a/g/g;->b()V

    .line 673
    :goto_5
    goto/16 :goto_3

    .line 675
    :cond_1b
    move-object/from16 v11, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v16, :cond_1f

    .line 677
    nop

    .line 678
    :try_start_5
    invoke-interface {v3, v15, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1e

    .line 680
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 681
    nop

    .line 682
    invoke-interface {v3, v15, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 685
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 686
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 688
    :cond_1c
    return-object v0

    .line 691
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 695
    :catch_2
    move-exception v0

    .line 18131
    :try_start_6
    invoke-static {}, Ld/a/g/g;->b()V

    .line 697
    :cond_1e
    goto/16 :goto_3

    .line 699
    :cond_1f
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_12

    .line 701
    nop

    .line 702
    :try_start_7
    invoke-interface {v3, v15, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_22

    .line 704
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 705
    nop

    .line 706
    invoke-interface {v3, v15, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_21

    .line 709
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 710
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 712
    :cond_20
    return-object v0

    .line 715
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    return-object v0

    .line 720
    :catch_3
    move-exception v0

    .line 19131
    :try_start_8
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 722
    :cond_22
    goto/16 :goto_3

    .line 614
    :cond_23
    :goto_6
    return-object v2

    .line 736
    :cond_24
    goto :goto_7

    .line 734
    :catch_4
    move-exception v0

    .line 20131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 737
    :goto_7
    return-object v2
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1911
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1914
    const/4 v1, 0x1

    .line 1915
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1916
    if-nez v1, :cond_0

    .line 1917
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1919
    :cond_0
    const/4 v1, 0x0

    .line 1921
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1924
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-class p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    const-class p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    const-class p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 189
    const-class p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 193
    :cond_7
    goto :goto_0

    .line 191
    :catch_0
    move-exception p0

    .line 4131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 194
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .line 2268
    nop

    .line 2269
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2270
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2274
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2276
    :cond_1
    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 9

    .line 350
    const-string v0, ""

    if-eqz p0, :cond_2

    .line 351
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 353
    array-length v2, p0

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 354
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    array-length p0, p0

    array-length v4, v1

    invoke-static {v1, v5, v2, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    array-length p0, v2

    sub-int/2addr p0, v3

    new-array p0, p0, [I

    .line 358
    aput p1, p0, v5

    .line 359
    const/4 v1, 0x1

    move v4, v1

    :goto_0
    array-length v6, p0

    const/4 v7, 0x3

    if-ge v4, v6, :cond_0

    .line 360
    add-int/lit8 v6, v4, -0x1

    aget v6, p0, v6

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    rem-int/lit16 v6, v6, 0x80

    aput v6, p0, v4

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    :cond_0
    move v4, v5

    :goto_1
    array-length v6, p0

    if-ge v4, v6, :cond_1

    .line 363
    aget-byte v6, v2, v4

    aget v8, p0, v4

    int-to-byte v8, v8

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 365
    :cond_1
    nop

    .line 8414
    new-array p0, v3, [B

    .line 8416
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v7

    .line 8417
    const/4 v4, 0x2

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p0, v4

    .line 8418
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 8419
    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p0, v5

    .line 8420
    nop

    .line 366
    array-length p1, v2

    sub-int/2addr p1, v3

    invoke-static {p0, v5, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    const/16 p0, 0x9

    invoke-static {v2, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 370
    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 377
    :catch_0
    move-exception p0

    .line 9131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 380
    return-object v0

    .line 375
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    .line 135
    nop

    .line 136
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ld/a/g/i/b;->a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception p0

    .line 3131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 144
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 145
    invoke-static {p1}, Ld/a/g/i/b;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    .line 147
    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ld/a/g/b/a;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    .line 1795
    iget-object v0, p1, Ld/a/g/b/a;->a:Ljava/lang/String;

    iget-object v1, p1, Ld/a/g/b/a;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p1, p1, Ld/a/g/b/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/a/g/b/a;->e:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, v1, p1, p2}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 2200
    const-string v0, "0"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2202
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2204
    const-string v3, "1"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2205
    const-string v3, "2"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2207
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2208
    const-string v0, "3"

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    :try_start_1
    array-length v4, p0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2209
    aget-object p0, p0, v3

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2211
    :cond_0
    sget-object p0, Ld/a/g/i/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2214
    :goto_0
    const-string p0, "4"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2215
    const-string p0, "5"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2216
    const-string p0, "6"

    const/4 v0, 0x1

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2217
    const-string p0, "7"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2218
    const-string p0, "8"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2219
    const-string p0, "9"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2220
    const-string p0, "10"

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2222
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 2223
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    .line 2225
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2226
    nop

    .line 2229
    move-object p0, p1

    goto :goto_1

    .line 2227
    :catch_0
    move-exception p1

    .line 50133
    :try_start_3
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2232
    :cond_1
    :goto_1
    const-string p1, "Common_section"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2233
    const-string p1, "Module_section"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2237
    goto :goto_2

    .line 2235
    :catch_1
    move-exception p0

    .line 50135
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2239
    :goto_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16

    .line 1928
    move-object/from16 v1, p1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1930
    nop

    .line 1931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1932
    nop

    .line 1933
    nop

    .line 1934
    nop

    .line 1935
    nop

    .line 1937
    nop

    .line 1939
    :try_start_0
    const-string v0, "Common_section"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    goto :goto_0

    .line 1940
    :catch_0
    move-exception v0

    .line 37131
    invoke-static {}, Ld/a/g/g;->b()V

    const/4 v0, 0x0

    .line 1944
    :goto_0
    const-string v5, "9"

    const-string v6, "8"

    const-string v7, "3"

    const-string v8, "1"

    const-string v9, "10"

    const-string v10, ""

    if-eqz v0, :cond_0

    .line 1945
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1946
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1947
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1948
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1949
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1950
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    .line 1944
    :cond_0
    move-wide v11, v3

    move-object v3, v10

    move-object v4, v3

    move-object v13, v4

    move-object v14, v13

    move-object v15, v14

    .line 1954
    :goto_1
    nop

    .line 1956
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1957
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1960
    goto :goto_2

    .line 1958
    :catch_1
    move-exception v0

    .line 38131
    :try_start_2
    invoke-static {}, Ld/a/g/g;->b()V

    move-object v0, v10

    .line 1962
    :goto_2
    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1963
    const-string v0, "2"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1964
    invoke-static/range {p0 .. p0}, Ld/a/g/i/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1965
    const-string v0, "4"

    invoke-static/range {p0 .. p0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1967
    const-string v0, "5"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1968
    const-string v0, "6"

    invoke-virtual {v2, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1969
    const-string v0, "7"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1970
    invoke-virtual {v2, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1971
    invoke-virtual {v2, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1972
    invoke-virtual {v2, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1974
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 1976
    const-string v1, "11"

    .line 38209
    iget-object v3, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v4, "re_a_cv"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1976
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1977
    const-string v1, "12"

    .line 39200
    iget-object v0, v0, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v3, "re_a_lc"

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1979
    const-string v0, "13"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1981
    invoke-static/range {p0 .. p0}, Ld/a/g/i/c;->k(Landroid/content/Context;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1983
    const/4 v3, 0x4

    const-string v4, "14"

    if-ne v0, v3, :cond_1

    .line 1984
    :try_start_3
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 1986
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2013
    :goto_3
    const-string v0, "28"

    invoke-static/range {p0 .. p0}, Ld/a/g/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2016
    invoke-static/range {p0 .. p0}, Ld/a/g/i/f;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    const-string v1, "23"

    if-eqz v0, :cond_2

    .line 2017
    nop

    .line 2019
    :try_start_4
    invoke-static/range {p0 .. p0}, Ld/a/g/i/c;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 2022
    goto :goto_4

    .line 2020
    :catch_2
    move-exception v0

    .line 40131
    :try_start_5
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2023
    :goto_4
    invoke-virtual {v2, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2024
    goto :goto_5

    .line 2025
    :cond_2
    invoke-virtual {v2, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2026
    const-string v0, "20"

    invoke-static/range {p0 .. p0}, Ld/a/g/i/t;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2027
    const-string v0, "21"

    invoke-static/range {p0 .. p0}, Ld/a/g/i/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2028
    invoke-static/range {p0 .. p0}, Ld/a/g/i/c;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    const-string v1, "32"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2031
    :goto_5
    const-string v0, "Module_section"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2032
    instance-of v1, v0, Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    const-string v3, "module_section"

    if-eqz v1, :cond_3

    .line 2033
    :try_start_6
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 2035
    :cond_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 2040
    goto :goto_6

    .line 2038
    :catch_3
    move-exception v0

    .line 41131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2042
    :goto_6
    return-object v2
.end method

.method public static a()V
    .locals 0

    .line 131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 4

    .line 2244
    const-string v0, "tvshield"

    const-string v1, "sofire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2245
    return-void

    .line 2247
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.b.r.p"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    const/16 v2, 0x65

    const/high16 v3, 0x8000000

    .line 2252
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 2255
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    goto :goto_0

    .line 2256
    :catch_0
    move-exception v1

    .line 50137
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2259
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 2261
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2264
    return-void

    .line 2262
    :catch_1
    move-exception p0

    .line 50139
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2265
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 2127
    const-string v0, ""

    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 2130
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 2134
    nop

    .line 2138
    :try_start_1
    const-string p1, "0"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2139
    if-eqz p1, :cond_2

    .line 2140
    move-object v2, v0

    .line 2141
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2142
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2147
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2148
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47159
    iget-object v3, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "al_da"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47160
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2153
    :cond_2
    goto :goto_0

    .line 2151
    :catch_0
    move-exception p1

    .line 48131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2156
    :goto_0
    :try_start_2
    const-string p1, "1"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2157
    if-eqz p1, :cond_5

    .line 2158
    nop

    .line 2159
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2160
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2165
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48168
    iget-object v2, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in_da"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48169
    iget-object p1, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2171
    :cond_5
    goto :goto_1

    .line 2169
    :catch_1
    move-exception p1

    .line 49131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2174
    :goto_1
    :try_start_3
    const-string p1, "2"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2175
    if-eqz p1, :cond_6

    .line 2179
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49177
    iget-object v0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v1, "li_pk_s"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49178
    iget-object p0, p0, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 2183
    :cond_6
    return-void

    .line 2181
    :catch_2
    move-exception p0

    .line 50131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2186
    return-void

    .line 2131
    :catch_3
    move-exception p0

    .line 47131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2133
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 2561
    if-gez p2, :cond_0

    .line 2562
    return-void

    .line 2564
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, ".tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2566
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2568
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2569
    if-lez p2, :cond_2

    .line 2570
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2571
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 2573
    :cond_2
    if-nez p2, :cond_3

    .line 2574
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2575
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2580
    :cond_3
    return-void

    .line 2578
    :catch_0
    move-exception p0

    .line 50567
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2581
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2048
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/g/i/d;->a()V

    .line 2049
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object v0

    .line 42073
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 42074
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 42076
    iget-object v0, v0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {v0, v1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V

    .line 2050
    new-instance v0, Ld/a/g/b/a;

    invoke-direct {v0}, Ld/a/g/b/a;-><init>()V

    .line 2051
    iput-object p1, v0, Ld/a/g/b/a;->a:Ljava/lang/String;

    .line 2052
    iput-object p2, v0, Ld/a/g/b/a;->b:Ljava/lang/String;

    .line 2053
    iput-object p3, v0, Ld/a/g/b/a;->c:Ljava/lang/String;

    .line 2054
    iput-object p4, v0, Ld/a/g/b/a;->d:Ljava/lang/String;

    .line 2055
    iput-object p5, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    .line 2057
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2061
    :cond_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p1

    .line 2063
    invoke-virtual {p1}, Ld/a/g/h/a;->t()Ljava/util/List;

    move-result-object p2

    .line 2064
    if-nez p2, :cond_1

    .line 2065
    invoke-virtual {p1, v0}, Ld/a/g/h/a;->a(Ld/a/g/b/a;)V

    goto :goto_0

    .line 2066
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 2067
    invoke-virtual {p1, v0}, Ld/a/g/h/a;->a(Ld/a/g/b/a;)V

    .line 2073
    :goto_0
    iget-object p2, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    .line 43137
    iget-object p1, p1, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "re_net_ins_"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2073
    if-nez p1, :cond_2

    .line 2074
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p1

    .line 44068
    iget-object p2, p1, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    .line 44632
    iget-object p5, p2, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    iget-object v1, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ld/a/g/h/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 44634
    new-instance v1, Ld/a/g/e/a;

    invoke-direct {v1}, Ld/a/g/e/a;-><init>()V

    .line 44635
    iget-object v2, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    iput-object v2, v1, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 44636
    iput p3, v1, Ld/a/g/e/a;->g:I

    .line 44637
    const/4 v2, 0x1

    iput v2, v1, Ld/a/g/e/a;->c:I

    .line 44638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Ld/a/g/e/a;->e:J

    .line 44639
    iput v2, v1, Ld/a/g/e/a;->f:I

    .line 44640
    iget-object v3, p2, Ld/a/g/g/a;->d:Landroid/content/Context;

    .line 44641
    invoke-static {v3, v0, p5, p3}, Ld/a/g/i/c;->a(Landroid/content/Context;Ld/a/g/b/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 44643
    iget-object p3, p2, Ld/a/g/g/a;->d:Landroid/content/Context;

    invoke-static {p3}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object p3

    invoke-virtual {p3, v1}, Ld/a/g/c/a;->a(Ld/a/g/e/a;)J

    .line 44645
    iget-object p2, p2, Ld/a/g/g/a;->c:Ld/a/g/h/a;

    iget-object p3, v0, Ld/a/g/b/a;->e:Ljava/lang/String;

    .line 45132
    iget-object p5, p2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45133
    iget-object p2, p2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44069
    iget-object p1, p1, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {p1, v0}, Ld/a/g/g/a;->a(Ld/a/g/b/a;)V

    .line 2076
    :cond_2
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/a/g/i/d;->b()V

    .line 2077
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p0

    invoke-virtual {p0}, Ld/a/g/i/d;->c()V

    .line 2079
    return-void

    .line 2069
    :cond_3
    nop

    .line 42923
    nop

    .line 42927
    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 42928
    const/4 p4, -0x1

    if-eq p3, p4, :cond_4

    .line 42932
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/a/g/b/a;

    .line 42933
    if-eqz p2, :cond_4

    .line 42936
    invoke-static {p2}, Ld/a/g/b/a;->a(Ld/a/g/b/a;)Ljava/lang/String;

    move-result-object p2

    .line 42937
    invoke-static {v0}, Ld/a/g/b/a;->a(Ld/a/g/b/a;)Ljava/lang/String;

    move-result-object p3

    .line 42939
    iget-object p4, p1, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string p5, "re_con"

    const-string v0, ""

    invoke-interface {p4, p5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 42941
    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 42943
    iget-object p3, p1, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42944
    iget-object p1, p1, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2070
    :cond_4
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p0

    invoke-virtual {p0}, Ld/a/g/i/d;->b()V

    .line 2071
    return-void

    .line 2058
    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1200
    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    return-void

    .line 1205
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1206
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1208
    const-string v3, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1210
    const-string v3, "1"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1212
    const-string v3, "2"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1216
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v0, v3

    .line 1217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1218
    aget-object v0, v0, v4

    goto :goto_0

    .line 1220
    :cond_1
    sget-object v0, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 1222
    :goto_0
    const-string v5, "3"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1224
    const-string v0, "4"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1226
    const-string v0, "5"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1228
    const-string v0, "6"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1230
    const-string v0, "7"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1231
    const-string v0, "8"

    const-string v3, "sofire"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    const-string v0, "3.5.9.4"

    .line 1233
    const-string v3, "9"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    const-string v0, "10"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    const-string p1, "Common_section"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    const-string p1, "Module_section"

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1237
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1238
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1239
    goto :goto_1

    .line 1240
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    :goto_1
    invoke-static {p0}, Lcom/baidu/sofire/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;

    move-result-object p0

    .line 1243
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1247
    invoke-virtual {p0, p1}, Lcom/baidu/sofire/rp/Report;->sr(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1250
    return-void

    .line 1248
    :catch_0
    move-exception p0

    .line 27131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1252
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1144
    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    return-void

    .line 1149
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1150
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1152
    const-string v3, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1154
    const-string v3, "1"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1156
    const-string v3, "2"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1158
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1160
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v0, v3

    .line 1161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1162
    aget-object v0, v0, v4

    goto :goto_0

    .line 1164
    :cond_1
    sget-object v0, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 1166
    :goto_0
    const-string v5, "3"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    const-string v0, "4"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1170
    const-string v0, "5"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1172
    const-string v0, "6"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1174
    const-string v0, "7"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1175
    const-string v0, "8"

    const-string v3, "sofire"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1176
    const-string v0, "3.5.9.4"

    .line 1177
    const-string v3, "9"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1178
    const-string v0, "10"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1179
    const-string p1, "Common_section"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    const-string p1, "Module_section"

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1182
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1183
    goto :goto_1

    .line 1184
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    :goto_1
    invoke-static {p0}, Lcom/baidu/sofire/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;

    move-result-object p0

    .line 1187
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1191
    invoke-virtual {p0, p1, p3}, Lcom/baidu/sofire/rp/Report;->s(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1194
    return-void

    .line 1192
    :catch_0
    move-exception p0

    .line 26131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1196
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10

    .line 2084
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2086
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v1

    .line 2088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2090
    nop

    .line 45977
    iget-object v1, v1, Ld/a/g/h/a;->f:Landroid/content/SharedPreferences;

    const-string v2, "re_net_ty"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 2094
    const-string v1, "Common_section"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2096
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2097
    const-string v3, "10"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2098
    const-string v4, "5"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2099
    const-string v5, "6"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 2100
    const-string v6, "7"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 2101
    const-string v7, "11"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 2104
    const-string v7, ""

    .line 2105
    const/4 v8, 0x1

    if-nez v5, :cond_0

    .line 2106
    move v5, v8

    .line 2109
    :cond_0
    new-instance v9, Ld/a/g/e/a;

    invoke-direct {v9}, Ld/a/g/e/a;-><init>()V

    .line 2110
    iput-object p1, v9, Ld/a/g/e/a;->d:Ljava/lang/String;

    .line 2111
    iput-object v3, v9, Ld/a/g/e/a;->b:Ljava/lang/String;

    .line 2112
    iput v4, v9, Ld/a/g/e/a;->g:I

    .line 2113
    const/4 p1, 0x3

    iput p1, v9, Ld/a/g/e/a;->c:I

    .line 2114
    iput-wide v1, v9, Ld/a/g/e/a;->e:J

    .line 2115
    iput v5, v9, Ld/a/g/e/a;->f:I

    .line 2116
    iput v6, v9, Ld/a/g/e/a;->h:I

    .line 2117
    iput v0, v9, Ld/a/g/e/a;->i:I

    .line 2118
    iput-object v7, v9, Ld/a/g/e/a;->j:Ljava/lang/String;

    .line 2119
    invoke-static {p0}, Ld/a/g/i/d;->a(Landroid/content/Context;)Ld/a/g/i/d;

    move-result-object p0

    .line 46043
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 46045
    if-nez p2, :cond_2

    invoke-static {}, Ld/a/g/i/c;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 46050
    :cond_1
    iget-object p2, p0, Ld/a/g/i/d;->b:Landroid/content/Context;

    invoke-static {p2}, Ld/a/g/c/a;->a(Landroid/content/Context;)Ld/a/g/c/a;

    move-result-object p2

    invoke-virtual {p2, v9}, Ld/a/g/c/a;->a(Ld/a/g/e/a;)J

    .line 46054
    const/16 p2, 0xa

    iput p2, p1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 46046
    :cond_2
    :goto_0
    iput v8, p1, Landroid/os/Message;->what:I

    .line 46047
    iput-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46056
    :goto_1
    iget-object p0, p0, Ld/a/g/i/d;->c:Ld/a/g/g/a;

    invoke-virtual {p0, p1}, Ld/a/g/g/a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    return-void

    .line 2120
    :catch_0
    move-exception p0

    .line 46131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2122
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 741
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-static {p0}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 745
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 749
    :cond_1
    nop

    .line 750
    nop

    .line 752
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 753
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 756
    const/16 p1, 0x2000

    :try_start_2
    new-array p1, p1, [B

    .line 758
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 759
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 773
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 778
    goto :goto_1

    .line 774
    :catch_0
    move-exception p1

    .line 782
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 787
    return-void

    .line 783
    :catch_1
    move-exception p0

    .line 787
    return-void

    .line 771
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 768
    :catch_2
    move-exception p1

    goto :goto_2

    .line 771
    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_5

    .line 768
    :catch_3
    move-exception p0

    move-object p0, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 771
    :catchall_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_5

    .line 768
    :catch_4
    move-exception p0

    move-object p0, v0

    .line 21131
    :goto_3
    :try_start_5
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 771
    if-eqz v0, :cond_3

    .line 773
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 778
    goto :goto_4

    .line 774
    :catch_5
    move-exception p1

    .line 780
    :cond_3
    :goto_4
    if-eqz p0, :cond_4

    .line 782
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 787
    return-void

    .line 791
    :cond_4
    return-void

    .line 771
    :catchall_3
    move-exception p1

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_5

    .line 773
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 778
    goto :goto_6

    .line 774
    :catch_6
    move-exception v0

    .line 780
    :cond_5
    :goto_6
    if-eqz p0, :cond_6

    .line 782
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 787
    goto :goto_7

    .line 783
    :catch_7
    move-exception p0

    .line 787
    :cond_6
    :goto_7
    throw p1

    .line 742
    :cond_7
    :goto_8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Ld/a/g/i/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 582
    return-void

    .line 578
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 991
    const-string v0, "771"

    invoke-static {v0, p0}, Ld/a/g/i/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 996
    if-eqz p1, :cond_0

    .line 997
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 998
    invoke-static {v0, p0}, Ld/a/g/i/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1003
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 3

    .line 36116
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/a/a;->a:Ld/a/g/a/a;

    .line 1888
    nop

    .line 1889
    if-nez v1, :cond_0

    .line 1890
    return v0

    .line 1893
    :cond_0
    invoke-virtual {v1, p0}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p0

    .line 1894
    if-eqz p0, :cond_4

    iget v1, p0, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1898
    :cond_1
    invoke-static {}, Ld/a/g/d/n;->a()Ld/a/g/d/n;

    move-result-object v1

    .line 1899
    if-nez v1, :cond_2

    .line 1900
    return v0

    .line 1902
    :cond_2
    iget-object p0, p0, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ld/a/g/d/n;->d(Ljava/lang/String;)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0

    .line 1895
    :cond_4
    :goto_0
    return v0

    .line 1903
    :catch_0
    move-exception p0

    .line 36131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1905
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 3

    .line 2290
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "tvshield"

    const-string v2, "sofire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2291
    return v0

    .line 2293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".permission.sofire.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2295
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    const/4 p0, 0x1

    return p0

    .line 2297
    :catch_0
    move-exception p0

    .line 50141
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2300
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 6

    .line 478
    nop

    .line 480
    nop

    .line 482
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 483
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/baidu/sofire/MyService;

    .line 484
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_0

    .line 491
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    sput-object v3, Ld/a/g/i/c;->l:Ljava/lang/String;

    .line 492
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    .line 493
    move v0, v1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v3

    goto :goto_1

    .line 498
    :cond_0
    :goto_0
    goto :goto_2

    .line 496
    :catch_1
    move-exception v2

    const/4 v2, 0x0

    .line 14131
    :goto_1
    invoke-static {}, Ld/a/g/g;->b()V

    .line 502
    :goto_2
    if-nez v2, :cond_1

    .line 503
    :try_start_2
    const-string v2, "service"

    invoke-static {p0, p1, v2}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    sput-object v2, Ld/a/g/i/c;->m:Ljava/lang/String;

    .line 508
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    move v0, v1

    goto :goto_3

    .line 532
    :catch_2
    move-exception p0

    goto :goto_5

    .line 512
    :cond_1
    :goto_3
    sget-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ld/a/g/i/c;->b(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    .line 515
    :cond_2
    if-eqz p3, :cond_7

    sget-object p3, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 517
    if-eqz v0, :cond_3

    if-eqz p2, :cond_7

    .line 519
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    const-string p3, "0"

    if-nez v0, :cond_4

    .line 521
    const/4 v2, 0x2

    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 522
    :cond_4
    if-nez v0, :cond_5

    .line 523
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_5
    :goto_4
    if-eqz p2, :cond_6

    .line 526
    const-string p2, "1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_6
    const-string p2, "1003140"

    invoke-static {p0, p2, p1, v1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 534
    :cond_7
    goto :goto_6

    .line 15131
    :goto_5
    invoke-static {}, Ld/a/g/g;->b()V

    .line 535
    :goto_6
    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Z
    .locals 5

    const-class v0, Ld/a/g/i/c;

    monitor-enter v0

    .line 448
    const/4 v1, 0x0

    :try_start_0
    sget v2, Ld/a/g/i/c;->n:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 449
    sget p0, Ld/a/g/i/c;->n:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v4, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    monitor-exit v0

    return v1

    .line 452
    :cond_1
    :try_start_1
    invoke-static {p0}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result p0

    goto :goto_0

    .line 462
    :cond_2
    invoke-static {p0, v2, v1, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result p0

    .line 464
    :goto_0
    if-eqz p0, :cond_3

    .line 465
    sput v4, Ld/a/g/i/c;->n:I

    goto :goto_1

    .line 467
    :cond_3
    sput v1, Ld/a/g/i/c;->n:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :goto_1
    monitor-exit v0

    return p0

    .line 447
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 470
    :catch_0
    move-exception p0

    .line 13131
    :try_start_2
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    monitor-exit v0

    return v1

    .line 447
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 4

    .line 802
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 803
    const/4 p0, 0x1

    return p0

    .line 805
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 938
    return v0

    .line 943
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 944
    const/4 p1, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_2

    :cond_1
    if-eqz p2, :cond_c

    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_2

    .line 951
    :cond_2
    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_4

    :cond_3
    if-eqz p0, :cond_4

    array-length v1, p0

    if-lez v1, :cond_4

    .line 955
    return v0

    .line 958
    :cond_4
    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_6

    :cond_5
    if-eqz p2, :cond_6

    array-length v1, p2

    if-lez v1, :cond_6

    .line 962
    return v0

    .line 965
    :cond_6
    if-eqz p0, :cond_b

    if-nez p2, :cond_7

    goto :goto_1

    .line 969
    :cond_7
    array-length v1, p0

    array-length v2, p2

    if-eq v1, v2, :cond_8

    .line 973
    return v0

    .line 976
    :cond_8
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_a

    .line 977
    aget-object v2, p0, v1

    aget-object v3, p2, v1

    if-eq v2, v3, :cond_9

    .line 981
    return v0

    .line 976
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    :cond_a
    return p1

    .line 966
    :cond_b
    :goto_1
    return v0

    .line 948
    :cond_c
    :goto_2
    return p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 7

    .line 1823
    nop

    .line 1825
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 1826
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1827
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1831
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 1860
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    .line 1825
    :cond_0
    move-object v1, v0

    .line 1835
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    const-string v4, "android.app.ActivityThread"

    const-class v5, Landroid/app/Application;

    .line 1836
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1835
    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "currentProcessName"

    new-array v6, v3, [Ljava/lang/Class;

    .line 1837
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1838
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1839
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1840
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1841
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1840
    :cond_2
    move-object v0, v1

    .line 1843
    :goto_0
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1847
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    .line 1851
    :cond_3
    goto :goto_2

    .line 1849
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    .line 33131
    :goto_1
    :try_start_4
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1852
    :goto_2
    const-string v1, "/proc/%d/cmdline"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1853
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1852
    invoke-static {p0}, Ld/a/g/i/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1858
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    return-object p0

    .line 1862
    :cond_4
    goto :goto_4

    .line 1860
    :catch_3
    move-exception p0

    .line 34131
    :goto_3
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1863
    :goto_4
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 425
    :try_start_0
    sget-object v0, Ld/a/g/i/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Ld/a/g/i/c;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sofire.ac.provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 433
    if-eqz p0, :cond_1

    .line 434
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eq v0, v1, :cond_1

    .line 435
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    sput-object p0, Ld/a/g/i/c;->j:Ljava/lang/String;

    .line 438
    :cond_1
    sput v1, Ld/a/g/i/c;->o:I

    .line 441
    goto :goto_1

    .line 426
    :cond_2
    :goto_0
    sget-object p0, Ld/a/g/i/c;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 439
    :catch_0
    move-exception p0

    .line 12131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 442
    :goto_1
    sget-object p0, Ld/a/g/i/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1255
    const-string v0, ""

    .line 1257
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    const/4 v2, 0x0

    .line 1260
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1261
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1262
    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    if-eqz v2, :cond_1

    .line 1270
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1275
    :goto_0
    goto :goto_4

    .line 1278
    :catch_0
    move-exception p0

    goto :goto_3

    .line 1271
    :catch_1
    move-exception p0

    goto :goto_0

    .line 1263
    :catch_2
    move-exception p0

    goto :goto_2

    .line 1268
    :catchall_0
    move-exception p0

    if-eqz v2, :cond_0

    .line 1270
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1275
    goto :goto_1

    .line 1271
    :catch_3
    move-exception p1

    .line 1275
    :cond_0
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1268
    :goto_2
    if-eqz v2, :cond_1

    .line 1270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1280
    :cond_1
    goto :goto_4

    .line 28131
    :goto_3
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1281
    :goto_4
    return-object v0
.end method

.method public static b()Z
    .locals 1

    .line 304
    invoke-static {}, Lcom/baidu/sofire/MyProvider;->a()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 2

    .line 1458
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Ld/a/g/i/c;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1459
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1460
    sget-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    if-nez v1, :cond_0

    .line 1461
    new-instance v1, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v1}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/sofire/MyReceiver;->a()Lcom/baidu/sofire/MyReceiver;

    move-result-object v1

    sput-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    .line 1463
    :cond_0
    sget-object v1, Ld/a/g/i/c;->i:Lcom/baidu/sofire/MyReceiver;

    invoke-static {p0, v1, p1}, Ld/a/g/i/c;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 1464
    sput-boolean v0, Ld/a/g/i/c;->a:Z

    .line 1465
    const/4 p0, 0x0

    return p0

    .line 1467
    :cond_1
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 2586
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, ".tmp"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2588
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2590
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    .line 2592
    :catch_0
    move-exception p0

    .line 50569
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2595
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 540
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ld/a/g/i/c;->b(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ld/a/g/i/c;->k:Ljava/lang/String;

    .line 543
    :cond_0
    sget-object v1, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    .line 544
    :catch_0
    move-exception p0

    .line 16131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 547
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1505
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 1506
    :cond_2
    :goto_0
    return v1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1114
    :try_start_0
    sget-object v0, Ld/a/g/i/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1115
    invoke-static {}, Lcom/baidu/sofire/ac/F;->getInstance()Lcom/baidu/sofire/ac/F;

    move-result-object v1

    const-string v2, "30212102dicudiab"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/sofire/ac/F;->ad([B[B)[B

    move-result-object v0

    .line 1116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    const-string v0, ""

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    .line 1024
    const-string v0, "0"

    :try_start_0
    invoke-static {p0}, Lcom/baidu/sofire/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;

    move-result-object v1

    .line 1025
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1027
    invoke-static {p0}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object p0

    .line 1028
    invoke-virtual {p0}, Ld/a/g/a/a;->b()Ljava/util/Map;

    move-result-object v3

    .line 1029
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    const-string v4, "1"

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1032
    invoke-static {}, Ld/a/g/i/c;->h()V

    .line 1033
    sget-object v3, Ld/a/g/i/c;->h:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "2"

    if-eqz v3, :cond_0

    .line 1034
    :try_start_1
    sget-object v3, Ld/a/g/i/c;->h:Lorg/json/JSONArray;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1040
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1041
    const-string v6, "1003003"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1042
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    invoke-virtual {p0}, Ld/a/g/a/a;->c()Ljava/util/Map;

    move-result-object p0

    .line 1045
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1046
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1047
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1048
    goto :goto_0

    .line 1049
    :cond_1
    const-string p0, "com.baidu.sofire"

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1053
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/baidu/sofire/rp/Report;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1059
    return-void

    .line 1055
    :catch_0
    move-exception p0

    .line 1060
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 794
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const/4 p0, 0x0

    return p0

    .line 798
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ld/a/g/i/c;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1006
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    return v1

    .line 1013
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 1014
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    const/4 p0, 0x1

    return p0

    .line 1016
    :catch_0
    move-exception p0

    .line 23131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1019
    return v1

    .line 1007
    :cond_2
    :goto_0
    return v1
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .line 2189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2191
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2192
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    .line 1089
    nop

    .line 1094
    const-string v3, "3.5.9.4"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    return-void

    .line 1098
    :cond_0
    const-string v2, "com.baidu.sofire"

    .line 1099
    invoke-static {p0}, Lcom/baidu/sofire/rp/Report;->getInstance(Landroid/content/Context;)Lcom/baidu/sofire/rp/Report;

    move-result-object v0

    .line 1102
    :try_start_0
    invoke-static {p0}, Ld/a/g/i/c;->c(Landroid/content/Context;)V

    .line 1103
    const-string v1, "sofire"

    const-string v4, "1003003"

    const-string v5, "1003002"

    .line 1104
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sofire/rp/Report;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    return-void

    .line 1105
    :catch_0
    move-exception p0

    .line 1110
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5

    .line 810
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 816
    return-void

    .line 819
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 820
    if-eqz p0, :cond_3

    array-length v1, p0

    if-lez v1, :cond_3

    .line 821
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 822
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 823
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/a/g/i/c;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 821
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    return-void

    .line 837
    :catch_0
    move-exception p0

    .line 22131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 840
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1513
    const-string v0, "\\."

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1518
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1519
    move v0, v2

    :goto_0
    array-length v1, p0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1520
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1521
    if-eqz v1, :cond_2

    .line 1522
    if-lez v1, :cond_1

    return v3

    :cond_1
    return v2

    .line 1519
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_3
    array-length p0, p0

    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1526
    :catch_0
    move-exception p0

    .line 1527
    return v2

    .line 1514
    :cond_5
    :goto_1
    return v2
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2716
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "30212102dicudiab"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xa

    .line 2717
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2716
    invoke-static {v1, p0}, Ld/a/g/i/h;->a([B[B)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2718
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 2719
    return-object v0

    .line 2723
    :cond_0
    goto :goto_0

    .line 2721
    :catch_0
    move-exception p0

    .line 50574
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2724
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static e()Z
    .locals 1

    .line 2728
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2729
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 1285
    nop

    .line 1286
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1287
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1288
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1289
    return v0

    .line 1291
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1125
    const/4 v1, 0x0

    .line 1126
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 1127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_1

    .line 1128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    if-lez v1, :cond_2

    .line 1131
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1133
    :cond_2
    return-object p0

    .line 1134
    :catch_0
    move-exception p0

    .line 25131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1138
    const-string p0, ""

    return-object p0
.end method

.method public static f()Z
    .locals 5

    .line 2827
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2828
    :catch_0
    move-exception v1

    .line 50615
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2831
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    .line 1297
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 1298
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1299
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1300
    if-nez p0, :cond_0

    .line 1301
    return v0

    .line 1303
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1304
    :catch_0
    move-exception p0

    .line 29131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1306
    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 2862
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2863
    const-string v1, "1"

    sget v2, Ld/a/g/i/c;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2864
    const-string v1, "2"

    sget-object v2, Ld/a/g/i/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2865
    const-string v1, "3"

    sget-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2866
    const-string v1, "4"

    sget-object v2, Ld/a/g/i/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2867
    const-string v1, "5"

    sget-object v2, Ld/a/g/i/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2868
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2869
    :catch_0
    move-exception v0

    .line 50617
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2872
    const-string v0, ""

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1867
    nop

    .line 1869
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1870
    :try_start_1
    invoke-static {v1}, Ld/a/g/i/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1876
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1880
    goto :goto_0

    .line 1878
    :catch_0
    move-exception v0

    .line 1870
    :goto_0
    return-object p0

    .line 1871
    :catch_1
    move-exception p0

    goto :goto_1

    .line 1874
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1871
    :catch_2
    move-exception p0

    move-object v1, v0

    .line 35131
    :goto_1
    :try_start_3
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1875
    if-eqz v1, :cond_0

    .line 1876
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1878
    :catch_3
    move-exception p0

    .line 1882
    goto :goto_3

    .line 1880
    :cond_0
    :goto_2
    nop

    .line 1883
    :goto_3
    return-object v0

    .line 1874
    :catchall_1
    move-exception p0

    move-object v0, v1

    .line 1875
    :goto_4
    if-eqz v0, :cond_1

    .line 1876
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1878
    :catch_4
    move-exception v0

    goto :goto_6

    .line 1880
    :cond_1
    :goto_5
    nop

    :goto_6
    throw p0
.end method

.method public static g(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    .line 1312
    sget-object v0, Ld/a/g/i/c;->b:Ljava/lang/String;

    .line 1313
    sget-object v1, Ld/a/g/i/c;->c:Ljava/lang/String;

    .line 1314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1318
    new-array p0, v5, [Ljava/lang/String;

    aput-object v0, p0, v4

    aput-object v1, p0, v3

    return-object p0

    .line 1321
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "-"

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    :cond_1
    nop

    .line 1323
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    invoke-virtual {v2}, Ld/a/g/h/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1325
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1326
    if-eqz v2, :cond_2

    array-length v7, v2

    if-ne v7, v5, :cond_2

    .line 1332
    return-object v2

    .line 1336
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1337
    :cond_3
    nop

    .line 1338
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 29385
    iget-object p0, p0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "svi"

    const-string v7, ""

    invoke-interface {p0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1338
    nop

    .line 1339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1340
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1341
    if-eqz p0, :cond_4

    array-length v2, p0

    if-ne v2, v5, :cond_4

    .line 1347
    return-object p0

    .line 1351
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1355
    :cond_5
    sget-object v0, Ld/a/g/i/c;->e:Ljava/lang/String;

    .line 1356
    sget-object v1, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 1359
    :cond_6
    new-array p0, v5, [Ljava/lang/String;

    aput-object v0, p0, v4

    aput-object v1, p0, v3

    return-object p0
.end method

.method public static declared-synchronized h()V
    .locals 3

    const-class v0, Ld/a/g/i/c;

    monitor-enter v0

    .line 1065
    :try_start_0
    sget-object v1, Ld/a/g/i/c;->h:Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 1066
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Ld/a/g/i/c;->h:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    const-string v1, "com.baidu.sofire.face.api.FaceApi"

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1070
    if-eqz v1, :cond_0

    .line 1071
    sget-object v1, Ld/a/g/i/c;->h:Lorg/json/JSONArray;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    :cond_0
    monitor-exit v0

    return-void

    .line 1076
    :catch_0
    move-exception v1

    .line 1085
    :cond_1
    monitor-exit v0

    return-void

    .line 1064
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1083
    :catch_1
    move-exception v1

    .line 24131
    :try_start_2
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1086
    monitor-exit v0

    return-void

    .line 1064
    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static h(Landroid/content/Context;)V
    .locals 8

    .line 1491
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 1492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 29474
    iget-object v3, v0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    const-string v6, "se_ae_fd"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 29475
    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 29476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 29477
    invoke-virtual {v0}, Ld/a/g/h/a;->h()V

    .line 29479
    :cond_0
    nop

    .line 1492
    sub-long/2addr v1, v6

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1493
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1494
    invoke-virtual {v0}, Ld/a/g/h/a;->k()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ld/a/g/h/a;->c(I)V

    .line 1496
    invoke-virtual {v0}, Ld/a/g/h/a;->h()V

    .line 1497
    const-string v0, "1003119"

    invoke-static {p0, v0, v1, v2}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1498
    return-void

    .line 1499
    :cond_1
    invoke-virtual {v0}, Ld/a/g/h/a;->k()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ld/a/g/h/a;->c(I)V

    .line 1501
    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4

    .line 1533
    const/4 v0, 0x0

    :try_start_0
    sget v1, Ld/a/g/i/c;->p:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    .line 1535
    if-eqz p0, :cond_2

    .line 1536
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BuildConfig"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1538
    const-string v3, "DEBUG"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1540
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput v1, Ld/a/g/i/c;->p:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1542
    :catch_0
    move-exception v1

    .line 1543
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1544
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 1546
    sput v2, Ld/a/g/i/c;->p:I

    goto :goto_1

    .line 1548
    :cond_1
    sput v0, Ld/a/g/i/c;->p:I

    nop

    .line 1553
    :cond_2
    :goto_1
    sget p0, Ld/a/g/i/c;->p:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p0, v2, :cond_3

    .line 1554
    return v2

    .line 1559
    :cond_3
    goto :goto_2

    .line 1557
    :catch_1
    move-exception p0

    .line 30131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1560
    :goto_2
    return v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1565
    invoke-static {p0}, Ld/a/g/i/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.input"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK Self Check: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1570
    :try_start_0
    const-string v2, "fire"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    goto :goto_0

    .line 1571
    :catch_0
    move-exception v2

    .line 1572
    const-string v2, "LoadLibrary Error,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :goto_0
    const-string v2, "com.baidu.sofire.ac.F"

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1577
    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1580
    goto :goto_1

    .line 1578
    :catch_1
    move-exception v2

    .line 1579
    const-string v2, "Proguard Error,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sofire.ac.provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1587
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1590
    goto :goto_2

    .line 1588
    :catch_2
    move-exception v2

    .line 1589
    const-string v2, "Provider Error,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :goto_2
    invoke-static {p0, v3}, Ld/a/g/i/c;->a(Landroid/content/Context;Z)Z

    move-result v2

    .line 1593
    if-nez v2, :cond_0

    .line 1594
    const-string v2, "Service or Receiver Error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    :cond_0
    const-string v2, "5"

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    :try_start_3
    new-instance v2, Landroid/content/ComponentName;

    .line 1599
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/baidu/sofire/MyActivity;

    .line 1600
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1602
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1605
    goto :goto_3

    .line 1603
    :catch_3
    move-exception p0

    .line 1604
    const-string p0, "Activity error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gt p0, v1, :cond_2

    goto :goto_4

    .line 1608
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1611
    :cond_3
    :goto_4
    return-void
.end method

.method public static k(Landroid/content/Context;)I
    .locals 3

    .line 1615
    const/4 v0, -0x1

    :try_start_0
    const-string v1, "connectivity"

    .line 1616
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1617
    if-nez p0, :cond_0

    .line 1618
    return v0

    .line 1620
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1621
    if-eqz p0, :cond_3

    .line 1622
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_3

    .line 1623
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1624
    const/4 p0, 0x4

    return p0

    .line 1625
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1626
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 1660
    const/4 p0, 0x5

    return p0

    .line 1655
    :pswitch_0
    return v0

    .line 1653
    :pswitch_1
    return v0

    .line 1657
    :pswitch_2
    const/4 p0, 0x3

    return p0

    .line 1651
    :pswitch_3
    return v0

    .line 1637
    :pswitch_4
    return v2

    .line 1649
    :pswitch_5
    return v0

    .line 1647
    :pswitch_6
    return v0

    .line 1645
    :pswitch_7
    return v0

    .line 1635
    :pswitch_8
    return v2

    .line 1643
    :pswitch_9
    return v0

    .line 1641
    :pswitch_a
    return v0

    .line 1633
    :pswitch_b
    return v2

    .line 1639
    :pswitch_c
    return v0

    .line 1631
    :pswitch_d
    return v2

    .line 1629
    :pswitch_e
    return v2

    .line 1664
    :cond_2
    const/4 p0, -0x2

    return p0

    .line 1671
    :cond_3
    goto :goto_0

    .line 1669
    :catch_0
    move-exception p0

    .line 31131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 1672
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .line 1800
    nop

    .line 1801
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1802
    nop

    .line 1804
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    goto :goto_0

    .line 1805
    :catch_0
    move-exception p0

    .line 32131
    invoke-static {}, Ld/a/g/g;->b()V

    const/4 p0, 0x0

    .line 1809
    :goto_0
    if-nez p0, :cond_0

    .line 1810
    const/4 p0, 0x0

    return p0

    .line 1812
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1813
    const/4 p0, 0x2

    return p0

    .line 1814
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_2

    .line 1815
    return v1

    .line 1818
    :cond_2
    return v1
.end method

.method public static m(Landroid/content/Context;)V
    .locals 4

    .line 2306
    :try_start_0
    const-string v0, "tvshield"

    const-string v1, "sofire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    return-void

    .line 2309
    :cond_0
    new-instance v0, Lcom/baidu/sofire/MyReceiver;

    invoke-direct {v0}, Lcom/baidu/sofire/MyReceiver;-><init>()V

    .line 2310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2311
    const-string v2, "com.baidu.action.SOFIRE.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2312
    const-string v2, "com.baidu.category.SOFIRE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2313
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".permission.sofire.RECEIVE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2316
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2319
    return-void

    .line 2317
    :catch_0
    move-exception p0

    .line 50143
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2321
    return-void
.end method

.method public static n(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 19

    .line 2325
    move-object/from16 v1, p0

    const-string v2, "9"

    const-string v3, "8"

    const-string v4, "5"

    const-string v5, "4"

    const-string v6, "3"

    const-string v7, "1"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld/a/g/i/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "p/5/aio"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2329
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2330
    invoke-static/range {p0 .. p0}, Ld/a/g/i/c;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_13

    .line 2331
    const-string v11, "0"

    if-eqz v0, :cond_0

    .line 2332
    :try_start_1
    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2334
    :cond_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2342
    invoke-static/range {p0 .. p0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2344
    const-string v0, "3.5.9.4"

    invoke-virtual {v12, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2345
    nop

    .line 2346
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2347
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_13

    .line 2349
    const/16 v0, 0x40

    :try_start_2
    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2352
    goto :goto_0

    .line 2350
    :catch_0
    move-exception v0

    .line 50145
    :try_start_3
    invoke-static {}, Ld/a/g/g;->b()V

    const/4 v0, 0x0

    .line 2353
    :goto_0
    if-eqz v0, :cond_2b

    .line 2354
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 2355
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2354
    invoke-static {v14}, Ld/a/g/i/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2356
    invoke-virtual {v12, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2357
    const-string v14, "6"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2358
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2359
    invoke-static {v0, v13}, Ld/a/g/i/c;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_13

    .line 2360
    const-string v14, "7"

    const/4 v15, 0x0

    if-eqz v13, :cond_2

    .line 2361
    :try_start_4
    invoke-interface {v13}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_13

    .line 2362
    const-string v8, ""

    if-eqz v13, :cond_1

    .line 2364
    :try_start_5
    invoke-static {v13, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 2365
    const-string v15, "\n"

    .line 2366
    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "\r"

    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ld/a/g/i/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2367
    invoke-virtual {v12, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2368
    goto :goto_1

    .line 2369
    :cond_1
    invoke-virtual {v12, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2373
    :cond_2
    :goto_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2374
    nop

    .line 2378
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 2379
    nop

    .line 50147
    iget-object v0, v0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v8, "opi"

    const/4 v13, 0x0

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2379
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2380
    invoke-virtual {v10, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2381
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2385
    nop

    .line 2386
    const/4 v15, 0x1

    invoke-static {v1, v9, v0, v15, v15}, Ld/a/g/i/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 2390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2391
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_13

    .line 2393
    nop

    .line 50148
    :try_start_6
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 50149
    nop

    .line 50150
    nop

    .line 50179
    sget-object v9, Ld/a/g/i/c;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    const-string v10, "-"

    const/4 v12, 0x2

    if-nez v9, :cond_3

    :try_start_7
    sget-object v9, Ld/a/g/i/c;->c:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 50180
    new-array v9, v12, [Ljava/lang/String;

    sget-object v13, Ld/a/g/i/c;->b:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v9, v16

    sget-object v13, Ld/a/g/i/c;->c:Ljava/lang/String;

    aput-object v13, v9, v15

    goto :goto_3

    .line 50182
    :cond_3
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v9

    invoke-virtual {v9}, Ld/a/g/h/a;->b()Ljava/lang/String;

    move-result-object v9

    .line 50183
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 50184
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 50185
    if-eqz v9, :cond_5

    array-length v13, v9

    if-eq v13, v12, :cond_4

    goto :goto_2

    .line 50188
    :cond_4
    const/4 v13, 0x0

    aget-object v17, v9, v13

    sput-object v17, Ld/a/g/i/c;->b:Ljava/lang/String;

    .line 50189
    aget-object v13, v9, v15

    sput-object v13, Ld/a/g/i/c;->c:Ljava/lang/String;

    .line 50190
    goto :goto_3

    .line 50186
    :cond_5
    :goto_2
    const/4 v9, 0x0

    new-array v13, v9, [Ljava/lang/String;

    move-object v9, v13

    goto :goto_3

    .line 50192
    :cond_6
    const/4 v9, 0x0

    new-array v13, v9, [Ljava/lang/String;

    move-object v9, v13

    .line 50150
    :goto_3
    nop

    .line 50151
    nop

    .line 50193
    iget-object v0, v0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v13, "appinv_ky"

    invoke-interface {v0, v13, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 50151
    if-ne v0, v15, :cond_8

    .line 50152
    array-length v0, v9

    if-ne v0, v12, :cond_7

    const/4 v12, 0x0

    aget-object v0, v9, v12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v9, v15

    .line 50153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50154
    :cond_7
    move v0, v15

    goto :goto_4

    .line 50157
    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_e

    .line 50161
    const-string v0, "2"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50165
    if-nez v0, :cond_9

    .line 50166
    move-object/from16 v18, v2

    goto/16 :goto_9

    .line 50168
    :cond_9
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50169
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50170
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 50171
    invoke-static/range {p0 .. p0}, Ld/a/g/d/f;->a(Landroid/content/Context;)Ld/a/g/d/f;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 50172
    nop

    .line 50194
    :try_start_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v18, v2

    goto :goto_5

    .line 50197
    :cond_a
    sget-object v13, Ld/a/g/i/c;->e:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    sget-object v13, Ld/a/g/i/c;->f:Ljava/lang/String;

    .line 50198
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 50199
    move-object/from16 v18, v2

    goto :goto_9

    .line 50201
    :cond_b
    nop

    .line 50207
    sput-object v9, Ld/a/g/i/c;->b:Ljava/lang/String;

    .line 50208
    sput-object v0, Ld/a/g/i/c;->c:Ljava/lang/String;

    .line 50202
    iget-object v12, v12, Ld/a/g/d/f;->f:Ld/a/g/h/a;

    .line 50210
    iget-object v13, v12, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v15, "svi_n"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v18, v2

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50211
    iget-object v0, v12, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 50205
    goto :goto_9

    .line 50203
    :catch_1
    move-exception v0

    goto :goto_6

    .line 50194
    :cond_c
    move-object/from16 v18, v2

    .line 50195
    :goto_5
    goto :goto_9

    .line 50203
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    .line 50213
    :goto_6
    :try_start_a
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 50175
    :catch_3
    move-exception v0

    goto :goto_8

    .line 50170
    :cond_d
    move-object/from16 v18, v2

    goto :goto_7

    .line 50157
    :cond_e
    move-object/from16 v18, v2

    .line 50177
    :goto_7
    goto :goto_9

    .line 50175
    :catch_4
    move-exception v0

    move-object/from16 v18, v2

    .line 50215
    :goto_8
    :try_start_b
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_13

    .line 2394
    :goto_9
    nop

    .line 50217
    :try_start_c
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50221
    const-string v2, "c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50223
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 50224
    const-string v9, "n"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50225
    if-lez v9, :cond_f

    .line 50226
    nop

    .line 50269
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_ty"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50270
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50229
    :cond_f
    const-string v9, "i"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50230
    if-lez v9, :cond_10

    .line 50231
    nop

    .line 50272
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_hr"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50273
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50233
    :cond_10
    const-string v9, "i2"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50234
    if-lez v9, :cond_11

    .line 50235
    nop

    .line 50275
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_hr_bc"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50276
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50237
    :cond_11
    const-string v9, "w"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50238
    if-lez v9, :cond_12

    .line 50239
    nop

    .line 50278
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_wt"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50279
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50242
    :cond_12
    const-string v9, "s1"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50243
    if-lez v9, :cond_13

    .line 50244
    const-string v9, "s1"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50281
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_one_lt"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50282
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50247
    :cond_13
    const-string v9, "s2"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50248
    if-lez v9, :cond_14

    .line 50249
    nop

    .line 50284
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_dy_lt"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50285
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50252
    :cond_14
    const-string v9, "t"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50253
    if-lez v9, :cond_15

    .line 50254
    nop

    .line 50287
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "re_net_over"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50288
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50256
    :cond_15
    const-string v9, "l1"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50257
    if-lez v9, :cond_16

    .line 50258
    nop

    .line 50290
    iget-object v10, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v12, "up_nu_co"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50291
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50260
    :cond_16
    const-string v9, "l2"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50261
    if-lez v0, :cond_17

    .line 50262
    nop

    .line 50293
    iget-object v9, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    const-string v10, "up_nu_li"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50294
    iget-object v0, v2, Ld/a/g/h/a;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 50266
    :cond_17
    goto :goto_a

    .line 50264
    :catch_5
    move-exception v0

    .line 50296
    :try_start_d
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_13

    .line 2395
    :goto_a
    nop

    .line 50299
    :try_start_e
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_12

    .line 50301
    :try_start_f
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 50303
    new-instance v9, Ljava/lang/String;

    const-string v10, "30212102dicudiab"

    .line 50305
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v12, "UTF-8"

    .line 50306
    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 50305
    const/4 v12, 0x1

    invoke-static {v10, v0, v12}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v0

    const/16 v10, 0xa

    .line 50304
    invoke-static {v0, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string v10, "UTF-8"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 50308
    nop

    .line 50412
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v10, "gli"

    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50413
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 50312
    :cond_18
    goto :goto_b

    .line 50310
    :catch_6
    move-exception v0

    .line 50415
    :try_start_10
    invoke-static {}, Ld/a/g/g;->b()V

    .line 50313
    :goto_b
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50317
    if-nez v0, :cond_19

    .line 50318
    goto/16 :goto_21

    .line 50320
    :cond_19
    const-string v9, "app"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50325
    nop

    .line 50417
    iget-object v10, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v12, "appinv_t"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50418
    iget-object v9, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50327
    const-string v9, "js"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 50332
    nop

    .line 50420
    iget-object v10, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v12, "appinv_js"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50421
    iget-object v9, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50334
    const-string v9, "a"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50339
    nop

    .line 50423
    iget-object v10, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v12, "appinv_ky"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50424
    iget-object v9, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50340
    const-string v9, "pi"

    const/16 v10, 0x168

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50346
    nop

    .line 50426
    iget-object v10, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v12, "appplg_te"

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50427
    iget-object v9, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50347
    const-string v9, "ti"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50348
    if-lez v9, :cond_1b

    .line 50349
    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    move-object v15, v11

    int-to-double v10, v9

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    .line 50350
    if-lez v9, :cond_1a

    .line 50351
    invoke-virtual {v2, v9}, Ld/a/g/h/a;->e(I)V

    goto :goto_c

    .line 50353
    :cond_1a
    const/16 v9, 0x18

    invoke-virtual {v2, v9}, Ld/a/g/h/a;->e(I)V

    goto :goto_c

    .line 50348
    :cond_1b
    move-object v15, v11

    .line 50356
    :goto_c
    const-string v9, "alm"

    const/16 v10, 0x18

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50357
    if-lez v9, :cond_1c

    .line 50358
    invoke-virtual {v2, v9}, Ld/a/g/h/a;->d(I)V

    goto :goto_d

    .line 50360
    :cond_1c
    const/16 v9, 0x18

    invoke-virtual {v2, v9}, Ld/a/g/h/a;->d(I)V

    .line 50363
    :goto_d
    move-object v9, v15

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50364
    if-lez v9, :cond_1d

    .line 50365
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ld/a/g/h/a;->c(Z)V

    goto :goto_e

    .line 50367
    :cond_1d
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ld/a/g/h/a;->c(Z)V

    .line 50370
    :goto_e
    const/4 v9, -0x1

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50371
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 50372
    nop

    .line 50429
    iget-object v9, v2, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    const-string v10, "se_fg_s"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50373
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ld/a/g/h/a;->b(Z)V

    .line 50377
    const/4 v13, 0x0

    goto :goto_f

    .line 50378
    :cond_1e
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ld/a/g/h/a;->b(Z)V

    .line 50387
    :goto_f
    const-string v9, "mp"

    invoke-virtual {v0, v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50388
    const-string v10, "ampf"

    invoke-static {v1, v10, v9}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50390
    const-string v9, "tc"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 50392
    if-lez v9, :cond_1f

    const/16 v10, 0x14

    if-gt v9, v10, :cond_1f

    .line 50393
    nop

    .line 50430
    const/16 v10, 0x14

    if-gt v9, v10, :cond_1f

    .line 50433
    iget-object v10, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v11, "s_t_p_c_s"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50434
    iget-object v2, v2, Ld/a/g/h/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50397
    :cond_1f
    const-string v2, "pc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 50398
    if-eqz v2, :cond_20

    .line 50399
    invoke-static {v1, v2}, Ld/a/g/i/t;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 50402
    :cond_20
    const-string v2, "pr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_12

    .line 50403
    if-eqz v2, :cond_29

    .line 50404
    nop

    .line 50436
    nop

    .line 50439
    nop

    .line 50441
    nop

    .line 50444
    :try_start_11
    invoke-static/range {p0 .. p0}, Ld/a/g/j/a;->a(Landroid/content/Context;)Ld/a/g/j/a;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 50446
    :try_start_12
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50447
    const/4 v7, 0x1

    if-ne v0, v7, :cond_21

    const/4 v0, 0x1

    goto :goto_10

    :cond_21
    move v0, v13

    .line 50517
    :goto_10
    iget-object v7, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v9, "lt_sdcf"

    invoke-interface {v7, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50518
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_11

    .line 50450
    goto :goto_11

    .line 50448
    :catch_7
    move-exception v0

    .line 50520
    :try_start_13
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_11

    .line 50452
    :goto_11
    :try_start_14
    const-string v0, "2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50453
    const/4 v7, 0x1

    if-ne v0, v7, :cond_22

    const/4 v0, 0x1

    goto :goto_12

    :cond_22
    move v0, v13

    .line 50522
    :goto_12
    iget-object v7, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v9, "lt_sucf"

    invoke-interface {v7, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50523
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_11

    .line 50456
    goto :goto_13

    .line 50454
    :catch_8
    move-exception v0

    .line 50525
    :try_start_15
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_11

    .line 50458
    :goto_13
    :try_start_16
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50459
    const/4 v6, 0x1

    if-ne v0, v6, :cond_23

    const/4 v0, 0x1

    goto :goto_14

    :cond_23
    move v0, v13

    .line 50527
    :goto_14
    iget-object v6, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v7, "lt_sbff"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50528
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_11

    .line 50462
    goto :goto_15

    .line 50460
    :catch_9
    move-exception v0

    .line 50530
    :try_start_17
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_11

    .line 50465
    :goto_15
    :try_start_18
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50466
    const/4 v5, 0x1

    if-ne v0, v5, :cond_24

    const/4 v0, 0x1

    goto :goto_16

    :cond_24
    move v0, v13

    .line 50532
    :goto_16
    iget-object v5, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v6, "lt_sppf"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50533
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11

    .line 50469
    goto :goto_17

    .line 50467
    :catch_a
    move-exception v0

    .line 50535
    :try_start_19
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11

    .line 50471
    :goto_17
    :try_start_1a
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50472
    const/4 v5, 0x1

    if-ne v0, v5, :cond_25

    const/4 v0, 0x1

    goto :goto_18

    :cond_25
    move v0, v13

    :goto_18
    invoke-virtual {v1, v0}, Ld/a/g/j/a;->a(Z)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_11

    .line 50475
    goto :goto_19

    .line 50473
    :catch_b
    move-exception v0

    .line 50537
    :try_start_1b
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_11

    .line 50484
    :goto_19
    :try_start_1c
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50485
    const/4 v4, 0x1

    if-ne v0, v4, :cond_26

    const/4 v0, 0x1

    goto :goto_1a

    :cond_26
    move v0, v13

    :goto_1a
    invoke-virtual {v1, v0}, Ld/a/g/j/a;->a(Z)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_11

    .line 50488
    goto :goto_1b

    .line 50486
    :catch_c
    move-exception v0

    .line 50539
    :try_start_1d
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_11

    .line 50490
    :goto_1b
    :try_start_1e
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 50491
    nop

    .line 50541
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v6, "lt_sfii"

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50542
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11

    .line 50494
    goto :goto_1c

    .line 50492
    :catch_d
    move-exception v0

    .line 50544
    :try_start_1f
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .line 50496
    :goto_1c
    :try_start_20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50497
    const/4 v3, 0x1

    if-ne v0, v3, :cond_27

    const/4 v0, 0x1

    goto :goto_1d

    :cond_27
    move v0, v13

    .line 50546
    :goto_1d
    iget-object v3, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "lt_sfff"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50547
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 50500
    goto :goto_1e

    .line 50498
    :catch_e
    move-exception v0

    .line 50549
    :try_start_21
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 50502
    :goto_1e
    move-object/from16 v3, v18

    :try_start_22
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50503
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50551
    iget-object v3, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "lt_sha"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50552
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 50506
    goto :goto_1f

    .line 50504
    :catch_f
    move-exception v0

    .line 50554
    :try_start_23
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 50508
    :goto_1f
    :try_start_24
    const-string v0, "10"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50509
    const/4 v12, 0x1

    if-ne v0, v12, :cond_28

    goto :goto_20

    :cond_28
    move v12, v13

    .line 50556
    :goto_20
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "lt_sbwnp"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50557
    iget-object v0, v1, Ld/a/g/j/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 50512
    goto :goto_21

    .line 50510
    :catch_10
    move-exception v0

    .line 50559
    :try_start_25
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 50515
    goto :goto_21

    .line 50513
    :catch_11
    move-exception v0

    .line 50561
    :try_start_26
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 50409
    :cond_29
    goto :goto_21

    .line 50407
    :catch_12
    move-exception v0

    .line 50563
    :try_start_27
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2396
    :goto_21
    return-object v8

    .line 2399
    :cond_2a
    const/4 v1, 0x0

    return-object v1

    .line 2375
    :cond_2b
    const/4 v0, 0x6

    sput v0, Ld/a/g/i/c;->d:I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 2376
    const/4 v1, 0x0

    return-object v1

    .line 2400
    :catch_13
    move-exception v0

    .line 50565
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2403
    const/4 v1, 0x0

    return-object v1
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2767
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2768
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2769
    if-eqz v0, :cond_0

    .line 2770
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2771
    if-eqz p0, :cond_0

    .line 2772
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "primaryCpuAbi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2773
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2774
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2775
    return-object p0

    .line 2781
    :cond_0
    goto :goto_0

    .line 2779
    :catch_0
    move-exception p0

    .line 50588
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2782
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 3

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ld/a/g/i/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 232
    sget-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ld/a/g/i/c;->b(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    .line 236
    :cond_0
    sget-object v2, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    return v0

    .line 239
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 242
    sget-object p0, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 243
    const/4 p0, 0x1

    return p0

    .line 245
    :cond_2
    const/4 p0, 0x2

    return p0

    .line 251
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ld/a/g/i/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    .line 252
    const/4 p0, 0x3

    return p0

    .line 254
    :cond_4
    const/4 p0, 0x4

    return p0

    .line 257
    :catch_0
    move-exception p0

    .line 6131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 260
    return v0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 309
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-static {p0}, Ld/a/g/i/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0"

    if-nez v2, :cond_1

    .line 314
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 315
    rsub-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_1

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    nop

    :goto_0
    if-lez v2, :cond_0

    .line 318
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 320
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_1
    invoke-static {p0}, Ld/a/g/i/c;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 324
    const/4 v2, 0x0

    aget-object p0, p0, v2

    .line 325
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 331
    rsub-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_3

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    nop

    :goto_1
    if-lez v2, :cond_2

    .line 334
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 336
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 339
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 341
    :catch_0
    move-exception p0

    .line 8131
    invoke-static {}, Ld/a/g/g;->b()V

    .line 344
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized r(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 16

    const-class v1, Ld/a/g/i/c;

    monitor-enter v1

    .line 2600
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v0

    .line 2601
    const-string v3, "sofire_local.cfg"

    const-string v4, "local"

    .line 2602
    move-object/from16 v5, p0

    invoke-static {v5, v3, v4}, Ld/a/g/i/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2604
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 2605
    monitor-exit v1

    return-object v2

    .line 2610
    :cond_0
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2611
    sget-object v3, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 2612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    goto :goto_0

    .line 2614
    :cond_1
    sget-object v3, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2619
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2620
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 2622
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2623
    const-string v10, "pkgname"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2624
    const-string v11, "version"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2625
    nop

    .line 2626
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 2627
    if-lez v12, :cond_2

    .line 2628
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2630
    :cond_2
    const-string v13, "md5"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2631
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 2632
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    if-lez v12, :cond_6

    .line 2635
    nop

    .line 50571
    iget-object v13, v0, Ld/a/g/h/a;->b:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "g_l_l_p_v_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2635
    nop

    .line 2642
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_3

    .line 2643
    invoke-static {v11, v13}, Ld/a/g/i/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2648
    move v13, v15

    goto :goto_2

    .line 2654
    :cond_3
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_4

    .line 2655
    invoke-static/range {p0 .. p0}, Ld/a/g/a/a;->a(Landroid/content/Context;)Ld/a/g/a/a;

    move-result-object v14

    .line 2656
    invoke-virtual {v14, v12}, Ld/a/g/a/a;->a(I)Lcom/baidu/sofire/core/ApkInfo;

    move-result-object v14

    .line 2661
    if-eqz v14, :cond_4

    iget-object v7, v14, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 2662
    invoke-static {v11, v7}, Ld/a/g/i/c;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, v14, Lcom/baidu/sofire/core/ApkInfo;->initStatus:I

    if-ne v7, v15, :cond_4

    .line 2668
    goto :goto_3

    .line 2672
    :cond_4
    move v15, v13

    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2673
    new-instance v9, Lcom/baidu/sofire/core/ApkInfo;

    invoke-direct {v9}, Lcom/baidu/sofire/core/ApkInfo;-><init>()V

    .line 2674
    iput-object v10, v9, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    .line 2675
    iput-object v11, v9, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    .line 2676
    iput v12, v9, Lcom/baidu/sofire/core/ApkInfo;->key:I

    .line 2677
    iput-object v7, v9, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    .line 2680
    if-eqz v15, :cond_5

    .line 2681
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2683
    :cond_5
    sget-object v7, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2686
    :cond_7
    invoke-virtual {v0, v6}, Ld/a/g/h/a;->a(Ljava/util/List;)V

    .line 2687
    sget-object v0, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_8

    .line 2688
    monitor-exit v1

    return-object v2

    .line 2690
    :cond_8
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2691
    sget-object v4, Ld/a/g/i/c;->q:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sofire/core/ApkInfo;

    .line 2692
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2693
    const-string v7, "pk"

    iget-object v8, v5, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2694
    const-string v7, "m"

    iget-object v8, v5, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2695
    const-string v7, "l"

    iget v8, v5, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2696
    const-string v7, "v"

    iget-object v5, v5, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2697
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2698
    goto :goto_5

    .line 2699
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sofire/core/ApkInfo;

    .line 2700
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2701
    const-string v6, "pk"

    iget-object v7, v4, Lcom/baidu/sofire/core/ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2702
    const-string v6, "m"

    iget-object v7, v4, Lcom/baidu/sofire/core/ApkInfo;->apkMD5:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2703
    const-string v6, "l"

    iget v7, v4, Lcom/baidu/sofire/core/ApkInfo;->key:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2704
    const-string v6, "v"

    iget-object v4, v4, Lcom/baidu/sofire/core/ApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2705
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2706
    goto :goto_6

    .line 2707
    :cond_a
    monitor-exit v1

    return-object v0

    .line 2599
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 2708
    :catch_0
    move-exception v0

    .line 50572
    :try_start_3
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2711
    monitor-exit v1

    return-object v2

    .line 2599
    :goto_7
    monitor-exit v1

    throw v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2786
    nop

    .line 2788
    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/common/util/DeviceId;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    goto :goto_0

    .line 2789
    :catch_0
    move-exception p0

    .line 50590
    invoke-static {}, Ld/a/g/g;->b()V

    const-string p0, ""

    .line 2792
    :goto_0
    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 2796
    const-string v0, "UTF-8"

    const-string v1, ""

    .line 2798
    :try_start_0
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v2

    .line 2800
    invoke-virtual {v2}, Ld/a/g/h/a;->n()Ljava/lang/String;

    move-result-object v3

    .line 2801
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2802
    nop

    .line 50592
    iget-object v3, v2, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v4, "xygls"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2802
    nop

    .line 2803
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v4, :cond_1

    .line 2805
    :try_start_1
    invoke-static {p0}, Ld/a/g/i/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2806
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_0

    .line 2807
    move-object p0, v1

    goto :goto_1

    .line 2809
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p0, v1

    .line 50593
    :goto_0
    :try_start_3
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2811
    :cond_0
    :goto_1
    goto :goto_2

    .line 2819
    :catch_2
    move-exception v0

    goto :goto_4

    .line 2813
    :cond_1
    move-object p0, v3

    .line 2815
    :goto_2
    nop

    .line 50595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const-string v4, "xyglsn"

    if-eqz v3, :cond_2

    .line 50596
    :try_start_4
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50597
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 50598
    goto :goto_3

    .line 50602
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const-string v3, "MzAyMTIxMDJkaWN1ZGlhYg=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 50603
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    .line 50602
    invoke-static {v3, v5, v6}, Ld/a/g/i/h;->a([B[BZ)[B

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v3, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 50607
    nop

    .line 50608
    :try_start_6
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50609
    iget-object v0, v2, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2816
    goto :goto_3

    .line 50604
    :catch_3
    move-exception v0

    .line 50611
    invoke-static {}, Ld/a/g/g;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 50606
    nop

    .line 2822
    :goto_3
    move-object v3, p0

    goto :goto_6

    .line 2819
    :goto_4
    move-object v3, p0

    goto :goto_5

    .line 2817
    :cond_3
    nop

    .line 2821
    goto :goto_6

    .line 2819
    :catch_4
    move-exception p0

    move-object v3, v1

    .line 50613
    :goto_5
    invoke-static {}, Ld/a/g/g;->b()V

    .line 2822
    :goto_6
    return-object v3
.end method
