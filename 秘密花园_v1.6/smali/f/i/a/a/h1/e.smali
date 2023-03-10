.class public final synthetic Lf/i/a/a/h1/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/h1/f0$a;

.field public final synthetic b:Lf/i/a/a/h1/f0;

.field public final synthetic c:Lf/i/a/a/h1/f0$b;

.field public final synthetic d:Lf/i/a/a/h1/f0$c;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/h1/f0$a;Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/e;->a:Lf/i/a/a/h1/f0$a;

    iput-object p2, p0, Lf/i/a/a/h1/e;->b:Lf/i/a/a/h1/f0;

    iput-object p3, p0, Lf/i/a/a/h1/e;->c:Lf/i/a/a/h1/f0$b;

    iput-object p4, p0, Lf/i/a/a/h1/e;->d:Lf/i/a/a/h1/f0$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf/i/a/a/h1/e;->a:Lf/i/a/a/h1/f0$a;

    iget-object v1, p0, Lf/i/a/a/h1/e;->b:Lf/i/a/a/h1/f0;

    iget-object v2, p0, Lf/i/a/a/h1/e;->c:Lf/i/a/a/h1/f0$b;

    iget-object v3, p0, Lf/i/a/a/h1/e;->d:Lf/i/a/a/h1/f0$c;

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/h1/f0$a;->e(Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;)V

    return-void
.end method
