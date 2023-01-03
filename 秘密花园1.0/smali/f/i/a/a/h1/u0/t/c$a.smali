.class public final Lf/i/a/a/h1/u0/t/c$a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lf/i/a/a/l1/c0$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/l1/e0<",
        "Lf/i/a/a/h1/u0/t/g;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lf/i/a/a/l1/c0;

.field public final c:Lf/i/a/a/l1/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0<",
            "Lf/i/a/a/h1/u0/t/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lf/i/a/a/h1/u0/t/f;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:Ljava/io/IOException;

.field public final synthetic k:Lf/i/a/a/h1/u0/t/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    .line 3
    new-instance v0, Lf/i/a/a/l1/c0;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lf/i/a/a/l1/c0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/i/a/a/h1/u0/t/c$a;->b:Lf/i/a/a/l1/c0;

    .line 4
    new-instance v0, Lf/i/a/a/l1/e0;

    .line 5
    iget-object v1, p1, Lf/i/a/a/h1/u0/t/c;->a:Lf/i/a/a/h1/u0/h;

    const/4 v2, 0x4

    .line 6
    invoke-interface {v1, v2}, Lf/i/a/a/h1/u0/h;->a(I)Lf/i/a/a/l1/m;

    move-result-object v1

    .line 7
    iget-object p1, p1, Lf/i/a/a/h1/u0/t/c;->g:Lf/i/a/a/l1/e0$a;

    .line 8
    invoke-direct {v0, v1, p2, v2, p1}, Lf/i/a/a/l1/e0;-><init>(Lf/i/a/a/l1/m;Landroid/net/Uri;ILf/i/a/a/l1/e0$a;)V

    iput-object v0, p0, Lf/i/a/a/h1/u0/t/c$a;->c:Lf/i/a/a/l1/e0;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf/i/a/a/h1/u0/t/c$a;->h:J

    .line 2
    iget-object p1, p0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    iget-object p2, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 3
    iget-object p2, p2, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 5
    iget-object v1, p1, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    iget-object v1, v1, Lf/i/a/a/h1/u0/t/e;->e:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 8
    iget-object v6, p1, Lf/i/a/a/h1/u0/t/c;->d:Ljava/util/HashMap;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v7, v7, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/h1/u0/t/c$a;

    .line 9
    iget-wide v7, v6, Lf/i/a/a/h1/u0/t/c$a;->h:J

    cmp-long v9, v3, v7

    if-lez v9, :cond_0

    .line 10
    iget-object v1, v6, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    .line 11
    iput-object v1, p1, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 12
    invoke-virtual {v6}, Lf/i/a/a/h1/u0/t/c$a;->b()V

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public b()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lf/i/a/a/h1/u0/t/c$a;->h:J

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/h1/u0/t/c$a;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c$a;->b:Lf/i/a/a/l1/c0;

    invoke-virtual {v0}, Lf/i/a/a/l1/c0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lf/i/a/a/h1/u0/t/c$a;->g:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, p0, Lf/i/a/a/h1/u0/t/c$a;->i:Z

    .line 6
    iget-object v4, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 7
    iget-object v4, v4, Lf/i/a/a/h1/u0/t/c;->j:Landroid/os/Handler;

    sub-long/2addr v2, v0

    .line 8
    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/t/c$a;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/u0/t/c$a;->b:Lf/i/a/a/l1/c0;

    iget-object v1, p0, Lf/i/a/a/h1/u0/t/c$a;->c:Lf/i/a/a/l1/e0;

    iget-object v2, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 2
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    .line 3
    iget v3, v1, Lf/i/a/a/l1/e0;->b:I

    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v3}, Lf/i/a/a/l1/w;->b(I)I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, p0, v2}, Lf/i/a/a/l1/c0;->g(Lf/i/a/a/l1/c0$e;Lf/i/a/a/l1/c0$b;I)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 6
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    .line 7
    iget-object v3, p0, Lf/i/a/a/h1/u0/t/c$a;->c:Lf/i/a/a/l1/e0;

    iget-object v4, v3, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget v3, v3, Lf/i/a/a/l1/e0;->b:I

    invoke-virtual {v2, v4, v3, v0, v1}, Lf/i/a/a/h1/f0$a;->x(Lf/i/a/a/l1/p;IJ)V

    return-void
.end method

.method public final d(Lf/i/a/a/h1/u0/t/f;J)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    iput-wide v3, v0, Lf/i/a/a/h1/u0/t/c$a;->e:J

    .line 4
    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    invoke-static {v5, v2, v1}, Lf/i/a/a/h1/u0/t/c;->b(Lf/i/a/a/h1/u0/t/c;Lf/i/a/a/h1/u0/t/f;Lf/i/a/a/h1/u0/t/f;)Lf/i/a/a/h1/u0/t/f;

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    if-eq v5, v2, :cond_b

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->j:Ljava/io/IOException;

    .line 6
    iput-wide v3, v0, Lf/i/a/a/h1/u0/t/c$a;->f:J

    .line 7
    iget-object v8, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    iget-object v9, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    .line 8
    iget-object v10, v8, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 9
    iget-object v9, v8, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    const/4 v11, 0x1

    if-nez v9, :cond_0

    .line 10
    iget-boolean v9, v5, Lf/i/a/a/h1/u0/t/f;->l:Z

    xor-int/2addr v9, v11

    iput-boolean v9, v8, Lf/i/a/a/h1/u0/t/c;->o:Z

    .line 11
    iget-wide v12, v5, Lf/i/a/a/h1/u0/t/f;->f:J

    iput-wide v12, v8, Lf/i/a/a/h1/u0/t/c;->p:J

    .line 12
    :cond_0
    iput-object v5, v8, Lf/i/a/a/h1/u0/t/c;->n:Lf/i/a/a/h1/u0/t/f;

    .line 13
    iget-object v9, v8, Lf/i/a/a/h1/u0/t/c;->k:Lf/i/a/a/h1/u0/t/j$e;

    check-cast v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    if-eqz v9, :cond_9

    .line 14
    iget-boolean v1, v5, Lf/i/a/a/h1/u0/t/f;->m:Z

    if-eqz v1, :cond_1

    iget-wide v12, v5, Lf/i/a/a/h1/u0/t/f;->f:J

    invoke-static {v12, v13}, Lf/i/a/a/q;->b(J)J

    move-result-wide v12

    move-wide/from16 v17, v12

    goto :goto_0

    :cond_1
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    :goto_0
    iget v1, v5, Lf/i/a/a/h1/u0/t/f;->d:I

    const/4 v12, 0x2

    if-eq v1, v12, :cond_3

    if-ne v1, v11, :cond_2

    goto :goto_1

    :cond_2
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_3
    :goto_1
    move-wide/from16 v15, v17

    .line 16
    :goto_2
    iget-wide v12, v5, Lf/i/a/a/h1/u0/t/f;->e:J

    .line 17
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    check-cast v1, Lf/i/a/a/h1/u0/t/c;

    .line 18
    iget-boolean v14, v1, Lf/i/a/a/h1/u0/t/c;->o:Z

    const-wide/16 v19, 0x0

    if-eqz v14, :cond_7

    .line 19
    iget-wide v10, v5, Lf/i/a/a/h1/u0/t/f;->f:J

    .line 20
    iget-wide v6, v1, Lf/i/a/a/h1/u0/t/c;->p:J

    sub-long v23, v10, v6

    .line 21
    iget-boolean v1, v5, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-eqz v1, :cond_4

    iget-wide v6, v5, Lf/i/a/a/h1/u0/t/f;->p:J

    add-long v6, v23, v6

    goto :goto_3

    :cond_4
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    :goto_3
    iget-object v1, v5, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v12, v10

    if-nez v14, :cond_6

    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    .line 24
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/t/f$a;

    iget-wide v12, v1, Lf/i/a/a/h1/u0/t/f$a;->e:J

    move-wide/from16 v19, v12

    :goto_4
    move-wide/from16 v25, v19

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    move-wide/from16 v25, v12

    .line 25
    :goto_5
    new-instance v1, Lf/i/a/a/h1/n0;

    iget-wide v12, v5, Lf/i/a/a/h1/u0/t/f;->p:J

    const/16 v27, 0x1

    iget-boolean v10, v5, Lf/i/a/a/h1/u0/t/f;->l:Z

    const/4 v14, 0x1

    xor-int/lit8 v28, v10, 0x1

    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Ljava/lang/Object;

    move-object v14, v1

    move-wide/from16 v19, v6

    move-wide/from16 v21, v12

    move-object/from16 v29, v10

    invoke-direct/range {v14 .. v29}, Lf/i/a/a/h1/n0;-><init>(JJJJJJZZLjava/lang/Object;)V

    goto :goto_7

    :cond_7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    cmp-long v1, v12, v6

    if-nez v1, :cond_8

    move-wide/from16 v25, v19

    goto :goto_6

    :cond_8
    move-wide/from16 v25, v12

    .line 26
    :goto_6
    new-instance v1, Lf/i/a/a/h1/n0;

    iget-wide v6, v5, Lf/i/a/a/h1/u0/t/f;->p:J

    const-wide/16 v23, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Ljava/lang/Object;

    move-object v14, v1

    move-wide/from16 v19, v6

    move-wide/from16 v21, v6

    move-object/from16 v29, v10

    invoke-direct/range {v14 .. v29}, Lf/i/a/a/h1/n0;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 27
    :goto_7
    new-instance v6, Lf/i/a/a/h1/u0/j;

    iget-object v7, v9, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lf/i/a/a/h1/u0/t/j;

    check-cast v7, Lf/i/a/a/h1/u0/t/c;

    .line 28
    iget-object v7, v7, Lf/i/a/a/h1/u0/t/c;->l:Lf/i/a/a/h1/u0/t/e;

    .line 29
    invoke-direct {v6, v7, v5}, Lf/i/a/a/h1/u0/j;-><init>(Lf/i/a/a/h1/u0/t/e;Lf/i/a/a/h1/u0/t/f;)V

    invoke-virtual {v9, v1, v6}, Lf/i/a/a/h1/o;->m(Lf/i/a/a/u0;Ljava/lang/Object;)V

    goto :goto_8

    .line 30
    :cond_9
    throw v1

    :cond_a
    const/4 v11, 0x0

    .line 31
    :goto_8
    iget-object v1, v8, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v1, :cond_d

    .line 32
    iget-object v5, v8, Lf/i/a/a/h1/u0/t/c;->e:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/u0/t/j$b;

    invoke-interface {v5}, Lf/i/a/a/h1/u0/t/j$b;->a()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 33
    :cond_b
    iget-boolean v5, v5, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-nez v5, :cond_d

    .line 34
    iget-wide v5, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    iget-object v1, v1, Lf/i/a/a/h1/u0/t/f;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    iget-wide v7, v1, Lf/i/a/a/h1/u0/t/f;->i:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_c

    .line 35
    new-instance v1, Lf/i/a/a/h1/u0/t/j$c;

    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Lf/i/a/a/h1/u0/t/j$c;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->j:Ljava/io/IOException;

    .line 36
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    iget-object v5, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v5, v6, v7}, Lf/i/a/a/h1/u0/t/c;->a(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;J)Z

    goto :goto_a

    .line 37
    :cond_c
    iget-wide v5, v0, Lf/i/a/a/h1/u0/t/c$a;->f:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-wide v7, v1, Lf/i/a/a/h1/u0/t/f;->k:J

    .line 38
    invoke-static {v7, v8}, Lf/i/a/a/q;->b(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 39
    iget-wide v9, v1, Lf/i/a/a/h1/u0/t/c;->f:D

    mul-double v7, v7, v9

    cmpl-double v1, v5, v7

    if-lez v1, :cond_d

    .line 40
    new-instance v9, Lf/i/a/a/h1/u0/t/j$d;

    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    invoke-direct {v9, v1}, Lf/i/a/a/h1/u0/t/j$d;-><init>(Landroid/net/Uri;)V

    iput-object v9, v0, Lf/i/a/a/h1/u0/t/c$a;->j:Ljava/io/IOException;

    .line 41
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 42
    iget-object v1, v1, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    const/4 v6, 0x4

    const/4 v10, 0x1

    .line 43
    move-object v5, v1

    check-cast v5, Lf/i/a/a/l1/w;

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lf/i/a/a/l1/w;->a(IJLjava/io/IOException;I)J

    move-result-wide v5

    .line 44
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    iget-object v7, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/u0/t/c;->a(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;J)Z

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-eqz v1, :cond_d

    .line 45
    invoke-virtual {v0, v5, v6}, Lf/i/a/a/h1/u0/t/c$a;->a(J)Z

    .line 46
    :cond_d
    :goto_a
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    if-eq v1, v2, :cond_e

    iget-wide v1, v1, Lf/i/a/a/h1/u0/t/f;->k:J

    goto :goto_b

    :cond_e
    iget-wide v1, v1, Lf/i/a/a/h1/u0/t/f;->k:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    .line 47
    :goto_b
    invoke-static {v1, v2}, Lf/i/a/a/q;->b(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/c$a;->g:J

    .line 48
    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 49
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/c;->m:Landroid/net/Uri;

    .line 50
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->d:Lf/i/a/a/h1/u0/t/f;

    iget-boolean v1, v1, Lf/i/a/a/h1/u0/t/f;->l:Z

    if-nez v1, :cond_f

    .line 51
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/t/c$a;->b()V

    :cond_f
    return-void
.end method

.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 14

    .line 1
    move-object v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 3
    iget-object v3, v2, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    .line 4
    iget-object v4, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 5
    iget-object v0, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 6
    iget-object v5, v0, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 7
    iget-object v6, v0, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v7, 0x4

    .line 8
    iget-wide v12, v0, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 9
    invoke-virtual/range {v3 .. v13}, Lf/i/a/a/h1/f0$a;->o(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 3
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    .line 4
    iget v4, v1, Lf/i/a/a/l1/e0;->b:I

    move-object v3, v2

    check-cast v3, Lf/i/a/a/l1/w;

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/l1/w;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 5
    :goto_0
    iget-object v9, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    iget-object v10, v0, Lf/i/a/a/h1/u0/t/c$a;->a:Landroid/net/Uri;

    .line 6
    invoke-static {v9, v10, v2, v3}, Lf/i/a/a/h1/u0/t/c;->a(Lf/i/a/a/h1/u0/t/c;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 7
    invoke-virtual {v0, v2, v3}, Lf/i/a/a/h1/u0/t/c$a;->a(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    .line 8
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 9
    iget-object v2, v2, Lf/i/a/a/h1/u0/t/c;->c:Lf/i/a/a/l1/b0;

    .line 10
    iget v9, v1, Lf/i/a/a/l1/e0;->b:I

    move-object v8, v2

    check-cast v8, Lf/i/a/a/l1/w;

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v8 .. v13}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    .line 11
    invoke-static {v7, v2, v3}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v2, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    goto :goto_3

    .line 12
    :cond_5
    sget-object v2, Lf/i/a/a/l1/c0;->d:Lf/i/a/a/l1/c0$c;

    .line 13
    :goto_3
    iget-object v3, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 14
    iget-object v7, v3, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    .line 15
    iget-object v8, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 16
    iget-object v1, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 17
    iget-object v9, v1, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 18
    iget-object v10, v1, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v11, 0x4

    .line 19
    iget-wide v3, v1, Lf/i/a/a/l1/g0;->b:J

    .line 20
    invoke-virtual {v2}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-wide/from16 v16, v3

    move-object/from16 v18, p6

    .line 21
    invoke-virtual/range {v7 .. v19}, Lf/i/a/a/h1/f0$a;->u(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v2, v1, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;

    .line 3
    check-cast v2, Lf/i/a/a/h1/u0/t/g;

    .line 4
    instance-of v3, v2, Lf/i/a/a/h1/u0/t/f;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lf/i/a/a/h1/u0/t/f;

    move-wide/from16 v10, p4

    invoke-virtual {p0, v2, v10, v11}, Lf/i/a/a/h1/u0/t/c$a;->d(Lf/i/a/a/h1/u0/t/f;J)V

    .line 6
    iget-object v2, v0, Lf/i/a/a/h1/u0/t/c$a;->k:Lf/i/a/a/h1/u0/t/c;

    .line 7
    iget-object v3, v2, Lf/i/a/a/h1/u0/t/c;->h:Lf/i/a/a/h1/f0$a;

    .line 8
    iget-object v4, v1, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 9
    iget-object v1, v1, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 10
    iget-object v5, v1, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 11
    iget-object v6, v1, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    const/4 v7, 0x4

    .line 12
    iget-wide v12, v1, Lf/i/a/a/l1/g0;->b:J

    move-wide/from16 v8, p2

    .line 13
    invoke-virtual/range {v3 .. v13}, Lf/i/a/a/h1/f0$a;->r(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/i/a/a/h1/u0/t/c$a;->j:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/t/c$a;->i:Z

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/t/c$a;->c()V

    return-void
.end method
