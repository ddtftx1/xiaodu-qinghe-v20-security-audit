.class public final Lcom/baidu/model/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field public static final GSON:Ld/b/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ld/b/a/k;

    invoke-direct {v0}, Ld/b/a/k;-><init>()V

    .line 16
    invoke-virtual {v0}, Ld/b/a/k;->d()Ld/b/a/k;

    .line 17
    invoke-virtual {v0}, Ld/b/a/k;->a()Ld/b/a/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/model/JsonParser;->GSON:Ld/b/a/j;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static parseResult(Ljava/lang/String;)Lcom/baidu/model/Result;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ld/a/e/a;

    invoke-direct {v0}, Ld/a/e/a;-><init>()V

    .line 25
    invoke-virtual {v0}, Ld/b/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 26
    .local v0, "type":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/baidu/model/JsonParser;->GSON:Ld/b/a/j;

    invoke-virtual {v1, p0, v0}, Ld/b/a/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/model/Result;

    return-object v1
.end method

.method public static parseResult(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/baidu/model/Result;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/baidu/model/Result<",
            "TT;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/baidu/model/JsonParser;->GSON:Ld/b/a/j;

    invoke-virtual {v0, p0, p1}, Ld/b/a/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/model/Result;

    return-object v0
.end method

.method public static result2json(Lcom/baidu/model/Result;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/model/Result<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 34
    .local p0, "r":Lcom/baidu/model/Result;, "Lcom/baidu/model/Result<TT;>;"
    sget-object v0, Lcom/baidu/model/JsonParser;->GSON:Ld/b/a/j;

    invoke-virtual {v0, p0, p1}, Ld/b/a/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
