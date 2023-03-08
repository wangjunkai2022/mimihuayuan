.class public final Lf/i/a/a/h1/t0/i;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lf/i/a/a/h1/k0;


# instance fields
.field public final a:Lf/i/a/a/b0;

.field public final b:Lf/i/a/a/d1/g/c;

.field public c:[J

.field public d:Z

.field public e:Lf/i/a/a/h1/t0/k/e;

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/k/e;Lf/i/a/a/b0;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/i/a/a/h1/t0/i;->a:Lf/i/a/a/b0;

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/t0/i;->e:Lf/i/a/a/h1/t0/k/e;

    .line 4
    new-instance p2, Lf/i/a/a/d1/g/c;

    invoke-direct {p2}, Lf/i/a/a/d1/g/c;-><init>()V

    iput-object p2, p0, Lf/i/a/a/h1/t0/i;->b:Lf/i/a/a/d1/g/c;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lf/i/a/a/h1/t0/i;->h:J

    .line 6
    iget-object p2, p1, Lf/i/a/a/h1/t0/k/e;->b:[J

    iput-object p2, p0, Lf/i/a/a/h1/t0/i;->c:[J

    .line 7
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/h1/t0/i;->c(Lf/i/a/a/h1/t0/k/e;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/i;->c:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p1, p2, v1, v2}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result v0

    iput v0, p0, Lf/i/a/a/h1/t0/i;->g:I

    .line 3
    iget-boolean v3, p0, Lf/i/a/a/h1/t0/i;->d:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lf/i/a/a/h1/t0/i;->c:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_1
    iput-wide p1, p0, Lf/i/a/a/h1/t0/i;->h:J

    return-void
.end method

.method public c(Lf/i/a/a/h1/t0/k/e;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lf/i/a/a/h1/t0/i;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lf/i/a/a/h1/t0/i;->c:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 2
    :goto_0
    iput-boolean p2, p0, Lf/i/a/a/h1/t0/i;->d:Z

    .line 3
    iput-object p1, p0, Lf/i/a/a/h1/t0/i;->e:Lf/i/a/a/h1/t0/k/e;

    .line 4
    iget-object p1, p1, Lf/i/a/a/h1/t0/k/e;->b:[J

    iput-object p1, p0, Lf/i/a/a/h1/t0/i;->c:[J

    .line 5
    iget-wide v6, p0, Lf/i/a/a/h1/t0/i;->h:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, v6, v7}, Lf/i/a/a/h1/t0/i;->b(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, v4, v5, p2, p2}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result p1

    iput p1, p0, Lf/i/a/a/h1/t0/i;->g:I

    :cond_2
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 7

    const/4 v0, 0x1

    if-nez p3, :cond_5

    .line 1
    iget-boolean p3, p0, Lf/i/a/a/h1/t0/i;->f:Z

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lf/i/a/a/h1/t0/i;->g:I

    iget-object p3, p0, Lf/i/a/a/h1/t0/i;->c:[J

    array-length p3, p3

    const/4 v1, -0x4

    const/4 v2, -0x3

    if-ne p1, p3, :cond_2

    .line 3
    iget-boolean p1, p0, Lf/i/a/a/h1/t0/i;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 4
    iput p1, p2, Lf/i/a/a/y0/a;->a:I

    return v1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 5
    iput p3, p0, Lf/i/a/a/h1/t0/i;->g:I

    .line 6
    iget-object p3, p0, Lf/i/a/a/h1/t0/i;->b:Lf/i/a/a/d1/g/c;

    iget-object v3, p0, Lf/i/a/a/h1/t0/i;->e:Lf/i/a/a/h1/t0/k/e;

    iget-object v3, v3, Lf/i/a/a/h1/t0/k/e;->a:[Lf/i/a/a/d1/g/a;

    aget-object v3, v3, p1

    .line 7
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 8
    :try_start_0
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    iget-object v5, v3, Lf/i/a/a/d1/g/a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 11
    iget-object v4, v3, Lf/i/a/a/d1/g/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lf/i/a/a/d1/g/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, ""

    .line 12
    :goto_0
    iget-object v6, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    .line 13
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 15
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    const-wide/16 v5, 0x3e8

    invoke-static {v4, v5, v6}, Lf/i/a/a/d1/g/c;->a(Ljava/io/DataOutputStream;J)V

    .line 16
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lf/i/a/a/d1/g/c;->a(Ljava/io/DataOutputStream;J)V

    .line 17
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    iget-wide v5, v3, Lf/i/a/a/d1/g/a;->c:J

    invoke-static {v4, v5, v6}, Lf/i/a/a/d1/g/c;->a(Ljava/io/DataOutputStream;J)V

    .line 18
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    iget-wide v5, v3, Lf/i/a/a/d1/g/a;->d:J

    invoke-static {v4, v5, v6}, Lf/i/a/a/d1/g/c;->a(Ljava/io/DataOutputStream;J)V

    .line 19
    iget-object v4, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    iget-object v3, v3, Lf/i/a/a/d1/g/a;->e:[B

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 20
    iget-object v3, p3, Lf/i/a/a/d1/g/c;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 21
    iget-object p3, p3, Lf/i/a/a/d1/g/c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_4

    .line 22
    array-length v2, p3

    invoke-virtual {p2, v2}, Lf/i/a/a/y0/e;->k(I)V

    .line 23
    iput v0, p2, Lf/i/a/a/y0/a;->a:I

    .line 24
    iget-object v0, p2, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    iget-object p3, p0, Lf/i/a/a/h1/t0/i;->c:[J

    aget-wide v2, p3, p1

    iput-wide v2, p2, Lf/i/a/a/y0/e;->d:J

    return v1

    :cond_4
    return v2

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_5
    :goto_1
    iget-object p2, p0, Lf/i/a/a/h1/t0/i;->a:Lf/i/a/a/b0;

    iput-object p2, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    .line 28
    iput-boolean v0, p0, Lf/i/a/a/h1/t0/i;->f:Z

    const/4 p1, -0x5

    return p1
.end method

.method public q(J)I
    .locals 4

    .line 1
    iget v0, p0, Lf/i/a/a/h1/t0/i;->g:I

    iget-object v1, p0, Lf/i/a/a/h1/t0/i;->c:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {v1, p1, p2, v2, v3}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget p2, p0, Lf/i/a/a/h1/t0/i;->g:I

    sub-int p2, p1, p2

    .line 4
    iput p1, p0, Lf/i/a/a/h1/t0/i;->g:I

    return p2
.end method
