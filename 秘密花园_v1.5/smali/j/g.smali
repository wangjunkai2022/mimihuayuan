.class public final Lj/g;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lj/j;
.implements Lj/i;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field public static final c:[B


# instance fields
.field public a:Lj/v;

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lh/s/a;->a:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj/g;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-wide v4, v2

    .line 2
    :cond_0
    iget-object v6, p0, Lj/g;->a:Lj/v;

    if-eqz v6, :cond_9

    .line 3
    iget-object v7, v6, Lj/v;->a:[B

    .line 4
    iget v8, v6, Lj/v;->b:I

    .line 5
    iget v9, v6, Lj/v;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lj/g;

    invoke-direct {v0}, Lj/g;-><init>()V

    invoke-virtual {v0, v4, v5}, Lj/g;->Y(J)Lj/g;

    move-result-object v0

    invoke-virtual {v0, v10}, Lj/g;->Q(I)Lj/g;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number too large: "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lj/g;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 10
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Lj/v;->a()Lj/v;

    move-result-object v7

    iput-object v7, p0, Lj/g;->a:Lj/v;

    .line 13
    invoke-static {v6}, Lj/w;->a(Lj/v;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Lj/v;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Lj/g;->a:Lj/v;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    iget-wide v1, p0, Lj/g;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lj/g;->b:J

    return-wide v4

    .line 17
    :cond_9
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 18
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public B(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lj/g;->H(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public C()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lj/g$a;

    invoke-direct {v0, p0}, Lj/g$a;-><init>(Lj/g;)V

    return-object v0
.end method

.method public D(Lj/r;)I
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lj/g;->K(Lj/r;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p1, Lj/r;->a:[Lj/k;

    .line 3
    aget-object p1, p1, v0

    .line 4
    invoke-virtual {p1}, Lj/k;->b()I

    move-result p1

    int-to-long v1, p1

    .line 5
    invoke-virtual {p0, v1, v2}, Lj/g;->skip(J)V

    return v0

    :cond_1
    const-string p1, "options"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public E(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-wide v1, p0, Lj/g;->b:J

    cmp-long v3, v1, p1

    if-ltz v3, :cond_3

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    :goto_1
    if-ge v0, p2, :cond_2

    sub-int v1, p2, v0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lj/g;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/2addr v0, v1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-object p1

    .line 5
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    const-string v0, "byteCount: "

    .line 6
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public F()Lj/k;
    .locals 2

    .line 1
    new-instance v0, Lj/k;

    invoke-virtual {p0}, Lj/g;->o()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lj/k;-><init>([B)V

    return-object v0
.end method

.method public G()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj/g;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public H(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v4, p1, v1

    if-gtz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-wide v1, p0, Lj/g;->b:J

    cmp-long v4, v1, p1

    if-ltz v4, :cond_5

    if-nez v3, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v1, p0, Lj/g;->a:Lj/v;

    if-eqz v1, :cond_4

    .line 3
    iget v0, v1, Lj/v;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v4, v1, Lj/v;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Lj/g;->E(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 5
    :cond_2
    iget-object v2, v1, Lj/v;->a:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v1, Lj/v;->b:I

    add-int/2addr p3, v3

    iput p3, v1, Lj/v;->b:I

    .line 7
    iget-wide v2, p0, Lj/g;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lj/g;->b:J

    .line 8
    iget p1, v1, Lj/v;->c:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v1}, Lj/v;->a()Lj/v;

    move-result-object p1

    iput-object p1, p0, Lj/g;->a:Lj/v;

    .line 10
    invoke-static {v1}, Lj/w;->a(Lj/v;)V

    :cond_3
    return-object v4

    .line 11
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 12
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_6
    const-string p3, "byteCount: "

    .line 13
    invoke-static {p3, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p1, "charset"

    .line 14
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public I()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    sget-object v2, Lh/s/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lj/g;->H(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    .line 1
    invoke-virtual {p0, v2, v3}, Lj/g;->f(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    .line 2
    sget-object p1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2, v3, p1}, Lj/g;->H(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lj/g;->skip(J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lh/s/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v2}, Lj/g;->H(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, v1}, Lj/g;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public final K(Lj/r;Z)I
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Lj/g;->a:Lj/v;

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz v3, :cond_12

    .line 2
    iget-object v6, v3, Lj/v;->a:[B

    .line 3
    iget v7, v3, Lj/v;->b:I

    .line 4
    iget v8, v3, Lj/v;->c:I

    .line 5
    iget-object v0, v0, Lj/r;->b:[I

    const/4 v9, 0x0

    move-object v11, v3

    const/4 v10, 0x0

    const/4 v12, -0x1

    :goto_0
    add-int/lit8 v13, v10, 0x1

    .line 6
    aget v10, v0, v10

    add-int/lit8 v14, v13, 0x1

    .line 7
    aget v13, v0, v13

    if-eq v13, v5, :cond_0

    move v12, v13

    :cond_0
    if-nez v11, :cond_1

    goto :goto_3

    :cond_1
    if-gez v10, :cond_b

    mul-int/lit8 v10, v10, -0x1

    add-int v13, v10, v14

    :goto_1
    add-int/lit8 v10, v7, 0x1

    .line 8
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v15, v14, 0x1

    .line 9
    aget v14, v0, v14

    if-eq v7, v14, :cond_2

    return v12

    :cond_2
    if-ne v15, v13, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-ne v10, v8, :cond_9

    if-eqz v11, :cond_8

    .line 10
    iget-object v6, v11, Lj/v;->f:Lj/v;

    if-eqz v6, :cond_7

    .line 11
    iget v8, v6, Lj/v;->b:I

    .line 12
    iget-object v10, v6, Lj/v;->a:[B

    .line 13
    iget v11, v6, Lj/v;->c:I

    if-ne v6, v3, :cond_6

    if-nez v7, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v4

    :cond_4
    return v12

    :cond_5
    move-object v6, v10

    move-object v10, v1

    goto :goto_4

    :cond_6
    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v16

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_9
    move-object/from16 v16, v11

    move v11, v8

    move v8, v10

    move-object/from16 v10, v16

    :goto_4
    if-eqz v7, :cond_a

    .line 15
    aget v7, v0, v15

    move v4, v8

    move v8, v11

    move-object v11, v10

    goto :goto_6

    :cond_a
    move v7, v8

    move v8, v11

    move v14, v15

    move-object v11, v10

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v7, 0x1

    .line 16
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int v15, v14, v10

    :goto_5
    if-ne v14, v15, :cond_c

    return v12

    .line 17
    :cond_c
    aget v4, v0, v14

    if-ne v7, v4, :cond_11

    add-int/2addr v14, v10

    .line 18
    aget v7, v0, v14

    if-ne v13, v8, :cond_e

    .line 19
    iget-object v11, v11, Lj/v;->f:Lj/v;

    if-eqz v11, :cond_d

    .line 20
    iget v4, v11, Lj/v;->b:I

    .line 21
    iget-object v6, v11, Lj/v;->a:[B

    .line 22
    iget v8, v11, Lj/v;->c:I

    if-ne v11, v3, :cond_f

    move-object v11, v1

    goto :goto_6

    .line 23
    :cond_d
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_e
    move v4, v13

    :cond_f
    :goto_6
    if-ltz v7, :cond_10

    return v7

    :cond_10
    neg-int v10, v7

    move v7, v4

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v4, -0x2

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    const/4 v4, -0x2

    goto :goto_7

    :cond_13
    const/4 v4, -0x1

    :goto_7
    return v4

    :cond_14
    move-object/from16 v2, p0

    const-string v0, "options"

    .line 24
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public final L(I)Lj/v;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 1
    iget-object v1, p0, Lj/g;->a:Lj/v;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lj/w;->b()Lj/v;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lj/g;->a:Lj/v;

    .line 4
    iput-object p1, p1, Lj/v;->g:Lj/v;

    .line 5
    iput-object p1, p1, Lj/v;->f:Lj/v;

    return-object p1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, v1, Lj/v;->g:Lj/v;

    if-eqz v1, :cond_4

    .line 7
    iget v2, v1, Lj/v;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lj/v;->e:Z

    if-nez p1, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lj/w;->b()Lj/v;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj/v;->b(Lj/v;)Lj/v;

    move-object v1, p1

    :cond_3
    return-object v1

    .line 9
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 10
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(Lj/k;)Lj/g;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Lj/k;->i(Lj/g;)V

    return-object p0

    :cond_0
    const-string p1, "byteString"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public N([B)Lj/g;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lj/g;->O([BII)Lj/g;

    return-object p0

    :cond_0
    const-string p1, "source"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public O([BII)Lj/g;
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lj/b;->i(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lj/v;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lj/v;->a:[B

    iget v3, v0, Lj/v;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 5
    iget v2, v0, Lj/v;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lj/v;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide p1, p0, Lj/g;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lj/g;->b:J

    return-object p0

    :cond_1
    const-string p1, "source"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public P(Lj/a0;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-string p1, "source"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Q(I)Lj/g;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lj/v;->a:[B

    iget v2, v0, Lj/v;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lj/v;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    return-object p0
.end method

.method public R(J)Lj/g;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->Q(I)Lj/g;

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    return-object p0

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_15
    invoke-virtual {p0, v4}, Lj/g;->L(I)Lj/v;

    move-result-object v5

    .line 4
    iget-object v6, v5, Lj/v;->a:[B

    .line 5
    iget v7, v5, Lj/v;->c:I

    add-int/2addr v7, v4

    :goto_1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v2

    .line 6
    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    .line 7
    sget-object v10, Lj/g;->c:[B

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 8
    div-long/2addr p1, v8

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v6, v7

    .line 10
    :cond_17
    iget p1, v5, Lj/v;->c:I

    add-int/2addr p1, v4

    iput p1, v5, Lj/v;->c:I

    .line 11
    iget-wide p1, p0, Lj/g;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lj/g;->b:J

    return-object p0
.end method

.method public Y(J)Lj/g;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->Q(I)Lj/g;

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lj/v;->a:[B

    .line 5
    iget v4, v2, Lj/v;->c:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lt v5, v4, :cond_1

    .line 6
    sget-object v6, Lj/g;->c:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, v2, Lj/v;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lj/v;->c:I

    .line 8
    iget-wide p1, p0, Lj/g;->b:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lj/g;->b:J

    return-object p0
.end method

.method public Z(I)Lj/g;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lj/v;->a:[B

    .line 3
    iget v2, v0, Lj/v;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lj/v;->c:I

    .line 9
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    return-object p0
.end method

.method public bridge synthetic a([BII)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lj/g;->O([BII)Lj/g;

    return-object p0
.end method

.method public a0(I)Lj/g;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lj/v;->a:[B

    .line 3
    iget v2, v0, Lj/v;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lj/v;->c:I

    .line 7
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    return-object p0
.end method

.method public b(J)Lj/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj/k;

    invoke-virtual {p0, p1, p2}, Lj/g;->E(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lj/k;-><init>([B)V

    return-object v0
.end method

.method public b0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lj/g;
    .locals 3

    if-eqz p4, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lh/s/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lj/g;->d0(Ljava/lang/String;II)Lj/g;

    return-object p0

    .line 3
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lj/g;->O([BII)Lj/g;

    return-object p0

    :cond_4
    const-string p2, "endIndex > string.length: "

    const-string p4, " > "

    .line 5
    invoke-static {p2, p3, p4}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p1, "beginIndex < 0: "

    .line 7
    invoke-static {p1, p2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p1, "charset"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Lj/g;J)J
    .locals 5

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
    iget-wide v2, p0, Lj/g;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lj/g;->j(Lj/g;J)V

    return-wide p2

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 3
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "sink"

    .line 4
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c0(Ljava/lang/String;)Lj/g;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lj/g;->d0(Ljava/lang/String;II)Lj/g;

    return-object p0

    :cond_0
    const-string p1, "string"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lj/g;

    invoke-direct {v0}, Lj/g;-><init>()V

    .line 2
    iget-wide v1, p0, Lj/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lj/g;->a:Lj/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lj/v;->c()Lj/v;

    move-result-object v1

    iput-object v1, v0, Lj/g;->a:Lj/v;

    .line 4
    iput-object v1, v1, Lj/v;->g:Lj/v;

    .line 5
    iput-object v1, v1, Lj/v;->f:Lj/v;

    .line 6
    iget-object v1, p0, Lj/g;->a:Lj/v;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lj/v;->f:Lj/v;

    .line 7
    :goto_0
    iget-object v3, p0, Lj/g;->a:Lj/v;

    if-eq v1, v3, :cond_4

    .line 8
    iget-object v3, v0, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lj/v;->g:Lj/v;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj/v;->c()Lj/v;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj/v;->b(Lj/v;)Lj/v;

    .line 9
    iget-object v1, v1, Lj/v;->f:Lj/v;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 11
    :cond_4
    iget-wide v1, p0, Lj/g;->b:J

    iput-wide v1, v0, Lj/g;->b:J

    :goto_1
    return-object v0

    .line 12
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    .line 13
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v2
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v2, p0, Lj/g;->a:Lj/v;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lj/v;->g:Lj/v;

    if-eqz v2, :cond_2

    .line 3
    iget v3, v2, Lj/v;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lj/v;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lj/v;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0

    .line 5
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3
.end method

.method public d0(Ljava/lang/String;II)Lj/g;
    .locals 10

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    if-lt p3, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_5

    .line 3
    invoke-virtual {p0, v0}, Lj/g;->L(I)Lj/v;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lj/v;->a:[B

    .line 5
    iget v5, v3, Lj/v;->c:I

    sub-int/2addr v5, p2

    rsub-int v6, v5, 0x2000

    .line 6
    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v1, v1

    .line 7
    aput-byte v1, v4, p2

    :goto_4
    move p2, v7

    if-ge p2, v6, :cond_4

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v1, v1

    .line 9
    aput-byte v1, v4, p2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v5, p2

    .line 10
    iget v1, v3, Lj/v;->c:I

    sub-int/2addr v5, v1

    add-int/2addr v1, v5

    .line 11
    iput v1, v3, Lj/v;->c:I

    .line 12
    iget-wide v1, p0, Lj/g;->b:J

    int-to-long v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    goto :goto_3

    :cond_5
    const/16 v3, 0x800

    if-ge v1, v3, :cond_6

    const/4 v3, 0x2

    .line 13
    invoke-virtual {p0, v3}, Lj/g;->L(I)Lj/v;

    move-result-object v4

    .line 14
    iget-object v5, v4, Lj/v;->a:[B

    iget v6, v4, Lj/v;->c:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 15
    aput-byte v1, v5, v7

    add-int/2addr v6, v3

    .line 16
    iput v6, v4, Lj/v;->c:I

    .line 17
    iget-wide v1, p0, Lj/g;->b:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    goto/16 :goto_9

    :cond_6
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v1, v3, :cond_b

    const v3, 0xdfff

    if-le v1, v3, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v5, p2, 0x1

    if-ge v5, p3, :cond_8

    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    const v7, 0xdbff

    if-gt v1, v7, :cond_a

    const v7, 0xdc00

    if-gt v7, v6, :cond_a

    if-ge v3, v6, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v3, 0x10000

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v5, v6, 0x3ff

    or-int/2addr v1, v5

    add-int/2addr v1, v3

    const/4 v3, 0x4

    .line 19
    invoke-virtual {p0, v3}, Lj/g;->L(I)Lj/v;

    move-result-object v5

    .line 20
    iget-object v6, v5, Lj/v;->a:[B

    iget v7, v5, Lj/v;->c:I

    shr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v1, 0xc

    and-int/2addr v9, v4

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 21
    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v4

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 22
    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 23
    aput-byte v1, v6, v8

    add-int/2addr v7, v3

    .line 24
    iput v7, v5, Lj/v;->c:I

    .line 25
    iget-wide v1, p0, Lj/g;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 26
    :cond_a
    :goto_7
    invoke-virtual {p0, v4}, Lj/g;->Q(I)Lj/g;

    move p2, v5

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v3, 0x3

    .line 27
    invoke-virtual {p0, v3}, Lj/g;->L(I)Lj/v;

    move-result-object v5

    .line 28
    iget-object v6, v5, Lj/v;->a:[B

    iget v7, v5, Lj/v;->c:I

    shr-int/lit8 v8, v1, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v4, v9

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 29
    aput-byte v4, v6, v8

    add-int/lit8 v4, v7, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 30
    aput-byte v1, v6, v4

    add-int/2addr v7, v3

    .line 31
    iput v7, v5, Lj/v;->c:I

    .line 32
    iget-wide v1, p0, Lj/g;->b:J

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    return-object p0

    :cond_d
    const-string p2, "endIndex > string.length: "

    const-string v0, " > "

    .line 33
    invoke-static {p2, p3, v0}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    const-string p1, "beginIndex < 0: "

    .line 35
    invoke-static {p1, p2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final e(Lj/g;JJ)Lj/g;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    iget-wide v1, p0, Lj/g;->b:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lj/b;->i(JJJ)V

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-wide v3, p1, Lj/g;->b:J

    add-long/2addr v3, p4

    iput-wide v3, p1, Lj/g;->b:J

    .line 3
    iget-object v3, p0, Lj/g;->a:Lj/v;

    :goto_0
    if-eqz v3, :cond_7

    .line 4
    iget v4, v3, Lj/v;->c:I

    iget v5, v3, Lj/v;->b:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v8, p2, v6

    if-ltz v8, :cond_1

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr p2, v4

    .line 5
    iget-object v3, v3, Lj/v;->f:Lj/v;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, p4, v1

    if-lez v4, :cond_6

    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v3}, Lj/v;->c()Lj/v;

    move-result-object v4

    .line 7
    iget v5, v4, Lj/v;->b:I

    long-to-int p3, p2

    add-int/2addr v5, p3

    iput v5, v4, Lj/v;->b:I

    long-to-int p2, p4

    add-int/2addr v5, p2

    .line 8
    iget p2, v4, Lj/v;->c:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v4, Lj/v;->c:I

    .line 9
    iget-object p2, p1, Lj/g;->a:Lj/v;

    if-nez p2, :cond_2

    .line 10
    iput-object v4, v4, Lj/v;->g:Lj/v;

    .line 11
    iput-object v4, v4, Lj/v;->f:Lj/v;

    .line 12
    iput-object v4, p1, Lj/g;->a:Lj/v;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 13
    iget-object p2, p2, Lj/v;->g:Lj/v;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Lj/v;->b(Lj/v;)Lj/v;

    .line 14
    :goto_2
    iget p2, v4, Lj/v;->c:I

    iget p3, v4, Lj/v;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 15
    iget-object v3, v3, Lj/v;->f:Lj/v;

    move-wide p2, v1

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 17
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_6
    return-object p0

    .line 18
    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_8
    const-string p1, "out"

    .line 19
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public e0(I)Lj/g;
    .locals 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->Q(I)Lj/g;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lj/g;->L(I)Lj/v;

    move-result-object v3

    .line 3
    iget-object v4, v3, Lj/v;->a:[B

    iget v5, v3, Lj/v;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 5
    iput v5, v3, Lj/v;->c:I

    .line 6
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v3, 0xd800

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Lj/g;->Q(I)Lj/g;

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0, v1}, Lj/g;->L(I)Lj/v;

    move-result-object v3

    .line 9
    iget-object v4, v3, Lj/v;->a:[B

    iget v5, v3, Lj/v;->c:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 12
    iput v5, v3, Lj/v;->c:I

    .line 13
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/4 v1, 0x4

    .line 14
    invoke-virtual {p0, v1}, Lj/g;->L(I)Lj/v;

    move-result-object v3

    .line 15
    iget-object v4, v3, Lj/v;->a:[B

    iget v5, v3, Lj/v;->c:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 16
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 18
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 19
    iput v5, v3, Lj/v;->c:I

    .line 20
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj/g;->b:J

    :goto_1
    return-object p0

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected code point: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1
    :cond_0
    instance-of v3, v1, Lj/g;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 2
    :cond_1
    iget-wide v5, v0, Lj/g;->b:J

    check-cast v1, Lj/g;

    iget-wide v7, v1, Lj/g;->b:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v4

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    return v2

    .line 3
    :cond_3
    iget-object v3, v0, Lj/g;->a:Lj/v;

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 4
    iget-object v1, v1, Lj/g;->a:Lj/v;

    if-eqz v1, :cond_b

    .line 5
    iget v6, v3, Lj/v;->b:I

    .line 6
    iget v9, v1, Lj/v;->b:I

    move-wide v10, v7

    .line 7
    :goto_0
    iget-wide v12, v0, Lj/g;->b:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_a

    .line 8
    iget v12, v3, Lj/v;->c:I

    sub-int/2addr v12, v6

    iget v13, v1, Lj/v;->c:I

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v7

    :goto_1
    cmp-long v16, v14, v12

    if-gez v16, :cond_5

    .line 9
    iget-object v7, v3, Lj/v;->a:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    iget-object v7, v1, Lj/v;->a:[B

    add-int/lit8 v17, v9, 0x1

    aget-byte v7, v7, v9

    if-eq v6, v7, :cond_4

    return v4

    :cond_4
    const-wide/16 v6, 0x1

    add-long/2addr v14, v6

    move v6, v8

    move/from16 v9, v17

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 10
    :cond_5
    iget v7, v3, Lj/v;->c:I

    if-ne v6, v7, :cond_7

    .line 11
    iget-object v3, v3, Lj/v;->f:Lj/v;

    if-eqz v3, :cond_6

    .line 12
    iget v6, v3, Lj/v;->b:I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 14
    :cond_7
    :goto_2
    iget v7, v1, Lj/v;->c:I

    if-ne v9, v7, :cond_9

    .line 15
    iget-object v1, v1, Lj/v;->f:Lj/v;

    if-eqz v1, :cond_8

    .line 16
    iget v7, v1, Lj/v;->b:I

    move v9, v7

    goto :goto_3

    .line 17
    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    :cond_9
    :goto_3
    add-long/2addr v10, v12

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_a
    return v2

    .line 18
    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 19
    :cond_c
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5
.end method

.method public final f(J)B
    .locals 8

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lj/b;->i(JJJ)V

    .line 2
    iget-object v0, p0, Lj/g;->a:Lj/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget-wide v2, p0, Lj/g;->b:J

    sub-long v4, v2, p1

    cmp-long v6, v4, p1

    if-gez v6, :cond_2

    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 4
    iget-object v0, v0, Lj/v;->g:Lj/v;

    if-eqz v0, :cond_0

    .line 5
    iget v4, v0, Lj/v;->c:I

    iget v5, v0, Lj/v;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 7
    :cond_1
    iget-object v1, v0, Lj/v;->a:[B

    iget v0, v0, Lj/v;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v1, p1

    return p1

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    :goto_1
    iget v4, v0, Lj/v;->c:I

    iget v5, v0, Lj/v;->b:I

    sub-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v6, v2

    cmp-long v4, v6, p1

    if-lez v4, :cond_3

    .line 9
    iget-object v0, v0, Lj/v;->a:[B

    int-to-long v4, v5

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p1, v4

    aget-byte p1, v0, p1

    return p1

    .line 10
    :cond_3
    iget-object v0, v0, Lj/v;->f:Lj/v;

    if-eqz v0, :cond_4

    move-wide v2, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 11
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(BJJ)J
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_12

    .line 1
    iget-wide v8, v0, Lj/g;->b:J

    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    move-wide v4, v8

    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v10, v2, v4

    if-nez v10, :cond_3

    return-wide v8

    .line 2
    :cond_3
    iget-object v10, v0, Lj/g;->a:Lj/v;

    if-eqz v10, :cond_11

    .line 3
    iget-wide v11, v0, Lj/g;->b:J

    sub-long v13, v11, v2

    const/4 v15, 0x0

    cmp-long v16, v13, v2

    if-gez v16, :cond_a

    :goto_2
    cmp-long v6, v11, v2

    if-lez v6, :cond_5

    .line 4
    iget-object v10, v10, Lj/v;->g:Lj/v;

    if-eqz v10, :cond_4

    .line 5
    iget v6, v10, Lj/v;->c:I

    iget v7, v10, Lj/v;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v11, v6

    goto :goto_2

    .line 6
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v15

    :cond_5
    :goto_3
    cmp-long v6, v11, v4

    if-gez v6, :cond_9

    .line 7
    iget-object v6, v10, Lj/v;->a:[B

    .line 8
    iget v7, v10, Lj/v;->c:I

    int-to-long v7, v7

    iget v9, v10, Lj/v;->b:I

    int-to-long v13, v9

    add-long/2addr v13, v4

    sub-long/2addr v13, v11

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 9
    iget v7, v10, Lj/v;->b:I

    int-to-long v13, v7

    add-long/2addr v13, v2

    sub-long/2addr v13, v11

    long-to-int v2, v13

    :goto_4
    if-ge v2, v8, :cond_7

    .line 10
    aget-byte v3, v6, v2

    if-ne v3, v1, :cond_6

    .line 11
    iget v1, v10, Lj/v;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v1, v11

    return-wide v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 12
    :cond_7
    iget v2, v10, Lj/v;->c:I

    iget v3, v10, Lj/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v11, v2

    .line 13
    iget-object v10, v10, Lj/v;->f:Lj/v;

    if-eqz v10, :cond_8

    const-wide/16 v8, -0x1

    move-wide v2, v11

    goto :goto_3

    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v15

    :cond_9
    return-wide v8

    .line 14
    :cond_a
    :goto_5
    iget v8, v10, Lj/v;->c:I

    iget v9, v10, Lj/v;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v11, v8, v2

    if-lez v11, :cond_f

    :goto_6
    cmp-long v8, v6, v4

    if-gez v8, :cond_e

    .line 15
    iget-object v8, v10, Lj/v;->a:[B

    .line 16
    iget v9, v10, Lj/v;->c:I

    int-to-long v11, v9

    iget v9, v10, Lj/v;->b:I

    int-to-long v13, v9

    add-long/2addr v13, v4

    sub-long/2addr v13, v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v9, v11

    .line 17
    iget v11, v10, Lj/v;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v2

    sub-long/2addr v11, v6

    long-to-int v2, v11

    :goto_7
    if-ge v2, v9, :cond_c

    .line 18
    aget-byte v3, v8, v2

    if-ne v3, v1, :cond_b

    .line 19
    iget v1, v10, Lj/v;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v1, v6

    return-wide v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 20
    :cond_c
    iget v2, v10, Lj/v;->c:I

    iget v3, v10, Lj/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 21
    iget-object v10, v10, Lj/v;->f:Lj/v;

    if-eqz v10, :cond_d

    move-wide v2, v6

    goto :goto_6

    :cond_d
    invoke-static {}, Lh/o/c/g;->e()V

    throw v15

    :cond_e
    const-wide/16 v1, -0x1

    return-wide v1

    .line 22
    :cond_f
    iget-object v10, v10, Lj/v;->f:Lj/v;

    if-eqz v10, :cond_10

    move-wide v6, v8

    goto :goto_5

    :cond_10
    invoke-static {}, Lh/o/c/g;->e()V

    throw v15

    :cond_11
    return-wide v8

    :cond_12
    const-string v1, "size="

    .line 23
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lj/g;->b:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fromIndex="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public h()Lj/g;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lj/g;->a:Lj/v;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget v2, v0, Lj/v;->b:I

    .line 3
    iget v3, v0, Lj/v;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lj/v;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lj/v;->f:Lj/v;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lj/g;->a:Lj/v;

    if-ne v0, v2, :cond_0

    return v1

    .line 7
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    sget-object v0, Lj/b0;->d:Lj/b0;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Lj/g;J)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1b

    .line 1
    iget-wide v4, p1, Lj/g;->b:J

    const-wide/16 v6, 0x0

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Lj/b;->i(JJJ)V

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_1a

    .line 2
    iget-object v3, p1, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_19

    iget v4, v3, Lj/v;->c:I

    if-eqz v3, :cond_18

    iget v3, v3, Lj/v;->b:I

    sub-int/2addr v4, v3

    int-to-long v3, v4

    const/16 v5, 0x2000

    cmp-long v6, p2, v3

    if-gez v6, :cond_c

    .line 3
    iget-object v3, p0, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    iget-object v3, v3, Lj/v;->g:Lj/v;

    goto :goto_2

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    .line 4
    iget-boolean v4, v3, Lj/v;->e:Z

    if-eqz v4, :cond_5

    iget v4, v3, Lj/v;->c:I

    int-to-long v6, v4

    add-long/2addr v6, p2

    iget-boolean v4, v3, Lj/v;->d:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    iget v4, v3, Lj/v;->b:I

    :goto_3
    int-to-long v8, v4

    sub-long/2addr v6, v8

    int-to-long v8, v5

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    .line 5
    iget-object v1, p1, Lj/g;->a:Lj/v;

    if-eqz v1, :cond_4

    long-to-int v0, p2

    invoke-virtual {v1, v3, v0}, Lj/v;->d(Lj/v;I)V

    .line 6
    iget-wide v0, p1, Lj/g;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lj/g;->b:J

    .line 7
    iget-wide v0, p0, Lj/g;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lj/g;->b:J

    return-void

    .line 8
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 9
    :cond_5
    iget-object v3, p1, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_b

    long-to-int v4, p2

    if-eqz v3, :cond_a

    if-lez v4, :cond_6

    .line 10
    iget v6, v3, Lj/v;->c:I

    iget v7, v3, Lj/v;->b:I

    sub-int/2addr v6, v7

    if-gt v4, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_9

    const/16 v6, 0x400

    if-lt v4, v6, :cond_7

    .line 11
    invoke-virtual {v3}, Lj/v;->c()Lj/v;

    move-result-object v6

    goto :goto_5

    .line 12
    :cond_7
    invoke-static {}, Lj/w;->b()Lj/v;

    move-result-object v6

    .line 13
    iget-object v7, v3, Lj/v;->a:[B

    iget v8, v3, Lj/v;->b:I

    iget-object v9, v6, Lj/v;->a:[B

    invoke-static {v7, v8, v9, v2, v4}, Lj/b;->c([BI[BII)V

    .line 14
    :goto_5
    iget v7, v6, Lj/v;->b:I

    add-int/2addr v7, v4

    iput v7, v6, Lj/v;->c:I

    .line 15
    iget v7, v3, Lj/v;->b:I

    add-int/2addr v7, v4

    iput v7, v3, Lj/v;->b:I

    .line 16
    iget-object v3, v3, Lj/v;->g:Lj/v;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Lj/v;->b(Lj/v;)Lj/v;

    .line 17
    iput-object v6, p1, Lj/g;->a:Lj/v;

    goto :goto_6

    .line 18
    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a
    throw v0

    .line 21
    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 22
    :cond_c
    :goto_6
    iget-object v3, p1, Lj/g;->a:Lj/v;

    if-eqz v3, :cond_17

    .line 23
    iget v4, v3, Lj/v;->c:I

    iget v6, v3, Lj/v;->b:I

    sub-int/2addr v4, v6

    int-to-long v6, v4

    .line 24
    invoke-virtual {v3}, Lj/v;->a()Lj/v;

    move-result-object v4

    iput-object v4, p1, Lj/g;->a:Lj/v;

    .line 25
    iget-object v4, p0, Lj/g;->a:Lj/v;

    if-nez v4, :cond_d

    .line 26
    iput-object v3, p0, Lj/g;->a:Lj/v;

    .line 27
    iput-object v3, v3, Lj/v;->g:Lj/v;

    .line 28
    iput-object v3, v3, Lj/v;->f:Lj/v;

    goto :goto_9

    :cond_d
    if-eqz v4, :cond_16

    .line 29
    iget-object v4, v4, Lj/v;->g:Lj/v;

    if-eqz v4, :cond_15

    .line 30
    invoke-virtual {v4, v3}, Lj/v;->b(Lj/v;)Lj/v;

    .line 31
    iget-object v4, v3, Lj/v;->g:Lj/v;

    if-eq v4, v3, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_14

    .line 32
    iget-object v4, v3, Lj/v;->g:Lj/v;

    if-eqz v4, :cond_13

    iget-boolean v8, v4, Lj/v;->e:Z

    if-nez v8, :cond_f

    goto :goto_9

    .line 33
    :cond_f
    iget v8, v3, Lj/v;->c:I

    iget v9, v3, Lj/v;->b:I

    sub-int/2addr v8, v9

    .line 34
    iget v9, v4, Lj/v;->c:I

    sub-int/2addr v5, v9

    iget-boolean v9, v4, Lj/v;->d:Z

    if-eqz v9, :cond_10

    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    iget v4, v4, Lj/v;->b:I

    :goto_8
    add-int/2addr v5, v4

    if-le v8, v5, :cond_11

    goto :goto_9

    .line 35
    :cond_11
    iget-object v4, v3, Lj/v;->g:Lj/v;

    if-eqz v4, :cond_12

    invoke-virtual {v3, v4, v8}, Lj/v;->d(Lj/v;I)V

    .line 36
    invoke-virtual {v3}, Lj/v;->a()Lj/v;

    .line 37
    invoke-static {v3}, Lj/w;->a(Lj/v;)V

    .line 38
    :goto_9
    iget-wide v3, p1, Lj/g;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p1, Lj/g;->b:J

    .line 39
    iget-wide v3, p0, Lj/g;->b:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Lj/g;->b:J

    sub-long/2addr p2, v6

    goto/16 :goto_1

    .line 40
    :cond_12
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 41
    :cond_13
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 42
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_15
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 44
    :cond_16
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 45
    :cond_17
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 46
    :cond_18
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_19
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    :cond_1a
    return-void

    .line 47
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    const-string p1, "source"

    .line 48
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic k(J)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/g;->Y(J)Lj/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(I)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->a0(I)Lj/g;

    return-object p0
.end method

.method public bridge synthetic m(I)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->Z(I)Lj/g;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lj/g;->v(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    invoke-virtual {p0, v0, v1}, Lj/g;->E(J)[B

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic q(I)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->Q(I)Lj/g;

    return-object p0
.end method

.method public bridge synthetic r([B)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->N([B)Lj/g;

    return-object p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lj/g;->a:Lj/v;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lj/v;->c:I

    iget v3, v0, Lj/v;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, v0, Lj/v;->a:[B

    iget v3, v0, Lj/v;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    iget p1, v0, Lj/v;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lj/v;->b:I

    .line 14
    iget-wide v2, p0, Lj/g;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lj/g;->b:J

    .line 15
    iget v2, v0, Lj/v;->c:I

    if-ne p1, v2, :cond_0

    .line 16
    invoke-virtual {v0}, Lj/v;->a()Lj/v;

    move-result-object p1

    iput-object p1, p0, Lj/g;->a:Lj/v;

    .line 17
    invoke-static {v0}, Lj/w;->a(Lj/v;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    const-string p1, "sink"

    .line 18
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public read([BII)I
    .locals 7

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lj/b;->i(JJJ)V

    .line 2
    iget-object v0, p0, Lj/g;->a:Lj/v;

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lj/v;->c:I

    iget v2, v0, Lj/v;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Lj/v;->a:[B

    iget v2, v0, Lj/v;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, v0, Lj/v;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lj/v;->b:I

    .line 6
    iget-wide v1, p0, Lj/g;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    .line 7
    iget p2, v0, Lj/v;->c:I

    if-ne p1, p2, :cond_0

    .line 8
    invoke-virtual {v0}, Lj/v;->a()Lj/v;

    move-result-object p1

    iput-object p1, p0, Lj/g;->a:Lj/v;

    .line 9
    invoke-static {v0}, Lj/w;->a(Lj/v;)V

    :cond_0
    return p3

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 2
    iget-object v2, p0, Lj/g;->a:Lj/v;

    if-eqz v2, :cond_1

    .line 3
    iget v3, v2, Lj/v;->b:I

    .line 4
    iget v4, v2, Lj/v;->c:I

    .line 5
    iget-object v5, v2, Lj/v;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 7
    iput-wide v0, p0, Lj/g;->b:J

    if-ne v6, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lj/v;->a()Lj/v;

    move-result-object v0

    iput-object v0, p0, Lj/g;->a:Lj/v;

    .line 9
    invoke-static {v2}, Lj/w;->a(Lj/v;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v6, v2, Lj/v;->b:I

    :goto_0
    return v3

    .line 11
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lj/g;->a:Lj/v;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lj/v;->b:I

    .line 4
    iget v6, v4, Lj/v;->c:I

    sub-int v7, v6, v5

    int-to-long v7, v7

    cmp-long v9, v7, v2

    if-gez v9, :cond_0

    .line 5
    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 9
    :cond_0
    iget-object v7, v4, Lj/v;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 10
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    .line 11
    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    .line 12
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    .line 13
    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lj/g;->b:J

    if-ne v9, v6, :cond_1

    .line 15
    invoke-virtual {v4}, Lj/v;->a()Lj/v;

    move-result-object v0

    iput-object v0, p0, Lj/g;->a:Lj/v;

    .line 16
    invoke-static {v4}, Lj/w;->a(Lj/v;)V

    goto :goto_0

    .line 17
    :cond_1
    iput v9, v4, Lj/v;->b:I

    :goto_0
    return v5

    .line 18
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 2
    iget-object v4, p0, Lj/g;->a:Lj/v;

    if-eqz v4, :cond_2

    .line 3
    iget v5, v4, Lj/v;->b:I

    .line 4
    iget v6, v4, Lj/v;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lj/g;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 6
    :cond_0
    iget-object v7, v4, Lj/v;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 7
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lj/g;->b:J

    if-ne v9, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Lj/v;->a()Lj/v;

    move-result-object v0

    iput-object v0, p0, Lj/g;->a:Lj/v;

    .line 10
    invoke-static {v4}, Lj/w;->a(Lj/v;)V

    goto :goto_0

    .line 11
    :cond_1
    iput v9, v4, Lj/v;->b:I

    :goto_0
    int-to-short v0, v5

    return v0

    .line 12
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public bridge synthetic s(Lj/k;)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->M(Lj/k;)Lj/g;

    return-object p0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Lj/g;->a:Lj/v;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lj/v;->c:I

    iget v2, v0, Lj/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget-wide v3, p0, Lj/g;->b:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lj/g;->b:J

    sub-long/2addr p1, v5

    .line 5
    iget v1, v0, Lj/v;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lj/v;->b:I

    .line 6
    iget v2, v0, Lj/v;->c:I

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lj/v;->a()Lj/v;

    move-result-object v1

    iput-object v1, p0, Lj/g;->a:Lj/v;

    .line 8
    invoke-static {v0}, Lj/w;->a(Lj/v;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public t()Lj/i;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-wide v6, p0, Lj/g;->b:J

    long-to-int v0, v6

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lj/k;->d:Lj/k;

    goto :goto_3

    :cond_1
    const-wide/16 v8, 0x0

    int-to-long v10, v0

    .line 4
    invoke-static/range {v6 .. v11}, Lj/b;->i(JJJ)V

    .line 5
    iget-object v1, p0, Lj/g;->a:Lj/v;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v2, v0, :cond_4

    if-eqz v1, :cond_3

    .line 6
    iget v6, v1, Lj/v;->c:I

    iget v7, v1, Lj/v;->b:I

    if-eq v6, v7, :cond_2

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    .line 7
    iget-object v1, v1, Lj/v;->f:Lj/v;

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v6

    .line 10
    :cond_4
    new-array v1, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 11
    new-array v2, v2, [I

    .line 12
    iget-object v7, p0, Lj/g;->a:Lj/v;

    const/4 v8, 0x0

    :goto_2
    if-ge v5, v0, :cond_6

    if-eqz v7, :cond_5

    .line 13
    iget-object v9, v7, Lj/v;->a:[B

    aput-object v9, v1, v8

    .line 14
    iget v9, v7, Lj/v;->c:I

    iget v10, v7, Lj/v;->b:I

    sub-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 15
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v2, v8

    add-int v9, v8, v3

    .line 16
    iget v10, v7, Lj/v;->b:I

    aput v10, v2, v9

    .line 17
    iput-boolean v4, v7, Lj/v;->d:Z

    add-int/2addr v8, v4

    .line 18
    iget-object v7, v7, Lj/v;->f:Lj/v;

    goto :goto_2

    .line 19
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V

    throw v6

    .line 20
    :cond_6
    new-instance v0, Lj/x;

    invoke-direct {v0, v1, v2, v6}, Lj/x;-><init>([[B[ILh/o/c/f;)V

    .line 21
    :goto_3
    invoke-virtual {v0}, Lj/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "size > Integer.MAX_VALUE: "

    .line 22
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lj/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public u()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lj/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :cond_0
    iget-object v8, v0, Lj/g;->a:Lj/v;

    if-eqz v8, :cond_b

    .line 3
    iget-object v9, v8, Lj/v;->a:[B

    .line 4
    iget v10, v8, Lj/v;->b:I

    .line 5
    iget v11, v8, Lj/v;->c:I

    :goto_0
    if-ge v10, v11, :cond_7

    .line 6
    aget-byte v12, v9, v10

    const/16 v13, 0x30

    int-to-byte v13, v13

    if-lt v12, v13, :cond_4

    const/16 v14, 0x39

    int-to-byte v14, v14

    if-gt v12, v14, :cond_4

    sub-int/2addr v13, v12

    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v3, v14

    if-ltz v16, :cond_2

    if-nez v16, :cond_1

    int-to-long v14, v13

    cmp-long v16, v14, v1

    if-gez v16, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0xa

    mul-long v3, v3, v14

    int-to-long v12, v13

    add-long/2addr v3, v12

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lj/g;

    invoke-direct {v1}, Lj/g;-><init>()V

    invoke-virtual {v1, v3, v4}, Lj/g;->R(J)Lj/g;

    move-result-object v1

    invoke-virtual {v1, v12}, Lj/g;->Q(I)Lj/g;

    if-nez v6, :cond_3

    .line 8
    invoke-virtual {v1}, Lj/g;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Number too large: "

    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lj/g;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v13, 0x2d

    int-to-byte v13, v13

    if-ne v12, v13, :cond_5

    if-nez v5, :cond_5

    const-wide/16 v12, 0x1

    sub-long/2addr v1, v12

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    .line 11
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v10, v11, :cond_8

    .line 13
    invoke-virtual {v8}, Lj/v;->a()Lj/v;

    move-result-object v9

    iput-object v9, v0, Lj/g;->a:Lj/v;

    .line 14
    invoke-static {v8}, Lj/w;->a(Lj/v;)V

    goto :goto_4

    .line 15
    :cond_8
    iput v10, v8, Lj/v;->b:I

    :goto_4
    if-nez v7, :cond_9

    .line 16
    iget-object v8, v0, Lj/g;->a:Lj/v;

    if-nez v8, :cond_0

    .line 17
    :cond_9
    iget-wide v1, v0, Lj/g;->b:J

    int-to-long v7, v5

    sub-long/2addr v1, v7

    iput-wide v1, v0, Lj/g;->b:J

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 18
    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 v1, 0x0

    throw v1

    .line 19
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public v(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

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

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 1
    invoke-virtual/range {v4 .. v9}, Lj/g;->g(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 2
    invoke-virtual {p0, v4, v5}, Lj/g;->J(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget-wide v4, p0, Lj/g;->b:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lj/g;->f(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Lj/g;->f(J)B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 6
    invoke-virtual {p0, v2, v3}, Lj/g;->J(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    new-instance v6, Lj/g;

    invoke-direct {v6}, Lj/g;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    iget-wide v4, p0, Lj/g;->b:J

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Lj/g;->e(Lj/g;JJ)Lj/g;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lj/g;->b:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Lj/g;->F()Lj/k;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 16
    invoke-static {v0, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w(Lj/y;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lj/y;->j(Lj/g;J)V

    :cond_0
    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lj/g;->L(I)Lj/v;

    move-result-object v2

    .line 3
    iget v3, v2, Lj/v;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Lj/v;->a:[B

    iget v5, v2, Lj/v;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Lj/v;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lj/v;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lj/g;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj/g;->b:J

    return v0

    :cond_1
    const-string p1, "source"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public x(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj/g;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public bridge synthetic y(Ljava/lang/String;)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    return-object p0
.end method

.method public bridge synthetic z(J)Lj/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/g;->R(J)Lj/g;

    move-result-object p1

    return-object p1
.end method
