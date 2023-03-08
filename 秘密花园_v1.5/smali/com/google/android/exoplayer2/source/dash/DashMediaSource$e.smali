.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lf/i/a/a/l1/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/c0$b<",
        "Lf/i/a/a/l1/e0<",
        "Lf/i/a/a/h1/t0/k/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lf/i/a/a/l1/c0$e;JJZ)V
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lf/i/a/a/l1/e0;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q(Lf/i/a/a/l1/e0;JJ)V

    return-void
.end method

.method public p(Lf/i/a/a/l1/c0$e;JJLjava/io/IOException;I)Lf/i/a/a/l1/c0$c;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object/from16 v1, p0

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lf/i/a/a/l1/b0;

    .line 4
    move-object v4, v3

    check-cast v4, Lf/i/a/a/l1/w;

    const/4 v5, 0x4

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lf/i/a/a/l1/w;->c(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 5
    sget-object v3, Lf/i/a/a/l1/c0;->e:Lf/i/a/a/l1/c0$c;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 6
    invoke-static {v5, v3, v4}, Lf/i/a/a/l1/c0;->c(ZJ)Lf/i/a/a/l1/c0$c;

    move-result-object v3

    .line 7
    :goto_0
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v5, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 8
    iget-object v2, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 9
    iget-object v6, v2, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 10
    iget-object v7, v2, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 11
    iget v8, v0, Lf/i/a/a/l1/e0;->b:I

    .line 12
    iget-wide v13, v2, Lf/i/a/a/l1/g0;->b:J

    .line 13
    invoke-virtual {v3}, Lf/i/a/a/l1/c0$c;->a()Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v15, p6

    .line 14
    invoke-virtual/range {v4 .. v16}, Lf/i/a/a/h1/f0$a;->u(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v3
.end method

.method public r(Lf/i/a/a/l1/c0$e;JJ)V
    .locals 18

    move-wide/from16 v12, p2

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lf/i/a/a/l1/e0;

    move-object/from16 v14, p0

    .line 2
    iget-object v15, v14, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 3
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Lf/i/a/a/h1/f0$a;

    iget-object v2, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    .line 4
    iget-object v3, v0, Lf/i/a/a/l1/e0;->c:Lf/i/a/a/l1/g0;

    .line 5
    iget-object v4, v3, Lf/i/a/a/l1/g0;->c:Landroid/net/Uri;

    .line 6
    iget-object v5, v3, Lf/i/a/a/l1/g0;->d:Ljava/util/Map;

    .line 7
    iget v6, v0, Lf/i/a/a/l1/e0;->b:I

    .line 8
    iget-wide v10, v3, Lf/i/a/a/l1/g0;->b:J

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 9
    invoke-virtual/range {v1 .. v11}, Lf/i/a/a/h1/f0$a;->r(Lf/i/a/a/l1/p;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 10
    iget-object v1, v0, Lf/i/a/a/l1/e0;->e:Ljava/lang/Object;

    .line 11
    check-cast v1, Lf/i/a/a/h1/t0/k/b;

    .line 12
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v2

    .line 13
    :goto_0
    invoke-virtual {v1, v3}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v4

    iget-wide v4, v4, Lf/i/a/a/h1/t0/k/f;->b:J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 14
    iget-object v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 15
    invoke-virtual {v7, v6}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v7

    iget-wide v7, v7, Lf/i/a/a/h1/t0/k/f;->b:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-boolean v4, v1, Lf/i/a/a/h1/t0/k/b;->d:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    sub-int v4, v2, v6

    .line 17
    invoke-virtual {v1}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v7

    if-le v4, v7, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    iget-wide v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_3

    iget-wide v9, v1, Lf/i/a/a/h1/t0/k/b;->h:J

    const-wide/16 v16, 0x3e8

    mul-long v9, v9, v16

    cmp-long v4, v9, v7

    if-gtz v4, :cond_3

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 19
    iget v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:I

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Lf/i/a/a/l1/b0;

    iget v0, v0, Lf/i/a/a/l1/e0;->b:I

    .line 20
    check-cast v2, Lf/i/a/a/l1/w;

    invoke-virtual {v2, v0}, Lf/i/a/a/l1/w;->b(I)I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 21
    iget v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 22
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 23
    :cond_4
    new-instance v0, Lf/i/a/a/h1/t0/d;

    invoke-direct {v0}, Lf/i/a/a/h1/t0/d;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Ljava/io/IOException;

    goto/16 :goto_8

    .line 24
    :cond_5
    iput v3, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:I

    .line 25
    :cond_6
    iput-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    .line 26
    iget-boolean v4, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    iget-boolean v7, v1, Lf/i/a/a/h1/t0/k/b;->d:Z

    and-int/2addr v4, v7

    iput-boolean v4, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Z

    sub-long v7, v12, p4

    .line 27
    iput-wide v7, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:J

    .line 28
    iput-wide v12, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:J

    .line 29
    iget-object v1, v1, Lf/i/a/a/h1/t0/k/b;->j:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 30
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, v0, Lf/i/a/a/l1/e0;->a:Lf/i/a/a/l1/p;

    iget-object v0, v0, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    iget-object v4, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroid/net/Uri;

    if-ne v0, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_8

    .line 32
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-object v0, v0, Lf/i/a/a/h1/t0/k/b;->j:Landroid/net/Uri;

    iput-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroid/net/Uri;

    .line 33
    :cond_8
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_4
    if-nez v2, :cond_11

    .line 34
    iget-object v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v1, v0, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v1, :cond_10

    iget-object v0, v0, Lf/i/a/a/h1/t0/k/b;->i:Lf/i/a/a/h1/t0/k/m;

    if-eqz v0, :cond_10

    .line 35
    iget-object v1, v0, Lf/i/a/a/h1/t0/k/m;->a:Ljava/lang/String;

    const-string v2, "urn:mpeg:dash:utc:direct:2014"

    .line 36
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "urn:mpeg:dash:utc:direct:2012"

    .line 37
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    const-string v2, "urn:mpeg:dash:utc:http-iso:2014"

    .line 38
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "urn:mpeg:dash:utc:http-iso:2012"

    .line 39
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 40
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 41
    invoke-static {v1, v2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 42
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    goto :goto_8

    .line 44
    :cond_d
    :goto_5
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$i;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t(Lf/i/a/a/h1/t0/k/m;Lf/i/a/a/l1/e0$a;)V

    goto :goto_8

    .line 45
    :cond_e
    :goto_6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;-><init>()V

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t(Lf/i/a/a/h1/t0/k/m;Lf/i/a/a/l1/e0$a;)V

    goto :goto_8

    .line 46
    :cond_f
    :goto_7
    :try_start_1
    iget-object v0, v0, Lf/i/a/a/h1/t0/k/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lf/i/a/a/m1/h0;->d0(Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    iget-wide v2, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:J

    sub-long/2addr v0, v2

    .line 48
    iput-wide v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:J

    .line 49
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V
    :try_end_1
    .catch Lf/i/a/a/h0; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 50
    :catch_0
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    goto :goto_8

    .line 51
    :cond_10
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    goto :goto_8

    .line 52
    :cond_11
    iget v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    add-int/2addr v0, v6

    iput v0, v15, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:I

    .line 53
    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s(Z)V

    :goto_8
    return-void
.end method
