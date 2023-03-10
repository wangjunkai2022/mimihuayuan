.class public final Lj/t;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lj/i;


# instance fields
.field public final a:Lj/g;

.field public b:Z

.field public final c:Lj/y;


# direct methods
.method public constructor <init>(Lj/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/t;->c:Lj/y;

    .line 2
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Lj/t;->a:Lj/g;

    return-void
.end method


# virtual methods
.method public a([BII)Lj/i;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lj/g;->O([BII)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/t;->a:Lj/g;

    .line 3
    iget-wide v1, v1, Lj/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4
    iget-object v1, p0, Lj/t;->c:Lj/y;

    .line 5
    iget-object v2, p0, Lj/t;->a:Lj/g;

    .line 6
    iget-object v3, p0, Lj/t;->a:Lj/g;

    .line 7
    iget-wide v3, v3, Lj/g;->b:J

    .line 8
    invoke-interface {v1, v2, v3, v4}, Lj/y;->j(Lj/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lj/t;->c:Lj/y;

    invoke-interface {v1}, Lj/y;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lj/t;->b:Z

    if-nez v0, :cond_3

    return-void

    .line 11
    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    iget-wide v1, v0, Lj/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Lj/t;->c:Lj/y;

    invoke-interface {v3, v0, v1, v2}, Lj/y;->j(Lj/g;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lj/t;->c:Lj/y;

    invoke-interface {v0}, Lj/y;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lj/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/t;->a:Lj/g;

    return-object v0
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/t;->c:Lj/y;

    invoke-interface {v0}, Lj/y;->i()Lj/b0;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j(Lj/g;J)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lj/g;->j(Lj/g;J)V

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public k(J)Lj/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lj/g;->Y(J)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(I)Lj/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->a0(I)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(I)Lj/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->Z(I)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(I)Lj/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->Q(I)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r([B)Lj/i;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->N([B)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public s(Lj/k;)Lj/i;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->M(Lj/k;)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "byteString"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public t()Lj/i;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v2, p0, Lj/t;->c:Lj/y;

    .line 5
    iget-object v3, p0, Lj/t;->a:Lj/g;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Lj/y;->j(Lj/g;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/t;->c:Lj/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public y(Ljava/lang/String;)Lj/i;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "string"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public z(J)Lj/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/t;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/t;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lj/g;->R(J)Lj/g;

    .line 4
    invoke-virtual {p0}, Lj/t;->t()Lj/i;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
