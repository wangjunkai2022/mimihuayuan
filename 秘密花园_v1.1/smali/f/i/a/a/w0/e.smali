.class public final synthetic Lf/i/a/a/w0/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/o$a;

.field public final synthetic b:Lf/i/a/a/y0/d;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/w0/o$a;Lf/i/a/a/y0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/e;->a:Lf/i/a/a/w0/o$a;

    iput-object p2, p0, Lf/i/a/a/w0/e;->b:Lf/i/a/a/y0/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/w0/e;->a:Lf/i/a/a/w0/o$a;

    iget-object v1, p0, Lf/i/a/a/w0/e;->b:Lf/i/a/a/y0/d;

    invoke-virtual {v0, v1}, Lf/i/a/a/w0/o$a;->e(Lf/i/a/a/y0/d;)V

    return-void
.end method
