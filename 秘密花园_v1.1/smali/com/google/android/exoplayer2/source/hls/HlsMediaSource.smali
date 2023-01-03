.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lf/i/a/a/h1/o;
.source "HlsMediaSource.java"

# interfaces
.implements Lf/i/a/a/h1/u0/t/j$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final f:Lf/i/a/a/h1/u0/i;

.field public final g:Landroid/net/Uri;

.field public final h:Lf/i/a/a/h1/u0/h;

.field public final i:Lf/i/a/a/h1/v;

.field public final j:Lf/i/a/a/l1/b0;

.field public final k:Z

.field public final l:Z

.field public final m:Lf/i/a/a/h1/u0/t/j;

.field public final n:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lf/i/a/a/h1/u0/h;Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/u0/t/j;ZZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/h1/o;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lf/i/a/a/h1/u0/h;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lf/i/a/a/h1/u0/i;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lf/i/a/a/h1/v;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lf/i/a/a/l1/b0;

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    .line 8
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Z

    .line 9
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c;->i:Lf/i/a/a/l1/c0;

    if-eqz v1, :cond_0

    const/high16 v2, -0x80000000

    .line 3
    invoke-virtual {v1, v2}, Lf/i/a/a/l1/c0;->e(I)V

    .line 4
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/u0/t/c;->f(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/o;->b:Lf/i/a/a/h1/f0$a;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v1, v2, v5, v3, v4}, Lf/i/a/a/h1/f0$a;->D(ILf/i/a/a/h1/e0$a;J)Lf/i/a/a/h1/f0$a;

    move-result-object v11

    .line 2
    new-instance v1, Lf/i/a/a/h1/u0/l;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lf/i/a/a/h1/u0/i;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lf/i/a/a/h1/u0/h;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lf/i/a/a/l1/i0;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lf/i/a/a/l1/b0;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lf/i/a/a/h1/v;

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Z

    move-object v5, v1

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v15}, Lf/i/a/a/h1/u0/l;-><init>(Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/u0/t/j;Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/f0$a;Lf/i/a/a/l1/e;Lf/i/a/a/h1/v;ZZ)V

    return-object v1
.end method

.method public d(Lf/i/a/a/h1/d0;)V
    .locals 10

    .line 1
    check-cast p1, Lf/i/a/a/h1/u0/l;

    .line 2
    iget-object v0, p1, Lf/i/a/a/h1/u0/l;->b:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    .line 3
    iget-object v0, v0, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p1, Lf/i/a/a/h1/u0/l;->p:[Lf/i/a/a/h1/u0/n;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 5
    iget-boolean v6, v5, Lf/i/a/a/h1/u0/n;->z:Z

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, v5, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 7
    invoke-virtual {v9}, Lf/i/a/a/h1/j0;->j()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8
    :cond_0
    iget-object v6, v5, Lf/i/a/a/h1/u0/n;->g:Lf/i/a/a/l1/c0;

    invoke-virtual {v6, v5}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    .line 9
    iget-object v6, v5, Lf/i/a/a/h1/u0/n;->n:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 10
    iput-boolean v4, v5, Lf/i/a/a/h1/u0/n;->D:Z

    .line 11
    iget-object v4, v5, Lf/i/a/a/h1/u0/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iput-object v4, p1, Lf/i/a/a/h1/u0/l;->m:Lf/i/a/a/h1/d0$a;

    .line 13
    iget-object p1, p1, Lf/i/a/a/h1/u0/l;->f:Lf/i/a/a/h1/f0$a;

    invoke-virtual {p1}, Lf/i/a/a/h1/f0$a;->z()V

    return-void
.end method

.method public l(Lf/i/a/a/l1/i0;)V
    .locals 6
    .param p1    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lf/i/a/a/l1/i0;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/o;->j(Lf/i/a/a/h1/e0$a;)Lf/i/a/a/h1/f0$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    check-cast v1, Lf/i/a/a/h1/u0/t/c;

    if-eqz v1, :cond_1

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, v1, Lf/i/a/a/h1/u0/t/c;->j:Landroid/os/Handler;

    .line 5
    iput-object v0, v1, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    .line 6
    iput-object p0, v1, Lf/i/a/a/h1/u0/t/c;->k:Lf/i/a/a/h1/u0/t/j$e;

    .line 7
    new-instance p1, Lf/i/a/a/l1/e0;

    iget-object v3, v1, Lf/i/a/a/h1/u0/t/c;->a:Lf/i/a/a/h1/u0/h;

    const/4 v4, 0x4

    .line 8
    invoke-interface {v3, v4}, Lf/i/a/a/h1/u0/h;->a(I)Lf/i/a/a/l1/m;

    move-result-object v3

    iget-object v5, v1, Lf/i/a/a/h1/u0/t/c;->b:Lf/i/a/a/h1/u0/t/i;

    .line 9
    invoke-interface {v5}, Lf/i/a/a/h1/u0/t/i;->b()Lf/i/a/a/l1/e0$a;

    move-result-object v5

    invoke-direct {p1, v3, v2, v4, v5}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    .line 10
    iget-object v2, v1, Lf/i/a/a/h1/u0/t/c;->i:Lf/i/a/a/l1/c0;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 11
    new-instance v2, Lf/i/a/a/l1/c0;

    const-string v3, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {v2, v3}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lf/i/a/a/h1/u0/t/c;->i:Lf/i/a/a/l1/c0;

    .line 12
    iget-object v3, v1, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    iget v4, p1, Lf/i/a/a/l1/e0;->b:I

    .line 13
    check-cast v3, Lf/i/a/a/l1/w;

    invoke-virtual {v3, v4}, Lf/i/a/a/l1/w;->b(I)I

    move-result v3

    .line 14
    invoke-virtual {v2, p1, v1, v3}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v1

    .line 15
    iget-object v3, p1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget p1, p1, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v0, v3, p1, v1, v2}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    return-void

    .line 16
    :cond_1
    throw p1
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    check-cast v0, Lf/i/a/a/h1/u0/t/c;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 3
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    .line 4
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v2, v0, Lf/i/a/a/h1/u0/t/c;->p:J

    .line 6
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c;->i:Lf/i/a/a/l1/c0;

    .line 7
    invoke-virtual {v2, v1}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    .line 8
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c;->i:Lf/i/a/a/l1/c0;

    .line 9
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/u0/t/c$a;

    .line 10
    iget-object v3, v3, Lf/i/a/a/h1/u0/t/c$a;->b:Lf/i/a/a/l1/c0;

    .line 11
    invoke-virtual {v3, v1}, Lf/i/a/a/l1/c0;->f(Lf/i/a/a/l1/c0$f;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c;->j:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c;->j:Landroid/os/Handler;

    .line 14
    iget-object v0, v0, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
