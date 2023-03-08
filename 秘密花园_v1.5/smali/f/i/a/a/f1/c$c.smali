.class public Lf/i/a/a/f1/c$c;
.super Ljava/lang/Object;
.source "RenderSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/f1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/f1/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/f1/c;Lf/i/a/a/f1/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/f1/c$c;->a:Lf/i/a/a/f1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/i/a/a/f1/c$c;->a:Lf/i/a/a/f1/c;

    .line 2
    iget-object p2, p2, Lf/i/a/a/f1/c;->a:Lf/i/a/a/f1/a$a;

    if-eqz p2, :cond_0

    .line 3
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    check-cast p2, Lf/i/a/a/k1/c$a;

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c$c;->a:Lf/i/a/a/f1/c;

    .line 2
    iget-object v0, v0, Lf/i/a/a/f1/c;->a:Lf/i/a/a/f1/a$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lf/i/a/a/f1/c$b;

    invoke-direct {v1, p1}, Lf/i/a/a/f1/c$b;-><init>(Landroid/view/SurfaceHolder;)V

    check-cast v0, Lf/i/a/a/k1/c$a;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lf/i/a/a/k1/c$a;->a(Lf/i/a/a/f1/a$b;II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c$c;->a:Lf/i/a/a/f1/c;

    .line 2
    iget-object v0, v0, Lf/i/a/a/f1/c;->a:Lf/i/a/a/f1/a$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lf/i/a/a/k1/c$a;

    const/4 p1, 0x0

    .line 5
    sget-object v1, Lf/i/a/a/k1/c;->t:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    iget-object v1, v1, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    .line 8
    iput-object p1, v0, Lf/i/a/a/k1/c;->r:Lf/i/a/a/f1/a$b;

    :cond_0
    return-void
.end method
