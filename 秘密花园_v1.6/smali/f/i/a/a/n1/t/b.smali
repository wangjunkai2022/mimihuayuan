.class public Lf/i/a/a/n1/t/b;
.super Lf/i/a/a/p;
.source "CameraMotionRenderer.java"


# instance fields
.field public final j:Lf/i/a/a/c0;

.field public final k:Lf/i/a/a/y0/e;

.field public final l:Lf/i/a/a/m1/u;

.field public m:J

.field public n:Lf/i/a/a/n1/t/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/p;-><init>(I)V

    .line 2
    new-instance v0, Lf/i/a/a/c0;

    invoke-direct {v0}, Lf/i/a/a/c0;-><init>()V

    iput-object v0, p0, Lf/i/a/a/n1/t/b;->j:Lf/i/a/a/c0;

    .line 3
    new-instance v0, Lf/i/a/a/y0/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/i/a/a/y0/e;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    .line 4
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/n1/t/b;->l:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public D([Lf/i/a/a/b0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    iput-wide p2, p0, Lf/i/a/a/n1/t/b;->m:J

    return-void
.end method

.method public F(Lf/i/a/a/b0;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/p;->g()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/p;->g()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Lf/i/a/a/n1/t/b;->o:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_4

    .line 2
    iget-object p3, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    invoke-virtual {p3}, Lf/i/a/a/y0/e;->i()V

    .line 3
    iget-object p3, p0, Lf/i/a/a/n1/t/b;->j:Lf/i/a/a/c0;

    iget-object p4, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lf/i/a/a/p;->E(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    .line 4
    iget-object p3, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    invoke-virtual {p3}, Lf/i/a/a/y0/a;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    iget-object p3, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    .line 6
    iget-object p3, p3, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    iget-object p3, p0, Lf/i/a/a/n1/t/b;->k:Lf/i/a/a/y0/e;

    iget-wide v1, p3, Lf/i/a/a/y0/e;->d:J

    iput-wide v1, p0, Lf/i/a/a/n1/t/b;->o:J

    .line 8
    iget-object p4, p0, Lf/i/a/a/n1/t/b;->n:Lf/i/a/a/n1/t/a;

    if-eqz p4, :cond_0

    .line 9
    iget-object p3, p3, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 11
    :cond_2
    iget-object p4, p0, Lf/i/a/a/n1/t/b;->l:Lf/i/a/a/m1/u;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Lf/i/a/a/m1/u;->y([BI)V

    .line 12
    iget-object p4, p0, Lf/i/a/a/n1/t/b;->l:Lf/i/a/a/m1/u;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Lf/i/a/a/m1/u;->A(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    .line 13
    iget-object v1, p0, Lf/i/a/a/n1/t/b;->l:Lf/i/a/a/m1/u;

    invoke-virtual {v1}, Lf/i/a/a/m1/u;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p3, p4

    :goto_2
    if-eqz p3, :cond_0

    .line 14
    iget-object p4, p0, Lf/i/a/a/n1/t/b;->n:Lf/i/a/a/n1/t/a;

    invoke-static {p4}, Lf/i/a/a/m1/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lf/i/a/a/n1/t/a;

    iget-wide v0, p0, Lf/i/a/a/n1/t/b;->o:J

    iget-wide v2, p0, Lf/i/a/a/n1/t/b;->m:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lf/i/a/a/n1/t/a;->a(J[F)V

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public j(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lf/i/a/a/n1/t/a;

    iput-object p2, p0, Lf/i/a/a/n1/t/b;->n:Lf/i/a/a/n1/t/a;

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lf/i/a/a/n1/t/b;->o:J

    .line 2
    iget-object v0, p0, Lf/i/a/a/n1/t/b;->n:Lf/i/a/a/n1/t/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lf/i/a/a/n1/t/a;->b()V

    :cond_0
    return-void
.end method

.method public z(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    const-wide/16 p1, 0x0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/n1/t/b;->o:J

    .line 2
    iget-object p1, p0, Lf/i/a/a/n1/t/b;->n:Lf/i/a/a/n1/t/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lf/i/a/a/n1/t/a;->b()V

    :cond_0
    return-void
.end method
