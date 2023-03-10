.class public final synthetic Lf/i/a/a/n1/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/s$a;

.field public final synthetic b:Lf/i/a/a/b0;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/n1/s$a;Lf/i/a/a/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n1/a;->a:Lf/i/a/a/n1/s$a;

    iput-object p2, p0, Lf/i/a/a/n1/a;->b:Lf/i/a/a/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/n1/a;->a:Lf/i/a/a/n1/s$a;

    iget-object v1, p0, Lf/i/a/a/n1/a;->b:Lf/i/a/a/b0;

    invoke-virtual {v0, v1}, Lf/i/a/a/n1/s$a;->e(Lf/i/a/a/b0;)V

    return-void
.end method
