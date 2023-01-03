.class public final Lj/u;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lj/j;


# instance fields
.field public final a:Lj/g;

.field public b:Z

.field public final c:Lj/a0;


# direct methods
.method public constructor <init>(Lj/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/u;->c:Lj/a0;

    .line 2
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Lj/u;->a:Lj/g;

    return-void
.end method


# virtual methods
.method public A()J
    .locals 6

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 2
    invoke-virtual {p0, v3, v4}, Lj/u;->g(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v3, p0, Lj/u;->a:Lj/g;

    int-to-long v4, v1

    .line 4
    invoke-virtual {v3, v4, v5}, Lj/g;->f(J)B

    move-result v3

    const/16 v4, 0x30

    int-to-byte v4, v4

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    int-to-byte v4, v4

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    int-to-byte v4, v4

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    int-to-byte v4, v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v0

    .line 7
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_5
    :goto_2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 9
    invoke-virtual {v0}, Lj/g;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public B(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 2
    iget-object v1, p0, Lj/u;->c:Lj/a0;

    invoke-virtual {v0, v1}, Lj/g;->P(Lj/a0;)J

    .line 3
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 4
    iget-wide v1, v0, Lj/g;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lj/g;->H(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public C()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lj/u$a;

    invoke-direct {v0, p0}, Lj/u$a;-><init>(Lj/u;)V

    return-object v0
.end method

.method public D(Lj/r;)I
    .locals 8

    if-eqz p1, :cond_4

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, v1}, Lj/g;->K(Lj/r;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    .line 4
    iget-object p1, p1, Lj/r;->a:[Lj/k;

    .line 5
    aget-object p1, p1, v0

    .line 6
    invoke-virtual {p1}, Lj/k;->b()I

    move-result p1

    .line 7
    iget-object v1, p0, Lj/u;->a:Lj/g;

    int-to-long v2, p1

    .line 8
    invoke-virtual {v1, v2, v3}, Lj/g;->skip(J)V

    return v0

    :cond_1
    return v3

    .line 9
    :cond_2
    iget-object v0, p0, Lj/u;->c:Lj/a0;

    .line 10
    iget-object v2, p0, Lj/u;->a:Lj/g;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 11
    invoke-interface {v0, v2, v4, v5}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    return v3

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "options"

    .line 13
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(J)Lj/k;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/u;->g(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lj/g;->b(J)Lj/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public c(Lj/g;J)J
    .locals 6

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-boolean v2, p0, Lj/u;->b:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 3
    iget-wide v3, v2, Lj/g;->b:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 4
    iget-object v0, p0, Lj/u;->c:Lj/a0;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 5
    :cond_1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 6
    iget-wide v0, v0, Lj/g;->b:J

    .line 7
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 8
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lj/g;->c(Lj/g;J)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 11
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "sink"

    .line 12
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/u;->b:Z

    .line 3
    iget-object v0, p0, Lj/u;->c:Lj/a0;

    invoke-interface {v0}, Lj/a0;->close()V

    .line 4
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 5
    iget-wide v1, v0, Lj/g;->b:J

    invoke-virtual {v0, v1, v2}, Lj/g;->skip(J)V

    return-void
.end method

.method public d(BJJ)J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    .line 2
    iget-object v2, p0, Lj/u;->a:Lj/g;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lj/g;->g(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    return-wide v2

    .line 4
    :cond_2
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 5
    iget-wide v3, v2, Lj/g;->b:J

    cmp-long v5, v3, p4

    if-gez v5, :cond_4

    .line 6
    iget-object v5, p0, Lj/u;->c:Lj/a0;

    const/16 v6, 0x2000

    int-to-long v6, v6

    invoke-interface {v5, v2, v6, v7}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_4
    :goto_3
    return-wide v0

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/u;->g(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0, p1, p2}, Lj/g;->E(J)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public f()I
    .locals 3

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->readInt()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public g(J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1
    iget-boolean v2, p0, Lj/u;->b:Z

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 2
    :cond_1
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 3
    iget-wide v3, v2, Lj/g;->b:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_2

    .line 4
    iget-object v3, p0, Lj/u;->c:Lj/a0;

    const/16 v4, 0x2000

    int-to-long v4, v4

    invoke-interface {v3, v2, v4, v5}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v0

    :cond_2
    return v1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "byteCount < 0: "

    .line 6
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public h()Lj/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    return-object v0
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/u;->c:Lj/a0;

    invoke-interface {v0}, Lj/a0;->i()Lj/b0;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->v(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 2
    iget-object v1, p0, Lj/u;->c:Lj/a0;

    invoke-virtual {v0, v1}, Lj/g;->P(Lj/a0;)J

    .line 3
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 4
    invoke-virtual {v0}, Lj/g;->o()[B

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/u;->c:Lj/a0;

    .line 4
    iget-object v2, p0, Lj/u;->a:Lj/g;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 5
    invoke-interface {v0, v2, v3, v4}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 2
    iget-wide v1, v0, Lj/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v1, p0, Lj/u;->c:Lj/a0;

    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 5
    invoke-virtual {v0, p1}, Lj/g;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "sink"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->readByte()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    .line 2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {v0}, Lj/g;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 3
    iget-wide v3, v2, Lj/g;->b:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 4
    iget-object v0, p0, Lj/u;->c:Lj/a0;

    const/16 v1, 0x2000

    int-to-long v3, v1

    invoke-interface {v0, v2, v3, v4}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 7
    iget-wide v0, v0, Lj/g;->b:J

    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 10
    invoke-virtual {v2, v0, v1}, Lj/g;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/u;->c:Lj/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 10

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/u;->x(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    .line 2
    invoke-virtual {p0, v6, v7}, Lj/u;->g(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3
    iget-object v8, p0, Lj/u;->a:Lj/g;

    .line 4
    invoke-virtual {v8, v4, v5}, Lj/g;->f(J)B

    move-result v8

    const/16 v9, 0x30

    int-to-byte v9, v9

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    int-to-byte v9, v9

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v9, v4, v2

    if-nez v9, :cond_2

    const/16 v4, 0x2d

    int-to-byte v4, v4

    if-eq v8, v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_4
    :goto_2
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 9
    invoke-virtual {v0}, Lj/g;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public v(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    add-long v4, p1, v0

    :goto_1
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Lj/u;->d(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 2
    iget-object p1, p0, Lj/u;->a:Lj/g;

    .line 3
    invoke-virtual {p1, v6, v7}, Lj/g;->J(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Lj/u;->g(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lj/u;->a:Lj/g;

    sub-long v6, v4, v0

    .line 6
    invoke-virtual {v2, v6, v7}, Lj/g;->f(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Lj/u;->g(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lj/u;->a:Lj/g;

    .line 9
    invoke-virtual {v0, v4, v5}, Lj/g;->f(J)B

    move-result v0

    if-ne v0, v12, :cond_3

    .line 10
    iget-object p1, p0, Lj/u;->a:Lj/g;

    .line 11
    invoke-virtual {p1, v4, v5}, Lj/g;->J(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    new-instance v6, Lj/g;

    invoke-direct {v6}, Lj/g;-><init>()V

    .line 13
    iget-object v0, p0, Lj/u;->a:Lj/g;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 14
    iget-wide v4, v0, Lj/g;->b:J

    int-to-long v7, v1

    .line 15
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 16
    invoke-virtual/range {v0 .. v5}, Lj/g;->e(Lj/g;JJ)Lj/g;

    .line 17
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lj/u;->a:Lj/g;

    .line 19
    iget-wide v2, v2, Lj/g;->b:J

    .line 20
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v6}, Lj/g;->F()Lj/k;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 25
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w(Lj/y;)J
    .locals 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Lj/u;->c:Lj/a0;

    .line 2
    iget-object v5, p0, Lj/u;->a:Lj/g;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 3
    invoke-interface {v4, v5, v6, v7}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 4
    iget-object v4, p0, Lj/u;->a:Lj/g;

    .line 5
    invoke-virtual {v4}, Lj/g;->d()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 6
    iget-object v6, p0, Lj/u;->a:Lj/g;

    .line 7
    invoke-interface {p1, v6, v4, v5}, Lj/y;->j(Lj/g;J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lj/u;->a:Lj/g;

    .line 9
    iget-wide v5, v4, Lj/g;->b:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    add-long/2addr v2, v5

    .line 10
    invoke-interface {p1, v4, v5, v6}, Lj/y;->j(Lj/g;J)V

    :cond_2
    return-wide v2
.end method

.method public x(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/u;->g(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
