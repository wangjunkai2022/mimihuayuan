.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lf/i/a/a/h1/o;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$i;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Handler;

.field public B:Landroid/net/Uri;

.field public C:Landroid/net/Uri;

.field public D:Lf/i/a/a/h1/t0/k/b;

.field public E:Z

.field public F:J

.field public G:J

.field public H:J

.field public I:I

.field public J:J

.field public K:I

.field public final f:Z

.field public final g:Lf/i/a/a/l1/m$a;

.field public final h:Lf/i/a/a/h1/t0/c$a;

.field public final i:Lf/i/a/a/h1/v;

.field public final j:Lf/i/a/a/l1/b0;

.field public final k:J

.field public final l:Z

.field public final m:Lf/i/a/a/h1/f0$a;

.field public final n:Lf/i/a/a/l1/e0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "+",
            "Lf/i/a/a/h1/t0/k/b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

.field public final p:Ljava/lang/Object;

.field public final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/h1/t0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;

.field public final t:Lf/i/a/a/h1/t0/j$b;

.field public final u:Lf/i/a/a/l1/d0;

.field public final v:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Lf/i/a/a/l1/m;

.field public x:Lf/i/a/a/l1/c0;

.field public y:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/t0/k/b;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/e0$a;Lf/i/a/a/h1/t0/c$a;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;JZLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lf/i/a/a/l1/m$a;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lf/i/a/a/l1/e0$a;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lf/i/a/a/h1/t0/c$a;

    .line 8
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lf/i/a/a/l1/b0;

    .line 9
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:J

    .line 10
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Z

    .line 11
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Lf/i/a/a/h1/v;

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:Z

    .line 14
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/o;->j(Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/f0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    .line 15
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Ljava/lang/Object;

    .line 16
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    .line 17
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lf/i/a/a/h1/t0/j$b;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    .line 19
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:Z

    if-nez p2, :cond_0

    .line 20
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Lf/i/a/a/l1/d0;

    .line 22
    new-instance p1, Lf/i/a/a/h1/t0/b;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/t0/b;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Ljava/lang/Runnable;

    .line 23
    new-instance p1, Lf/i/a/a/h1/t0/a;

    invoke-direct {p1, p0}, Lf/i/a/a/h1/t0/a;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/lang/Runnable;

    return-void

    .line 24
    :cond_0
    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    sub-int v7, v2, v3

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 3
    invoke-virtual {v2, v7}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v2

    iget-wide v2, v2, Lf/i/a/a/h1/t0/k/f;->b:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Lc/a/a/b/g/h;->m(Z)V

    .line 5
    iget-object v5, v0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v5, v4, v1, v2, v3}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object v11

    .line 6
    new-instance v1, Lf/i/a/a/h1/t0/e;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    add-int v5, v2, v7

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lf/i/a/a/h1/t0/c$a;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lf/i/a/a/l1/i0;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lf/i/a/a/l1/b0;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Lf/i/a/a/l1/d0;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Lf/i/a/a/h1/v;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lf/i/a/a/h1/t0/j$b;

    move-object v4, v1

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lf/i/a/a/h1/t0/e;-><init>(ILf/i/a/a/h1/t0/k/b;ILf/i/a/a/h1/t0/c$a;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;JLf/i/a/a/l1/d0;Lf/i/a/a/l1/e;Lf/i/a/a/h1/v;Lf/i/a/a/h1/t0/j$b;)V

    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    iget v3, v1, Lf/i/a/a/h1/t0/e;->a:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 5

    .line 1
    check-cast p1, Lf/i/a/a/h1/t0/e;

    .line 2
    iget-object v0, p1, Lf/i/a/a/h1/t0/e;->k:Lf/i/a/a/h1/t0/j;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lf/i/a/a/h1/t0/j;->k:Z

    .line 4
    iget-object v0, v0, Lf/i/a/a/h1/t0/j;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4, p1}, Lf/i/a/a/h1/s0/g;->B(Lf/i/a/a/h1/s0/g$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p1, Lf/i/a/a/h1/t0/e;->n:Lf/i/a/a/h1/d0$a;

    .line 8
    iget-object v0, p1, Lf/i/a/a/h1/t0/e;->m:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->z()V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    iget p1, p1, Lf/i/a/a/h1/t0/e;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 1
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Lf/i/a/a/l1/i0;

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lf/i/a/a/l1/m$a;

    invoke-interface {p1}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lf/i/a/a/l1/m;

    .line 5
    new-instance p1, Lf/i/a/a/l1/c0;

    const-string v0, "Loader:DashMediaSource"

    invoke-direct {p1, v0}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u()V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lf/i/a/a/l1/m;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    :cond_0
    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:J

    .line 8
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroid/net/Uri;

    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Ljava/io/IOException;

    .line 11
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    .line 14
    :cond_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public synthetic o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    return-void
.end method

.method public q(Lf/i/a/a/l1/e0;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/e0<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v3, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 2
    iget-object v4, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 3
    iget-object v5, v4, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 4
    iget-object v6, v4, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 5
    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    .line 6
    iget-wide v11, v4, Lf/i/a/a/l1/g0;->b:J

    move-object v4, v5

    move-object v5, v6

    move v6, v0

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 7
    invoke-virtual/range {v2 .. v12}, Lf/i/a/a/h1/f0$a;->o(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public final s(Z)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ge v2, v3, :cond_8

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3
    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    if-lt v3, v7, :cond_7

    .line 4
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/t0/e;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    sub-int/2addr v3, v9

    .line 5
    iput-object v8, v7, Lf/i/a/a/h1/t0/e;->r:Lf/i/a/a/h1/t0/k/b;

    .line 6
    iput v3, v7, Lf/i/a/a/h1/t0/e;->s:I

    .line 7
    iget-object v9, v7, Lf/i/a/a/h1/t0/e;->k:Lf/i/a/a/h1/t0/j;

    .line 8
    iput-boolean v1, v9, Lf/i/a/a/h1/t0/j;->j:Z

    .line 9
    iput-wide v4, v9, Lf/i/a/a/h1/t0/j;->g:J

    .line 10
    iput-object v8, v9, Lf/i/a/a/h1/t0/j;->f:Lf/i/a/a/h1/t0/k/b;

    .line 11
    iget-object v4, v9, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    .line 12
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 13
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 16
    iget-object v5, v9, Lf/i/a/a/h1/t0/j;->f:Lf/i/a/a/h1/t0/k/b;

    iget-wide v12, v5, Lf/i/a/a/h1/t0/k/b;->h:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_0

    .line 17
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v4, v7, Lf/i/a/a/h1/t0/e;->o:[Lf/i/a/a/h1/s0/g;

    if-eqz v4, :cond_3

    .line 19
    array-length v5, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_2

    aget-object v10, v4, v9

    .line 20
    iget-object v10, v10, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    .line 21
    check-cast v10, Lf/i/a/a/h1/t0/c;

    invoke-interface {v10, v8, v3}, Lf/i/a/a/h1/t0/c;->d(Lf/i/a/a/h1/t0/k/b;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 22
    :cond_2
    iget-object v4, v7, Lf/i/a/a/h1/t0/e;->n:Lf/i/a/a/h1/d0$a;

    invoke-interface {v4, v7}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    .line 23
    :cond_3
    iget-object v4, v8, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/h1/t0/k/f;

    .line 24
    iget-object v4, v4, Lf/i/a/a/h1/t0/k/f;->d:Ljava/util/List;

    iput-object v4, v7, Lf/i/a/a/h1/t0/e;->t:Ljava/util/List;

    .line 25
    iget-object v4, v7, Lf/i/a/a/h1/t0/e;->p:[Lf/i/a/a/h1/t0/i;

    array-length v5, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_7

    aget-object v10, v4, v9

    .line 26
    iget-object v11, v7, Lf/i/a/a/h1/t0/e;->t:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/h1/t0/k/e;

    .line 27
    invoke-virtual {v12}, Lf/i/a/a/h1/t0/k/e;->a()Ljava/lang/String;

    move-result-object v13

    .line 28
    iget-object v14, v10, Lf/i/a/a/h1/t0/i;->e:Lf/i/a/a/h1/t0/k/e;

    invoke-virtual {v14}, Lf/i/a/a/h1/t0/k/e;->a()Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 30
    invoke-virtual {v8}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v11

    sub-int/2addr v11, v6

    .line 31
    iget-boolean v13, v8, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v13, :cond_5

    if-ne v3, v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v10, v12, v11}, Lf/i/a/a/h1/t0/i;->c(Lf/i/a/a/h1/t0/k/e;Z)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v2}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v2

    sub-int/2addr v2, v6

    .line 33
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v3, v1}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 34
    invoke-virtual {v7, v1}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v7

    .line 35
    invoke-static {v3, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->a(Lf/i/a/a/h1/t0/k/f;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    move-result-object v3

    .line 36
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 37
    invoke-virtual {v7, v2}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v8, v2}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v8

    .line 38
    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->a(Lf/i/a/a/h1/t0/k/f;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    move-result-object v7

    .line 39
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->b:J

    .line 40
    iget-wide v10, v7, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->c:J

    .line 41
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v3, v3, Lf/i/a/a/h1/t0/k/b;->d:Z

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_d

    iget-boolean v3, v7, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->a:Z

    if-nez v3, :cond_d

    .line 42
    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    cmp-long v3, v14, v12

    if-eqz v3, :cond_9

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    add-long/2addr v14, v6

    invoke-static {v14, v15}, Lf/i/a/a/q;->a(J)J

    move-result-wide v6

    goto :goto_5

    .line 44
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lf/i/a/a/q;->a(J)J

    move-result-wide v6

    .line 45
    :goto_5
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-wide v14, v14, Lf/i/a/a/h1/t0/k/b;->a:J

    invoke-static {v14, v15}, Lf/i/a/a/q;->a(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    .line 46
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 47
    invoke-virtual {v14, v2}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v14

    iget-wide v14, v14, Lf/i/a/a/h1/t0/k/f;->b:J

    invoke-static {v14, v15}, Lf/i/a/a/q;->a(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    .line 48
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 49
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-wide v6, v6, Lf/i/a/a/h1/t0/k/b;->f:J

    cmp-long v14, v6, v4

    if-eqz v14, :cond_c

    .line 50
    invoke-static {v6, v7}, Lf/i/a/a/q;->a(J)J

    move-result-wide v6

    sub-long v6, v10, v6

    :goto_6
    cmp-long v14, v6, v12

    if-gez v14, :cond_a

    if-lez v2, :cond_a

    .line 51
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v14

    add-long/2addr v6, v14

    goto :goto_6

    :cond_a
    if-nez v2, :cond_b

    .line 52
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_7

    .line 53
    :cond_b
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v2, v1}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v6

    :goto_7
    move-wide v8, v6

    :cond_c
    move-wide/from16 v20, v8

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    move-wide/from16 v20, v8

    const/4 v2, 0x0

    :goto_8
    sub-long v10, v10, v20

    move-wide/from16 v22, v10

    const/4 v6, 0x0

    .line 54
    :goto_9
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v7}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v7

    const/4 v3, 0x1

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_e

    .line 55
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v7, v6}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v7

    add-long v22, v7, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 56
    :cond_e
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v6, v3, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v6, :cond_11

    .line 57
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:J

    .line 58
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Z

    if-nez v8, :cond_f

    iget-wide v8, v3, Lf/i/a/a/h1/t0/k/b;->g:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_f

    move-wide v6, v8

    .line 59
    :cond_f
    invoke-static {v6, v7}, Lf/i/a/a/q;->a(J)J

    move-result-wide v6

    sub-long v6, v22, v6

    const-wide/32 v8, 0x4c4b40

    cmp-long v3, v6, v8

    if-gez v3, :cond_10

    const-wide/16 v6, 0x2

    .line 60
    div-long v6, v22, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_10
    move-wide/from16 v24, v6

    goto :goto_a

    :cond_11
    move-wide/from16 v24, v12

    .line 61
    :goto_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-wide v6, v3, Lf/i/a/a/h1/t0/k/b;->a:J

    .line 62
    invoke-virtual {v3, v1}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v1

    iget-wide v8, v1, Lf/i/a/a/h1/t0/k/f;->b:J

    add-long/2addr v6, v8

    invoke-static/range {v20 .. v21}, Lf/i/a/a/q;->b(J)J

    move-result-wide v8

    add-long v17, v8, v6

    .line 63
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-wide v6, v3, Lf/i/a/a/h1/t0/k/b;->a:J

    iget v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v6

    move/from16 v19, v8

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    invoke-direct/range {v14 .. v27}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;-><init>(JJIJJJLf/i/a/a/h1/t0/k/b;Ljava/lang/Object;)V

    .line 64
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v0, v1, v3}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 65
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:Z

    if-nez v1, :cond_15

    .line 66
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x1388

    if-eqz v2, :cond_12

    .line 67
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_12
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    if-eqz v1, :cond_13

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u()V

    goto :goto_c

    :cond_13
    if-eqz p1, :cond_15

    .line 70
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v2, v1, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v2, :cond_15

    iget-wide v1, v1, Lf/i/a/a/h1/t0/k/b;->e:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_15

    cmp-long v3, v1, v12

    if-nez v3, :cond_14

    goto :goto_b

    :cond_14
    move-wide v6, v1

    .line 71
    :goto_b
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:J

    add-long/2addr v1, v6

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 73
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    :goto_c
    return-void
.end method

.method public final t(Lf/i/a/a/h1/t0/k/m;Lf/i/a/a/l1/e0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/t0/k/m;",
            "Lf/i/a/a/l1/e0$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/l1/e0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lf/i/a/a/l1/m;

    iget-object p1, p1, Lf/i/a/a/h1/t0/k/m;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide p1

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v2, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v1, v2, v0, p1, p2}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroid/net/Uri;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    .line 8
    new-instance v0, Lf/i/a/a/l1/e0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lf/i/a/a/l1/m;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lf/i/a/a/l1/e0$a;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lf/i/a/a/l1/b0;

    .line 9
    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v4}, Lf/i/a/a/l1/w;->b(I)I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lf/i/a/a/l1/c0;

    invoke-virtual {v3, v0, v1, v2}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v4, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
