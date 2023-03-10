.class public final synthetic Lf/i/a/a/h1/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/h1/f0$a;

.field public final synthetic b:Lf/i/a/a/h1/f0;

.field public final synthetic c:Lf/i/a/a/h1/f0$b;

.field public final synthetic d:Lf/i/a/a/h1/f0$c;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/h1/f0$a;Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/d;->a:Lf/i/a/a/h1/f0$a;

    iput-object p2, p0, Lf/i/a/a/h1/d;->b:Lf/i/a/a/h1/f0;

    iput-object p3, p0, Lf/i/a/a/h1/d;->c:Lf/i/a/a/h1/f0$b;

    iput-object p4, p0, Lf/i/a/a/h1/d;->d:Lf/i/a/a/h1/f0$c;

    iput-object p5, p0, Lf/i/a/a/h1/d;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lf/i/a/a/h1/d;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lf/i/a/a/h1/d;->a:Lf/i/a/a/h1/f0$a;

    iget-object v1, p0, Lf/i/a/a/h1/d;->b:Lf/i/a/a/h1/f0;

    iget-object v2, p0, Lf/i/a/a/h1/d;->c:Lf/i/a/a/h1/f0$b;

    iget-object v3, p0, Lf/i/a/a/h1/d;->d:Lf/i/a/a/h1/f0$c;

    iget-object v4, p0, Lf/i/a/a/h1/d;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Lf/i/a/a/h1/d;->f:Z

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/h1/f0$a;->g(Lf/i/a/a/h1/f0;Lf/i/a/a/h1/f0$b;Lf/i/a/a/h1/f0$c;Ljava/io/IOException;Z)V

    return-void
.end method
