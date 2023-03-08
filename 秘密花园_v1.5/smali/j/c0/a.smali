.class public final Lj/c0/a;
.super Ljava/lang/Object;
.source "ByteString.kt"


# static fields
.field public static final a:[C

.field public static final b:Lj/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lj/c0/a;->a:[C

    .line 2
    sget-object v0, Lj/k;->e:Lj/k$a;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    invoke-static {v0}, Lj/c0/a;->l([B)Lj/k;

    move-result-object v0

    .line 4
    sput-object v0, Lj/c0/a;->b:Lj/k;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final a(Lj/k;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lj/a;->b([B[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lj/k;Lj/k;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lj/k;->b()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 4
    invoke-virtual {p0, v4}, Lj/k;->e(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 5
    invoke-virtual {p1, v4}, Lj/k;->e(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    return v5
.end method

.method public static final c(Ljava/lang/String;)Lj/k;
    .locals 1

    .line 1
    invoke-static {p0}, Lj/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lj/k;

    invoke-direct {v0, p0}, Lj/k;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final d(Ljava/lang/String;)Lj/k;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    :goto_1
    if-ge v1, v0, :cond_1

    mul-int/lit8 v3, v1, 0x2

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lj/c0/a;->s(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lj/c0/a;->s(C)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Lj/k;

    invoke-direct {p0, v2}, Lj/k;-><init>([B)V

    return-object p0

    :cond_2
    const-string v0, "Unexpected hex string: "

    .line 7
    invoke-static {v0, p0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Ljava/lang/String;)Lj/k;
    .locals 3

    .line 1
    new-instance v0, Lj/k;

    .line 2
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lj/k;-><init>([B)V

    .line 4
    iput-object p0, v0, Lj/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final f(Lj/k;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v2, p1, Lj/k;

    if-eqz v2, :cond_1

    check-cast p1, Lj/k;

    .line 2
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v2

    .line 3
    iget-object p0, p0, Lj/k;->c:[B

    .line 4
    array-length v3, p0

    if-ne v2, v3, :cond_1

    array-length v2, p0

    invoke-virtual {p1, v1, p0, v1, v2}, Lj/k;->g(I[BII)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final g(Lj/k;I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    .line 2
    aget-byte p0, p0, p1

    return p0
.end method

.method public static final h(Lj/k;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    .line 2
    array-length p0, p0

    return p0
.end method

.method public static final i(Lj/k;)I
    .locals 1

    .line 1
    iget v0, p0, Lj/k;->a:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/k;->c:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 4
    iput v0, p0, Lj/k;->a:I

    return v0
.end method

.method public static final j(Lj/k;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    .line 2
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 4
    sget-object v6, Lj/c0/a;->a:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 5
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    const-string p0, "$receiver"

    .line 7
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final k(Lj/k;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    return-object p0
.end method

.method public static final l([B)Lj/k;
    .locals 2

    .line 1
    new-instance v0, Lj/k;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lj/k;-><init>([B)V

    return-object v0
.end method

.method public static final m(Lj/k;ILj/k;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    .line 2
    invoke-virtual {p2, p3, p0, p1, p4}, Lj/k;->g(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final n(Lj/k;I[BII)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object p0, p0, Lj/k;->c:[B

    .line 2
    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Lj/b;->b([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o(Lj/k;Lj/k;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, p1, v1, v0}, Lj/k;->f(ILj/k;II)Z

    move-result p0

    return p0
.end method

.method public static final p(Lj/k;)Lj/k;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lj/k;->c:[B

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 3
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    array-length p0, v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 5
    aput-byte v2, p0, v0

    .line 6
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_3

    .line 7
    aget-byte v0, p0, v1

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p0, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lj/k;

    invoke-direct {v0, p0}, Lj/k;-><init>([B)V

    return-object v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public static final q(Lj/k;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lj/k;->c:[B

    .line 2
    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "[size=0]"

    return-object v0

    .line 3
    :cond_1
    iget-object v1, v0, Lj/k;->c:[B

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    const/16 v6, 0x40

    if-ge v3, v2, :cond_47

    .line 5
    aget-byte v7, v1, v3

    const/16 v8, 0xa

    const/16 v9, 0xd

    const/16 v10, 0x7f

    const/16 v11, 0x9f

    const/16 v12, 0x1f

    const v13, 0xfffd

    const/high16 v14, 0x10000

    if-ltz v7, :cond_13

    add-int/lit8 v15, v4, 0x1

    if-ne v4, v6, :cond_3

    goto/16 :goto_1b

    :cond_3
    if-eq v7, v8, :cond_8

    if-eq v7, v9, :cond_8

    if-ltz v7, :cond_4

    if-ge v12, v7, :cond_6

    :cond_4
    if-le v10, v7, :cond_5

    goto :goto_2

    :cond_5
    if-lt v11, v7, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_46

    :cond_8
    if-ne v7, v13, :cond_9

    goto/16 :goto_1a

    :cond_9
    if-ge v7, v14, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    :goto_4
    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_5
    move v4, v15

    if-ge v3, v2, :cond_2

    .line 6
    aget-byte v7, v1, v3

    if-ltz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 7
    aget-byte v3, v1, v3

    add-int/lit8 v15, v4, 0x1

    if-ne v4, v6, :cond_b

    goto/16 :goto_1b

    :cond_b
    if-eq v3, v8, :cond_10

    if-eq v3, v9, :cond_10

    if-ltz v3, :cond_c

    if-ge v12, v3, :cond_e

    :cond_c
    if-le v10, v3, :cond_d

    goto :goto_6

    :cond_d
    if-lt v11, v3, :cond_f

    :cond_e
    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_46

    :cond_10
    if-ne v3, v13, :cond_11

    goto/16 :goto_1a

    :cond_11
    if-ge v3, v14, :cond_12

    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, 0x2

    :goto_8
    add-int/2addr v5, v3

    move v3, v7

    goto :goto_5

    :cond_13
    shr-int/lit8 v13, v7, 0x5

    const/4 v14, -0x2

    const/16 v15, 0x80

    if-ne v13, v14, :cond_20

    add-int/lit8 v7, v3, 0x1

    if-gt v2, v7, :cond_14

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 8
    :cond_14
    aget-byte v13, v1, v3

    .line 9
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_15

    const/4 v14, 0x1

    goto :goto_9

    :cond_15
    const/4 v14, 0x0

    :goto_9
    if-nez v14, :cond_16

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_16
    xor-int/lit16 v7, v7, 0xf80

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    if-ge v7, v15, :cond_17

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_17
    add-int/lit8 v13, v4, 0x1

    if-ne v4, v6, :cond_18

    goto/16 :goto_1b

    :cond_18
    if-eq v7, v8, :cond_1d

    if-eq v7, v9, :cond_1d

    if-ltz v7, :cond_19

    if-ge v12, v7, :cond_1b

    :cond_19
    if-le v10, v7, :cond_1a

    goto :goto_a

    :cond_1a
    if-lt v11, v7, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    goto :goto_b

    :cond_1c
    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_46

    :cond_1d
    const v4, 0xfffd

    if-ne v7, v4, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_1f

    const/4 v15, 0x1

    goto :goto_c

    :cond_1f
    const/4 v15, 0x2

    :goto_c
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x2

    move v4, v13

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v10, v7, 0x4

    const v11, 0xd800

    const v12, 0xdfff

    if-ne v10, v14, :cond_31

    add-int/lit8 v7, v3, 0x2

    if-gt v2, v7, :cond_21

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 10
    :cond_21
    aget-byte v10, v1, v3

    add-int/lit8 v13, v3, 0x1

    .line 11
    aget-byte v13, v1, v13

    and-int/lit16 v14, v13, 0xc0

    if-ne v14, v15, :cond_22

    const/4 v14, 0x1

    goto :goto_d

    :cond_22
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_23

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 12
    :cond_23
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_24

    const/4 v14, 0x1

    goto :goto_e

    :cond_24
    const/4 v14, 0x0

    :goto_e
    if-nez v14, :cond_25

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_25
    const v14, -0x1e080

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    const/16 v10, 0x800

    if-ge v7, v10, :cond_26

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_26
    if-le v11, v7, :cond_27

    goto :goto_f

    :cond_27
    if-lt v12, v7, :cond_28

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_28
    :goto_f
    add-int/lit8 v10, v4, 0x1

    if-ne v4, v6, :cond_29

    goto/16 :goto_1b

    :cond_29
    if-eq v7, v8, :cond_2e

    if-eq v7, v9, :cond_2e

    if-ltz v7, :cond_2a

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_2c

    :cond_2a
    const/16 v4, 0x7f

    if-le v4, v7, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_11

    :cond_2d
    :goto_10
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_46

    :cond_2e
    const v4, 0xfffd

    if-ne v7, v4, :cond_2f

    goto/16 :goto_1a

    :cond_2f
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_30

    const/4 v15, 0x1

    goto :goto_12

    :cond_30
    const/4 v15, 0x2

    :goto_12
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x3

    move v4, v10

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v7, v7, 0x3

    if-ne v7, v14, :cond_45

    add-int/lit8 v7, v3, 0x3

    if-gt v2, v7, :cond_32

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 13
    :cond_32
    aget-byte v9, v1, v3

    add-int/lit8 v10, v3, 0x1

    .line 14
    aget-byte v10, v1, v10

    and-int/lit16 v13, v10, 0xc0

    if-ne v13, v15, :cond_33

    const/4 v13, 0x1

    goto :goto_13

    :cond_33
    const/4 v13, 0x0

    :goto_13
    if-nez v13, :cond_34

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_34
    add-int/lit8 v13, v3, 0x2

    .line 15
    aget-byte v13, v1, v13

    and-int/lit16 v14, v13, 0xc0

    if-ne v14, v15, :cond_35

    const/4 v14, 0x1

    goto :goto_14

    :cond_35
    const/4 v14, 0x0

    :goto_14
    if-nez v14, :cond_36

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 16
    :cond_36
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_37

    const/4 v14, 0x1

    goto :goto_15

    :cond_37
    const/4 v14, 0x0

    :goto_15
    if-nez v14, :cond_38

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_38
    const v14, 0x381f80

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    shl-int/lit8 v9, v9, 0x12

    xor-int/2addr v7, v9

    const v9, 0x10ffff

    if-le v7, v9, :cond_39

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_39
    if-le v11, v7, :cond_3a

    goto :goto_16

    :cond_3a
    if-lt v12, v7, :cond_3b

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3b
    :goto_16
    const/high16 v9, 0x10000

    if-ge v7, v9, :cond_3c

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3c
    add-int/lit8 v9, v4, 0x1

    if-ne v4, v6, :cond_3d

    goto :goto_1b

    :cond_3d
    if-eq v7, v8, :cond_42

    const/16 v4, 0xd

    if-eq v7, v4, :cond_42

    if-ltz v7, :cond_3e

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_40

    :cond_3e
    const/16 v4, 0x7f

    if-le v4, v7, :cond_3f

    goto :goto_17

    :cond_3f
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_41

    :cond_40
    const/4 v4, 0x1

    goto :goto_18

    :cond_41
    :goto_17
    const/4 v4, 0x0

    :goto_18
    if-nez v4, :cond_46

    :cond_42
    const v4, 0xfffd

    if-ne v7, v4, :cond_43

    goto :goto_1a

    :cond_43
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_44

    const/4 v15, 0x1

    goto :goto_19

    :cond_44
    const/4 v15, 0x2

    :goto_19
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x4

    move v4, v9

    goto/16 :goto_1

    :cond_45
    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_46
    :goto_1a
    const/4 v5, -0x1

    :cond_47
    :goto_1b
    const/16 v1, 0x5d

    const-string v2, "\u2026]"

    const-string v3, "[size="

    const/4 v4, -0x1

    if-ne v5, v4, :cond_4c

    .line 17
    iget-object v4, v0, Lj/k;->c:[B

    .line 18
    array-length v4, v4

    if-gt v4, v6, :cond_48

    const-string v2, "[hex="

    .line 19
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lj/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 20
    :cond_48
    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    iget-object v3, v0, Lj/k;->c:[B

    .line 22
    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v3, v0, Lj/k;->c:[B

    .line 24
    array-length v3, v3

    if-gt v6, v3, :cond_49

    const/4 v3, 0x1

    goto :goto_1c

    :cond_49
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_4b

    .line 25
    iget-object v3, v0, Lj/k;->c:[B

    .line 26
    array-length v4, v3

    if-ne v6, v4, :cond_4a

    goto :goto_1d

    :cond_4a
    new-array v0, v6, [B

    const/4 v4, 0x0

    .line 27
    invoke-static {v3, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v3, Lj/k;

    invoke-direct {v3, v0}, Lj/k;-><init>([B)V

    move-object v0, v3

    .line 29
    :goto_1d
    invoke-virtual {v0}, Lj/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_4b
    const-string v1, "endIndex > length("

    .line 30
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    iget-object v0, v0, Lj/k;->c:[B

    .line 32
    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_4c
    invoke-static/range {p0 .. p0}, Lj/c0/a;->r(Lj/k;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 34
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\"

    const-string v9, "\\\\"

    const/4 v10, 0x4

    .line 35
    invoke-static {v7, v8, v9, v6, v10}, Lh/s/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    .line 36
    invoke-static {v7, v8, v9, v6, v10}, Lh/s/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, "\\r"

    .line 37
    invoke-static {v7, v8, v9, v6, v10}, Lh/s/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4d

    .line 39
    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    iget-object v0, v0, Lj/k;->c:[B

    .line 41
    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 42
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0
.end method

.method public static final r(Lj/k;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lj/k;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lj/k;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    iput-object v2, p0, Lj/k;->b:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string p0, "$receiver"

    .line 5
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final s(C)I
    .locals 3

    const/16 v0, 0x30

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    if-lt v1, p0, :cond_1

    sub-int/2addr p0, v0

    goto :goto_3

    :cond_1
    :goto_0
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_2

    goto :goto_2

    :cond_2
    if-lt v0, p0, :cond_3

    :goto_1
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-gt v1, p0, :cond_4

    if-lt v0, p0, :cond_4

    goto :goto_1

    :goto_3
    return p0

    .line 1
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
