.class public Lf/i/a/a/j1/b;
.super Lf/i/a/a/j1/c;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/j1/b$c;,
        Lf/i/a/a/j1/b$b;,
        Lf/i/a/a/j1/b$d;
    }
.end annotation


# instance fields
.field public final g:Lf/i/a/a/j1/b$b;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:F

.field public final l:J

.field public final m:Lf/i/a/a/m1/h;

.field public final n:[Lf/i/a/a/b0;

.field public final o:[I

.field public final p:[I

.field public q:Lf/i/a/a/j1/h;

.field public r:F

.field public s:I

.field public t:I

.field public u:J


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/o0;[ILf/i/a/a/j1/b$b;JJJFJLf/i/a/a/m1/h;Lf/i/a/a/j1/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/i/a/a/j1/c;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 2
    iput-object p3, p0, Lf/i/a/a/j1/b;->g:Lf/i/a/a/j1/b$b;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 3
    iput-wide p4, p0, Lf/i/a/a/j1/b;->h:J

    mul-long p6, p6, p1

    .line 4
    iput-wide p6, p0, Lf/i/a/a/j1/b;->i:J

    mul-long p8, p8, p1

    .line 5
    iput-wide p8, p0, Lf/i/a/a/j1/b;->j:J

    .line 6
    iput p10, p0, Lf/i/a/a/j1/b;->k:F

    .line 7
    iput-wide p11, p0, Lf/i/a/a/j1/b;->l:J

    .line 8
    iput-object p13, p0, Lf/i/a/a/j1/b;->m:Lf/i/a/a/m1/h;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lf/i/a/a/j1/b;->r:F

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lf/i/a/a/j1/b;->t:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p2, p0, Lf/i/a/a/j1/b;->u:J

    .line 12
    sget-object p2, Lf/i/a/a/j1/h;->a:Lf/i/a/a/j1/h;

    iput-object p2, p0, Lf/i/a/a/j1/b;->q:Lf/i/a/a/j1/h;

    .line 13
    iget p2, p0, Lf/i/a/a/j1/c;->b:I

    new-array p3, p2, [Lf/i/a/a/b0;

    iput-object p3, p0, Lf/i/a/a/j1/b;->n:[Lf/i/a/a/b0;

    .line 14
    new-array p3, p2, [I

    iput-object p3, p0, Lf/i/a/a/j1/b;->o:[I

    .line 15
    new-array p2, p2, [I

    iput-object p2, p0, Lf/i/a/a/j1/b;->p:[I

    .line 16
    :goto_0
    iget p2, p0, Lf/i/a/a/j1/c;->b:I

    if-ge p1, p2, :cond_0

    .line 17
    iget-object p2, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object p2, p2, p1

    .line 18
    iget-object p3, p0, Lf/i/a/a/j1/b;->n:[Lf/i/a/a/b0;

    aput-object p2, p3, p1

    .line 19
    iget-object p2, p0, Lf/i/a/a/j1/b;->o:[I

    aget-object p3, p3, p1

    iget p3, p3, Lf/i/a/a/b0;->e:I

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static u([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 2
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 3
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    .line 5
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lf/i/a/a/j1/b;->u:J

    return-void
.end method

.method public f(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/b;->m:Lf/i/a/a/m1/h;

    invoke-interface {v0}, Lf/i/a/a/m1/h;->c()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lf/i/a/a/j1/b;->u:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    sub-long v2, v0, v2

    iget-wide v4, p0, Lf/i/a/a/j1/b;->l:J

    cmp-long v7, v2, v4

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 4
    :cond_2
    iput-wide v0, p0, Lf/i/a/a/j1/b;->u:J

    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return v6

    .line 6
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 7
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/s0/l;

    .line 8
    iget-wide v3, v3, Lf/i/a/a/h1/s0/d;->f:J

    sub-long/2addr v3, p1

    iget v5, p0, Lf/i/a/a/j1/b;->r:F

    .line 9
    invoke-static {v3, v4, v5}, Lf/i/a/a/m1/h0;->I(JF)J

    move-result-wide v3

    .line 10
    iget-wide v7, p0, Lf/i/a/a/j1/b;->j:J

    cmp-long v5, v3, v7

    if-gez v5, :cond_4

    return v2

    .line 11
    :cond_4
    iget-object v3, p0, Lf/i/a/a/j1/b;->o:[I

    invoke-virtual {p0, v0, v1, v3}, Lf/i/a/a/j1/b;->t(J[I)I

    move-result v0

    .line 12
    iget-object v1, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object v0, v1, v0

    :goto_2
    if-ge v6, v2, :cond_6

    .line 13
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/s0/l;

    .line 14
    iget-object v3, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 15
    iget-wide v4, v1, Lf/i/a/a/h1/s0/d;->f:J

    sub-long/2addr v4, p1

    .line 16
    iget v1, p0, Lf/i/a/a/j1/b;->r:F

    .line 17
    invoke-static {v4, v5, v1}, Lf/i/a/a/m1/h0;->I(JF)J

    move-result-wide v4

    cmp-long v1, v4, v7

    if-ltz v1, :cond_5

    .line 18
    iget v1, v3, Lf/i/a/a/b0;->e:I

    iget v4, v0, Lf/i/a/a/b0;->e:I

    if-ge v1, v4, :cond_5

    iget v1, v3, Lf/i/a/a/b0;->o:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const/16 v5, 0x2d0

    if-ge v1, v5, :cond_5

    iget v3, v3, Lf/i/a/a/b0;->n:I

    if-eq v3, v4, :cond_5

    const/16 v4, 0x500

    if-ge v3, v4, :cond_5

    iget v3, v0, Lf/i/a/a/b0;->o:I

    if-ge v1, v3, :cond_5

    return v6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method public h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;[",
            "Lf/i/a/a/h1/s0/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/i/a/a/j1/b;->m:Lf/i/a/a/m1/h;

    invoke-interface {p1}, Lf/i/a/a/m1/h;->c()J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lf/i/a/a/j1/b;->q:Lf/i/a/a/j1/h;

    iget-object v1, p0, Lf/i/a/a/j1/b;->n:[Lf/i/a/a/b0;

    iget-object v2, p0, Lf/i/a/a/j1/b;->p:[I

    invoke-interface {v0, v1, p7, p8, v2}, Lf/i/a/a/j1/h;->a([Lf/i/a/a/b0;Ljava/util/List;[Lf/i/a/a/h1/s0/m;[I)[I

    .line 3
    iget p7, p0, Lf/i/a/a/j1/b;->t:I

    const/4 p8, 0x1

    if-nez p7, :cond_0

    .line 4
    iput p8, p0, Lf/i/a/a/j1/b;->t:I

    .line 5
    iget-object p3, p0, Lf/i/a/a/j1/b;->p:[I

    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/j1/b;->t(J[I)I

    move-result p1

    iput p1, p0, Lf/i/a/a/j1/b;->s:I

    return-void

    .line 6
    :cond_0
    iget p7, p0, Lf/i/a/a/j1/b;->s:I

    .line 7
    iget-object v0, p0, Lf/i/a/a/j1/b;->p:[I

    invoke-virtual {p0, p1, p2, v0}, Lf/i/a/a/j1/b;->t(J[I)I

    move-result v0

    iput v0, p0, Lf/i/a/a/j1/b;->s:I

    if-ne v0, p7, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, p7, p1, p2}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object p2, p1, p7

    .line 10
    iget v0, p0, Lf/i/a/a/j1/b;->s:I

    .line 11
    aget-object p1, p1, v0

    .line 12
    iget v0, p1, Lf/i/a/a/b0;->e:I

    iget v1, p2, Lf/i/a/a/b0;->e:I

    if-le v0, v1, :cond_4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_2

    .line 13
    iget-wide v0, p0, Lf/i/a/a/j1/b;->h:J

    cmp-long v2, p5, v0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    :goto_0
    if-eqz p8, :cond_3

    long-to-float p5, p5

    .line 14
    iget p6, p0, Lf/i/a/a/j1/b;->k:F

    mul-float p5, p5, p6

    float-to-long p5, p5

    goto :goto_1

    :cond_3
    iget-wide p5, p0, Lf/i/a/a/j1/b;->h:J

    :goto_1
    cmp-long p8, p3, p5

    if-gez p8, :cond_4

    .line 15
    iput p7, p0, Lf/i/a/a/j1/b;->s:I

    goto :goto_2

    .line 16
    :cond_4
    iget p1, p1, Lf/i/a/a/b0;->e:I

    iget p2, p2, Lf/i/a/a/b0;->e:I

    if-ge p1, p2, :cond_5

    iget-wide p1, p0, Lf/i/a/a/j1/b;->i:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_5

    .line 17
    iput p7, p0, Lf/i/a/a/j1/b;->s:I

    .line 18
    :cond_5
    :goto_2
    iget p1, p0, Lf/i/a/a/j1/b;->s:I

    if-eq p1, p7, :cond_6

    const/4 p1, 0x3

    .line 19
    iput p1, p0, Lf/i/a/a/j1/b;->t:I

    :cond_6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/j1/b;->t:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/j1/b;->s:I

    return v0
.end method

.method public n(F)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/j1/b;->r:F

    return-void
.end method

.method public p()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t(J[I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/j1/b;->g:Lf/i/a/a/j1/b$b;

    check-cast v0, Lf/i/a/a/j1/b$c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/j1/b$c;->a:Lf/i/a/a/l1/g;

    invoke-interface {v1}, Lf/i/a/a/l1/g;->c()J

    move-result-wide v1

    long-to-float v1, v1

    iget v2, v0, Lf/i/a/a/j1/b$c;->b:F

    mul-float v1, v1, v2

    float-to-long v1, v1

    .line 3
    iget-wide v3, v0, Lf/i/a/a/j1/b$c;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Lf/i/a/a/j1/b$c;->d:[[J

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 5
    :goto_0
    iget-object v6, v0, Lf/i/a/a/j1/b$c;->d:[[J

    array-length v7, v6

    sub-int/2addr v7, v5

    if-ge v3, v7, :cond_1

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    cmp-long v6, v7, v1

    if-gez v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lf/i/a/a/j1/b$c;->d:[[J

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v0, v6

    .line 7
    aget-object v0, v0, v3

    .line 8
    aget-wide v7, v6, v4

    sub-long/2addr v1, v7

    long-to-float v1, v1

    aget-wide v2, v0, v4

    aget-wide v7, v6, v4

    sub-long/2addr v2, v7

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 9
    aget-wide v2, v6, v5

    aget-wide v7, v0, v5

    aget-wide v9, v6, v5

    sub-long/2addr v7, v9

    long-to-float v0, v7

    mul-float v1, v1, v0

    float-to-long v0, v1

    add-long v1, v2, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_2
    iget v6, p0, Lf/i/a/a/j1/c;->b:I

    if-ge v0, v6, :cond_6

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, p1, v6

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {p0, v0, p1, p2}, Lf/i/a/a/j1/c;->s(IJ)Z

    move-result v6

    if-nez v6, :cond_5

    .line 12
    :cond_2
    iget-object v3, p0, Lf/i/a/a/j1/c;->d:[Lf/i/a/a/b0;

    aget-object v3, v3, v0

    .line 13
    aget v3, p3, v0

    iget v6, p0, Lf/i/a/a/j1/b;->r:F

    int-to-float v3, v3

    mul-float v3, v3, v6

    .line 14
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, v1

    if-gtz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    return v0

    :cond_4
    move v3, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v3
.end method
