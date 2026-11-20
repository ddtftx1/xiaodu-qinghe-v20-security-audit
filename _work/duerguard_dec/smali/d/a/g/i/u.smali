.class public final Ld/a/g/i/u;
.super Ljava/lang/Object;
.source "PrivacyPolicyUtil.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, -0x1

    sput v0, Ld/a/g/i/u;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .line 20
    if-nez p0, :cond_0

    .line 21
    return-void

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    sput v0, Ld/a/g/i/u;->a:I

    .line 26
    xor-int/lit8 v0, p1, 0x1

    const-string v1, ".ffnpp"

    invoke-static {p0, v1, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 27
    nop

    .line 2078
    nop

    .line 2081
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object p0

    .line 2082
    nop

    .line 2262
    iget-object v0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "s_a_pl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2263
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2264
    iget-object p0, p0, Ld/a/g/h/a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .line 38
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 39
    return v0

    .line 41
    :cond_0
    invoke-static {p0}, Ld/a/g/i/c;->a(Landroid/content/Context;)I

    move-result v1

    .line 42
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 43
    sget v3, Ld/a/g/i/u;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 45
    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    return v0

    .line 48
    :cond_2
    invoke-static {p0}, Ld/a/g/h/a;->a(Landroid/content/Context;)Ld/a/g/h/a;

    move-result-object v3

    .line 3258
    iget-object v3, v3, Ld/a/g/h/a;->d:Landroid/content/SharedPreferences;

    const-string v4, "s_a_pl"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 49
    nop

    .line 51
    const-string v4, ".ffnpp"

    invoke-static {p0, v4}, Ld/a/g/i/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 52
    xor-int/2addr v5, v2

    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 54
    if-ne v1, v2, :cond_3

    .line 55
    invoke-static {p0, v4, v0}, Ld/a/g/i/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    move v5, v2

    .line 61
    :cond_3
    if-ne v1, v2, :cond_5

    .line 62
    if-eqz v5, :cond_4

    .line 63
    sput v2, Ld/a/g/i/u;->a:I

    goto :goto_0

    .line 65
    :cond_4
    const/4 p0, 0x2

    sput p0, Ld/a/g/i/u;->a:I

    .line 69
    :cond_5
    :goto_0
    return v5
.end method
