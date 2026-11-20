.class public final synthetic La/a/a/d/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:La/a/a/d/c;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ld/a/f/a/a;


# direct methods
.method public synthetic constructor <init>(La/a/a/d/c;ZLjava/lang/String;Ld/a/f/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/d/b;->a:La/a/a/d/c;

    iput-boolean p2, p0, La/a/a/d/b;->b:Z

    iput-object p3, p0, La/a/a/d/b;->c:Ljava/lang/String;

    iput-object p4, p0, La/a/a/d/b;->d:Ld/a/f/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, La/a/a/d/b;->a:La/a/a/d/c;

    iget-boolean v1, p0, La/a/a/d/b;->b:Z

    iget-object v2, p0, La/a/a/d/b;->c:Ljava/lang/String;

    iget-object v3, p0, La/a/a/d/b;->d:Ld/a/f/a/a;

    invoke-virtual {v0, v1, v2, v3}, La/a/a/d/c;->a(ZLjava/lang/String;Ld/a/f/a/a;)V

    return-void
.end method
