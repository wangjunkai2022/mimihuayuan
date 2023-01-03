.class public Lf/i/a/a/w0/v$d;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lf/i/a/a/w0/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/w0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[Lf/i/a/a/w0/m;

.field public final b:Lf/i/a/a/w0/b0;

.field public final c:Lf/i/a/a/w0/d0;


# direct methods
.method public varargs constructor <init>([Lf/i/a/a/w0/m;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/w0/m;

    iput-object v0, p0, Lf/i/a/a/w0/v$d;->a:[Lf/i/a/a/w0/m;

    .line 3
    new-instance v0, Lf/i/a/a/w0/b0;

    invoke-direct {v0}, Lf/i/a/a/w0/b0;-><init>()V

    iput-object v0, p0, Lf/i/a/a/w0/v$d;->b:Lf/i/a/a/w0/b0;

    .line 4
    new-instance v0, Lf/i/a/a/w0/d0;

    invoke-direct {v0}, Lf/i/a/a/w0/d0;-><init>()V

    iput-object v0, p0, Lf/i/a/a/w0/v$d;->c:Lf/i/a/a/w0/d0;

    .line 5
    iget-object v1, p0, Lf/i/a/a/w0/v$d;->a:[Lf/i/a/a/w0/m;

    array-length v2, p1

    iget-object v3, p0, Lf/i/a/a/w0/v$d;->b:Lf/i/a/a/w0/b0;

    aput-object v3, v1, v2

    .line 6
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v0, v1, p1

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/j0;)Lf/i/a/a/j0;
    .locals 8

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v$d;->b:Lf/i/a/a/w0/b0;

    iget-boolean v1, p1, Lf/i/a/a/j0;->c:Z

    .line 2
    iput-boolean v1, v0, Lf/i/a/a/w0/b0;->i:Z

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/w0/t;->flush()V

    .line 4
    new-instance v0, Lf/i/a/a/j0;

    iget-object v1, p0, Lf/i/a/a/w0/v$d;->c:Lf/i/a/a/w0/d0;

    iget v2, p1, Lf/i/a/a/j0;->a:F

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x41000000    # 8.0f

    .line 5
    invoke-static {v2, v4, v5}, Lf/i/a/a/m1/h0;->n(FFF)F

    move-result v2

    .line 6
    iget v6, v1, Lf/i/a/a/w0/d0;->d:F

    const/4 v7, 0x1

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_0

    .line 7
    iput v2, v1, Lf/i/a/a/w0/d0;->d:F

    .line 8
    iput-boolean v7, v1, Lf/i/a/a/w0/d0;->h:Z

    .line 9
    :cond_0
    invoke-virtual {v1}, Lf/i/a/a/w0/d0;->flush()V

    .line 10
    iget-object v1, p0, Lf/i/a/a/w0/v$d;->c:Lf/i/a/a/w0/d0;

    iget v6, p1, Lf/i/a/a/j0;->b:F

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v6, v4, v5}, Lf/i/a/a/m1/h0;->n(FFF)F

    move-result v3

    .line 12
    iget v4, v1, Lf/i/a/a/w0/d0;->e:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_1

    .line 13
    iput v3, v1, Lf/i/a/a/w0/d0;->e:F

    .line 14
    iput-boolean v7, v1, Lf/i/a/a/w0/d0;->h:Z

    .line 15
    :cond_1
    invoke-virtual {v1}, Lf/i/a/a/w0/d0;->flush()V

    .line 16
    iget-boolean p1, p1, Lf/i/a/a/j0;->c:Z

    invoke-direct {v0, v2, v3, p1}, Lf/i/a/a/j0;-><init>(FFZ)V

    return-object v0

    .line 17
    :cond_2
    throw v3

    .line 18
    :cond_3
    throw v3
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v$d;->b:Lf/i/a/a/w0/b0;

    .line 2
    iget-wide v0, v0, Lf/i/a/a/w0/b0;->p:J

    return-wide v0
.end method

.method public c(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v$d;->c:Lf/i/a/a/w0/d0;

    .line 2
    iget-wide v5, v0, Lf/i/a/a/w0/d0;->n:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 3
    iget v1, v0, Lf/i/a/a/w0/d0;->f:I

    iget v2, v0, Lf/i/a/a/w0/d0;->c:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lf/i/a/a/w0/d0;->m:J

    move-wide v1, p1

    .line 4
    invoke-static/range {v1 .. v6}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lf/i/a/a/w0/d0;->m:J

    int-to-long v0, v1

    mul-long v9, v3, v0

    int-to-long v0, v2

    mul-long v11, v5, v0

    move-wide v7, p1

    .line 5
    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, v0, Lf/i/a/a/w0/d0;->d:F

    float-to-double v0, v0

    long-to-double p1, p1

    mul-double v0, v0, p1

    double-to-long p1, v0

    :goto_0
    return-wide p1
.end method

.method public d()[Lf/i/a/a/w0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/w0/v$d;->a:[Lf/i/a/a/w0/m;

    return-object v0
.end method
