.class public final Lf/i/a/a/b1/t/f;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lf/i/a/a/b1/t/d$a;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIJJ[J)V
    .locals 0
    .param p8    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/b1/t/f;->a:J

    .line 3
    iput p3, p0, Lf/i/a/a/b1/t/f;->b:I

    .line 4
    iput-wide p4, p0, Lf/i/a/a/b1/t/f;->c:J

    .line 5
    iput-object p8, p0, Lf/i/a/a/b1/t/f;->f:[J

    .line 6
    iput-wide p6, p0, Lf/i/a/a/b1/t/f;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    .line 7
    :goto_0
    iput-wide p3, p0, Lf/i/a/a/b1/t/f;->e:J

    return-void
.end method


# virtual methods
.method public b(J)J
    .locals 13

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/t/f;->a:J

    sub-long/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/b1/t/f;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lf/i/a/a/b1/t/f;->b:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/b1/t/f;->f:[J

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double p1, p1, v1

    .line 4
    iget-wide v1, p0, Lf/i/a/a/b1/t/f;->d:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 5
    invoke-static {v0, v1, v2, v3, v3}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result v1

    .line 6
    iget-wide v2, p0, Lf/i/a/a/b1/t/f;->c:J

    int-to-long v4, v1

    mul-long v4, v4, v2

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 7
    aget-wide v8, v0, v1

    add-int/lit8 v10, v1, 0x1

    int-to-long v11, v10

    mul-long v2, v2, v11

    .line 8
    div-long/2addr v2, v6

    const/16 v6, 0x63

    if-ne v1, v6, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    .line 9
    :cond_1
    aget-wide v6, v0, v10

    move-wide v0, v6

    :goto_0
    cmp-long v6, v8, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v6, v8

    sub-double/2addr p1, v6

    sub-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v2, v4

    long-to-double v0, v2

    mul-double p1, p1, v0

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr p1, v4

    return-wide p1

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/t/f;->e:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/t/f;->f:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(J)Lf/i/a/a/b1/n$a;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/b1/t/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lf/i/a/a/b1/n$a;

    new-instance p2, Lf/i/a/a/b1/o;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lf/i/a/a/b1/t/f;->a:J

    iget v4, p0, Lf/i/a/a/b1/t/f;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p2, v0, v1, v2, v3}, Lf/i/a/a/b1/o;-><init>(JJ)V

    invoke-direct {p1, p2}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object p1

    :cond_0
    const-wide/16 v6, 0x0

    .line 3
    iget-wide v8, p0, Lf/i/a/a/b1/t/f;->c:J

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 4
    iget-wide v4, p0, Lf/i/a/a/b1/t/f;->c:J

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    move-wide v4, v6

    goto :goto_1

    :cond_2
    double-to-int v2, v0

    .line 5
    iget-object v3, p0, Lf/i/a/a/b1/t/f;->f:[J

    invoke-static {v3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [J

    .line 6
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v8, 0x63

    if-ne v2, v8, :cond_3

    move-wide v8, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v2, 0x1

    .line 7
    aget-wide v8, v3, v8

    long-to-double v8, v8

    :goto_0
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v8, v4

    mul-double v8, v8, v0

    add-double/2addr v4, v8

    :goto_1
    div-double/2addr v4, v6

    .line 8
    iget-wide v0, p0, Lf/i/a/a/b1/t/f;->d:J

    long-to-double v0, v0

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 9
    iget v0, p0, Lf/i/a/a/b1/t/f;->b:I

    int-to-long v8, v0

    iget-wide v0, p0, Lf/i/a/a/b1/t/f;->d:J

    const-wide/16 v2, 0x1

    sub-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide v0

    .line 10
    new-instance v2, Lf/i/a/a/b1/n$a;

    new-instance v3, Lf/i/a/a/b1/o;

    iget-wide v4, p0, Lf/i/a/a/b1/t/f;->a:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Lf/i/a/a/b1/o;-><init>(JJ)V

    invoke-direct {v2, v3}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object v2
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/t/f;->c:J

    return-wide v0
.end method
