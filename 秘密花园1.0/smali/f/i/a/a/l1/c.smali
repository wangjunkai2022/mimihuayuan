.class public final synthetic Lf/i/a/a/l1/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/l1/r$b;

.field public final synthetic b:Lf/i/a/a/l1/r;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/l1/r$b;Lf/i/a/a/l1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/c;->a:Lf/i/a/a/l1/r$b;

    iput-object p2, p0, Lf/i/a/a/l1/c;->b:Lf/i/a/a/l1/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/l1/c;->a:Lf/i/a/a/l1/r$b;

    iget-object v1, p0, Lf/i/a/a/l1/c;->b:Lf/i/a/a/l1/r;

    invoke-virtual {v0, v1}, Lf/i/a/a/l1/r$b;->b(Lf/i/a/a/l1/r;)V

    return-void
.end method
