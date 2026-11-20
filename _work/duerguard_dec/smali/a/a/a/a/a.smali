.class public final synthetic La/a/a/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:La/a/a/a/b;

.field private final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(La/a/a/a/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a;->a:La/a/a/a/b;

    iput-boolean p2, p0, La/a/a/a/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La/a/a/a/a;->a:La/a/a/a/b;

    iget-boolean v1, p0, La/a/a/a/a;->b:Z

    invoke-static {v0, v1}, La/a/a/a/b;->a(La/a/a/a/b;Z)V

    return-void
.end method
