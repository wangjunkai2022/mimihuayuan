.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;
.super Lf/i/a/a/u0;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Lf/i/a/a/h1/t0/k/b;

.field public final i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJIJJJLf/i/a/a/h1/t0/k/b;Ljava/lang/Object;)V
    .locals 0
    .param p13    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lf/i/a/a/u0;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->b:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    .line 4
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:I

    .line 5
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    .line 6
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    .line 7
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    .line 8
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    .line 9
    iput-object p13, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lc/a/a/b/g/h;->q(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    .line 3
    iget-object v2, v2, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/f;

    .line 4
    iget-object v2, v2, Lf/i/a/a/h1/t0/k/f;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 5
    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    .line 7
    invoke-virtual {p3, p1}, Lf/i/a/a/h1/t0/k/b;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v7

    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    .line 9
    iget-object p3, p3, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/f;

    .line 10
    iget-wide v2, p1, Lf/i/a/a/h1/t0/k/f;->b:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {p1, v1}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object p1

    iget-wide v0, p1, Lf/i/a/a/h1/t0/k/f;->b:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 11
    invoke-virtual/range {v3 .. v10}, Lf/i/a/a/u0$b;->g(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lf/i/a/a/u0$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v0}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v0

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lc/a/a/b/g/h;->q(III)I

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;
    .locals 32

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Lc/a/a/b/g/h;->q(III)I

    .line 2
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    .line 3
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v5, v5, Lf/i/a/a/h1/t0/k/b;->d:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    move-wide/from16 v24, v3

    goto/16 :goto_4

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, p4, v8

    if-lez v5, :cond_2

    add-long v3, v3, p4

    .line 4
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    cmp-long v5, v3, v8

    if-lez v5, :cond_2

    move-wide/from16 v24, v6

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    add-long/2addr v8, v3

    .line 6
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v5, v1}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v10

    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v12}, Lf/i/a/a/h1/t0/k/b;->c()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    if-ge v5, v12, :cond_3

    cmp-long v12, v8, v10

    if-ltz v12, :cond_3

    sub-long/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    .line 8
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    invoke-virtual {v10, v5}, Lf/i/a/a/h1/t0/k/b;->e(I)J

    move-result-wide v10

    goto :goto_1

    .line 9
    :cond_3
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    .line 10
    invoke-virtual {v12, v5}, Lf/i/a/a/h1/t0/k/b;->b(I)Lf/i/a/a/h1/t0/k/f;

    move-result-object v5

    const/4 v12, 0x2

    .line 11
    iget-object v14, v5, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_5

    .line 12
    iget-object v2, v5, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/a;

    iget v2, v2, Lf/i/a/a/h1/t0/k/a;->b:I

    if-ne v2, v12, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, -0x1

    :goto_3
    if-ne v15, v13, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    iget-object v2, v5, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/a;

    iget-object v2, v2, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/t0/k/i;

    invoke-virtual {v2}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v2, v10, v11}, Lf/i/a/a/h1/t0/f;->g(J)I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    invoke-interface {v2, v8, v9, v10, v11}, Lf/i/a/a/h1/t0/f;->a(JJ)J

    move-result-wide v10

    .line 17
    invoke-interface {v2, v10, v11}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v10

    add-long/2addr v10, v3

    sub-long v3, v10, v8

    goto/16 :goto_0

    :goto_4
    if-eqz p3, :cond_8

    .line 18
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:Ljava/lang/Object;

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    move-object/from16 v17, v2

    .line 19
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:Lf/i/a/a/h1/t0/k/b;

    iget-boolean v3, v2, Lf/i/a/a/h1/t0/k/b;->d:Z

    if-eqz v3, :cond_9

    iget-wide v3, v2, Lf/i/a/a/h1/t0/k/b;->e:J

    cmp-long v5, v3, v6

    if-eqz v5, :cond_9

    iget-wide v2, v2, Lf/i/a/a/h1/t0/k/b;->b:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_9

    const/16 v23, 0x1

    goto :goto_6

    :cond_9
    const/16 v23, 0x0

    .line 20
    :goto_6
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->b:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    const/16 v22, 0x1

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:J

    const/16 v28, 0x0

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v29, v7, -0x1

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    move-object/from16 v16, p2

    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    move-wide/from16 v26, v5

    move-wide/from16 v30, v7

    .line 22
    invoke-virtual/range {v16 .. v31}, Lf/i/a/a/u0$c;->b(Ljava/lang/Object;JJZZJJIIJ)Lf/i/a/a/u0$c;

    return-object p2
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
