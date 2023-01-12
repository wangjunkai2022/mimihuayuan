.class public final Lf/i/a/a/b1/t/b;
.super Lf/i/a/a/b1/c;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lf/i/a/a/b1/t/d$a;


# direct methods
.method public constructor <init>(JJLf/i/a/a/b1/l;)V
    .locals 7

    .line 1
    iget v5, p5, Lf/i/a/a/b1/l;->f:I

    iget v6, p5, Lf/i/a/a/b1/l;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/b1/c;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public b(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/c;->b:J

    iget v2, p0, Lf/i/a/a/b1/c;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lf/i/a/a/b1/c;->c(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
