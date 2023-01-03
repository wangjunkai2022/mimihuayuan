.class public final Lf/i/a/a/y;
.super Lf/i/a/a/o;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lf/i/a/a/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/y$a;
    }
.end annotation


# instance fields
.field public final b:Lf/i/a/a/j1/n;

.field public final c:[Lf/i/a/a/p0;

.field public final d:Lf/i/a/a/j1/m;

.field public final e:Landroid/os/Handler;

.field public final f:Lf/i/a/a/z;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lf/i/a/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lf/i/a/a/u0$b;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Lf/i/a/a/j0;

.field public s:Lf/i/a/a/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Lf/i/a/a/i0;

.field public u:I

.field public v:I

.field public w:J


# direct methods
.method public constructor <init>([Lf/i/a/a/p0;Lf/i/a/a/j1/m;Lf/i/a/a/t;Lf/i/a/a/l1/g;Lf/i/a/a/m1/h;Landroid/os/Looper;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct {p0}, Lf/i/a/a/o;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    sget-object v1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    .line 3
    array-length v1, v2

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 4
    iput-object v2, v0, Lf/i/a/a/y;->c:[Lf/i/a/a/p0;

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    .line 5
    iput-object v3, v0, Lf/i/a/a/y;->d:Lf/i/a/a/j1/m;

    .line 6
    iput-boolean v4, v0, Lf/i/a/a/y;->k:Z

    .line 7
    iput v4, v0, Lf/i/a/a/y;->m:I

    .line 8
    iput-boolean v4, v0, Lf/i/a/a/y;->n:Z

    .line 9
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v4, Lf/i/a/a/j1/n;

    array-length v5, v2

    new-array v5, v5, [Lf/i/a/a/q0;

    array-length v6, v2

    new-array v6, v6, [Lf/i/a/a/j1/j;

    invoke-direct {v4, v5, v6, v1}, Lf/i/a/a/j1/n;-><init>([Lf/i/a/a/q0;[Lf/i/a/a/j1/j;Ljava/lang/Object;)V

    iput-object v4, v0, Lf/i/a/a/y;->b:Lf/i/a/a/j1/n;

    .line 11
    new-instance v1, Lf/i/a/a/u0$b;

    invoke-direct {v1}, Lf/i/a/a/u0$b;-><init>()V

    iput-object v1, v0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    .line 12
    sget-object v1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    iput-object v1, v0, Lf/i/a/a/y;->r:Lf/i/a/a/j0;

    .line 13
    sget-object v1, Lf/i/a/a/s0;->d:Lf/i/a/a/s0;

    .line 14
    new-instance v1, Lf/i/a/a/x;

    move-object/from16 v4, p6

    invoke-direct {v1, p0, v4}, Lf/i/a/a/x;-><init>(Lf/i/a/a/y;Landroid/os/Looper;)V

    iput-object v1, v0, Lf/i/a/a/y;->e:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    .line 15
    iget-object v1, v0, Lf/i/a/a/y;->b:Lf/i/a/a/j1/n;

    invoke-static {v4, v5, v1}, Lf/i/a/a/i0;->c(JLf/i/a/a/j1/n;)Lf/i/a/a/i0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    .line 16
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    .line 17
    new-instance v12, Lf/i/a/a/z;

    iget-object v4, v0, Lf/i/a/a/y;->b:Lf/i/a/a/j1/n;

    iget-boolean v7, v0, Lf/i/a/a/y;->k:Z

    iget v8, v0, Lf/i/a/a/y;->m:I

    iget-boolean v9, v0, Lf/i/a/a/y;->n:Z

    iget-object v10, v0, Lf/i/a/a/y;->e:Landroid/os/Handler;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lf/i/a/a/z;-><init>([Lf/i/a/a/p0;Lf/i/a/a/j1/m;Lf/i/a/a/j1/n;Lf/i/a/a/t;Lf/i/a/a/l1/g;ZIZLandroid/os/Handler;Lf/i/a/a/m1/h;)V

    iput-object v12, v0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 18
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 19
    iget-object v2, v2, Lf/i/a/a/z;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lf/i/a/a/y;->g:Landroid/os/Handler;

    return-void

    .line 21
    :cond_1
    throw v1
.end method

.method public static G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lf/i/a/a/o$a;",
            ">;",
            "Lf/i/a/a/o$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/o$a;

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/o$a;->b:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lf/i/a/a/o$a;->a:Lf/i/a/a/l0$b;

    invoke-interface {p1, v0}, Lf/i/a/a/o$b;->a(Lf/i/a/a/l0$b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic H(Lf/i/a/a/j0;Lf/i/a/a/l0$b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf/i/a/a/l0$b;->onPlaybackParametersChanged(Lf/i/a/a/j0;)V

    return-void
.end method

.method public static synthetic I(Lf/i/a/a/w;Lf/i/a/a/l0$b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf/i/a/a/l0$b;->onPlayerError(Lf/i/a/a/w;)V

    return-void
.end method

.method public static synthetic J(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf/i/a/a/y;->G(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    return-void
.end method

.method public static synthetic K(Lf/i/a/a/l0$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lf/i/a/a/l0$b;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public static synthetic L(ZILf/i/a/a/l0$b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lf/i/a/a/l0$b;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public static synthetic M(ILf/i/a/a/l0$b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf/i/a/a/l0$b;->onRepeatModeChanged(I)V

    return-void
.end method

.method public static synthetic N(ZLf/i/a/a/l0$b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf/i/a/a/l0$b;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method


# virtual methods
.method public A()Lf/i/a/a/j1/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    iget-object v0, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    return-object v0
.end method

.method public B(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->c:[Lf/i/a/a/p0;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lf/i/a/a/p0;->t()I

    move-result p1

    return p1
.end method

.method public C()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lf/i/a/a/y;->w:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->m:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v2, v0, Lf/i/a/a/i0;->m:J

    invoke-virtual {p0, v1, v2, v3}, Lf/i/a/a/y;->Q(Lf/i/a/a/h1/e0$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Lf/i/a/a/l0$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public E(Lf/i/a/a/n0$b;)Lf/i/a/a/n0;
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/n0;

    iget-object v1, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v3, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/y;->z()I

    move-result v4

    iget-object v5, p0, Lf/i/a/a/y;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/n0;-><init>(Lf/i/a/a/n0$a;Lf/i/a/a/n0$b;Lf/i/a/a/u0;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final F(ZZI)Lf/i/a/a/i0;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput v3, v0, Lf/i/a/a/y;->u:I

    .line 2
    iput v3, v0, Lf/i/a/a/y;->v:I

    .line 3
    iput-wide v1, v0, Lf/i/a/a/y;->w:J

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/y;->z()I

    move-result v4

    iput v4, v0, Lf/i/a/a/y;->u:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/y;->S()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget v4, v0, Lf/i/a/a/y;->v:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v5, v4, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v4, v4, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-object v4, v4, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v4

    .line 8
    :goto_0
    iput v4, v0, Lf/i/a/a/y;->v:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/y;->C()J

    move-result-wide v4

    iput-wide v4, v0, Lf/i/a/a/y;->w:J

    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 10
    iget-object v4, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-boolean v5, v0, Lf/i/a/a/y;->n:Z

    iget-object v6, v0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    .line 11
    invoke-virtual {v4, v5, v6}, Lf/i/a/a/i0;->d(ZLf/i/a/a/u0$c;)Lf/i/a/a/h1/e0$a;

    move-result-object v4

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v4, v4, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    :goto_2
    move-object/from16 v17, v4

    if-eqz v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v1, v1, Lf/i/a/a/i0;->m:J

    :goto_3
    move-wide/from16 v22, v1

    if-eqz v3, :cond_6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    .line 13
    :cond_6
    iget-object v1, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v1, v1, Lf/i/a/a/i0;->e:J

    :goto_4
    move-wide v11, v1

    .line 14
    new-instance v1, Lf/i/a/a/i0;

    if-eqz p2, :cond_7

    sget-object v2, Lf/i/a/a/u0;->a:Lf/i/a/a/u0;

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    :goto_5
    move-object v6, v2

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->b:Ljava/lang/Object;

    :goto_6
    move-object v7, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_9

    sget-object v2, Lf/i/a/a/h1/p0;->d:Lf/i/a/a/h1/p0;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    :goto_7
    move-object v15, v2

    if-eqz p2, :cond_a

    iget-object v2, v0, Lf/i/a/a/y;->b:Lf/i/a/a/j1/n;

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->i:Lf/i/a/a/j1/n;

    :goto_8
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move/from16 v13, p3

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Lf/i/a/a/i0;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;Lf/i/a/a/h1/e0$a;JJIZLf/i/a/a/h1/p0;Lf/i/a/a/j1/n;Lf/i/a/a/h1/e0$a;JJJ)V

    return-object v1
.end method

.method public final O(Lf/i/a/a/o$b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Lf/i/a/a/b;

    invoke-direct {v1, v0, p1}, Lf/i/a/a/b;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/o$b;)V

    invoke-virtual {p0, v1}, Lf/i/a/a/y;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final P(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, Lf/i/a/a/y;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q(Lf/i/a/a/h1/e0$a;J)J
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lf/i/a/a/q;->b(J)J

    move-result-wide p2

    .line 2
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object p1, p1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    invoke-virtual {v0, p1, v1}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 3
    iget-object p1, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    .line 4
    iget-wide v0, p1, Lf/i/a/a/u0$b;->e:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public R(ZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-boolean v2, p0, Lf/i/a/a/y;->l:Z

    if-eq v2, p2, :cond_1

    .line 2
    iput-boolean p2, p0, Lf/i/a/a/y;->l:Z

    .line 3
    iget-object v2, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 4
    iget-object v2, v2, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    invoke-virtual {v2, v0, p2, v1}, Lf/i/a/a/m1/c0;->a(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :cond_1
    iget-boolean p2, p0, Lf/i/a/a/y;->k:Z

    if-eq p2, p1, :cond_2

    .line 6
    iput-boolean p1, p0, Lf/i/a/a/y;->k:Z

    .line 7
    iget-object p2, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget p2, p2, Lf/i/a/a/i0;->f:I

    .line 8
    new-instance v0, Lf/i/a/a/c;

    invoke-direct {v0, p1, p2}, Lf/i/a/a/c;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lf/i/a/a/y;->O(Lf/i/a/a/o$b;)V

    :cond_2
    return-void
.end method

.method public final S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lf/i/a/a/y;->o:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public T(Z)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/i/a/a/y;->s:Lf/i/a/a/w;

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p1, v0}, Lf/i/a/a/y;->F(ZZI)Lf/i/a/a/i0;

    move-result-object v2

    .line 3
    iget v1, p0, Lf/i/a/a/y;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lf/i/a/a/y;->o:I

    .line 4
    iget-object v0, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 5
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1, v1}, Lf/i/a/a/m1/c0;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/y;->U(Lf/i/a/a/i0;ZIIZ)V

    return-void
.end method

.method public final U(Lf/i/a/a/i0;ZIIZ)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v3, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    move-object v2, p1

    .line 2
    iput-object v2, v0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    .line 3
    new-instance v11, Lf/i/a/a/y$a;

    iget-object v4, v0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Lf/i/a/a/y;->d:Lf/i/a/a/j1/m;

    iget-boolean v10, v0, Lf/i/a/a/y;->k:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lf/i/a/a/y$a;-><init>(Lf/i/a/a/i0;Lf/i/a/a/i0;Ljava/util/concurrent/CopyOnWriteArrayList;Lf/i/a/a/j1/m;ZIIZZ)V

    invoke-virtual {p0, v11}, Lf/i/a/a/y;->P(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lf/i/a/a/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->r:Lf/i/a/a/j0;

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/i/a/a/y;->R(ZZ)V

    return-void
.end method

.method public g()Lf/i/a/a/l0$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->S()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-object v0, v0, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    invoke-virtual {v1, v0, v2}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 3
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v1, v0, Lf/i/a/a/i0;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/y;->z()I

    move-result v1

    iget-object v2, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v0

    .line 5
    iget-wide v0, v0, Lf/i/a/a/u0$c;->h:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    .line 7
    iget-wide v0, v0, Lf/i/a/a/u0$b;->e:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v2, v2, Lf/i/a/a/i0;->e:J

    invoke-static {v2, v3}, Lf/i/a/a/q;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/y;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->l:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    if-ltz p1, :cond_5

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lf/i/a/a/u0;->p()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lf/i/a/a/y;->q:Z

    .line 4
    iget v2, p0, Lf/i/a/a/y;->o:I

    add-int/2addr v2, v1

    iput v2, p0, Lf/i/a/a/y;->o:I

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, p0, Lf/i/a/a/y;->e:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    .line 7
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 9
    :cond_1
    iput p1, p0, Lf/i/a/a/y;->u:I

    .line 10
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    .line 11
    :goto_0
    iput-wide v1, p0, Lf/i/a/a/y;->w:J

    .line 12
    iput v3, p0, Lf/i/a/a/y;->v:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    .line 14
    invoke-virtual {v0, p1, v1}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v1

    .line 15
    iget-wide v1, v1, Lf/i/a/a/u0$c;->h:J

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {p2, p3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 17
    iget-object v2, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    iget-object v3, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 18
    invoke-virtual/range {v1 .. v6}, Lf/i/a/a/u0;->j(Lf/i/a/a/u0$c;Lf/i/a/a/u0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 19
    invoke-static {v7, v8}, Lf/i/a/a/q;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf/i/a/a/y;->w:J

    .line 20
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lf/i/a/a/y;->v:I

    .line 21
    :goto_2
    iget-object v1, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    invoke-static {p2, p3}, Lf/i/a/a/q;->a(J)J

    move-result-wide p2

    .line 22
    iget-object v1, v1, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    new-instance v2, Lf/i/a/a/z$e;

    invoke-direct {v2, v0, p1, p2, p3}, Lf/i/a/a/z$e;-><init>(Lf/i/a/a/u0;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1, v2}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 24
    sget-object p1, Lf/i/a/a/d;->a:Lf/i/a/a/d;

    invoke-virtual {p0, p1}, Lf/i/a/a/y;->O(Lf/i/a/a/o$b;)V

    return-void

    .line 25
    :cond_5
    new-instance v1, Lf/i/a/a/d0;

    invoke-direct {v1, v0, p1, p2, p3}, Lf/i/a/a/d0;-><init>(Lf/i/a/a/u0;IJ)V

    throw v1
.end method

.method public l()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v1, v0}, Lf/i/a/a/h1/e0$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-wide v0, v0, Lf/i/a/a/i0;->k:J

    .line 3
    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/y;->v()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/y;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-wide v0, p0, Lf/i/a/a/y;->w:J

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget-wide v1, v1, Lf/i/a/a/h1/e0$a;->d:J

    iget-object v3, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-wide v3, v3, Lf/i/a/a/h1/e0$a;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 8
    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    invoke-virtual {p0}, Lf/i/a/a/y;->z()I

    move-result v1

    iget-object v2, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0$c;->a()J

    move-result-wide v0

    goto :goto_2

    .line 9
    :cond_3
    iget-wide v0, v0, Lf/i/a/a/i0;->k:J

    .line 10
    iget-object v2, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v2}, Lf/i/a/a/h1/e0$a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v0, v0, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget-object v0, v0, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    .line 12
    invoke-virtual {v1, v0, v2}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v1, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    iget v1, v1, Lf/i/a/a/h1/e0$a;->b:I

    .line 14
    invoke-virtual {v0, v1}, Lf/i/a/a/u0$b;->d(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 15
    iget-wide v0, v0, Lf/i/a/a/u0$b;->d:J

    goto :goto_1

    :cond_4
    move-wide v0, v1

    .line 16
    :cond_5
    :goto_1
    iget-object v2, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v2, v2, Lf/i/a/a/i0;->j:Lf/i/a/a/h1/e0$a;

    invoke-virtual {p0, v2, v0, v1}, Lf/i/a/a/y;->Q(Lf/i/a/a/h1/e0$a;J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/y;->k:Z

    return v0
.end method

.method public n(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/y;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/y;->n:Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 4
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1, v1}, Lf/i/a/a/m1/c0;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    new-instance v0, Lf/i/a/a/k;

    invoke-direct {v0, p1}, Lf/i/a/a/k;-><init>(Z)V

    invoke-virtual {p0, v0}, Lf/i/a/a/y;->O(Lf/i/a/a/o$b;)V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget v0, v0, Lf/i/a/a/i0;->f:I

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget v0, v0, Lf/i/a/a/h1/e0$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public q(I)V
    .locals 3

    .line 1
    iget v0, p0, Lf/i/a/a/y;->m:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lf/i/a/a/y;->m:I

    .line 3
    iget-object v0, p0, Lf/i/a/a/y;->f:Lf/i/a/a/z;

    .line 4
    iget-object v0, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lf/i/a/a/m1/c0;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    new-instance v0, Lf/i/a/a/m;

    invoke-direct {v0, p1}, Lf/i/a/a/m;-><init>(I)V

    invoke-virtual {p0, v0}, Lf/i/a/a/y;->O(Lf/i/a/a/o$b;)V

    :cond_0
    return-void
.end method

.method public r(Lf/i/a/a/l0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lf/i/a/a/o$a;

    invoke-direct {v1, p1}, Lf/i/a/a/o$a;-><init>(Lf/i/a/a/l0$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

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
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->h:Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/y;->m:I

    return v0
.end method

.method public v()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    .line 3
    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v2, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    invoke-virtual {v0, v2, v3}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 4
    iget-object v0, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    iget v2, v1, Lf/i/a/a/h1/e0$a;->b:I

    iget v1, v1, Lf/i/a/a/h1/e0$a;->c:I

    invoke-virtual {v0, v2, v1}, Lf/i/a/a/u0$b;->a(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lf/i/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/y;->w()Lf/i/a/a/u0;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/y;->z()I

    move-result v1

    iget-object v2, p0, Lf/i/a/a/o;->a:Lf/i/a/a/u0$c;

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0$c;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public w()Lf/i/a/a/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v0, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/y;->n:Z

    return v0
.end method

.method public y(Lf/i/a/a/l0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/o$a;

    .line 2
    iget-object v2, v1, Lf/i/a/a/o$a;->a:Lf/i/a/a/l0$b;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lf/i/a/a/o$a;->b:Z

    .line 4
    iget-object v2, p0, Lf/i/a/a/y;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/y;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lf/i/a/a/y;->u:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/y;->t:Lf/i/a/a/i0;

    iget-object v1, v0, Lf/i/a/a/i0;->a:Lf/i/a/a/u0;

    iget-object v0, v0, Lf/i/a/a/i0;->c:Lf/i/a/a/h1/e0$a;

    iget-object v0, v0, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lf/i/a/a/y;->i:Lf/i/a/a/u0$b;

    invoke-virtual {v1, v0, v2}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    move-result-object v0

    iget v0, v0, Lf/i/a/a/u0$b;->c:I

    return v0
.end method
