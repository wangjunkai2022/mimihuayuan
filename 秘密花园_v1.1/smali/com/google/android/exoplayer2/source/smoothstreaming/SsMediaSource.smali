.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lf/i/a/a/h1/o;
.source "SsMediaSource.java"

# interfaces
.implements Lf/i/a/a/l1/c0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/a/a/h1/o;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/l1/e0<",
        "Lf/i/a/a/h1/v0/e/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final f:Z

.field public final g:Landroid/net/Uri;

.field public final h:Lf/i/a/a/l1/m$a;

.field public final i:Lf/i/a/a/h1/v0/c$a;

.field public final j:Lf/i/a/a/h1/v;

.field public final k:Lf/i/a/a/l1/b0;

.field public final l:J

.field public final m:Lf/i/a/a/h1/f0$a;

.field public final n:Lf/i/a/a/l1/e0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "+",
            "Lf/i/a/a/h1/v0/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/v0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Lf/i/a/a/l1/m;

.field public r:Lf/i/a/a/l1/c0;

.field public s:Lf/i/a/a/l1/d0;

.field public t:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public u:J

.field public v:Lf/i/a/a/h1/v0/e/a;

.field public w:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/v0/e/a;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/e0$a;Lf/i/a/a/h1/v0/c$a;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;JLjava/lang/Object;Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    .line 4
    invoke-static {p2}, Lc/a/a/b/g/h;->Q(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->g:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lf/i/a/a/l1/m$a;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lf/i/a/a/l1/e0$a;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Lf/i/a/a/h1/v0/c$a;

    .line 8
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Lf/i/a/a/h1/v;

    .line 9
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lf/i/a/a/l1/b0;

    .line 10
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:J

    .line 11
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/o;->j(Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/f0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:Z

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 11

    .line 1
    iget-object p3, p0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    const/4 p4, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p4, p1, v0, v1}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object v8

    .line 2
    new-instance p1, Lf/i/a/a/h1/v0/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Lf/i/a/a/h1/v0/c$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Lf/i/a/a/l1/i0;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Lf/i/a/a/h1/v;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lf/i/a/a/l1/b0;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lf/i/a/a/l1/d0;

    move-object v2, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lf/i/a/a/h1/v0/d;-><init>(Lf/i/a/a/h1/v0/e/a;Lf/i/a/a/h1/v0/c$a;Lf/i/a/a/l1/i0;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/l1/d0;Lf/i/a/a/l1/e;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lf/i/a/a/h1/v0/d;

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 3
    invoke-virtual {v5, v4}, Lf/i/a/a/h1/s0/g;->B(Lf/i/a/a/h1/s0/g$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v4, v0, Lf/i/a/a/h1/v0/d;->i:Lf/i/a/a/h1/d0$a;

    .line 5
    iget-object v0, v0, Lf/i/a/a/h1/v0/d;->e:Lf/i/a/a/h1/f0$a;

    invoke-virtual {v0}, Lf/i/a/a/h1/f0$a;->z()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 13

    .line 1
    move-object v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v3, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object v4, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 4
    iget-object v5, v4, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    iget-object v6, v4, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 6
    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    .line 7
    iget-wide v11, v4, Lf/i/a/a/l1/g0;->b:J

    move-object v4, v5

    move-object v5, v6

    move v6, v0

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 8
    invoke-virtual/range {v2 .. v12}, Lf/i/a/a/h1/f0$a;->o(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 4
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Lf/i/a/a/l1/i0;

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lf/i/a/a/l1/d0$a;

    invoke-direct {p1}, Lf/i/a/a/l1/d0$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lf/i/a/a/l1/d0;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lf/i/a/a/l1/m$a;

    invoke-interface {p1}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Lf/i/a/a/l1/m;

    .line 6
    new-instance p1, Lf/i/a/a/l1/c0;

    const-string v0, "Loader:Manifest"

    invoke-direct {p1, v0}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lf/i/a/a/l1/c0;

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lf/i/a/a/l1/d0;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Landroid/os/Handler;

    .line 9
    new-instance p1, Lf/i/a/a/l1/e0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Lf/i/a/a/l1/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lf/i/a/a/l1/e0$a;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v1, v3, v2}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lf/i/a/a/l1/c0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lf/i/a/a/l1/b0;

    iget v2, p1, Lf/i/a/a/l1/e0;->b:I

    .line 11
    check-cast v1, Lf/i/a/a/l1/w;

    invoke-virtual {v1, v2}, Lf/i/a/a/l1/w;->b(I)I

    move-result v1

    .line 12
    invoke-virtual {v0, p1, p0, v1}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v3, p1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget p1, p1, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Lf/i/a/a/l1/m;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:J

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lf/i/a/a/l1/c0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lf/i/a/a/l1/c0;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/v0/d;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    .line 3
    iput-object v4, v3, Lf/i/a/a/h1/v0/d;->j:Lf/i/a/a/h1/v0/e/a;

    .line 4
    iget-object v5, v3, Lf/i/a/a/h1/v0/d;->k:[Lf/i/a/a/h1/s0/g;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 5
    iget-object v8, v8, Lf/i/a/a/h1/s0/g;->e:Lf/i/a/a/h1/s0/h;

    .line 6
    check-cast v8, Lf/i/a/a/h1/v0/c;

    invoke-interface {v8, v4}, Lf/i/a/a/h1/v0/c;->g(Lf/i/a/a/h1/v0/e/a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, v3, Lf/i/a/a/h1/v0/d;->i:Lf/i/a/a/h1/d0$a;

    invoke-interface {v4, v3}, Lf/i/a/a/h1/l0$a;->i(Lf/i/a/a/h1/l0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-object v4, v4, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v14, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    aget-object v9, v4, v8

    .line 9
    iget v10, v9, Lf/i/a/a/h1/v0/e/a$b;->k:I

    if-lez v10, :cond_2

    .line 10
    iget-object v10, v9, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v11, v10, v1

    .line 11
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 12
    iget v10, v9, Lf/i/a/a/h1/v0/e/a$b;->k:I

    add-int/lit8 v11, v10, -0x1

    .line 13
    iget-object v12, v9, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v11, v12, v11

    add-int/lit8 v10, v10, -0x1

    .line 14
    invoke-virtual {v9, v10}, Lf/i/a/a/h1/v0/e/a$b;->c(I)J

    move-result-wide v9

    add-long/2addr v9, v11

    .line 15
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v6

    if-nez v1, :cond_5

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v1, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    if-eqz v1, :cond_4

    move-wide v11, v8

    goto :goto_3

    :cond_4
    move-wide v11, v4

    .line 17
    :goto_3
    new-instance v1, Lf/i/a/a/h1/n0;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v2, v2, Lf/i/a/a/h1/v0/e/a;->d:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Ljava/lang/Object;

    move-object v10, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v10 .. v21}, Lf/i/a/a/h1/n0;-><init>(JJJJZZLjava/lang/Object;)V

    goto :goto_5

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v6, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    if-eqz v6, :cond_8

    .line 19
    iget-wide v6, v1, Lf/i/a/a/h1/v0/e/a;->h:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_6

    cmp-long v1, v6, v4

    if-lez v1, :cond_6

    sub-long v4, v2, v6

    .line 20
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_6
    move-wide/from16 v21, v14

    sub-long v19, v2, v21

    .line 21
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:J

    invoke-static {v1, v2}, Lf/i/a/a/q;->a(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    const-wide/16 v1, 0x2

    .line 22
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_7
    move-wide/from16 v23, v1

    .line 23
    new-instance v1, Lf/i/a/a/h1/n0;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Ljava/lang/Object;

    move-object/from16 v16, v1

    move-object/from16 v27, v2

    invoke-direct/range {v16 .. v27}, Lf/i/a/a/h1/n0;-><init>(JJJJZZLjava/lang/Object;)V

    goto :goto_5

    .line 24
    :cond_8
    iget-wide v4, v1, Lf/i/a/a/h1/v0/e/a;->g:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_9

    move-wide v12, v4

    goto :goto_4

    :cond_9
    sub-long/2addr v2, v14

    move-wide v12, v2

    .line 25
    :goto_4
    new-instance v1, Lf/i/a/a/h1/n0;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Ljava/lang/Object;

    move-object v9, v1

    move-object/from16 v20, v2

    invoke-direct/range {v9 .. v20}, Lf/i/a/a/h1/n0;-><init>(JJJJZZLjava/lang/Object;)V

    .line 26
    :goto_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lf/i/a/a/l1/b0;

    .line 3
    move-object v3, v2

    check-cast v3, Lf/i/a/a/l1/w;

    const/4 v4, 0x4

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    sget-object v2, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    invoke-static {v4, v2, v3}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v2

    .line 6
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v4, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 7
    iget-object v5, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 8
    iget-object v6, v5, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 9
    iget-object v7, v5, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 10
    iget v1, v1, Lf/i/a/a/l1/e0;->b:I

    .line 11
    iget-wide v12, v5, Lf/i/a/a/l1/g0;->b:J

    .line 12
    invoke-virtual {v2}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v5

    xor-int/lit8 v15, v5, 0x1

    move-object v5, v6

    move-object v6, v7

    move v7, v1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 13
    invoke-virtual/range {v3 .. v15}, Lf/i/a/a/h1/f0$a;->u(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final q()V
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/l1/e0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Lf/i/a/a/l1/m;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->g:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lf/i/a/a/l1/e0$a;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4, v3}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lf/i/a/a/l1/c0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lf/i/a/a/l1/b0;

    iget v3, v0, Lf/i/a/a/l1/e0;->b:I

    .line 3
    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v3}, Lf/i/a/a/l1/w;->b(I)I

    move-result v2

    .line 4
    invoke-virtual {v1, v0, p0, v2}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v4, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    return-void
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 13

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v3, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 3
    iget-object v4, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 4
    iget-object v5, v4, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 5
    iget-object v6, v4, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 6
    iget v7, v1, Lf/i/a/a/l1/e0;->b:I

    .line 7
    iget-wide v11, v4, Lf/i/a/a/l1/g0;->b:J

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 8
    invoke-virtual/range {v2 .. v12}, Lf/i/a/a/h1/f0$a;->r(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 9
    iget-object v1, v1, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;

    .line 10
    check-cast v1, Lf/i/a/a/h1/v0/e/a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    sub-long v1, p2, p4

    .line 11
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:J

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o()V

    .line 13
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v1, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:J

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 16
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Landroid/os/Handler;

    new-instance v4, Lf/i/a/a/h1/v0/a;

    invoke-direct {v4, p0}, Lf/i/a/a/h1/v0/a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
