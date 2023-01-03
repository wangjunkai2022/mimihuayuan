.class public final Lf/i/a/a/h1/t0/h$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/s0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lf/i/a/a/h1/t0/k/i;

.field public final c:Lf/i/a/a/h1/t0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(JILf/i/a/a/h1/t0/k/i;ZLjava/util/List;Lf/i/a/a/b1/p;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lf/i/a/a/h1/t0/k/i;",
            "Z",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/b1/p;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    .line 7
    iget-object v2, v1, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    iget-object v2, v2, Lf/i/a/a/b0;->h:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lf/i/a/a/m1/r;->i(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "application/ttml+xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_6

    :cond_2
    const-string v3, "application/x-rawcc"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    new-instance v2, Lf/i/a/a/b1/w/a;

    iget-object v3, v1, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    invoke-direct {v2, v3}, Lf/i/a/a/b1/w/a;-><init>(Lf/i/a/a/b0;)V

    goto :goto_5

    :cond_3
    const-string v3, "video/webm"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "audio/webm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "application/webm"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 13
    new-instance v2, Lf/i/a/a/b1/s/d;

    invoke-direct {v2, v5}, Lf/i/a/a/b1/s/d;-><init>(I)V

    goto :goto_5

    :cond_6
    if-eqz p5, :cond_7

    const/4 v4, 0x4

    const/4 v6, 0x4

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 14
    :goto_4
    new-instance v2, Lf/i/a/a/b1/u/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Lf/i/a/a/b1/u/d;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V

    .line 15
    :goto_5
    new-instance v3, Lf/i/a/a/h1/s0/e;

    iget-object v4, v1, Lf/i/a/a/h1/t0/k/i;->a:Lf/i/a/a/b0;

    move v5, p3

    invoke-direct {v3, v2, p3, v4}, Lf/i/a/a/h1/s0/e;-><init>(Lf/i/a/a/b1/g;ILf/i/a/a/b0;)V

    move-object v2, v3

    :goto_6
    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual/range {p4 .. p4}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v6, p1

    .line 18
    iput-wide v6, v0, Lf/i/a/a/h1/t0/h$b;->d:J

    .line 19
    iput-object v1, v0, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    .line 20
    iput-wide v3, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    .line 21
    iput-object v2, v0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    .line 22
    iput-object v5, v0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    return-void
.end method

.method public constructor <init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V
    .locals 0
    .param p4    # Lf/i/a/a/h1/s0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lf/i/a/a/h1/t0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/h1/t0/h$b;->d:J

    .line 3
    iput-object p3, p0, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    .line 4
    iput-wide p5, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    .line 6
    iput-object p7, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    return-void
.end method


# virtual methods
.method public a(JLf/i/a/a/h1/t0/k/i;)Lf/i/a/a/h1/t0/h$b;
    .locals 16
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h1/p;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/t0/h$b;->b:Lf/i/a/a/h1/t0/k/i;

    invoke-virtual {v1}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v8

    .line 2
    invoke-virtual/range {p3 .. p3}, Lf/i/a/a/h1/t0/k/i;->i()Lf/i/a/a/h1/t0/f;

    move-result-object v9

    if-nez v8, :cond_0

    .line 3
    new-instance v9, Lf/i/a/a/h1/t0/h$b;

    iget-object v5, v0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    iget-wide v6, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lf/i/a/a/h1/t0/h$b;-><init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V

    return-object v9

    .line 4
    :cond_0
    invoke-interface {v8}, Lf/i/a/a/h1/t0/f;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v10, Lf/i/a/a/h1/t0/h$b;

    iget-object v5, v0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    iget-wide v6, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lf/i/a/a/h1/t0/h$b;-><init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V

    return-object v10

    .line 6
    :cond_1
    invoke-interface {v8, v2, v3}, Lf/i/a/a/h1/t0/f;->g(J)I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v10, Lf/i/a/a/h1/t0/h$b;

    iget-object v5, v0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    iget-wide v6, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lf/i/a/a/h1/t0/h$b;-><init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V

    return-object v10

    .line 8
    :cond_2
    invoke-interface {v8}, Lf/i/a/a/h1/t0/f;->f()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 9
    invoke-interface {v8, v4, v5}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v10

    .line 10
    invoke-interface {v8, v4, v5, v2, v3}, Lf/i/a/a/h1/t0/f;->c(JJ)J

    move-result-wide v12

    add-long/2addr v12, v10

    .line 11
    invoke-interface {v9}, Lf/i/a/a/h1/t0/f;->f()J

    move-result-wide v10

    .line 12
    invoke-interface {v9, v10, v11}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v14

    .line 13
    iget-wide v6, v0, Lf/i/a/a/h1/t0/h$b;->e:J

    cmp-long v1, v12, v14

    if-nez v1, :cond_3

    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    :goto_0
    sub-long/2addr v4, v10

    add-long/2addr v4, v6

    move-wide v6, v4

    goto :goto_1

    :cond_3
    if-ltz v1, :cond_4

    .line 14
    invoke-interface {v8, v14, v15, v2, v3}, Lf/i/a/a/h1/t0/f;->a(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 15
    :goto_1
    new-instance v10, Lf/i/a/a/h1/t0/h$b;

    iget-object v5, v0, Lf/i/a/a/h1/t0/h$b;->a:Lf/i/a/a/h1/s0/e;

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lf/i/a/a/h1/t0/h$b;-><init>(JLf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;JLf/i/a/a/h1/t0/f;)V

    return-object v10

    .line 16
    :cond_4
    new-instance v1, Lf/i/a/a/h1/p;

    invoke-direct {v1}, Lf/i/a/a/h1/p;-><init>()V

    throw v1
.end method

.method public b(Lf/i/a/a/h1/t0/k/b;IJ)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h$b;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lf/i/a/a/h1/t0/k/b;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p1, Lf/i/a/a/h1/t0/k/b;->a:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 3
    iget-object v0, p1, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/h1/t0/k/f;

    .line 4
    iget-wide v0, p2, Lf/i/a/a/h1/t0/k/f;->b:J

    invoke-static {v0, v1}, Lf/i/a/a/q;->a(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 5
    iget-wide p1, p1, Lf/i/a/a/h1/t0/k/b;->f:J

    invoke-static {p1, p2}, Lf/i/a/a/q;->a(J)J

    move-result-wide p1

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h$b;->c()J

    move-result-wide v0

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lf/i/a/a/h1/t0/h$b;->g(J)J

    move-result-wide p1

    .line 7
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h$b;->c()J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    invoke-interface {v0}, Lf/i/a/a/h1/t0/f;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d(Lf/i/a/a/h1/t0/k/b;IJ)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h$b;->e()I

    move-result v0

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-wide v3, p1, Lf/i/a/a/h1/t0/k/b;->a:J

    invoke-static {v3, v4}, Lf/i/a/a/q;->a(J)J

    move-result-wide v3

    sub-long/2addr p3, v3

    .line 3
    iget-object p1, p1, Lf/i/a/a/h1/t0/k/b;->l:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/f;

    .line 4
    iget-wide p1, p1, Lf/i/a/a/h1/t0/k/f;->b:J

    invoke-static {p1, p2}, Lf/i/a/a/q;->a(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    .line 5
    invoke-virtual {p0, p3, p4}, Lf/i/a/a/h1/t0/h$b;->g(J)J

    move-result-wide p1

    :goto_0
    sub-long/2addr p1, v1

    return-wide p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/t0/h$b;->c()J

    move-result-wide p1

    int-to-long p3, v0

    add-long/2addr p1, p3

    goto :goto_0
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/h$b;->d:J

    invoke-interface {v0, v1, v2}, Lf/i/a/a/h1/t0/f;->g(J)I

    move-result v0

    return v0
.end method

.method public f(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v3, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lf/i/a/a/h1/t0/h$b;->d:J

    .line 3
    invoke-interface {v2, p1, p2, v3, v4}, Lf/i/a/a/h1/t0/f;->c(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public g(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/h$b;->d:J

    invoke-interface {v0, p1, p2, v1, v2}, Lf/i/a/a/h1/t0/f;->a(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public h(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/h$b;->c:Lf/i/a/a/h1/t0/f;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/h$b;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lf/i/a/a/h1/t0/f;->b(J)J

    move-result-wide p1

    return-wide p1
.end method
