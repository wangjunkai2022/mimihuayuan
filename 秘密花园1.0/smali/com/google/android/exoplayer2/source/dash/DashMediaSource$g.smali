.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->a:Z

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->b:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;->c:J

    return-void
.end method

.method public static a(Lf/i/a/a/h1/t0/k/f;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    .line 2
    iget-object v7, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/i/a/a/h1/t0/k/a;

    iget v7, v7, Lf/i/a/a/h1/t0/k/a;->b:I

    if-eq v7, v6, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-wide v7, 0x7fffffffffffffffL

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v11, v1, :cond_8

    .line 3
    iget-object v6, v0, Lf/i/a/a/h1/t0/k/f;->c:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/h1/t0/k/a;

    if-eqz v3, :cond_4

    .line 4
    iget v9, v6, Lf/i/a/a/h1/t0/k/a;->b:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    :cond_3
    move/from16 v17, v3

    move/from16 v18, v11

    goto :goto_4

    .line 5
    :cond_4
    iget-object v6, v6, Lf/i/a/a/h1/t0/k/a;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/h1/t0/k/i;

    invoke-virtual {v6}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v6

    if-nez v6, :cond_5

    .line 6
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;-><init>(ZJJ)V

    return-object v6

    .line 7
    :cond_5
    invoke-interface {v6}, Lf/i/a/a/h1/t0/f;->e()Z

    move-result v9

    or-int/2addr v12, v9

    .line 8
    invoke-interface {v6, v4, v5}, Lf/i/a/a/h1/t0/f;->g(J)I

    move-result v9

    if-nez v9, :cond_6

    move/from16 v17, v3

    move/from16 v18, v11

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    if-nez v15, :cond_3

    move/from16 v17, v3

    .line 9
    invoke-interface {v6}, Lf/i/a/a/h1/t0/f;->f()J

    move-result-wide v2

    move/from16 v18, v11

    .line 10
    invoke-interface {v6, v2, v3}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v10

    .line 11
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    int-to-long v9, v9

    add-long/2addr v2, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    .line 12
    invoke-interface {v6, v2, v3}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v9

    .line 13
    invoke-interface {v6, v2, v3, v4, v5}, Lf/i/a/a/h1/t0/f;->c(JJ)J

    move-result-wide v2

    add-long/2addr v2, v9

    .line 14
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v7, v2

    :cond_7
    :goto_4
    add-int/lit8 v11, v18, 0x1

    move/from16 v3, v17

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_3

    .line 15
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    move-object v11, v0

    move-wide v15, v7

    invoke-direct/range {v11 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;-><init>(ZJJ)V

    return-object v0
.end method
