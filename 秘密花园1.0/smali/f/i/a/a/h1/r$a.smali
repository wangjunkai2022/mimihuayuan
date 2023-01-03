.class public final Lf/i/a/a/h1/r$a;
.super Lf/i/a/a/h1/z;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/u0;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h1/r$b;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/h1/z;-><init>(Lf/i/a/a/u0;)V

    .line 2
    invoke-virtual {p1}, Lf/i/a/a/u0;->i()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 3
    new-instance v0, Lf/i/a/a/u0$c;

    invoke-direct {v0}, Lf/i/a/a/u0$c;-><init>()V

    invoke-virtual {p1, v2, v0}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 4
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    .line 5
    iget-wide p4, p1, Lf/i/a/a/u0$c;->i:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 6
    :goto_0
    iget-wide v5, p1, Lf/i/a/a/u0$c;->i:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v0, p4, v5

    if-lez v0, :cond_1

    move-wide p4, v5

    :cond_1
    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    .line 7
    iget-boolean v0, p1, Lf/i/a/a/u0$c;->d:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lf/i/a/a/h1/r$b;

    invoke-direct {p1, v1}, Lf/i/a/a/h1/r$b;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Lf/i/a/a/h1/r$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lf/i/a/a/h1/r$b;-><init>(I)V

    throw p1

    .line 10
    :cond_5
    :goto_2
    iput-wide p2, p0, Lf/i/a/a/h1/r$a;->c:J

    .line 11
    iput-wide p4, p0, Lf/i/a/a/h1/r$a;->d:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move-wide p2, v7

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    .line 12
    :goto_3
    iput-wide p2, p0, Lf/i/a/a/h1/r$a;->e:J

    .line 13
    iget-boolean p2, p1, Lf/i/a/a/u0$c;->e:Z

    if-eqz p2, :cond_7

    if-eqz v0, :cond_8

    iget-wide p1, p1, Lf/i/a/a/u0$c;->i:J

    cmp-long p3, p1, v7

    if-eqz p3, :cond_7

    cmp-long p3, p4, p1

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    iput-boolean v1, p0, Lf/i/a/a/h1/r$a;->f:Z

    return-void

    .line 14
    :cond_9
    new-instance p1, Lf/i/a/a/h1/r$b;

    invoke-direct {p1, v2}, Lf/i/a/a/h1/r$b;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;
    .locals 12

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lf/i/a/a/u0;->g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;

    .line 2
    iget-wide v0, p2, Lf/i/a/a/u0$b;->e:J

    .line 3
    iget-wide v2, p0, Lf/i/a/a/h1/r$a;->c:J

    sub-long v10, v0, v2

    .line 4
    iget-wide v0, p0, Lf/i/a/a/h1/r$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 5
    :goto_0
    iget-object v5, p2, Lf/i/a/a/u0$b;->a:Ljava/lang/Object;

    iget-object v6, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lf/i/a/a/u0$b;->g(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lf/i/a/a/u0$b;

    return-object p2
.end method

.method public o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/z;->b:Lf/i/a/a/u0;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/u0;->o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;

    .line 2
    iget-wide p3, p2, Lf/i/a/a/u0$c;->j:J

    iget-wide v0, p0, Lf/i/a/a/h1/r$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lf/i/a/a/u0$c;->j:J

    .line 3
    iget-wide p3, p0, Lf/i/a/a/h1/r$a;->e:J

    iput-wide p3, p2, Lf/i/a/a/u0$c;->i:J

    .line 4
    iget-boolean p1, p0, Lf/i/a/a/h1/r$a;->f:Z

    iput-boolean p1, p2, Lf/i/a/a/u0$c;->e:Z

    .line 5
    iget-wide p3, p2, Lf/i/a/a/u0$c;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lf/i/a/a/u0$c;->h:J

    .line 7
    iget-wide v0, p0, Lf/i/a/a/h1/r$a;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lf/i/a/a/u0$c;->h:J

    .line 9
    iget-wide v0, p0, Lf/i/a/a/h1/r$a;->c:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lf/i/a/a/u0$c;->h:J

    .line 10
    :cond_1
    iget-wide p3, p0, Lf/i/a/a/h1/r$a;->c:J

    invoke-static {p3, p4}, Lf/i/a/a/q;->b(J)J

    move-result-wide p3

    .line 11
    iget-wide v0, p2, Lf/i/a/a/u0$c;->b:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    .line 12
    iput-wide v0, p2, Lf/i/a/a/u0$c;->b:J

    .line 13
    :cond_2
    iget-wide v0, p2, Lf/i/a/a/u0$c;->c:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    .line 14
    iput-wide v0, p2, Lf/i/a/a/u0$c;->c:J

    :cond_3
    return-object p2
.end method
