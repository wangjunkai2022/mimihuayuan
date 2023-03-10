.class public Lf/i/a/a/b1/c;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Lf/i/a/a/b1/n;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/b1/c;->a:J

    .line 3
    iput-wide p3, p0, Lf/i/a/a/b1/c;->b:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 4
    :cond_0
    iput p6, p0, Lf/i/a/a/b1/c;->c:I

    .line 5
    iput p5, p0, Lf/i/a/a/b1/c;->e:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    .line 6
    iput-wide v0, p0, Lf/i/a/a/b1/c;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lf/i/a/a/b1/c;->f:J

    goto :goto_0

    :cond_1
    sub-long v0, p1, p3

    .line 8
    iput-wide v0, p0, Lf/i/a/a/b1/c;->d:J

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lf/i/a/a/b1/c;->c(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Lf/i/a/a/b1/c;->f:J

    :goto_0
    return-void
.end method

.method public static c(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long p0, p0, p2

    const-wide/32 p2, 0xf4240

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/c;->b:J

    iget v2, p0, Lf/i/a/a/b1/c;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lf/i/a/a/b1/c;->c(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

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
    iget-wide v0, p0, Lf/i/a/a/b1/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Lf/i/a/a/b1/n$a;

    new-instance p2, Lf/i/a/a/b1/o;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lf/i/a/a/b1/c;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Lf/i/a/a/b1/o;-><init>(JJ)V

    invoke-direct {p1, p2}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object p1

    .line 3
    :cond_0
    iget v2, p0, Lf/i/a/a/b1/c;->e:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    .line 4
    iget v4, p0, Lf/i/a/a/b1/c;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    mul-long v6, v2, v4

    sub-long v10, v0, v4

    const-wide/16 v8, 0x0

    .line 5
    invoke-static/range {v6 .. v11}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lf/i/a/a/b1/c;->b:J

    add-long/2addr v2, v0

    .line 7
    invoke-virtual {p0, v2, v3}, Lf/i/a/a/b1/c;->a(J)J

    move-result-wide v0

    .line 8
    new-instance v4, Lf/i/a/a/b1/o;

    invoke-direct {v4, v0, v1, v2, v3}, Lf/i/a/a/b1/o;-><init>(JJ)V

    cmp-long v5, v0, p1

    if-gez v5, :cond_2

    .line 9
    iget p1, p0, Lf/i/a/a/b1/c;->c:I

    int-to-long v0, p1

    add-long/2addr v0, v2

    iget-wide v5, p0, Lf/i/a/a/b1/c;->a:J

    cmp-long p2, v0, v5

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 10
    invoke-virtual {p0, v2, v3}, Lf/i/a/a/b1/c;->a(J)J

    move-result-wide p1

    .line 11
    new-instance v0, Lf/i/a/a/b1/o;

    invoke-direct {v0, p1, p2, v2, v3}, Lf/i/a/a/b1/o;-><init>(JJ)V

    .line 12
    new-instance p1, Lf/i/a/a/b1/n$a;

    invoke-direct {p1, v4, v0}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;Lf/i/a/a/b1/o;)V

    return-object p1

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Lf/i/a/a/b1/n$a;

    invoke-direct {p1, v4}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/c;->f:J

    return-wide v0
.end method
