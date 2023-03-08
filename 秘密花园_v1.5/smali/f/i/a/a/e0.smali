.class public final Lf/i/a/a/e0;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# instance fields
.field public final a:Lf/i/a/a/h1/d0;

.field public final b:Ljava/lang/Object;

.field public final c:[Lf/i/a/a/h1/k0;

.field public d:Z

.field public e:Z

.field public f:Lf/i/a/a/f0;

.field public final g:[Z

.field public final h:[Lf/i/a/a/p;

.field public final i:Lf/i/a/a/j1/m;

.field public final j:Lf/i/a/a/h1/e0;

.field public k:Lf/i/a/a/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lf/i/a/a/h1/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lf/i/a/a/j1/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:J


# direct methods
.method public constructor <init>([Lf/i/a/a/p;JLf/i/a/a/j1/m;Lf/i/a/a/l1/e;Lf/i/a/a/h1/e0;Lf/i/a/a/f0;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    .line 3
    iput-wide p2, p0, Lf/i/a/a/e0;->n:J

    .line 4
    iput-object p4, p0, Lf/i/a/a/e0;->i:Lf/i/a/a/j1/m;

    .line 5
    iput-object p6, p0, Lf/i/a/a/e0;->j:Lf/i/a/a/h1/e0;

    .line 6
    iget-object p2, p7, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    iget-object p3, p2, Lf/i/a/a/h1/e0$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf/i/a/a/e0;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    .line 8
    array-length p3, p1

    new-array p3, p3, [Lf/i/a/a/h1/k0;

    iput-object p3, p0, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    .line 9
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lf/i/a/a/e0;->g:[Z

    .line 10
    iget-wide p3, p7, Lf/i/a/a/f0;->b:J

    iget-wide v5, p7, Lf/i/a/a/f0;->d:J

    .line 11
    invoke-interface {p6, p2, p5, p3, p4}, Lf/i/a/a/h1/e0;->c(Lf/i/a/a/h1/e0$a;Lf/i/a/a/l1/e;J)Lf/i/a/a/h1/d0;

    move-result-object v1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p1

    if-eqz p3, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p3, v5, p1

    if-eqz p3, :cond_0

    .line 12
    new-instance p1, Lf/i/a/a/h1/q;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/h1/q;-><init>(Lf/i/a/a/h1/d0;ZJJ)V

    move-object v1, p1

    .line 13
    :cond_0
    iput-object v1, p0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/j1/n;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v1, Lf/i/a/a/j1/n;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Lf/i/a/a/e0;->g:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    .line 3
    invoke-virtual {v1, v6, v3}, Lf/i/a/a/j1/n;->a(Lf/i/a/a/j1/n;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    const/4 v4, 0x0

    .line 5
    :goto_2
    iget-object v6, v0, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    array-length v7, v6

    const/4 v8, 0x6

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v6, v6, v4

    .line 7
    iget v6, v6, Lf/i/a/a/p;->a:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e0;->b()V

    .line 10
    iput-object v1, v0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/e0;->c()V

    .line 12
    iget-object v3, v1, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 13
    iget-object v9, v0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    .line 14
    invoke-virtual {v3}, Lf/i/a/a/j1/k;->a()[Lf/i/a/a/j1/j;

    move-result-object v10

    iget-object v11, v0, Lf/i/a/a/e0;->g:[Z

    iget-object v12, v0, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 15
    invoke-interface/range {v9 .. v15}, Lf/i/a/a/h1/d0;->j([Lf/i/a/a/j1/j;[Z[Lf/i/a/a/h1/k0;[ZJ)J

    move-result-wide v6

    .line 16
    iget-object v4, v0, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    .line 17
    iget-object v9, v0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    invoke-static {v9}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    .line 18
    :goto_3
    iget-object v11, v0, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    array-length v12, v11

    if-ge v10, v12, :cond_5

    .line 19
    aget-object v11, v11, v10

    .line 20
    iget v11, v11, Lf/i/a/a/p;->a:I

    if-ne v11, v8, :cond_4

    .line 21
    invoke-virtual {v9, v10}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 22
    new-instance v11, Lf/i/a/a/h1/x;

    invoke-direct {v11}, Lf/i/a/a/h1/x;-><init>()V

    aput-object v11, v4, v10

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 23
    :cond_5
    iput-boolean v2, v0, Lf/i/a/a/e0;->e:Z

    const/4 v4, 0x0

    .line 24
    :goto_4
    iget-object v9, v0, Lf/i/a/a/e0;->c:[Lf/i/a/a/h1/k0;

    array-length v10, v9

    if-ge v4, v10, :cond_9

    .line 25
    aget-object v9, v9, v4

    if-eqz v9, :cond_6

    .line 26
    invoke-virtual {v1, v4}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v9

    invoke-static {v9}, Lc/a/a/b/g/h;->v(Z)V

    .line 27
    iget-object v9, v0, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    aget-object v9, v9, v4

    .line 28
    iget v9, v9, Lf/i/a/a/p;->a:I

    if-eq v9, v8, :cond_8

    .line 29
    iput-boolean v5, v0, Lf/i/a/a/e0;->e:Z

    goto :goto_6

    .line 30
    :cond_6
    iget-object v9, v3, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v9, v9, v4

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 31
    :goto_5
    invoke-static {v9}, Lc/a/a/b/g/h;->v(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-wide v6
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/e0;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, v0, Lf/i/a/a/j1/n;->a:I

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v2

    .line 5
    iget-object v3, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 6
    iget-object v3, v3, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lf/i/a/a/j1/j;->b()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/e0;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, v0, Lf/i/a/a/j1/n;->a:I

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Lf/i/a/a/j1/n;->b(I)Z

    move-result v2

    .line 5
    iget-object v3, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    .line 6
    iget-object v3, v3, Lf/i/a/a/j1/k;->b:[Lf/i/a/a/j1/j;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lf/i/a/a/j1/j;->d()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/e0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v0, v0, Lf/i/a/a/f0;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/e0;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    .line 4
    invoke-interface {v0}, Lf/i/a/a/h1/d0;->e()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v3, v0, Lf/i/a/a/f0;->e:J

    :cond_2
    return-wide v3
.end method

.method public e()Lf/i/a/a/h1/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->l:Lf/i/a/a/h1/p0;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/h1/p0;

    return-object v0
.end method

.method public f()Lf/i/a/a/j1/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/j1/n;

    return-object v0
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/e0;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf/i/a/a/e0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    .line 2
    invoke-interface {v0}, Lf/i/a/a/h1/d0;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->k:Lf/i/a/a/e0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/e0;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    .line 3
    iget-object v0, p0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-wide v0, v0, Lf/i/a/a/f0;->d:J

    iget-object v2, p0, Lf/i/a/a/e0;->j:Lf/i/a/a/h1/e0;

    iget-object v3, p0, Lf/i/a/a/e0;->a:Lf/i/a/a/h1/d0;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 4
    :try_start_0
    check-cast v3, Lf/i/a/a/h1/q;

    iget-object v0, v3, Lf/i/a/a/h1/q;->a:Lf/i/a/a/h1/d0;

    invoke-interface {v2, v0}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2, v3}, Lf/i/a/a/h1/e0;->d(Lf/i/a/a/h1/d0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public j(FLf/i/a/a/u0;)Lf/i/a/a/j1/n;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/e0;->i:Lf/i/a/a/j1/m;

    iget-object v1, p0, Lf/i/a/a/e0;->h:[Lf/i/a/a/p;

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/e0;->e()Lf/i/a/a/h1/p0;

    move-result-object v2

    iget-object v3, p0, Lf/i/a/a/e0;->f:Lf/i/a/a/f0;

    iget-object v3, v3, Lf/i/a/a/f0;->a:Lf/i/a/a/h1/e0$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lf/i/a/a/j1/m;->a([Lf/i/a/a/p;Lf/i/a/a/h1/p0;Lf/i/a/a/h1/e0$a;Lf/i/a/a/u0;)Lf/i/a/a/j1/n;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lf/i/a/a/e0;->m:Lf/i/a/a/j1/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, v0, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    iget v2, v2, Lf/i/a/a/j1/k;->a:I

    iget-object v3, p2, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    iget v3, v3, Lf/i/a/a/j1/k;->a:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p2, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    iget v3, v3, Lf/i/a/a/j1/k;->a:I

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p2, v0, v2}, Lf/i/a/a/j1/n;->a(Lf/i/a/a/j1/n;I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_4
    iget-object v0, p2, Lf/i/a/a/j1/n;->c:Lf/i/a/a/j1/k;

    invoke-virtual {v0}, Lf/i/a/a/j1/k;->a()[Lf/i/a/a/j1/j;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    if-eqz v3, :cond_5

    .line 8
    invoke-interface {v3, p1}, Lf/i/a/a/j1/j;->n(F)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object p2
.end method
