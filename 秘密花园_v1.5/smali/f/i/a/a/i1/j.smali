.class public abstract Lf/i/a/a/i1/j;
.super Lf/i/a/a/y0/f;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lf/i/a/a/i1/e;


# instance fields
.field public c:Lf/i/a/a/i1/e;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/y0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/i1/e;

    iget-wide v1, p0, Lf/i/a/a/i1/j;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lf/i/a/a/i1/e;->a(J)I

    move-result p1

    return p1
.end method

.method public b(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/i1/e;

    invoke-interface {v0, p1}, Lf/i/a/a/i1/e;->b(I)J

    move-result-wide v0

    iget-wide v2, p0, Lf/i/a/a/i1/j;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/i1/e;

    iget-wide v1, p0, Lf/i/a/a/i1/j;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lf/i/a/a/i1/e;->c(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/i1/e;

    invoke-interface {v0}, Lf/i/a/a/i1/e;->d()I

    move-result v0

    return v0
.end method
