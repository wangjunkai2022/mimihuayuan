.class public Lf/d/a/o/p/g/f;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/p/g/f$a;,
        Lf/d/a/o/p/g/f$c;,
        Lf/d/a/o/p/g/f$b;
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/m/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/o/p/g/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf/d/a/j;

.field public final e:Lf/d/a/o/n/b0/d;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lf/d/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lf/d/a/o/p/g/f$a;

.field public k:Z

.field public l:Lf/d/a/o/p/g/f$a;

.field public m:Landroid/graphics/Bitmap;

.field public n:Lf/d/a/o/p/g/f$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lf/d/a/c;Lf/d/a/m/a;IILf/d/a/o/l;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/c;",
            "Lf/d/a/m/a;",
            "II",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/d/a/c;->a:Lf/d/a/o/n/b0/d;

    .line 2
    iget-object v1, p1, Lf/d/a/c;->c:Lf/d/a/e;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    .line 4
    iget-object p1, p1, Lf/d/a/c;->c:Lf/d/a/e;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lf/d/a/j;->k()Lf/d/a/i;

    move-result-object p1

    sget-object v2, Lf/d/a/o/n/k;->b:Lf/d/a/o/n/k;

    .line 7
    new-instance v3, Lf/d/a/s/e;

    invoke-direct {v3}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v3, v2}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object v2

    check-cast v2, Lf/d/a/s/e;

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lf/d/a/s/a;->A(Z)Lf/d/a/s/a;

    move-result-object v2

    check-cast v2, Lf/d/a/s/e;

    .line 9
    invoke-virtual {v2, v3}, Lf/d/a/s/a;->v(Z)Lf/d/a/s/a;

    move-result-object v2

    check-cast v2, Lf/d/a/s/e;

    .line 10
    invoke-virtual {v2, p3, p4}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p3

    .line 11
    invoke-virtual {p1, p3}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lf/d/a/o/p/g/f;->c:Ljava/util/List;

    .line 14
    iput-object v1, p0, Lf/d/a/o/p/g/f;->d:Lf/d/a/j;

    .line 15
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lf/d/a/o/p/g/f$c;

    invoke-direct {v1, p0}, Lf/d/a/o/p/g/f$c;-><init>(Lf/d/a/o/p/g/f;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    iput-object v0, p0, Lf/d/a/o/p/g/f;->e:Lf/d/a/o/n/b0/d;

    .line 17
    iput-object p3, p0, Lf/d/a/o/p/g/f;->b:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lf/d/a/o/p/g/f;->i:Lf/d/a/i;

    .line 19
    iput-object p2, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    .line 20
    invoke-virtual {p0, p5, p6}, Lf/d/a/o/p/g/f;->c(Lf/d/a/o/l;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf/d/a/o/p/g/f;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lf/d/a/o/p/g/f;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/d/a/o/p/g/f;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lc/a/a/b/g/h;->o(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v0}, Lf/d/a/m/a;->h()V

    .line 5
    iput-boolean v2, p0, Lf/d/a/o/p/g/f;->h:Z

    .line 6
    :cond_2
    iget-object v0, p0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 7
    iput-object v2, p0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    .line 8
    invoke-virtual {p0, v0}, Lf/d/a/o/p/g/f;->b(Lf/d/a/o/p/g/f$a;)V

    return-void

    .line 9
    :cond_3
    iput-boolean v1, p0, Lf/d/a/o/p/g/f;->g:Z

    .line 10
    iget-object v0, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v0}, Lf/d/a/m/a;->e()I

    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 12
    iget-object v0, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v0}, Lf/d/a/m/a;->c()V

    .line 13
    new-instance v0, Lf/d/a/o/p/g/f$a;

    iget-object v1, p0, Lf/d/a/o/p/g/f;->b:Landroid/os/Handler;

    iget-object v5, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v5}, Lf/d/a/m/a;->a()I

    move-result v5

    invoke-direct {v0, v1, v5, v3, v4}, Lf/d/a/o/p/g/f$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lf/d/a/o/p/g/f;->l:Lf/d/a/o/p/g/f$a;

    .line 14
    iget-object v0, p0, Lf/d/a/o/p/g/f;->i:Lf/d/a/i;

    .line 15
    new-instance v1, Lf/d/a/t/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v3}, Lf/d/a/t/d;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance v3, Lf/d/a/s/e;

    invoke-direct {v3}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v3, v1}, Lf/d/a/s/a;->u(Lf/d/a/o/f;)Lf/d/a/s/a;

    move-result-object v1

    check-cast v1, Lf/d/a/s/e;

    .line 17
    invoke-virtual {v0, v1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object v0

    iget-object v1, p0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-virtual {v0, v1}, Lf/d/a/i;->I(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object v0

    iget-object v1, p0, Lf/d/a/o/p/g/f;->l:Lf/d/a/o/p/g/f$a;

    if-eqz v0, :cond_4

    .line 18
    sget-object v3, Lf/d/a/u/d;->a:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {v0, v1, v2, v0, v3}, Lf/d/a/i;->F(Lf/d/a/s/h/h;Lf/d/a/s/d;Lf/d/a/s/a;Ljava/util/concurrent/Executor;)Lf/d/a/s/h/h;

    return-void

    .line 20
    :cond_4
    throw v2

    :cond_5
    :goto_1
    return-void
.end method

.method public b(Lf/d/a/o/p/g/f$a;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/d/a/o/p/g/f;->g:Z

    .line 2
    iget-boolean v0, p0, Lf/d/a/o/p/g/f;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/d/a/o/p/g/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lf/d/a/o/p/g/f;->f:Z

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lf/d/a/o/p/g/f$a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lf/d/a/o/p/g/f;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lf/d/a/o/p/g/f;->e:Lf/d/a/o/n/b0/d;

    invoke-interface {v2, v0}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf/d/a/o/p/g/f;->m:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Lf/d/a/o/p/g/f;->j:Lf/d/a/o/p/g/f$a;

    .line 11
    iput-object p1, p0, Lf/d/a/o/p/g/f;->j:Lf/d/a/o/p/g/f$a;

    .line 12
    iget-object p1, p0, Lf/d/a/o/p/g/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Lf/d/a/o/p/g/f;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/o/p/g/f$b;

    .line 14
    invoke-interface {v2}, Lf/d/a/o/p/g/f$b;->a()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Lf/d/a/o/p/g/f;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lf/d/a/o/p/g/f;->a()V

    return-void
.end method

.method public c(Lf/d/a/o/l;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lf/d/a/o/p/g/f;->m:Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p0, Lf/d/a/o/p/g/f;->i:Lf/d/a/i;

    new-instance v1, Lf/d/a/s/e;

    invoke-direct {v1}, Lf/d/a/s/e;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p1

    iput-object p1, p0, Lf/d/a/o/p/g/f;->i:Lf/d/a/i;

    .line 7
    invoke-static {p2}, Lf/d/a/u/i;->f(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lf/d/a/o/p/g/f;->o:I

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lf/d/a/o/p/g/f;->p:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lf/d/a/o/p/g/f;->q:I

    return-void
.end method
