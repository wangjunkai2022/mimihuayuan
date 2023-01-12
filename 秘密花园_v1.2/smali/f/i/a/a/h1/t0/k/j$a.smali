.class public abstract Lf/i/a/a/h1/t0/k/j$a;
.super Lf/i/a/a/h1/t0/k/j;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/k/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/j$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/k/h;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/t0/k/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/j$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lf/i/a/a/h1/t0/k/j;-><init>(Lf/i/a/a/h1/t0/k/h;JJ)V

    .line 2
    iput-wide p6, p0, Lf/i/a/a/h1/t0/k/j$a;->d:J

    .line 3
    iput-wide p8, p0, Lf/i/a/a/h1/t0/k/j$a;->e:J

    .line 4
    iput-object p10, p0, Lf/i/a/a/h1/t0/k/j$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract b(J)I
.end method

.method public final c(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/j$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lf/i/a/a/h1/t0/k/j$a;->d:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/h1/t0/k/j$d;

    iget-wide p1, p1, Lf/i/a/a/h1/t0/k/j$d;->a:J

    iget-wide v0, p0, Lf/i/a/a/h1/t0/k/j;->c:J

    sub-long/2addr p1, v0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/t0/k/j$a;->d:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lf/i/a/a/h1/t0/k/j$a;->e:J

    mul-long p1, p1, v0

    :goto_0
    move-wide v0, p1

    const-wide/32 v2, 0xf4240

    .line 5
    iget-wide v4, p0, Lf/i/a/a/h1/t0/k/j;->b:J

    invoke-static/range {v0 .. v5}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract d(Lf/i/a/a/h1/t0/k/i;J)Lf/i/a/a/h1/t0/k/h;
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/j$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
