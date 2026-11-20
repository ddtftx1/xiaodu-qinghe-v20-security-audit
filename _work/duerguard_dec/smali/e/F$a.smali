.class public Le/F$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le/y;

.field public b:Ljava/lang/String;

.field public c:Le/x$a;

.field public d:Le/H;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/F$a;->e:Ljava/util/Map;

    .line 129
    const-string v0, "GET"

    iput-object v0, p0, Le/F$a;->b:Ljava/lang/String;

    .line 130
    new-instance v0, Le/x$a;

    invoke-direct {v0}, Le/x$a;-><init>()V

    iput-object v0, p0, Le/F$a;->c:Le/x$a;

    .line 131
    return-void
.end method

.method public constructor <init>(Le/F;)V
    .locals 2
    .param p1, "request"    # Le/F;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/F$a;->e:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Le/F;->a:Le/y;

    iput-object v0, p0, Le/F$a;->a:Le/y;

    .line 135
    iget-object v0, p1, Le/F;->b:Ljava/lang/String;

    iput-object v0, p0, Le/F$a;->b:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Le/F;->d:Le/H;

    iput-object v0, p0, Le/F$a;->d:Le/H;

    .line 137
    iget-object v0, p1, Le/F;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Le/F;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Le/F$a;->e:Ljava/util/Map;

    .line 140
    iget-object v0, p1, Le/F;->c:Le/x;

    invoke-virtual {v0}, Le/x;->a()Le/x$a;

    move-result-object v0

    iput-object v0, p0, Le/F$a;->c:Le/x$a;

    .line 141
    return-void
.end method


# virtual methods
.method public a(Le/H;)Le/F$a;
    .locals 1
    .param p1, "body"    # Le/H;

    .line 232
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Le/F$a;->a(Ljava/lang/String;Le/H;)Le/F$a;

    return-object p0
.end method

.method public a(Le/x;)Le/F$a;
    .locals 1
    .param p1, "headers"    # Le/x;

    .line 208
    invoke-virtual {p1}, Le/x;->a()Le/x$a;

    move-result-object v0

    iput-object v0, p0, Le/F$a;->c:Le/x$a;

    .line 209
    return-object p0
.end method

.method public a(Le/y;)Le/F$a;
    .locals 2
    .param p1, "url"    # Le/y;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Le/F$a;->a:Le/y;

    .line 146
    return-object p0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Le/F$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Le/F$a;->c:Le/x$a;

    invoke-virtual {v0, p1}, Le/x$a;->b(Ljava/lang/String;)Le/x$a;

    .line 203
    return-object p0
.end method

.method public a(Ljava/lang/String;Le/H;)Le/F$a;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Le/H;

    .line 252
    if-eqz p1, :cond_5

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Le/a/c/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must not have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Le/a/c/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_3
    :goto_1
    iput-object p1, p0, Le/F$a;->b:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Le/F$a;->d:Le/H;

    .line 262
    return-object p0

    .line 253
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Le/F$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Le/F$a;->c:Le/x$a;

    invoke-virtual {v0, p1, p2}, Le/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le/x$a;

    .line 197
    return-object p0
.end method

.method public a()Le/F;
    .locals 2

    .line 292
    iget-object v0, p0, Le/F$a;->a:Le/y;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Le/F;

    invoke-direct {v0, p0}, Le/F;-><init>(Le/F$a;)V

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Le/F$a;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 156
    if-eqz p1, :cond_2

    .line 159
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Le/y;->b(Ljava/lang/String;)Le/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/F$a;->a(Le/y;)Le/F$a;

    return-object p0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Le/F$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Le/F$a;->c:Le/x$a;

    invoke-virtual {v0, p1, p2}, Le/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le/x$a;

    .line 185
    return-object p0
.end method
