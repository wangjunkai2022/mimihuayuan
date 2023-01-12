.class public Lf/i/a/a/h1/u;
.super Lf/i/a/a/h1/s;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u$f;,
        Lf/i/a/a/h1/u$d;,
        Lf/i/a/a/h1/u$e;,
        Lf/i/a/a/h1/u$c;,
        Lf/i/a/a/h1/u$b;,
        Lf/i/a/a/h1/u$h;,
        Lf/i/a/a/h1/u$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/h1/s<",
        "Lf/i/a/a/h1/u$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u$g;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf/i/a/a/h1/u$f;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/u$g;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/i/a/a/h1/d0;",
            "Lf/i/a/a/h1/u$g;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lf/i/a/a/h1/u$g;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Z

.field public final p:Z

.field public final q:Lf/i/a/a/u0$c;

.field public final r:Lf/i/a/a/u0$b;

.field public s:Z

.field public t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf/i/a/a/h1/u$f;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lf/i/a/a/h1/m0;

.field public v:I

.field public w:I


# direct methods
.method public varargs constructor <init>([Lf/i/a/a/h1/e0;)V
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/h1/m0$a;

    .line 2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lf/i/a/a/h1/m0$a;-><init>(ILjava/util/Random;)V

    .line 3
    invoke-direct {p0}, Lf/i/a/a/h1/s;-><init>()V

    .line 4
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 5
    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/m0$a;->b:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lf/i/a/a/h1/m0$a;->h()Lf/i/a/a/h1/m0;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 8
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->m:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->n:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->t:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->j:Ljava/util/Set;

    .line 14
    iput-boolean v2, p0, Lf/i/a/a/h1/u;->o:Z

    .line 15
    iput-boolean v2, p0, Lf/i/a/a/h1/u;->p:Z

    .line 16
    new-instance v0, Lf/i/a/a/u0$c;

    invoke-direct {v0}, Lf/i/a/a/u0$c;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->q:Lf/i/a/a/u0$c;

    .line 17
    new-instance v0, Lf/i/a/a/u0$b;

    invoke-direct {v0}, Lf/i/a/a/u0$b;-><init>()V

    iput-object v0, p0, Lf/i/a/a/h1/u;->r:Lf/i/a/a/u0$b;

    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v1, v1}, Lf/i/a/a/h1/u;->y(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized A(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lf/i/a/a/h1/u$f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u$f;

    .line 2
    iget-object v2, v1, Lf/i/a/a/h1/u$f;->a:Landroid/os/Handler;

    iget-object v1, v1, Lf/i/a/a/h1/u$f;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/u;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B(I)Lf/i/a/a/h1/e0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/u$g;

    iget-object p1, p1, Lf/i/a/a/h1/u$g;->a:Lf/i/a/a/h1/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final C(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->A(Ljava/util/Set;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/h1/u;->F()V

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/u$h;

    .line 8
    iget-object v0, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/h1/m0;

    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 9
    iget-object p1, p1, Lf/i/a/a/h1/u$h;->c:Lf/i/a/a/h1/u$f;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V

    goto/16 :goto_3

    .line 10
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/u$h;

    .line 11
    iget-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    iget v2, p1, Lf/i/a/a/h1/u$h;->a:I

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2, v3}, Lf/i/a/a/h1/m0;->a(II)Lf/i/a/a/h1/m0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 12
    iget-object v2, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lf/i/a/a/h1/m0;->c(II)Lf/i/a/a/h1/m0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 13
    iget v0, p1, Lf/i/a/a/h1/u$h;->a:I

    iget-object v2, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 16
    iget-object v5, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/u$g;

    iget v5, v5, Lf/i/a/a/h1/u$g;->f:I

    .line 17
    iget-object v6, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/h1/u$g;

    iget v6, v6, Lf/i/a/a/h1/u$g;->g:I

    .line 18
    iget-object v7, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v3, v4, :cond_4

    .line 19
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    .line 20
    iput v5, v0, Lf/i/a/a/h1/u$g;->f:I

    .line 21
    iput v6, v0, Lf/i/a/a/h1/u$g;->g:I

    .line 22
    iget-object v2, v0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    invoke-virtual {v2}, Lf/i/a/a/h1/z;->p()I

    move-result v2

    add-int/2addr v5, v2

    .line 23
    iget-object v0, v0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    invoke-virtual {v0}, Lf/i/a/a/h1/z;->i()I

    move-result v0

    add-int/2addr v6, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p1, Lf/i/a/a/h1/u$h;->c:Lf/i/a/a/h1/u$f;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V

    goto/16 :goto_3

    .line 25
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/u$h;

    .line 26
    iget v0, p1, Lf/i/a/a/h1/u$h;->a:I

    .line 27
    iget-object v2, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_6

    .line 28
    iget-object v3, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    invoke-interface {v3}, Lf/i/a/a/h1/m0;->d()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 29
    iget-object v3, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    invoke-interface {v3}, Lf/i/a/a/h1/m0;->h()Lf/i/a/a/h1/m0;

    move-result-object v3

    iput-object v3, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    goto :goto_1

    .line 30
    :cond_6
    iget-object v3, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    invoke-interface {v3, v0, v2}, Lf/i/a/a/h1/m0;->a(II)Lf/i/a/a/h1/m0;

    move-result-object v3

    iput-object v3, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    :goto_1
    sub-int/2addr v2, v1

    :goto_2
    if-lt v2, v0, :cond_7

    .line 31
    iget-object v3, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u$g;

    .line 32
    iget-object v4, p0, Lf/i/a/a/h1/u;->n:Ljava/util/Map;

    iget-object v5, v3, Lf/i/a/a/h1/u$g;->b:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v4, v3, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 34
    invoke-virtual {v4}, Lf/i/a/a/h1/z;->p()I

    move-result v5

    neg-int v5, v5

    .line 35
    invoke-virtual {v4}, Lf/i/a/a/h1/z;->i()I

    move-result v4

    neg-int v4, v4

    const/4 v6, -0x1

    .line 36
    invoke-virtual {p0, v2, v6, v5, v4}, Lf/i/a/a/h1/u;->z(IIII)V

    .line 37
    iput-boolean v1, v3, Lf/i/a/a/h1/u$g;->j:Z

    .line 38
    invoke-virtual {p0, v3}, Lf/i/a/a/h1/u;->D(Lf/i/a/a/h1/u$g;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 39
    :cond_7
    iget-object p1, p1, Lf/i/a/a/h1/u$h;->c:Lf/i/a/a/h1/u$f;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V

    goto :goto_3

    .line 40
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    invoke-static {p1}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/u$h;

    .line 42
    iget-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    iget v2, p1, Lf/i/a/a/h1/u$h;->a:I

    iget-object v3, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lf/i/a/a/h1/m0;->c(II)Lf/i/a/a/h1/m0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 43
    iget v0, p1, Lf/i/a/a/h1/u$h;->a:I

    iget-object v2, p1, Lf/i/a/a/h1/u$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0, v0, v2}, Lf/i/a/a/h1/u;->x(ILjava/util/Collection;)V

    .line 44
    iget-object p1, p1, Lf/i/a/a/h1/u$h;->c:Lf/i/a/a/h1/u$f;

    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V

    :goto_3
    return v1
.end method

.method public final D(Lf/i/a/a/h1/u$g;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lf/i/a/a/h1/u$g;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lf/i/a/a/h1/u$g;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/s$b;

    .line 4
    iget-object v0, p1, Lf/i/a/a/h1/s$b;->a:Lf/i/a/a/h1/e0;

    iget-object v1, p1, Lf/i/a/a/h1/s$b;->b:Lf/i/a/a/h1/e0$b;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 5
    iget-object v0, p1, Lf/i/a/a/h1/s$b;->a:Lf/i/a/a/h1/e0;

    iget-object p1, p1, Lf/i/a/a/h1/s$b;->c:Lf/i/a/a/h1/f0;

    invoke-interface {v0, p1}, Lf/i/a/a/h1/e0;->h(Lf/i/a/a/h1/f0;)V

    :cond_0
    return-void
.end method

.method public final E(Lf/i/a/a/h1/u$f;)V
    .locals 2
    .param p1    # Lf/i/a/a/h1/u$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/u;->s:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lf/i/a/a/h1/u;->s:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/u;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final F()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u;->s:Z

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u;->t:Ljava/util/Set;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lf/i/a/a/h1/u;->t:Ljava/util/Set;

    .line 4
    new-instance v1, Lf/i/a/a/h1/u$b;

    iget-object v3, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    iget v4, p0, Lf/i/a/a/h1/u;->v:I

    iget v5, p0, Lf/i/a/a/h1/u;->w:I

    iget-object v6, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    iget-boolean v7, p0, Lf/i/a/a/h1/u;->o:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lf/i/a/a/h1/u$b;-><init>(Ljava/util/Collection;IILf/i/a/a/h1/m0;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 9

    .line 1
    iget-object v0, p1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lf/i/a/a/h1/u;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lf/i/a/a/h1/u$g;

    new-instance v2, Lf/i/a/a/h1/u$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lf/i/a/a/h1/u$d;-><init>(Lf/i/a/a/h1/u$a;)V

    invoke-direct {v0, v2}, Lf/i/a/a/h1/u$g;-><init>(Lf/i/a/a/h1/e0;)V

    .line 5
    iput-boolean v1, v0, Lf/i/a/a/h1/u$g;->h:Z

    .line 6
    :cond_0
    new-instance v8, Lf/i/a/a/h1/w;

    iget-object v3, v0, Lf/i/a/a/h1/u$g;->a:Lf/i/a/a/h1/e0;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lf/i/a/a/h1/w;-><init>(Lf/i/a/a/h1/e0;Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)V

    .line 7
    iget-object p2, p0, Lf/i/a/a/h1/u;->m:Ljava/util/Map;

    invoke-interface {p2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, v0, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p2, v0, Lf/i/a/a/h1/u$g;->h:Z

    if-nez p2, :cond_1

    .line 10
    iput-boolean v1, v0, Lf/i/a/a/h1/u$g;->h:Z

    .line 11
    iget-object p1, v0, Lf/i/a/a/h1/u$g;->a:Lf/i/a/a/h1/e0;

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/h1/s;->v(Ljava/lang/Object;Lf/i/a/a/h1/e0;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p2, v0, Lf/i/a/a/h1/u$g;->i:Z

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 14
    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    sget-object p3, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p2, v0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 17
    iget-object p2, p2, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-virtual {p1, p2}, Lf/i/a/a/h1/e0$a;->a(Ljava/lang/Object;)Lf/i/a/a/h1/e0$a;

    move-result-object p1

    .line 19
    invoke-virtual {v8, p1}, Lf/i/a/a/h1/w;->a(Lf/i/a/a/h1/e0$a;)V

    :cond_3
    :goto_0
    return-object v8
.end method

.method public final d(Lf/i/a/a/h1/d0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u;->m:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/h1/u$g;

    .line 3
    move-object v1, p1

    check-cast v1, Lf/i/a/a/h1/w;

    .line 4
    iget-object v2, v1, Lf/i/a/a/h1/w;->d:Lf/i/a/a/h1/d0;

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, v1, Lf/i/a/a/h1/w;->a:Lf/i/a/a/h1/e0;

    invoke-interface {v1, v2}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V

    .line 6
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/u;->D(Lf/i/a/a/h1/u$g;)V

    return-void
.end method

.method public final declared-synchronized l(Lf/i/a/a/l1/i0;)V
    .locals 2
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lf/i/a/a/h1/s;->h:Lf/i/a/a/l1/i0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/s;->g:Landroid/os/Handler;

    .line 3
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lf/i/a/a/h1/c;

    invoke-direct {v0, p0}, Lf/i/a/a/h1/c;-><init>(Lf/i/a/a/h1/u;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    .line 4
    iget-object p1, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/h1/u;->F()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    iget-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lf/i/a/a/h1/m0;->c(II)Lf/i/a/a/h1/m0;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    .line 7
    iget-object p1, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lf/i/a/a/h1/u;->x(ILjava/util/Collection;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lf/i/a/a/h1/s;->n()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/u;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    invoke-interface {v0}, Lf/i/a/a/h1/m0;->h()Lf/i/a/a/h1/m0;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/u;->u:Lf/i/a/a/h1/m0;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf/i/a/a/h1/u;->v:I

    .line 6
    iput v0, p0, Lf/i/a/a/h1/u;->w:I

    .line 7
    iget-object v1, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v2, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    .line 10
    :cond_0
    iput-boolean v0, p0, Lf/i/a/a/h1/u;->s:Z

    .line 11
    iget-object v0, p0, Lf/i/a/a/h1/u;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    iget-object v0, p0, Lf/i/a/a/h1/u;->j:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lf/i/a/a/h1/u;->A(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o(Ljava/lang/Object;Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/e0$a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lf/i/a/a/h1/u$g;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p1, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/w;

    iget-object v1, v1, Lf/i/a/a/h1/w;->b:Lf/i/a/a/h1/e0$a;

    iget-wide v1, v1, Lf/i/a/a/h1/e0$a;->d:J

    iget-wide v3, p2, Lf/i/a/a/h1/e0$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 4
    iget-object v0, p2, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 6
    iget-object v1, v1, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v0, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object p1, p1, Lf/i/a/a/h1/u$g;->b:Ljava/lang/Object;

    .line 10
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lf/i/a/a/h1/e0$a;->a(Ljava/lang/Object;)Lf/i/a/a/h1/e0$a;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public s(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/h1/u$g;

    .line 2
    iget p1, p1, Lf/i/a/a/h1/u$g;->f:I

    add-int/2addr p2, p1

    return p2
.end method

.method public u(Ljava/lang/Object;Lf/i/a/a/h1/e0;Lf/i/a/a/u0;Ljava/lang/Object;)V
    .locals 13
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v7, p3

    .line 1
    move-object v8, p1

    check-cast v8, Lf/i/a/a/h1/u$g;

    if-eqz v8, :cond_a

    .line 2
    iget-object v1, v8, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 3
    iget-object v2, v1, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    if-ne v2, v7, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lf/i/a/a/u0;->p()I

    move-result v2

    invoke-virtual {v1}, Lf/i/a/a/h1/z;->p()I

    move-result v3

    sub-int/2addr v2, v3

    .line 5
    invoke-virtual/range {p3 .. p3}, Lf/i/a/a/u0;->i()I

    move-result v3

    invoke-virtual {v1}, Lf/i/a/a/h1/z;->i()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 6
    :cond_1
    iget v5, v8, Lf/i/a/a/h1/u$g;->e:I

    add-int/2addr v5, v9

    invoke-virtual {p0, v5, v4, v2, v3}, Lf/i/a/a/h1/u;->z(IIII)V

    .line 7
    :cond_2
    iget-boolean v2, v8, Lf/i/a/a/h1/u$g;->i:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Lf/i/a/a/h1/u$c;

    iget-object v1, v1, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    invoke-direct {v2, v7, v1}, Lf/i/a/a/h1/u$c;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v8, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    sget-object v1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    .line 12
    new-instance v2, Lf/i/a/a/h1/u$c;

    invoke-direct {v2, v7, v1}, Lf/i/a/a/h1/u$c;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v8, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    goto/16 :goto_3

    .line 14
    :cond_4
    iget-object v1, v8, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v9, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 15
    iget-object v1, v8, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v11, v10

    goto :goto_1

    :cond_6
    iget-object v1, v8, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    .line 17
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/w;

    move-object v11, v1

    .line 18
    :goto_1
    iget-object v1, v0, Lf/i/a/a/h1/u;->q:Lf/i/a/a/u0$c;

    invoke-virtual {v7, v4, v1}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    .line 19
    iget-object v1, v0, Lf/i/a/a/h1/u;->q:Lf/i/a/a/u0$c;

    .line 20
    iget-wide v1, v1, Lf/i/a/a/u0$c;->h:J

    if-eqz v11, :cond_7

    .line 21
    iget-wide v3, v11, Lf/i/a/a/h1/w;->f:J

    const-wide/16 v5, 0x0

    cmp-long v12, v3, v5

    if-eqz v12, :cond_7

    move-wide v5, v3

    goto :goto_2

    :cond_7
    move-wide v5, v1

    .line 22
    :goto_2
    iget-object v2, v0, Lf/i/a/a/h1/u;->q:Lf/i/a/a/u0$c;

    iget-object v3, v0, Lf/i/a/a/h1/u;->r:Lf/i/a/a/u0$b;

    const/4 v4, 0x0

    move-object/from16 v1, p3

    .line 23
    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/u0;->j(Lf/i/a/a/u0$c;Lf/i/a/a/u0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 24
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 26
    new-instance v1, Lf/i/a/a/h1/u$c;

    invoke-direct {v1, v7, v2}, Lf/i/a/a/h1/u$c;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 27
    iput-object v1, v8, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    if-eqz v11, :cond_9

    .line 28
    iput-wide v3, v11, Lf/i/a/a/h1/w;->g:J

    .line 29
    iget-object v1, v11, Lf/i/a/a/h1/w;->b:Lf/i/a/a/h1/e0$a;

    iget-object v2, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    .line 30
    invoke-static {v2}, Lf/i/a/a/h1/n;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    sget-object v3, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, v8, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 33
    iget-object v2, v2, Lf/i/a/a/h1/u$c;->c:Ljava/lang/Object;

    .line 34
    :cond_8
    invoke-virtual {v1, v2}, Lf/i/a/a/h1/e0$a;->a(Ljava/lang/Object;)Lf/i/a/a/h1/e0$a;

    move-result-object v1

    .line 35
    invoke-virtual {v11, v1}, Lf/i/a/a/h1/w;->a(Lf/i/a/a/h1/e0$a;)V

    .line 36
    :cond_9
    :goto_3
    iput-boolean v9, v8, Lf/i/a/a/h1/u$g;->i:Z

    .line 37
    invoke-virtual {p0, v10}, Lf/i/a/a/h1/u;->E(Lf/i/a/a/h1/u$f;)V

    :goto_4
    return-void

    .line 38
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final declared-synchronized w(Lf/i/a/a/h1/e0;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1, v1}, Lf/i/a/a/h1/u;->y(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x(ILjava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lf/i/a/a/h1/u$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 2
    iget-object v3, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u$g;

    .line 3
    iget v4, v3, Lf/i/a/a/h1/u$g;->f:I

    iget-object v5, v3, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 4
    invoke-virtual {v5}, Lf/i/a/a/h1/z;->p()I

    move-result v5

    add-int/2addr v5, v4

    iget v4, v3, Lf/i/a/a/h1/u$g;->g:I

    iget-object v3, v3, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 5
    invoke-virtual {v3}, Lf/i/a/a/h1/z;->i()I

    move-result v3

    add-int/2addr v3, v4

    .line 6
    iput p1, v0, Lf/i/a/a/h1/u$g;->e:I

    .line 7
    iput v5, v0, Lf/i/a/a/h1/u$g;->f:I

    .line 8
    iput v3, v0, Lf/i/a/a/h1/u$g;->g:I

    .line 9
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->h:Z

    .line 10
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->i:Z

    .line 11
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->j:Z

    .line 12
    iget-object v2, v0, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 13
    :cond_0
    iput p1, v0, Lf/i/a/a/h1/u$g;->e:I

    .line 14
    iput v2, v0, Lf/i/a/a/h1/u$g;->f:I

    .line 15
    iput v2, v0, Lf/i/a/a/h1/u$g;->g:I

    .line 16
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->h:Z

    .line 17
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->i:Z

    .line 18
    iput-boolean v2, v0, Lf/i/a/a/h1/u$g;->j:Z

    .line 19
    iget-object v2, v0, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    :goto_1
    iget-object v2, v0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 21
    invoke-virtual {v2}, Lf/i/a/a/h1/z;->p()I

    move-result v2

    iget-object v3, v0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 22
    invoke-virtual {v3}, Lf/i/a/a/h1/z;->i()I

    move-result v3

    const/4 v4, 0x1

    .line 23
    invoke-virtual {p0, p1, v4, v2, v3}, Lf/i/a/a/h1/u;->z(IIII)V

    .line 24
    iget-object v2, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lf/i/a/a/h1/u;->n:Ljava/util/Map;

    iget-object v2, v0, Lf/i/a/a/h1/u$g;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-boolean p1, p0, Lf/i/a/a/h1/u;->p:Z

    if-nez p1, :cond_1

    .line 27
    iput-boolean v4, v0, Lf/i/a/a/h1/u$g;->h:Z

    .line 28
    iget-object p1, v0, Lf/i/a/a/h1/u$g;->a:Lf/i/a/a/h1/e0;

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/h1/s;->v(Ljava/lang/Object;Lf/i/a/a/h1/e0;)V

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final y(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lf/i/a/a/h1/e0;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-static {p3}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iget-object p3, p0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/e0;

    .line 4
    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/e0;

    .line 7
    new-instance v2, Lf/i/a/a/h1/u$g;

    invoke-direct {v2, v1}, Lf/i/a/a/h1/u$g;-><init>(Lf/i/a/a/h1/e0;)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {v0, p1, p4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 10
    new-instance v0, Lf/i/a/a/h1/u$h;

    invoke-direct {v0, p1, p4, p2}, Lf/i/a/a/h1/u$h;-><init>(ILjava/lang/Object;Lf/i/a/a/h1/u$f;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p3, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final z(IIII)V
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u;->v:I

    add-int/2addr v0, p3

    iput v0, p0, Lf/i/a/a/h1/u;->v:I

    .line 2
    iget v0, p0, Lf/i/a/a/h1/u;->w:I

    add-int/2addr v0, p4

    iput v0, p0, Lf/i/a/a/h1/u;->w:I

    .line 3
    :goto_0
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    iget v1, v0, Lf/i/a/a/h1/u$g;->e:I

    add-int/2addr v1, p2

    iput v1, v0, Lf/i/a/a/h1/u$g;->e:I

    .line 5
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    iget v1, v0, Lf/i/a/a/h1/u$g;->f:I

    add-int/2addr v1, p3

    iput v1, v0, Lf/i/a/a/h1/u$g;->f:I

    .line 6
    iget-object v0, p0, Lf/i/a/a/h1/u;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u$g;

    iget v1, v0, Lf/i/a/a/h1/u$g;->g:I

    add-int/2addr v1, p4

    iput v1, v0, Lf/i/a/a/h1/u$g;->g:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
