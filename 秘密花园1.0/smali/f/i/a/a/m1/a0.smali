.class public final Lf/i/a/a/m1/a0;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lf/i/a/a/m1/q;


# instance fields
.field public final a:Lf/i/a/a/m1/h;

.field public b:Z

.field public c:J

.field public d:J

.field public e:Lf/i/a/a/j0;


# direct methods
.method public constructor <init>(Lf/i/a/a/m1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/m1/a0;->a:Lf/i/a/a/m1/h;

    .line 3
    sget-object p1, Lf/i/a/a/j0;->e:Lf/i/a/a/j0;

    iput-object p1, p0, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/m1/a0;->c:J

    .line 2
    iget-boolean p1, p0, Lf/i/a/a/m1/a0;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/i/a/a/m1/a0;->a:Lf/i/a/a/m1/h;

    invoke-interface {p1}, Lf/i/a/a/m1/h;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lf/i/a/a/m1/a0;->d:J

    :cond_0
    return-void
.end method

.method public e()Lf/i/a/a/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    return-object v0
.end method

.method public s(Lf/i/a/a/j0;)Lf/i/a/a/j0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/m1/a0;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/m1/a0;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/m1/a0;->a(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    return-object p1
.end method

.method public v()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lf/i/a/a/m1/a0;->c:J

    .line 2
    iget-boolean v2, p0, Lf/i/a/a/m1/a0;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lf/i/a/a/m1/a0;->a:Lf/i/a/a/m1/h;

    invoke-interface {v2}, Lf/i/a/a/m1/h;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lf/i/a/a/m1/a0;->d:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lf/i/a/a/m1/a0;->e:Lf/i/a/a/j0;

    iget v5, v4, Lf/i/a/a/j0;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lf/i/a/a/q;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iget v4, v4, Lf/i/a/a/j0;->d:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method
