.class public final Lj/a;
.super Ljava/lang/Object;
.source "-Base64.kt"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lj/k;->e:Lj/k$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lj/k;->c:[B

    .line 3
    sput-object v0, Lj/a;->a:[B

    .line 4
    sget-object v0, Lj/k;->e:Lj/k$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_1

    add-int/lit8 v6, v1, -0x1

    .line 2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_0

    if-eq v7, v5, :cond_0

    if-eq v7, v4, :cond_0

    if-eq v7, v3, :cond_0

    if-eq v7, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long v6, v6, v8

    const-wide/16 v8, 0x8

    .line 3
    div-long/2addr v6, v8

    long-to-int v7, v6

    new-array v6, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    if-ge v9, v1, :cond_e

    .line 4
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5a

    const/16 v8, 0x41

    if-le v8, v14, :cond_2

    goto :goto_3

    :cond_2
    if-lt v15, v14, :cond_3

    add-int/lit8 v14, v14, -0x41

    goto :goto_8

    :cond_3
    :goto_3
    const/16 v8, 0x7a

    const/16 v15, 0x61

    if-le v15, v14, :cond_4

    goto :goto_4

    :cond_4
    if-lt v8, v14, :cond_5

    add-int/lit8 v14, v14, -0x47

    goto :goto_8

    :cond_5
    :goto_4
    const/16 v8, 0x39

    const/16 v15, 0x30

    if-le v15, v14, :cond_6

    goto :goto_5

    :cond_6
    if-lt v8, v14, :cond_7

    add-int/lit8 v14, v14, 0x4

    goto :goto_8

    :cond_7
    :goto_5
    const/16 v8, 0x2b

    if-eq v14, v8, :cond_c

    const/16 v8, 0x2d

    if-ne v14, v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v8, 0x2f

    if-eq v14, v8, :cond_b

    const/16 v8, 0x5f

    if-ne v14, v8, :cond_9

    goto :goto_6

    :cond_9
    if-eq v14, v5, :cond_d

    if-eq v14, v4, :cond_d

    if-eq v14, v3, :cond_d

    if-ne v14, v2, :cond_a

    goto :goto_9

    :cond_a
    return-object v13

    :cond_b
    :goto_6
    const/16 v14, 0x3f

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v14, 0x3e

    :goto_8
    shl-int/lit8 v8, v11, 0x6

    or-int v11, v8, v14

    add-int/lit8 v10, v10, 0x1

    .line 5
    rem-int/lit8 v8, v10, 0x4

    if-nez v8, :cond_d

    add-int/lit8 v8, v12, 0x1

    shr-int/lit8 v13, v11, 0x10

    int-to-byte v13, v13

    .line 6
    aput-byte v13, v6, v12

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    .line 7
    aput-byte v13, v6, v8

    add-int/lit8 v8, v12, 0x1

    int-to-byte v13, v11

    .line 8
    aput-byte v13, v6, v12

    move v12, v8

    :cond_d
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 9
    :cond_e
    rem-int/lit8 v10, v10, 0x4

    const/4 v0, 0x1

    if-eq v10, v0, :cond_12

    const/4 v0, 0x2

    if-eq v10, v0, :cond_10

    const/4 v0, 0x3

    if-eq v10, v0, :cond_f

    goto :goto_a

    :cond_f
    shl-int/lit8 v0, v11, 0x6

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    .line 10
    aput-byte v2, v6, v12

    add-int/lit8 v12, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 11
    aput-byte v0, v6, v1

    goto :goto_a

    :cond_10
    shl-int/lit8 v0, v11, 0xc

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 12
    aput-byte v0, v6, v12

    move v12, v1

    :goto_a
    if-ne v12, v7, :cond_11

    return-object v6

    .line 13
    :cond_11
    new-array v0, v12, [B

    const/4 v1, 0x0

    .line 14
    invoke-static {v6, v1, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_12
    return-object v13
.end method

.method public static b([B[BI)Ljava/lang/String;
    .locals 10

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lj/a;->a:[B

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    .line 2
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 3
    new-array v0, v0, [B

    .line 4
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 5
    aget-byte v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    .line 6
    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    .line 7
    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v3, 0xff

    shr-int/2addr v9, v1

    .line 8
    aget-byte v9, p2, v9

    aput-byte v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v9, v5, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    .line 9
    aget-byte v3, p2, v3

    aput-byte v3, v0, v8

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    .line 10
    aget-byte v5, p2, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v6, 0x3f

    .line 11
    aget-byte v5, p2, v5

    aput-byte v5, v0, v3

    move v3, v7

    goto :goto_1

    .line 12
    :cond_1
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    if-eq v5, p1, :cond_3

    if-eq v5, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, v3, 0x1

    .line 13
    aget-byte v3, p0, v3

    .line 14
    aget-byte p0, p0, p1

    add-int/lit8 p1, v4, 0x1

    and-int/lit16 v5, v3, 0xff

    shr-int/2addr v5, v1

    .line 15
    aget-byte v5, p2, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, p1, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    .line 16
    aget-byte v3, p2, v3

    aput-byte v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    .line 17
    aget-byte p0, p2, p0

    aput-byte p0, v0, v4

    int-to-byte p0, v2

    .line 18
    aput-byte p0, v0, p1

    goto :goto_2

    .line 19
    :cond_3
    aget-byte p0, p0, v3

    add-int/lit8 p1, v4, 0x1

    and-int/lit16 v3, p0, 0xff

    shr-int/lit8 v1, v3, 0x2

    .line 20
    aget-byte v1, p2, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, p1, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 21
    aget-byte p0, p2, p0

    aput-byte p0, v0, p1

    add-int/lit8 p0, v1, 0x1

    int-to-byte p1, v2

    .line 22
    aput-byte p1, v0, v1

    .line 23
    aput-byte p1, v0, p0

    .line 24
    :goto_2
    sget-object p0, Lh/s/a;->a:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_4
    const-string p0, "map"

    .line 25
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p0, "$receiver"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
