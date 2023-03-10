.class public final synthetic Lf/i/a/a/e1/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/e1/q;

.field public final synthetic b:Lf/i/a/a/e1/q$b;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/e1/q;Lf/i/a/a/e1/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/e1/c;->a:Lf/i/a/a/e1/q;

    iput-object p2, p0, Lf/i/a/a/e1/c;->b:Lf/i/a/a/e1/q$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/e1/c;->a:Lf/i/a/a/e1/q;

    iget-object v1, p0, Lf/i/a/a/e1/c;->b:Lf/i/a/a/e1/q$b;

    invoke-virtual {v0, v1}, Lf/i/a/a/e1/q;->e(Lf/i/a/a/e1/q$b;)V

    return-void
.end method
