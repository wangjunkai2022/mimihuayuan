.class public abstract Lf/i/a/a/h1/o;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lf/i/a/a/h1/e0;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/e0$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/i/a/a/h1/f0$a;

.field public c:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lf/i/a/a/u0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/h1/o;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lf/i/a/a/h1/f0$a;

    invoke-direct {v0}, Lf/i/a/a/h1/f0$a;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    return-void
.end method


# virtual methods
.method public final e(Lf/i/a/a/h1/e0$b;Lf/i/a/a/l1/i0;)V
    .locals 2
    .param p2    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/h1/o;->c:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lf/i/a/a/h1/o;->c:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 5
    iput-object v0, p0, Lf/i/a/a/h1/o;->c:Landroid/os/Looper;

    .line 6
    invoke-virtual {p0, p2}, Lf/i/a/a/h1/o;->l(Lf/i/a/a/l1/i0;)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object p2, p0, Lf/i/a/a/h1/o;->d:Lf/i/a/a/u0;

    if-eqz p2, :cond_3

    .line 8
    iget-object v0, p0, Lf/i/a/a/h1/o;->e:Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lf/i/a/a/h1/e0$b;->f(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final g(Landroid/os/Handler;Lf/i/a/a/h1/f0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/f0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/h1/f0$a$a;

    invoke-direct {v1, p1, p2}, Lf/i/a/a/h1/f0$a$a;-><init>(Landroid/os/Handler;Lf/i/a/a/h1/f0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final h(Lf/i/a/a/h1/f0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/f0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/f0$a$a;

    .line 3
    iget-object v3, v2, Lf/i/a/a/h1/f0$a$a;->b:Lf/i/a/a/h1/f0;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Lf/i/a/a/h1/f0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Lf/i/a/a/h1/e0$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/o;->c:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Lf/i/a/a/h1/o;->d:Lf/i/a/a/u0;

    .line 5
    iput-object p1, p0, Lf/i/a/a/h1/o;->e:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/h1/o;->n()V

    :cond_0
    return-void
.end method

.method public final j(Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/f0$a;
    .locals 4
    .param p1    # Lf/i/a/a/h1/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract l(Lf/i/a/a/l1/i0;)V
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final m(Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/o;->d:Lf/i/a/a/u0;

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/o;->e:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/e0$b;

    .line 4
    invoke-interface {v1, p0, p1, p2}, Lf/i/a/a/h1/e0$b;->f(Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract n()V
.end method
