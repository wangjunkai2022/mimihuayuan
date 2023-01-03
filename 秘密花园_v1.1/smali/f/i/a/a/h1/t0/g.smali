.class public final Lf/i/a/a/h1/t0/g;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lf/i/a/a/h1/t0/f;


# instance fields
.field public final a:Lf/i/a/a/b1/b;

.field public final b:J


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    .line 3
    iput-wide p2, p0, Lf/i/a/a/h1/t0/g;->b:J

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 2

    .line 1
    iget-object p3, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    iget-wide v0, p0, Lf/i/a/a/h1/t0/g;->b:J

    add-long/2addr p1, v0

    .line 2
    iget-object p3, p3, Lf/i/a/a/b1/b;->e:[J

    const/4 p4, 0x1

    invoke-static {p3, p1, p2, p4, p4}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public b(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    iget-object v0, v0, Lf/i/a/a/b1/b;->e:[J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    iget-wide v0, p0, Lf/i/a/a/h1/t0/g;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public c(JJ)J
    .locals 0

    .line 1
    iget-object p3, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    iget-object p3, p3, Lf/i/a/a/b1/b;->d:[J

    long-to-int p2, p1

    aget-wide p1, p3, p2

    return-wide p1
.end method

.method public d(J)Lf/i/a/a/h1/t0/k/h;
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/h1/t0/k/h;

    iget-object v0, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    iget-object v1, v0, Lf/i/a/a/b1/b;->c:[J

    long-to-int p2, p1

    aget-wide v2, v1, p2

    iget-object p1, v0, Lf/i/a/a/b1/b;->b:[I

    aget p1, p1, p2

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/h1/t0/k/h;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(J)I
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/t0/g;->a:Lf/i/a/a/b1/b;

    iget p1, p1, Lf/i/a/a/b1/b;->a:I

    return p1
.end method
