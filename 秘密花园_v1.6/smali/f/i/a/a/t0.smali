.class public Lf/i/a/a/t0;
.super Lf/i/a/a/o;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lf/i/a/a/l0;
.implements Lf/i/a/a/l0$d;
.implements Lf/i/a/a/l0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/t0$b;
    }
.end annotation


# instance fields
.field public A:Lf/i/a/a/h1/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Lf/i/a/a/m1/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public E:Z

.field public final b:[Lf/i/a/a/p0;

.field public final c:Lf/i/a/a/y;

.field public final d:Landroid/os/Handler;

.field public final e:Lf/i/a/a/t0$b;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/n1/q;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/w0/l;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/i1/k;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/d1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/n1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/w0/o;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lf/i/a/a/l1/g;

.field public final m:Lf/i/a/a/v0/a;

.field public final n:Lf/i/a/a/w0/k;

.field public o:Lf/i/a/a/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Lf/i/a/a/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Z

.field public s:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public u:I

.field public v:I

.field public w:Lf/i/a/a/y0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Lf/i/a/a/y0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/r0;Lf/i/a/a/j1/m;Lf/i/a/a/t;Lf/i/a/a/z0/g;Lf/i/a/a/l1/g;Lf/i/a/a/v0/a$a;Landroid/os/Looper;)V
    .locals 14
    .param p5    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/i/a/a/r0;",
            "Lf/i/a/a/j1/m;",
            "Lf/i/a/a/t;",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;",
            "Lf/i/a/a/l1/g;",
            "Lf/i/a/a/v0/a$a;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    sget-object v10, Lf/i/a/a/m1/h;->a:Lf/i/a/a/m1/h;

    .line 2
    invoke-direct {p0}, Lf/i/a/a/o;-><init>()V

    .line 3
    iput-object v9, v0, Lf/i/a/a/t0;->l:Lf/i/a/a/l1/g;

    .line 4
    new-instance v1, Lf/i/a/a/t0$b;

    const/4 v11, 0x0

    invoke-direct {v1, p0, v11}, Lf/i/a/a/t0$b;-><init>(Lf/i/a/a/t0;Lf/i/a/a/t0$a;)V

    iput-object v1, v0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v12, p8

    invoke-direct {v2, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lf/i/a/a/t0;->d:Landroid/os/Handler;

    .line 12
    iget-object v6, v0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    .line 13
    move-object/from16 v1, p2

    check-cast v1, Lf/i/a/a/v;

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lf/i/a/a/v;->a(Landroid/os/Handler;Lf/i/a/a/n1/s;Lf/i/a/a/w0/o;Lf/i/a/a/i1/k;Lf/i/a/a/d1/e;Lf/i/a/a/z0/g;)[Lf/i/a/a/p0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/t0;->b:[Lf/i/a/a/p0;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, v0, Lf/i/a/a/t0;->z:F

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lf/i/a/a/t0;->y:I

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/t0;->B:Ljava/util/List;

    .line 17
    new-instance v13, Lf/i/a/a/y;

    iget-object v2, v0, Lf/i/a/a/t0;->b:[Lf/i/a/a/p0;

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object v6, v10

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lf/i/a/a/y;-><init>([Lf/i/a/a/p0;Lf/i/a/a/j1/m;Lf/i/a/a/t;Lf/i/a/a/l1/g;Lf/i/a/a/m1/h;Landroid/os/Looper;)V

    iput-object v13, v0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    if-eqz p7, :cond_2

    .line 18
    new-instance v1, Lf/i/a/a/v0/a;

    invoke-direct {v1, v13, v10}, Lf/i/a/a/v0/a;-><init>(Lf/i/a/a/l0;Lf/i/a/a/m1/h;)V

    .line 19
    iput-object v1, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    .line 20
    invoke-virtual {p0, v1}, Lf/i/a/a/t0;->r(Lf/i/a/a/l0$b;)V

    .line 21
    iget-object v1, v0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    invoke-virtual {p0, v1}, Lf/i/a/a/t0;->r(Lf/i/a/a/l0$b;)V

    .line 22
    iget-object v1, v0, Lf/i/a/a/t0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, v0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lf/i/a/a/t0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lf/i/a/a/t0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    .line 27
    iget-object v2, v0, Lf/i/a/a/t0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, v0, Lf/i/a/a/t0;->d:Landroid/os/Handler;

    iget-object v2, v0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {v9, v1, v2}, Lf/i/a/a/l1/g;->g(Landroid/os/Handler;Lf/i/a/a/l1/g$a;)V

    .line 29
    instance-of v1, v8, Lf/i/a/a/z0/d;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v8

    check-cast v1, Lf/i/a/a/z0/d;

    if-eqz v1, :cond_0

    .line 31
    throw v11

    .line 32
    :cond_0
    throw v11

    .line 33
    :cond_1
    new-instance v1, Lf/i/a/a/w0/k;

    iget-object v2, v0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Lf/i/a/a/w0/k;-><init>(Landroid/content/Context;Lf/i/a/a/w0/k$c;)V

    iput-object v1, v0, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    return-void

    .line 34
    :cond_2
    throw v11
.end method


# virtual methods
.method public A()Lf/i/a/a/j1/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v0, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    return-object v0
.end method

.method public B(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->c:[Lf/i/a/a/p0;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lf/i/a/a/p0;->t()I

    move-result p1

    return p1
.end method

.method public C()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Lf/i/a/a/l0$c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public final E(II)V
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/t0;->u:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lf/i/a/a/t0;->v:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lf/i/a/a/t0;->u:I

    .line 3
    iput p2, p0, Lf/i/a/a/t0;->v:I

    .line 4
    iget-object v0, p0, Lf/i/a/a/t0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n1/q;

    .line 5
    invoke-interface {v1, p1, p2}, Lf/i/a/a/n1/q;->u(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F(Lf/i/a/a/h1/e0;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/e0;->h(Lf/i/a/a/h1/f0;)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v0}, Lf/i/a/a/v0/a;->H()V

    .line 5
    :cond_0
    iput-object p1, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    .line 6
    iget-object v0, p0, Lf/i/a/a/t0;->d:Landroid/os/Handler;

    iget-object v1, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {p1, v0, v1}, Lf/i/a/a/h1/e0;->g(Landroid/os/Handler;Lf/i/a/a/h1/f0;)V

    .line 7
    iget-object v0, p0, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    invoke-virtual {p0}, Lf/i/a/a/t0;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 8
    iget v1, v0, Lf/i/a/a/w0/k;->d:I

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Lf/i/a/a/w0/k;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/t0;->m()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lf/i/a/a/t0;->N(ZI)V

    .line 11
    iget-object v4, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 12
    iput-object v2, v4, Lf/i/a/a/y;->s:Lf/i/a/a/w;

    const/4 v0, 0x2

    .line 13
    invoke-virtual {v4, p2, p3, v0}, Lf/i/a/a/y;->F(ZZI)Lf/i/a/a/i0;

    move-result-object v5

    .line 14
    iput-boolean v3, v4, Lf/i/a/a/y;->p:Z

    .line 15
    iget v0, v4, Lf/i/a/a/y;->o:I

    add-int/2addr v0, v3

    iput v0, v4, Lf/i/a/a/y;->o:I

    .line 16
    iget-object v0, v4, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 17
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    .line 18
    iget-object v0, v0, Lf/i/a/a/m1/c0;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 20
    invoke-virtual/range {v4 .. v9}, Lf/i/a/a/y;->U(Lf/i/a/a/i0;ZIIZ)V

    return-void

    .line 21
    :cond_3
    throw v2
.end method

.method public G()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lf/i/a/a/w0/k;->a(Z)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    sget-object v3, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    .line 6
    invoke-static {}, Lf/i/a/a/a0;->b()Ljava/lang/String;

    .line 7
    iget-object v3, v0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-boolean v4, v3, Lf/i/a/a/z;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 10
    monitor-exit v3

    goto :goto_1

    .line 11
    :cond_0
    :try_start_1
    iget-object v4, v3, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lf/i/a/a/m1/c0;->c(I)Z

    const/4 v4, 0x0

    .line 12
    :goto_0
    iget-boolean v6, v3, Lf/i/a/a/z;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 13
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 14
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :cond_2
    monitor-exit v3

    .line 16
    :goto_1
    iget-object v3, v0, Lf/i/a/a/y;->e:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, v5, v5, v1}, Lf/i/a/a/y;->F(ZZI)Lf/i/a/a/i0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    .line 18
    invoke-virtual {p0}, Lf/i/a/a/t0;->H()V

    .line 19
    iget-object v0, p0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 20
    iget-boolean v1, p0, Lf/i/a/a/t0;->r:Z

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 22
    :cond_3
    iput-object v2, p0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    .line 23
    :cond_4
    iget-object v0, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    if-eqz v0, :cond_5

    .line 24
    iget-object v1, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/e0;->h(Lf/i/a/a/h1/f0;)V

    .line 25
    iput-object v2, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    .line 26
    :cond_5
    iget-boolean v0, p0, Lf/i/a/a/t0;->E:Z

    if-nez v0, :cond_6

    .line 27
    iget-object v0, p0, Lf/i/a/a/t0;->l:Lf/i/a/a/l1/g;

    iget-object v1, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {v0, v1}, Lf/i/a/a/l1/g;->b(Lf/i/a/a/l1/g$a;)V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/t0;->B:Ljava/util/List;

    return-void

    .line 29
    :cond_6
    throw v2

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v3

    throw v0

    .line 31
    :cond_7
    throw v2
.end method

.method public final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0;->t:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/t0;->t:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    :goto_0
    iput-object v1, p0, Lf/i/a/a/t0;->t:Landroid/view/TextureView;

    .line 5
    :cond_1
    iget-object v0, p0, Lf/i/a/a/t0;->s:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    iput-object v1, p0, Lf/i/a/a/t0;->s:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method public I(Lf/i/a/a/j0;)V
    .locals 2
    .param p1    # Lf/i/a/a/j0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    .line 4
    :cond_0
    iget-object v0, v0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 5
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public J(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/t0;->H()V

    .line 3
    iput-object p1, p0, Lf/i/a/a/t0;->s:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 5
    invoke-virtual {p0, v1, v1}, Lf/i/a/a/t0;->E(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0, v2, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/t0;->E(II)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0, v1}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 13
    invoke-virtual {p0, v1, v1}, Lf/i/a/a/t0;->E(II)V

    :goto_0
    return-void
.end method

.method public final K(Landroid/view/Surface;Z)V
    .locals 9
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lf/i/a/a/t0;->b:[Lf/i/a/a/p0;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-interface {v6}, Lf/i/a/a/p0;->t()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4
    iget-object v7, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 5
    invoke-virtual {v7, v6}, Lf/i/a/a/y;->E(Lf/i/a/a/n0$b;)Lf/i/a/a/n0;

    move-result-object v6

    .line 6
    iget-boolean v7, v6, Lf/i/a/a/n0;->j:Z

    xor-int/2addr v7, v5

    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 7
    iput v5, v6, Lf/i/a/a/n0;->d:I

    .line 8
    iget-boolean v7, v6, Lf/i/a/a/n0;->j:Z

    xor-int/2addr v5, v7

    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 9
    iput-object p1, v6, Lf/i/a/a/n0;->e:Ljava/lang/Object;

    .line 10
    invoke-virtual {v6}, Lf/i/a/a/n0;->c()Lf/i/a/a/n0;

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/n0;

    .line 14
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-boolean v2, v1, Lf/i/a/a/n0;->j:Z

    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 16
    iget-object v2, v1, Lf/i/a/a/n0;->f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 17
    :goto_3
    iget-boolean v2, v1, Lf/i/a/a/n0;->l:Z

    if-nez v2, :cond_3

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 19
    :cond_3
    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    :cond_4
    iget-boolean v0, p0, Lf/i/a/a/t0;->r:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 23
    :cond_5
    iput-object p1, p0, Lf/i/a/a/t0;->q:Landroid/view/Surface;

    .line 24
    iput-boolean p2, p0, Lf/i/a/a/t0;->r:Z

    return-void
.end method

.method public L(Landroid/view/TextureView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/t0;->H()V

    .line 3
    iput-object p1, p0, Lf/i/a/a/t0;->t:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v1, v0}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 5
    invoke-virtual {p0, v2, v2}, Lf/i/a/a/t0;->E(II)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    .line 7
    iget-object v3, p0, Lf/i/a/a/t0;->e:Lf/i/a/a/t0$b;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p0, v1, v0}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 10
    invoke-virtual {p0, v2, v2}, Lf/i/a/a/t0;->E(II)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1, v0}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 12
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/t0;->E(II)V

    :goto_1
    return-void
.end method

.method public M(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0, p1}, Lf/i/a/a/y;->T(Z)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-interface {v0, v1}, Lf/i/a/a/h1/e0;->h(Lf/i/a/a/h1/f0;)V

    .line 5
    iget-object v0, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    invoke-virtual {v0}, Lf/i/a/a/v0/a;->H()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lf/i/a/a/t0;->A:Lf/i/a/a/h1/e0;

    .line 7
    :cond_0
    iget-object p1, p0, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lf/i/a/a/w0/k;->a(Z)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/t0;->B:Ljava/util/List;

    return-void
.end method

.method public final N(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lf/i/a/a/y;->R(ZZ)V

    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v1, v1, Lf/i/a/a/y;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Lf/i/a/a/t0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lf/i/a/a/t0;->C:Z

    :cond_1
    return-void
.end method

.method public e()Lf/i/a/a/j0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->r:Lf/i/a/a/j0;

    return-object v0
.end method

.method public f(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    invoke-virtual {p0}, Lf/i/a/a/t0;->o()I

    move-result v1

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lf/i/a/a/w0/k;->a(Z)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    if-eqz p1, :cond_3

    :cond_1
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget v1, v0, Lf/i/a/a/w0/k;->d:I

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lf/i/a/a/w0/k;->a(Z)V

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2}, Lf/i/a/a/t0;->N(ZI)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public g()Lf/i/a/a/l0$d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->h()Z

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->l:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->m:Lf/i/a/a/v0/a;

    .line 3
    iget-object v1, v0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    .line 4
    iget-boolean v1, v1, Lf/i/a/a/v0/a$c;->g:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lf/i/a/a/v0/a;->E()Lf/i/a/a/v0/b$a;

    .line 6
    iget-object v1, v0, Lf/i/a/a/v0/a;->d:Lf/i/a/a/v0/a$c;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lf/i/a/a/v0/a$c;->g:Z

    .line 8
    iget-object v0, v0, Lf/i/a/a/v0/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/v0/b;

    .line 9
    invoke-interface {v1}, Lf/i/a/a/v0/b;->y()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/y;->k(IJ)V

    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-boolean v0, v0, Lf/i/a/a/y;->k:Z

    return v0
.end method

.method public n(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0, p1}, Lf/i/a/a/y;->n(Z)V

    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget v0, v0, Lf/i/a/a/i0;->f:I

    return v0
.end method

.method public p()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/y;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget v0, v0, Lf/i/a/a/h1/e0$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public q(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0, p1}, Lf/i/a/a/y;->q(I)V

    return-void
.end method

.method public r(Lf/i/a/a/l0$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/o$a;

    invoke-direct {v1, p1}, Lf/i/a/a/o$a;-><init>(Lf/i/a/a/l0$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/y;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget v0, v0, Lf/i/a/a/h1/e0$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public t()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget v0, v0, Lf/i/a/a/y;->m:I

    return v0
.end method

.method public v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Lf/i/a/a/u0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-object v0, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 3
    iget-boolean v0, v0, Lf/i/a/a/y;->n:Z

    return v0
.end method

.method public y(Lf/i/a/a/l0$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0, p1}, Lf/i/a/a/y;->y(Lf/i/a/a/l0$b;)V

    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/t0;->O()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->z()I

    move-result v0

    return v0
.end method
