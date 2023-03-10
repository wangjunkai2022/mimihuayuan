.class public final synthetic Lf/i/a/a/n1/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/s$a;

.field public final synthetic b:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/n1/s$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n1/b;->a:Lf/i/a/a/n1/s$a;

    iput-object p2, p0, Lf/i/a/a/n1/b;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/n1/b;->a:Lf/i/a/a/n1/s$a;

    iget-object v1, p0, Lf/i/a/a/n1/b;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lf/i/a/a/n1/s$a;->f(Landroid/view/Surface;)V

    return-void
.end method
