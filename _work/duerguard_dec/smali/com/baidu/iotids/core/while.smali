.class public Lcom/baidu/iotids/core/while;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/iotids/core/throw;
    }
.end annotation


# static fields
.field public static case:Lcom/baidu/iotids/core/throw; = null

.field public static final for:Z = false

.field public static final if:Ljava/lang/String; = "RiskAppDetector"

.field public static final new:Ljava/lang/String; = "infected"

.field public static try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/iotids/core/while;->try:Ljava/util/List;

    sget-object v0, Lcom/baidu/iotids/core/throw;->a:Lcom/baidu/iotids/core/throw;

    sput-object v0, Lcom/baidu/iotids/core/while;->case:Lcom/baidu/iotids/core/throw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/baidu/iotids/utils/Utils;->new(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    const-string v0, "RiskAppDetector"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ld/b/a/p;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object p0

    const-string v2, "status"

    invoke-virtual {p0, v2}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "missing result status"

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v2

    invoke-virtual {v2}, Ld/b/a/p;->a()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid result status: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v2, "result"

    invoke-virtual {p0, v2}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v3

    invoke-virtual {v3}, Ld/b/a/p;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object p0

    const-string v2, "check_result"

    invoke-virtual {p0, v2}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Ld/b/a/p;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p0, "invalid check result"

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static for()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/baidu/iotids/core/while;->new()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/iotids/core/while;->try:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static for(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "RiskAppDetector"

    const-string v3, "__________________________________________"

    invoke-static {v2, v3}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/iotids/utils/Utils;->try(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/baidu/iotids/a/else;->if(Ljava/lang/String;[B)[B

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/baidu/iotids/core/while;->for([B)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "-------------------------------------------"

    invoke-static {v2, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static for(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/baidu/iotids/core/throw;->b:Lcom/baidu/iotids/core/throw;

    sput-object v0, Lcom/baidu/iotids/core/while;->case:Lcom/baidu/iotids/core/throw;

    invoke-static {p0}, Lcom/baidu/iotids/core/while;->if(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "SHA-256"

    invoke-static {v3, v4}, Lcom/baidu/iotids/utils/Utils;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld/a/c/b/c;

    invoke-direct {v1, p0}, Ld/a/c/b/c;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic if(Lcom/baidu/iotids/core/throw;)Lcom/baidu/iotids/core/throw;
    .locals 0

    sput-object p0, Lcom/baidu/iotids/core/while;->case:Lcom/baidu/iotids/core/throw;

    return-object p0
.end method

.method public static if([B)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/iotids/utils/Utils;->new(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "RiskAppDetector"

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ld/b/a/p;->h()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object p0

    const-string v3, "status"

    invoke-virtual {p0, v3}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "missing result status"

    invoke-static {v2, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, v3}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v3

    invoke-virtual {v3}, Ld/b/a/p;->a()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid result status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v1, "result"

    invoke-virtual {p0, v1}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v2

    invoke-virtual {v2}, Ld/b/a/p;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Ld/b/a/p;->c()Ld/b/a/r;

    move-result-object p0

    invoke-virtual {p0, v1}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v2

    invoke-virtual {v2}, Ld/b/a/p;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Ld/b/a/p;->b()Ld/b/a/m;

    move-result-object p0

    invoke-virtual {p0}, Ld/b/a/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/b/a/p;

    invoke-virtual {v1}, Ld/b/a/p;->h()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    check-cast v1, Ld/b/a/r;

    const-string v2, "file_hash"

    invoke-virtual {v1, v2}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "check_result"

    invoke-virtual {v1, v3}, Ld/b/a/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v2}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v2

    invoke-virtual {v2}, Ld/b/a/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v4

    invoke-virtual {v4}, Ld/b/a/p;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ld/b/a/r;->a(Ljava/lang/String;)Ld/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Ld/b/a/p;->a()I

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic if()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/baidu/iotids/core/while;->try:Ljava/util/List;

    return-object v0
.end method

.method public static if(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "RiskAppDetector"

    const-string v1, "getAppList!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed package :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source dir : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hash : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "SHA-256"

    invoke-static {v5, v6}, Lcom/baidu/iotids/utils/Utils;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch Activity :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/iotids/for;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic if(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/baidu/iotids/core/while;->for(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld/b/a/r;

    invoke-direct {v0}, Ld/b/a/r;-><init>()V

    new-instance v1, Ld/b/a/m;

    invoke-direct {v1}, Ld/b/a/m;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld/b/a/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "hash_list"

    invoke-virtual {v0, p0, v1}, Ld/b/a/r;->a(Ljava/lang/String;Ld/b/a/p;)V

    invoke-virtual {v0}, Ld/b/a/p;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/iotids/a/else;->for(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "RiskAppDetector"

    const-string v0, "failed to scan hash list"

    invoke-static {p0, v0}, Lcom/baidu/iotids/for;->for(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/baidu/iotids/core/while;->if([B)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static new()Z
    .locals 2

    sget-object v0, Lcom/baidu/iotids/core/while;->case:Lcom/baidu/iotids/core/throw;

    sget-object v1, Lcom/baidu/iotids/core/throw;->c:Lcom/baidu/iotids/core/throw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
