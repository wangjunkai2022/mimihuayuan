.class public final synthetic Lf/i/a/a/h1/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/h1/f0$a;

.field public final synthetic b:Lf/i/a/a/h1/f0;

.field public final synthetic c:Lf/i/a/a/h1/f0$c;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/h1/f0$a;Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/g;->a:Lf/i/a/a/h1/f0$a;

    iput-object p2, p0, Lf/i/a/a/h1/g;->b:Lf/i/a/a/h1/f0;

    iput-object p3, p0, Lf/i/a/a/h1/g;->c:Lf/i/a/a/h1/f0$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/i/a/a/h1/g;->a:Lf/i/a/a/h1/f0$a;

    iget-object v1, p0, Lf/i/a/a/h1/g;->b:Lf/i/a/a/h1/f0;

    iget-object v2, p0, Lf/i/a/a/h1/g;->c:Lf/i/a/a/h1/f0$c;

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/f0$a;->d(Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$c;)V

    return-void
.end method
