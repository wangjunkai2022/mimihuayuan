.class public Lc/a/a/b/g/h;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field public static a:Lf/i/a/a/l1/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static final A(Ljava/lang/Iterable;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;I)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    :cond_0
    return p1

    :cond_1
    const-string p0, "$this$collectionSizeOrDefault"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static A0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-static {}, Lf/d/a/s/e;->C()Lf/d/a/s/e;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v2, 0x7f0800a5

    .line 3
    invoke-static {v1, p0, p1, v2, v0}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method

.method public static final B(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lh/d;

    invoke-direct {v0, p0}, Lh/d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const-string p0, "exception"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static B0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v1, 0x7f0800a5

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p0, p1, v1, v2}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method

.method public static C(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ge p0, v1, :cond_1

    const-string p0, "Bw=="

    .line 4
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-le p0, v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "YjYlSVM="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    .line 9
    :goto_1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method public static C0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 3
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object v0

    .line 4
    :cond_1
    sget-object p2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-static {p2}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object p2

    new-instance v1, Lf/e/a/j/l/h/g/a;

    invoke-direct {v1, p0}, Lf/e/a/j/l/h/g/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const p2, 0x7f0800a4

    .line 6
    invoke-virtual {p0, p2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static D(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ge p0, v1, :cond_1

    const-string p0, "Bw=="

    .line 4
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-le p0, v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "YjYlSVM="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    .line 9
    :goto_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "dicw"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static D0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 3
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object v0

    :cond_1
    const-string p2, "GQEGBg=="

    .line 4
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    .line 5
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    if-eqz p2, :cond_2

    new-instance p2, Lf/e/a/j/n/p/f/a;

    invoke-direct {p2, p0}, Lf/e/a/j/n/p/f/a;-><init>(Ljava/lang/String;)V

    move-object p0, p2

    :cond_2
    invoke-virtual {v1, p0}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const p2, 0x7f0e006c

    .line 7
    invoke-virtual {p0, p2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static E(Ljava/lang/String;I)[B
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    const/4 v3, 0x4

    .line 3
    div-int/2addr v2, v3

    new-array v4, v2, [B

    and-int/lit8 v5, p1, 0x8

    if-nez v5, :cond_0

    .line 4
    sget-object v5, Lf/h/b/a/b;->a:[I

    goto :goto_0

    :cond_0
    sget-object v5, Lf/h/b/a/b;->b:[I

    :goto_0
    const/4 v6, 0x0

    add-int/2addr v1, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v7, v1, :cond_11

    if-nez v8, :cond_2

    :goto_2
    add-int/lit8 v14, v7, 0x4

    if-gt v14, v1, :cond_1

    .line 5
    aget-byte v9, v0, v7

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v9, v15

    add-int/lit8 v15, v7, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v9, v15

    add-int/lit8 v15, v7, 0x3

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v5, v15

    or-int/2addr v9, v15

    if-ltz v9, :cond_1

    add-int/lit8 v7, v10, 0x2

    int-to-byte v15, v9

    .line 6
    aput-byte v15, v4, v7

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v15, v9, 0x8

    int-to-byte v15, v15

    .line 7
    aput-byte v15, v4, v7

    shr-int/lit8 v7, v9, 0x10

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v4, v10

    add-int/lit8 v10, v10, 0x3

    move v7, v14

    goto :goto_2

    :cond_1
    if-lt v7, v1, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v14, v7, 0x1

    .line 9
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    const/4 v15, -0x1

    const/4 v6, 0x5

    if-eqz v8, :cond_e

    if-eq v8, v13, :cond_c

    const/4 v13, -0x2

    if-eq v8, v12, :cond_9

    if-eq v8, v11, :cond_6

    if-eq v8, v3, :cond_4

    if-eq v8, v6, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eq v7, v15, :cond_10

    goto/16 :goto_7

    :cond_4
    if-ne v7, v13, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_5
    if-eq v7, v15, :cond_10

    goto/16 :goto_7

    :cond_6
    if-ltz v7, :cond_7

    shl-int/lit8 v6, v9, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v7, v10, 0x2

    int-to-byte v8, v6

    .line 10
    aput-byte v8, v4, v7

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    .line 11
    aput-byte v8, v4, v7

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    .line 12
    aput-byte v7, v4, v10

    add-int/lit8 v10, v10, 0x3

    move v9, v6

    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    if-ne v7, v13, :cond_8

    add-int/lit8 v7, v10, 0x1

    shr-int/lit8 v8, v9, 0x2

    int-to-byte v8, v8

    .line 13
    aput-byte v8, v4, v7

    shr-int/lit8 v7, v9, 0xa

    int-to-byte v7, v7

    .line 14
    aput-byte v7, v4, v10

    add-int/lit8 v10, v10, 0x2

    const/4 v8, 0x5

    goto :goto_5

    :cond_8
    if-eq v7, v15, :cond_10

    goto :goto_7

    :cond_9
    if-ltz v7, :cond_a

    goto :goto_3

    :cond_a
    if-ne v7, v13, :cond_b

    add-int/lit8 v6, v10, 0x1

    shr-int/lit8 v7, v9, 0x4

    int-to-byte v7, v7

    .line 15
    aput-byte v7, v4, v10

    move v10, v6

    const/4 v8, 0x4

    goto :goto_5

    :cond_b
    if-eq v7, v15, :cond_10

    goto :goto_7

    :cond_c
    if-ltz v7, :cond_d

    :goto_3
    shl-int/lit8 v6, v9, 0x6

    or-int/2addr v7, v6

    goto :goto_4

    :cond_d
    if-eq v7, v15, :cond_10

    goto :goto_7

    :cond_e
    if-ltz v7, :cond_f

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v9, v7

    goto :goto_5

    :cond_f
    if-eq v7, v15, :cond_10

    goto :goto_7

    :cond_10
    :goto_5
    move v7, v14

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_11
    :goto_6
    if-eq v8, v13, :cond_14

    if-eq v8, v12, :cond_13

    if-eq v8, v11, :cond_12

    if-eq v8, v3, :cond_14

    goto :goto_8

    :cond_12
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v9, 0xa

    int-to-byte v1, v1

    .line 16
    aput-byte v1, v4, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v1, v9, 0x2

    int-to-byte v1, v1

    .line 17
    aput-byte v1, v4, v0

    goto :goto_8

    :cond_13
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v9, 0x4

    int-to-byte v1, v1

    .line 18
    aput-byte v1, v4, v10

    move v10, v0

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_16

    if-ne v10, v2, :cond_15

    goto :goto_9

    .line 19
    :cond_15
    new-array v0, v10, [B

    const/4 v1, 0x0

    .line 20
    invoke-static {v4, v1, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    :goto_9
    return-object v4

    .line 21
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static E0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    invoke-static {}, Lf/d/a/s/e;->C()Lf/d/a/s/e;

    move-result-object v0

    const-string v1, "GRECAg5dTUsH"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GQcNB0UHQUc="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3
    :goto_1
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v2}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v2

    if-eqz v1, :cond_2

    new-instance v3, Lf/e/a/j/t/e/e/e;

    invoke-direct {v3, p0}, Lf/e/a/j/t/e/e/e;-><init>(Ljava/lang/String;)V

    move-object p0, v3

    :cond_2
    invoke-virtual {v2, p0}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v2, 0x7f0e006c

    .line 5
    invoke-virtual {p0, v2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 6
    invoke-virtual {p0, v0}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p0

    if-eqz v1, :cond_3

    sget-object v0, Lf/d/a/o/n/k;->b:Lf/d/a/o/n/k;

    goto :goto_2

    :cond_3
    sget-object v0, Lf/d/a/o/n/k;->a:Lf/d/a/o/n/k;

    .line 7
    :goto_2
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 8
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static F([B)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_17

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_17

    .line 2
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    .line 3
    div-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 4
    sget-object v3, Lf/h/a/b/b;->a:[I

    goto :goto_0

    :cond_0
    sget-object v3, Lf/h/a/b/b;->b:[I

    :goto_0
    const/4 v4, 0x0

    add-int/2addr v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v5, v0, :cond_11

    if-nez v6, :cond_2

    :goto_2
    add-int/lit8 v12, v5, 0x4

    if-gt v12, v0, :cond_1

    .line 5
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    aget v7, v3, v7

    shl-int/lit8 v7, v7, 0x12

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v7, v13

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v7, v13

    add-int/lit8 v13, v5, 0x3

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    or-int/2addr v7, v13

    if-ltz v7, :cond_1

    add-int/lit8 v5, v8, 0x2

    int-to-byte v13, v7

    .line 6
    aput-byte v13, v1, v5

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v13, v7, 0x8

    int-to-byte v13, v13

    .line 7
    aput-byte v13, v1, v5

    shr-int/lit8 v5, v7, 0x10

    int-to-byte v5, v5

    .line 8
    aput-byte v5, v1, v8

    add-int/lit8 v8, v8, 0x3

    move v5, v12

    goto :goto_2

    :cond_1
    if-lt v5, v0, :cond_2

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v12, v5, 0x1

    .line 9
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v3, v5

    const/4 v13, -0x1

    const/4 v14, 0x5

    if-eqz v6, :cond_e

    if-eq v6, v11, :cond_c

    const/4 v11, -0x2

    if-eq v6, v10, :cond_9

    if-eq v6, v9, :cond_6

    if-eq v6, v2, :cond_4

    if-eq v6, v14, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eq v5, v13, :cond_10

    goto :goto_3

    :cond_4
    if-ne v5, v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_5
    if-eq v5, v13, :cond_10

    goto/16 :goto_8

    :cond_6
    if-ltz v5, :cond_7

    shl-int/lit8 v6, v7, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v6, v8, 0x2

    int-to-byte v7, v5

    .line 10
    aput-byte v7, v1, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v1, v6

    shr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    .line 12
    aput-byte v6, v1, v8

    add-int/lit8 v8, v8, 0x3

    move v7, v5

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    if-ne v5, v11, :cond_8

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v6, v7, 0x2

    int-to-byte v6, v6

    .line 13
    aput-byte v6, v1, v5

    shr-int/lit8 v5, v7, 0xa

    int-to-byte v5, v5

    .line 14
    aput-byte v5, v1, v8

    add-int/lit8 v8, v8, 0x2

    const/4 v6, 0x5

    goto :goto_6

    :cond_8
    if-eq v5, v13, :cond_10

    goto :goto_8

    :cond_9
    if-ltz v5, :cond_a

    goto :goto_4

    :cond_a
    if-ne v5, v11, :cond_b

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v6, v7, 0x4

    int-to-byte v6, v6

    .line 15
    aput-byte v6, v1, v8

    move v8, v5

    const/4 v6, 0x4

    goto :goto_6

    :cond_b
    if-eq v5, v13, :cond_10

    :goto_3
    goto :goto_8

    :cond_c
    if-ltz v5, :cond_d

    :goto_4
    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    goto :goto_5

    :cond_d
    if-eq v5, v13, :cond_10

    goto :goto_8

    :cond_e
    if-ltz v5, :cond_f

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_6

    :cond_f
    if-eq v5, v13, :cond_10

    goto :goto_8

    :cond_10
    :goto_6
    move v5, v12

    goto/16 :goto_1

    :cond_11
    :goto_7
    if-eq v6, v11, :cond_14

    if-eq v6, v10, :cond_13

    if-eq v6, v9, :cond_12

    if-eq v6, v2, :cond_14

    goto :goto_9

    :cond_12
    add-int/lit8 p0, v8, 0x1

    shr-int/lit8 v0, v7, 0xa

    int-to-byte v0, v0

    .line 16
    aput-byte v0, v1, v8

    add-int/lit8 v8, p0, 0x1

    shr-int/lit8 v0, v7, 0x2

    int-to-byte v0, v0

    .line 17
    aput-byte v0, v1, p0

    goto :goto_9

    :cond_13
    add-int/lit8 p0, v8, 0x1

    shr-int/lit8 v0, v7, 0x4

    int-to-byte v0, v0

    .line 18
    aput-byte v0, v1, v8

    move v8, p0

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_16

    .line 19
    array-length p0, v1

    if-ne v8, p0, :cond_15

    return-object v1

    .line 20
    :cond_15
    new-array p0, v8, [B

    .line 21
    invoke-static {v1, v4, p0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 22
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-64"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 2
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/t/e/e/e;

    invoke-direct {v1, p0}, Lf/e/a/j/t/e/e/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a5

    .line 5
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 6
    invoke-virtual {p0, p2}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object p0

    sget-object p2, Lf/d/a/o/n/k;->b:Lf/d/a/o/n/k;

    .line 7
    invoke-virtual {p0, p2}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 8
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lc/a/a/b/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p0, "BANTAg9HCwBDVFJXGQsHCg8DAQdbRgsKElRWAx1fAgo="

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "dicw"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {v0, v1, p1}, Lc/a/a/b/g/h;->b(Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static G0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/u/e/f/a;

    invoke-direct {v1, p0}, Lf/e/a/j/u/e/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static final H(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v6, p1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_0
    const/4 v10, 0x0

    if-ge v6, v1, :cond_16

    if-ne v7, v2, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v11, v6, 0x2

    const/4 v12, 0x4

    const/16 v13, 0xff

    if-gt v11, v1, :cond_3

    const-string v14, "::"

    .line 1
    invoke-static {v0, v14, v6, v5, v12}, Lh/s/d;->v(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eq v8, v4, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v7, v7, 0x2

    move v8, v7

    if-ne v11, v1, :cond_2

    goto/16 :goto_b

    :cond_2
    move v9, v11

    goto/16 :goto_7

    :cond_3
    if-eqz v7, :cond_11

    const-string v11, ":"

    .line 2
    invoke-static {v0, v11, v6, v5, v12}, Lh/s/d;->v(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_4
    const-string v11, "."

    .line 3
    invoke-static {v0, v11, v6, v5, v12}, Lh/s/d;->v(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_1
    if-ge v9, v1, :cond_d

    if-ne v11, v2, :cond_5

    goto :goto_4

    :cond_5
    if-eq v11, v6, :cond_7

    .line 4
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    :cond_7
    move v14, v9

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v1, :cond_b

    .line 5
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x30

    if-lt v5, v2, :cond_b

    const/16 v4, 0x39

    if-le v5, v4, :cond_8

    goto :goto_3

    :cond_8
    if-nez v15, :cond_9

    if-eq v9, v14, :cond_9

    goto :goto_4

    :cond_9
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v5

    sub-int/2addr v15, v2

    if-le v15, v13, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    :goto_3
    sub-int v2, v14, v9

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v15

    .line 6
    aput-byte v4, v3, v11

    move v11, v2

    move v9, v14

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_d
    add-int/2addr v6, v12

    if-ne v11, v6, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_f

    return-object v10

    :cond_f
    add-int/lit8 v7, v7, 0x2

    goto :goto_b

    :cond_10
    return-object v10

    :cond_11
    :goto_6
    move v9, v6

    :goto_7
    move v6, v9

    const/4 v2, 0x0

    :goto_8
    if-ge v6, v1, :cond_13

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Li/m0/b;->w(C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    goto :goto_9

    :cond_12
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    sub-int v4, v6, v9

    if-eqz v4, :cond_15

    if-le v4, v12, :cond_14

    goto :goto_a

    :cond_14
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v13

    int-to-byte v5, v5

    .line 8
    aput-byte v5, v3, v7

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 9
    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_15
    :goto_a
    return-object v10

    :cond_16
    :goto_b
    const/16 v0, 0x10

    if-eq v7, v0, :cond_18

    const/4 v1, -0x1

    if-ne v8, v1, :cond_17

    return-object v10

    :cond_17
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    .line 10
    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    int-to-byte v0, v0

    .line 11
    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 12
    :cond_18
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static H0(Lf/i/a/a/l1/m;Lf/i/a/a/h1/t0/k/i;Lf/i/a/a/h1/s0/e;Lf/i/a/a/h1/t0/k/h;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1
    new-instance v7, Lf/i/a/a/l1/p;

    move-object/from16 v1, p1

    iget-object v2, v1, Lf/i/a/a/h1/t0/k/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lf/i/a/a/h1/t0/k/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v0, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v5, v0, Lf/i/a/a/h1/t0/k/h;->b:J

    .line 2
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/i;->h()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 3
    new-instance v1, Lf/i/a/a/l1/g0;

    move-object v0, p0

    invoke-direct {v1, p0}, Lf/i/a/a/l1/g0;-><init>(Lf/i/a/a/l1/m;)V

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v7, v2, v3}, Lf/i/a/a/l1/p;->c(J)Lf/i/a/a/l1/p;

    move-result-object v0

    .line 5
    :try_start_0
    new-instance v2, Lf/i/a/a/b1/d;

    iget-wide v11, v0, Lf/i/a/a/l1/p;->d:J

    .line 6
    invoke-virtual {v1, v0}, Lf/i/a/a/l1/g0;->b(Lf/i/a/a/l1/p;)J

    move-result-wide v13

    move-object v9, v2

    move-object v10, v1

    invoke-direct/range {v9 .. v14}, Lf/i/a/a/b1/d;-><init>(Lf/i/a/a/l1/m;JJ)V

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v3, p2

    .line 7
    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/h1/s0/e;->b(Lf/i/a/a/h1/s0/e$b;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p2

    .line 8
    :try_start_1
    iget-object v0, v0, Lf/i/a/a/h1/s0/e;->a:Lf/i/a/a/b1/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 9
    sget-object v4, Lf/i/a/a/h1/s0/k;->l:Lf/i/a/a/b1/m;

    invoke-interface {v0, v2, v4}, Lf/i/a/a/b1/g;->c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    const/4 v3, 0x1

    .line 10
    :cond_1
    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {v1}, Lf/i/a/a/m1/h0;->k(Lf/i/a/a/l1/m;)V

    .line 14
    throw v0
.end method

.method public static I([B[BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "dicw"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p1, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static I0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/h0/m/f/a;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/m/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    sget-object v0, Lf/d/a/o/n/k;->a:Lf/d/a/o/n/k;

    .line 6
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    const/high16 v0, -0x80000000

    .line 7
    invoke-virtual {p0, v0, v0}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    sget-object v0, Lf/d/a/o/b;->b:Lf/d/a/o/b;

    .line 8
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->i(Lf/d/a/o/b;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 9
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lc/a/a/b/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    sget-object p0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {p0}, Lcom/comeback/data/ndk/SignHelper;->getFl2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "dicw"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-static {v0, v1, p1}, Lc/a/a/b/g/h;->b(Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static J0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/f0/j/g/a;

    invoke-direct {v1, p0}, Lf/e/a/j/f0/j/g/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static K([BLjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "dicwSygxehwjLXc0TzoCD1MLDQM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 5
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p2}, Lc/a/a/b/g/h;->U(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    .line 6
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "dicw"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    .line 9
    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    const-string p0, "aD08"

    .line 12
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "3+/qgtjW0JrfjpPEncXljpPTi9DO"

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method

.method public static K0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/h0/m/f/a;

    invoke-direct {v1, p0}, Lf/e/a/j/h0/m/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a6

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/2addr v3, v2

    .line 4
    new-array v4, v3, [B

    :goto_0
    if-ge v0, v3, :cond_2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v5, 0x2

    .line 5
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    new-array v4, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v1

    :cond_2
    :goto_3
    const-string p0, "RAoGXRhCWlxAXgZRHAIQXw=="

    .line 7
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "D1EIF1wFD1YbFQxUSAEPWQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :try_start_1
    invoke-static {p0}, Lc/a/a/b/g/h;->D(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const-string v3, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 9
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 10
    invoke-static {v0}, Lc/a/a/b/g/h;->C(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    invoke-virtual {v3, v2, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 11
    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    :goto_4
    if-nez p0, :cond_3

    return-object v1

    .line 13
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "YjYlSVM="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_5
    return-object v1
.end method

.method public static L0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 2
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v1, 0x7f0800a4

    .line 4
    invoke-static {v0, p0, p1, v1, p2}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method

.method public static M(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static M0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 2
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v1, 0x7f0800a5

    .line 4
    invoke-static {v0, p0, p1, v1, p2}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method

.method public static N()V
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public static N0(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Lf/d/a/o/p/c/x;

    invoke-direct {v0, p2}, Lf/d/a/o/p/c/x;-><init>(I)V

    .line 3
    invoke-static {v0}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object v0

    :cond_1
    const-string p2, "GRECAg5dTUsH"

    .line 4
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 5
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    if-eqz p2, :cond_2

    new-instance p2, Lf/e/a/j/l0/h/e/b;

    invoke-direct {p2, p0}, Lf/e/a/j/l0/h/e/b;-><init>(Ljava/lang/String;)V

    move-object p0, p2

    :cond_2
    invoke-virtual {v1, p0}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const p2, 0x7f0800a4

    .line 7
    invoke-virtual {p0, p2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static final O(CCZ)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-ne p2, v2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static O0(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ThsaHUQ+dBwXAg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P([Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_1

    .line 1
    array-length p3, p0

    :cond_1
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void

    :cond_2
    const-string p0, "$this$fill"

    .line 3
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p1
.end method

.method public static final P0(Lh/r/c;Lh/o/b/b;)Lh/r/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/r/c<",
            "+TT;>;",
            "Lh/o/b/b<",
            "-TT;+TR;>;)",
            "Lh/r/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/r/e;

    invoke-direct {v0, p0, p1}, Lh/r/e;-><init>(Lh/r/c;Lh/o/b/b;)V

    return-object v0
.end method

.method public static Q(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest(\\(.+\\))?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Manifest"

    .line 3
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static Q0(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static R(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static R0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "WgZW"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    if-ge v0, v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 7
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "0dDCgvf60YzqgozNFQ5WjJn1hdf+nIWy"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gtz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p0
.end method

.method public static final S0(II)I
    .locals 0

    .line 1
    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final T0(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->s0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lh/k/i;->a:Lh/k/i;

    :goto_0
    return-object p0
.end method

.method public static U(Ljava/lang/String;)[B
    .locals 4

    if-nez p0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Bxo="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 5
    array-length v2, p0

    if-le v2, v1, :cond_2

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static U0(Ljava/lang/String;)Lf/e/a/h/h/a;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10

    .line 3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string p0, "GA=="

    .line 5
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Lf/e/a/h/h/a;

    invoke-direct {v5}, Lf/e/a/h/h/a;-><init>()V

    .line 7
    iput-object v2, v5, Lf/e/a/h/h/a;->a:Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    .line 8
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    const-string v8, "FA=="

    .line 9
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x9

    if-eqz v8, :cond_c

    const-string v8, "FCc7MCI9fwk="

    .line 10
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "Gw=="

    if-eqz v8, :cond_2

    const/16 v6, 0x8

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v7, v6

    .line 14
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    :cond_2
    const-string v8, "FCc7MEYrFHg2Pw=="

    .line 15
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "FCc7MEYrFHg2Pw4qPT4rJHNfIiE4XggBS0o="

    .line 16
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, ""

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v12, "XxYXFA=="

    const/4 v13, 0x5

    if-eqz v8, :cond_7

    .line 18
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 19
    array-length v8, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_a

    aget-object v11, v7, v10

    const-string v14, "YjAqWQ=="

    .line 20
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 23
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_3

    .line 24
    :cond_3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 25
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_3

    .line 27
    :cond_4
    invoke-static {v2, v3}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v3, "fjRe"

    .line 29
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    .line 30
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, v5, Lf/e/a/h/h/a;->e:Ljava/lang/String;

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v13, 0x5

    goto :goto_2

    .line 32
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 34
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_4

    .line 35
    :cond_8
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_4

    .line 38
    :cond_9
    invoke-static {v2, v3}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    iput-object v3, v5, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    .line 40
    :goto_4
    iput-object v11, v5, Lf/e/a/h/h/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    .line 41
    :cond_a
    iput-boolean v3, v5, Lf/e/a/h/h/a;->c:Z

    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_c
    const-string v3, "WlEWXA=="

    .line 42
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 43
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->U0(Ljava/lang/String;)Lf/e/a/h/h/a;

    move-result-object p0

    return-object p0

    .line 45
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->U0(Ljava/lang/String;)Lf/e/a/h/h/a;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 47
    new-instance v8, Lf/e/a/h/h/b;

    invoke-direct {v8, v7, v6}, Lf/e/a/h/h/b;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v5, v8}, Lf/e/a/h/h/a;->a(Lf/e/a/h/h/b;)V

    goto/16 :goto_0

    .line 48
    :cond_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v5

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final V(Lh/q/b;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/q/b<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    check-cast p0, Lh/o/c/c;

    invoke-interface {p0}, Lh/o/c/c;->a()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    :sswitch_1
    const-string v1, "float"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    const-class p0, Ljava/lang/Double;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string p0, "$this$javaObjectType"

    .line 21
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/e/a/h/h/a;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Ljava/net/URL;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_14

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 5
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "GA=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 9
    new-instance v8, Lf/e/a/h/h/a;

    invoke-direct {v8}, Lf/e/a/h/h/a;-><init>()V

    .line 10
    iput-object v6, v8, Lf/e/a/h/h/a;->a:Ljava/lang/String;

    :goto_0
    const/4 v9, 0x0

    .line 11
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    const-string v11, "FCc7MEYrFHg2Pw=="

    .line 12
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "WwsNAUUAXEMSFFUTFxg="

    const-string v14, "GRYQ"

    if-nez v12, :cond_0

    .line 13
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 14
    invoke-virtual {v4, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 15
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v12, "FA=="

    .line 16
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "FCc7MCI9fwk="

    .line 17
    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "Gw=="

    if-eqz v12, :cond_2

    const/16 v9, 0x8

    .line 18
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_1
    move-object v10, v9

    .line 21
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 22
    :cond_2
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "FCc7MEYrFHg2Pw4qPT4rJHNfIiE4XggBS0o="

    .line 23
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v14, "XxYXFA=="

    if-eqz v11, :cond_8

    .line 25
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 26
    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_7

    aget-object v13, v10, v12

    const-string v15, "YjAqWQ=="

    .line 27
    invoke-static {v15}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 28
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v7

    const/4 v7, 0x5

    invoke-virtual {v13, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 30
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_3

    .line 31
    :cond_3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 32
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v9

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v10

    const/16 v10, 0x9

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 33
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move/from16 p0, v9

    move-object/from16 v16, v10

    .line 34
    invoke-static {v6, v7}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 p0, v9

    move-object/from16 v16, v10

    :goto_4
    const-string v7, "fjRe"

    .line 36
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    .line 37
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 38
    iput-object v7, v8, Lf/e/a/h/h/a;->e:Ljava/lang/String;

    :cond_6
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    move/from16 v9, p0

    move-object/from16 v10, v16

    goto :goto_2

    :cond_7
    move/from16 p0, v9

    goto :goto_6

    :cond_8
    move/from16 p0, v9

    .line 39
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x5

    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 41
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_5

    .line 42
    :cond_9
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 44
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    goto :goto_5

    .line 45
    :cond_a
    invoke-static {v6, v7}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    iput-object v7, v8, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    .line 47
    :goto_5
    iput-object v12, v8, Lf/e/a/h/h/a;->e:Ljava/lang/String;

    const/4 v7, 0x1

    .line 48
    :goto_6
    iput-boolean v7, v8, Lf/e/a/h/h/a;->c:Z

    goto :goto_7

    :cond_b
    move/from16 p0, v9

    :goto_7
    move/from16 v9, p0

    goto/16 :goto_9

    :cond_c
    const-string v7, "WlEWXA=="

    .line 49
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 50
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 51
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lc/a/a/b/g/h;->V0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/e/a/h/h/a;

    move-result-object v0

    return-object v0

    .line 53
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->U0(Ljava/lang/String;)Lf/e/a/h/h/a;

    move-result-object v0

    return-object v0

    .line 54
    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 55
    invoke-static {v14}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 56
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v11, "QwcOFA=="

    if-eqz v7, :cond_f

    .line 57
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v12, v11, v7}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 59
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v7, v11, v10}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    const-string v11, "CA=="

    .line 60
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 61
    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 62
    :cond_10
    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 63
    invoke-static {v13}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 64
    :cond_11
    new-instance v7, Lf/e/a/h/h/b;

    invoke-direct {v7, v10, v9}, Lf/e/a/h/h/b;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v8, v7}, Lf/e/a/h/h/a;->a(Lf/e/a/h/h/b;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_9
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 65
    :cond_13
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 66
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    return-object v8

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static W(Ljava/util/List;Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)I
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/b0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lf/d/a/o/n/b0/b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lf/d/a/o/p/c/v;

    invoke-direct {v1, p1, p2}, Lf/d/a/o/p/c/v;-><init>(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)V

    move-object p1, v1

    :cond_1
    const/high16 v1, 0x500000

    .line 3
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 6
    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParser;->b(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v0, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return v3

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw p0

    :cond_3
    return v0
.end method

.method public static W0(Ljava/lang/String;)Lcom/comeback/data/ui/lnkl/bean/VideoInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;

    invoke-direct {v0}, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;-><init>()V

    .line 2
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "RwMEAQgcVw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/a/e/h;

    const-string v1, "Xg8E"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v4, "RBAA"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->setImgs(Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {p0}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object p0

    const-string v1, "XxYXFA=="

    .line 10
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Qw0RFg4dTQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->setTorrentUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static X(Ljava/util/List;Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/b0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lf/d/a/o/n/b0/b;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lf/d/a/o/p/c/v;

    invoke-direct {v0, p1, p2}, Lf/d/a/o/p/c/v;-><init>(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)V

    move-object p1, v0

    :cond_1
    const/high16 p2, 0x500000

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    const/4 p2, 0x0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_3

    .line 6
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 7
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw p0

    .line 10
    :cond_3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static X0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/lnkl/bean/Video;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "Wws="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 3
    new-instance v2, Lcom/comeback/data/ui/lnkl/bean/Video;

    invoke-direct {v2}, Lcom/comeback/data/ui/lnkl/bean/Video;-><init>()V

    const-string v3, "Vg=="

    .line 4
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v5, "XxAGAg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/lnkl/bean/Video;->setUrl(Ljava/lang/String;)V

    const-string v3, "Xg8E"

    .line 5
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    const-string v6, "QwsXCA4="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/lnkl/bean/Video;->setName(Ljava/lang/String;)V

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v5, "RBAA"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/lnkl/bean/Video;->setImg(Ljava/lang/String;)V

    const-string v3, "QBI8EAIeXA=="

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    invoke-virtual {v1}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/comeback/data/ui/lnkl/bean/Video;->setDate(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public static Y(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aput v2, v0, v3

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x23

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/16 v4, 0x3f

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v2, :cond_2

    if-le v4, v1, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    const/16 v5, 0x2f

    .line 5
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_4

    if-le v6, v4, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    const/16 v7, 0x3a

    .line 6
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_6

    const/4 v7, -0x1

    :cond_6
    add-int/lit8 v6, v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 7
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_7

    .line 8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_9

    add-int/lit8 v6, v7, 0x3

    .line 9
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, v2, :cond_8

    if-le p0, v4, :cond_a

    :cond_8
    move p0, v4

    goto :goto_2

    :cond_9
    add-int/lit8 p0, v7, 0x1

    :cond_a
    :goto_2
    aput v7, v0, v3

    aput p0, v0, v8

    const/4 p0, 0x2

    aput v4, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0
.end method

.method public static Y0([B)Ljava/util/UUID;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0, p0}, Lf/i/a/a/m1/u;-><init>([B)V

    .line 2
    iget p0, v0, Lf/i/a/a/m1/u;->c:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v1

    .line 7
    sget v3, Lf/i/a/a/b1/u/a;->i0:I

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v5

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_4

    .line 10
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->s()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 11
    invoke-virtual {v0, v3}, Lf/i/a/a/m1/u;->B(I)V

    .line 12
    :cond_4
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->s()I

    move-result v3

    .line 13
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->a()I

    move-result v5

    if-eq v3, v5, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    new-array v5, v3, [B

    .line 15
    iget-object v6, v0, Lf/i/a/a/m1/u;->a:[B

    iget v7, v0, Lf/i/a/a/m1/u;->b:I

    invoke-static {v6, v7, v5, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget p0, v0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr p0, v3

    iput p0, v0, Lf/i/a/a/m1/u;->b:I

    .line 17
    new-instance p0, Lf/i/a/a/b1/u/h;

    invoke-direct {p0, v4, v1, v5}, Lf/i/a/a/b1/u/h;-><init>(Ljava/util/UUID;I[B)V

    :goto_1
    if-nez p0, :cond_6

    return-object v2

    .line 18
    :cond_6
    iget-object p0, p0, Lf/i/a/a/b1/u/h;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public static Z()Ljava/lang/String;
    .locals 3

    const-string v0, "XxYXFEUSXlYdEg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v2}, Lcom/tencent/smtt/sdk/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "aD08Ow=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    return-object v1
.end method

.method public static Z0(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/y/b;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1
    new-instance v2, Lf/i/a/a/m1/u;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lf/i/a/a/m1/u;-><init>(I)V

    .line 2
    invoke-static {v0, v2}, Lf/i/a/a/b1/y/c;->a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;

    move-result-object v4

    .line 3
    iget v4, v4, Lf/i/a/a/b1/y/c;->a:I

    sget v5, Lf/i/a/a/w0/f0;->a:I

    if-eq v4, v5, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v4, v2, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 5
    invoke-virtual {v0, v4, v5, v6, v5}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 6
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 7
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v4

    .line 8
    sget v7, Lf/i/a/a/w0/f0;->b:I

    if-eq v4, v7, :cond_1

    return-object v1

    .line 9
    :cond_1
    invoke-static {v0, v2}, Lf/i/a/a/b1/y/c;->a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;

    move-result-object v4

    .line 10
    :goto_0
    iget v7, v4, Lf/i/a/a/b1/y/c;->a:I

    sget v8, Lf/i/a/a/w0/f0;->c:I

    if-eq v7, v8, :cond_2

    .line 11
    iget-wide v7, v4, Lf/i/a/a/b1/y/c;->b:J

    long-to-int v4, v7

    .line 12
    invoke-virtual {v0, v4, v5}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 13
    invoke-static {v0, v2}, Lf/i/a/a/b1/y/c;->a(Lf/i/a/a/b1/d;Lf/i/a/a/m1/u;)Lf/i/a/a/b1/y/c;

    move-result-object v4

    goto :goto_0

    .line 14
    :cond_2
    iget-wide v7, v4, Lf/i/a/a/b1/y/c;->b:J

    const-wide/16 v9, 0x10

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-ltz v12, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 15
    iget-object v7, v2, Lf/i/a/a/m1/u;->a:[B

    .line 16
    invoke-virtual {v0, v7, v5, v3, v5}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 17
    invoke-virtual {v2, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 18
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->i()I

    move-result v7

    .line 19
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->i()I

    move-result v13

    .line 20
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->h()I

    move-result v14

    .line 21
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->h()I

    move-result v15

    .line 22
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->i()I

    move-result v8

    .line 23
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->i()I

    move-result v2

    mul-int v9, v13, v2

    .line 24
    div-int/lit8 v9, v9, 0x8

    if-ne v8, v9, :cond_a

    if-eq v7, v11, :cond_8

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    const v6, 0xfffe

    if-eq v7, v6, :cond_8

    const/4 v6, 0x6

    if-eq v7, v6, :cond_5

    const/4 v6, 0x7

    if-eq v7, v6, :cond_4

    const/16 v18, 0x0

    goto :goto_3

    :cond_4
    const/high16 v6, 0x10000000

    const/high16 v18, 0x10000000

    goto :goto_3

    :cond_5
    const/high16 v6, 0x20000000

    const/high16 v18, 0x20000000

    goto :goto_3

    :cond_6
    const/16 v7, 0x20

    if-ne v2, v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 25
    :cond_8
    invoke-static {v2}, Lf/i/a/a/m1/h0;->G(I)I

    move-result v6

    :goto_2
    move/from16 v18, v6

    :goto_3
    if-nez v18, :cond_9

    return-object v1

    .line 26
    :cond_9
    iget-wide v6, v4, Lf/i/a/a/b1/y/c;->b:J

    long-to-int v1, v6

    sub-int/2addr v1, v3

    .line 27
    invoke-virtual {v0, v1, v5}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 28
    new-instance v0, Lf/i/a/a/b1/y/b;

    move-object v12, v0

    move/from16 v16, v8

    move/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lf/i/a/a/b1/y/b;-><init>(IIIIII)V

    return-object v0

    .line 29
    :cond_a
    new-instance v0, Lf/i/a/a/h0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_b
    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "eiZW"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bw=="

    .line 9
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    :goto_2
    const/16 v0, 0x8

    const/16 v1, 0x18

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/x0/a;
        }
    .end annotation

    :try_start_0
    const-string v0, "ExoPlayerVersions"

    .line 1
    invoke-static {p0, v0}, Lc/a/a/b/g/h;->p1(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v3, "ExoPlayerVersions"

    const-string v0, "version"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature = ? AND instance_uid = ?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 6
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    .line 7
    :cond_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    .line 11
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lf/i/a/a/x0/a;

    invoke-direct {p1, p0}, Lf/i/a/a/x0/a;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static a1()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Bw=="

    .line 1
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "BA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Aw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "Ag=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "AQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "AA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "Dw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "Dg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "dg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "dQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "dA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "cw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "cg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "cQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    new-instance p0, Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static b0(Landroid/view/View;FJ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int v0, v0, v0

    mul-int v3, v3, v3

    add-int/2addr v3, v0

    int-to-double v3, v3

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 6
    invoke-static {p0, v1, v2, v0, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    new-instance p2, Lf/e/a/k/k;

    invoke-direct {p2, p0}, Lf/e/a/k/k;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static b1(Lf/i/a/a/m1/u;II)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/m1/u;->A(I)V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->d()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const v2, 0x1fff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, p2, :cond_2

    return-wide v0

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return-wide v0

    .line 4
    :cond_4
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    if-lt p1, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x6

    new-array v0, p1, [B

    .line 7
    iget-object v1, p0, Lf/i/a/a/m1/u;->a:[B

    iget v4, p0, Lf/i/a/a/m1/u;->b:I

    invoke-static {v1, v4, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lf/i/a/a/m1/u;->b:I

    .line 9
    aget-byte p0, v0, p2

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr p0, v4

    const/16 p2, 0x19

    shl-long/2addr p0, p2

    aget-byte p2, v0, v2

    int-to-long v6, p2

    and-long/2addr v6, v4

    const/16 p2, 0x11

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x2

    aget-byte p2, v0, p2

    int-to-long v6, p2

    and-long/2addr v6, v4

    const/16 p2, 0x9

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x3

    aget-byte p2, v0, p2

    int-to-long v6, p2

    and-long/2addr v6, v4

    shl-long v1, v6, v2

    or-long/2addr p0, v1

    const/4 p2, 0x4

    aget-byte p2, v0, p2

    int-to-long v0, p2

    and-long/2addr v0, v4

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v0
.end method

.method public static c(Ljava/io/FileWriter;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FCc7MCZAbA=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "WwsNAUUAXEMSFFUTFxg="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "FCc7MEYrFGU2NGcuNyRZWA=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "FCc7MEYrFGcyNHMiLC42OXY2KislSQgE"

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "FCc7MEYrFH42In0mVTkmOmInLScuSQk="

    .line 7
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    const-string v2, "WgcHDQosCR0HFQ=="

    .line 9
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WgcHDQos"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "GRYQ"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FCc7MCI9fwlCUBpRQFlP"

    .line 10
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "FCc7MEYrFHY9InguKz4="

    .line 14
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    return-void
.end method

.method public static c0(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "XgwTER8sVFYHDlsD"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    if-lt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    move v0, p1

    move v2, v0

    :goto_0
    if-gt v0, p2, :cond_7

    if-ne v0, p2, :cond_2

    move v3, v0

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    add-int/lit8 v3, v0, 0x1

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_5

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, -0x2

    const-string v0, "/"

    .line 8
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p1

    .line 9
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v2, v0

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const-string p0, "elements"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "$this$addAll"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d0()Ljava/lang/String;
    .locals 1

    const-string v0, "BFtIVQE9bgQeUnYrOjghEQAaJxwjMgQO"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 2
    :cond_1
    invoke-static {p1}, Lc/a/a/b/g/h;->Y(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    aget p0, v1, v6

    aget p1, v1, v5

    invoke-static {v0, p0, p1}, Lc/a/a/b/g/h;->c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Lc/a/a/b/g/h;->Y(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v7, 0x3

    .line 8
    aget v8, v1, v7

    if-nez v8, :cond_3

    .line 9
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    aget v7, v1, v5

    if-nez v7, :cond_4

    .line 11
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    aget v7, v1, v6

    if-eqz v7, :cond_5

    .line 13
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 14
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Lc/a/a/b/g/h;->c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 17
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    invoke-static {v0, p0, p1}, Lc/a/a/b/g/h;->c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_7

    .line 20
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Lc/a/a/b/g/h;->c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 23
    aget v4, v3, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 24
    :goto_0
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Lc/a/a/b/g/h;->c1(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-eqz p2, :cond_1

    const-string p0, "\n"

    .line 1
    invoke-static {p1, p0}, Lf/b/a/a/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_4

    const/16 v2, 0xa

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, p0

    :goto_2
    add-int/lit16 v3, v1, 0xfa0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "OkHttp"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static final e0()Ljava/lang/String;
    .locals 1

    const-string v0, "WQ8iFCUEX1VKJQFRQQYNMkcbWh4CRA94NCEBAg4mBTkcD0hWDD5QSzgcW1o="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/a/a/b/g/h;->d1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/Appendable;Ljava/lang/Object;Lh/o/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Lh/o/b/b<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p1}, Lh/o/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    instance-of p2, p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 3
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static f0(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static f1(I)Ljava/lang/String;
    .locals 8

    .line 1
    rem-int/lit8 v0, p0, 0x3c

    .line 2
    div-int/lit8 p0, p0, 0x3c

    rem-int/lit8 v1, p0, 0x3c

    .line 3
    div-int/lit8 p0, p0, 0x3c

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DQ=="

    const-string v4, "Bw=="

    const/16 v5, 0x9

    if-eqz p0, :cond_1

    if-le p0, v5, :cond_0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v1, :cond_3

    if-le v1, v5, :cond_2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string p0, "B1JZ"

    .line 7
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-le v0, v5, :cond_4

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static g0(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ThsaHUQ+dBwXAg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "csd-"

    .line 2
    invoke-static {v1, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lc/a/a/b/g/h;->i1(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    .line 2
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(ILchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    new-instance p1, Lf/e/a/l/b;

    invoke-direct {p1, p0}, Lf/e/a/l/b;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p0

    new-instance p1, Lf/e/a/k/b0;

    invoke-direct {p1}, Lf/e/a/k/b0;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p0

    new-instance p1, Lf/e/a/k/a0;

    invoke-direct {p1}, Lf/e/a/k/a0;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p0

    new-instance p1, Lf/e/a/k/v;

    invoke-direct {p1}, Lf/e/a/k/v;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setOnCoverMapImage(Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final h0(Lh/m/a;)Lh/m/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/m/a<",
            "-TT;>;)",
            "Lh/m/a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    instance-of v1, p0, Lh/m/e/a/c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lh/m/e/a/c;

    if-eqz v0, :cond_3

    .line 2
    iget-object p0, v0, Lh/m/e/a/c;->b:Lh/m/a;

    if-eqz p0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {v0}, Lh/m/e/a/c;->getContext()Lh/m/c;

    move-result-object p0

    sget-object v1, Lh/m/b;->a:Lh/m/b$a;

    invoke-interface {p0, v1}, Lh/m/c;->c(Lh/m/c$b;)Lh/m/c$a;

    move-result-object p0

    check-cast p0, Lh/m/b;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lh/m/b;->b(Lh/m/a;)Lh/m/a;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 4
    :goto_1
    iput-object p0, v0, Lh/m/e/a/c;->b:Lh/m/a;

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    const-string p0, "$this$intercepted"

    .line 5
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static h1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    const v1, 0x7f0902a8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    new-instance v1, Lf/e/a/k/z;

    invoke-direct {v1, p0, p1}, Lf/e/a/k/z;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/util/UUID;[B)[B
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lc/a/a/b/g/h;->j(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static i0(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i1(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    const v1, 0x7f090306

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lf/e/a/k/y;

    invoke-direct {v1, p0, p1}, Lf/e/a/k/y;-><init>(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 5
    .param p1    # [Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_1

    .line 2
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    sget v1, Lf/i/a/a/b1/u/a;->i0:I

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 9
    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 10
    array-length p0, p1

    :goto_2
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    .line 11
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    array-length p0, p2

    if-eqz p0, :cond_4

    .line 14
    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static j1(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static k(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5
    div-int/lit8 v1, v1, 0x7

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RA=="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFEA=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "3+LigeTL36/Jg7zhnNDIjJHthuzCm4Scl92CiMTmh9O6h8bZjOeR187G0u7rjOv61OLhbg=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 15
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const-string v1, "09rojNbO3K/Dg6nn"

    .line 16
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "DQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k1(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5
    div-int/lit8 v1, v1, 0x7

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFBw=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public static l0(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "VA0NCg4QTVoFD0Ae"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static l1(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/x0/a;
        }
    .end annotation

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    .line 1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feature"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "instance_uid"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ExoPlayerVersions"

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lf/i/a/a/x0/a;

    invoke-direct {p1, p0}, Lf/i/a/a/x0/a;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static m(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static m0()Z
    .locals 2

    const-string v0, "ZAcAFg4HflIBAlEJ"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZAcbEQMGWw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static m1(Landroid/view/View;FJ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int v0, v0, v0

    mul-int v3, v3, v3

    add-int/2addr v3, v0

    int-to-double v3, v3

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 6
    invoke-static {p0, v1, v2, p1, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static n(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static o(ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o1([C)C
    .locals 2

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-char p0, p0, v0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static p0(II)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-gt p0, v0, :cond_0

    const/16 p0, 0x180

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p1(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sqlite_master"

    const-string v3, "tbl_name = ?"

    .line 1
    invoke-static {p0, p1, v3, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q(III)I
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final q0(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final q1()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Ljava/lang/String;)Z
    .locals 2
    const/4 v0, 0x1
    return v0
.end method

.method public static r0(Lh/r/c;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh/o/b/b;I)Ljava/lang/String;
    .locals 2

    and-int/lit8 p2, p7, 0x1

    if-eqz p2, :cond_0

    const-string p1, ", "

    :cond_0
    and-int/lit8 p2, p7, 0x2

    const-string p3, ""

    const/4 p5, 0x0

    if-eqz p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    move-object p2, p5

    :goto_0
    and-int/lit8 p6, p7, 0x4

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, p5

    :goto_1
    and-int/lit8 p6, p7, 0x8

    if-eqz p6, :cond_3

    const/4 p4, -0x1

    :cond_3
    and-int/lit8 p6, p7, 0x10

    if-eqz p6, :cond_4

    const-string p6, "..."

    goto :goto_2

    :cond_4
    move-object p6, p5

    :goto_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p0, :cond_d

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    if-eqz p3, :cond_a

    if-eqz p6, :cond_9

    .line 1
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 p2, 0x0

    .line 3
    invoke-interface {p0}, Lh/r/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x1

    if-le p2, v1, :cond_5

    .line 4
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_5
    if-ltz p4, :cond_6

    if-gt p2, p4, :cond_7

    .line 5
    :cond_6
    invoke-static {p7, v0, p5}, Lc/a/a/b/g/h;->f(Ljava/lang/Appendable;Ljava/lang/Object;Lh/o/b/b;)V

    goto :goto_3

    :cond_7
    if-ltz p4, :cond_8

    if-le p2, p4, :cond_8

    .line 6
    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    :cond_8
    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 8
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "joinTo(StringBuilder(), \u2026ed, transform).toString()"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_9
    const-string p0, "truncated"

    .line 9
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p5

    :cond_a
    const-string p0, "postfix"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p5

    :cond_b
    const-string p0, "prefix"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p5

    :cond_c
    const-string p0, "separator"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p5

    :cond_d
    const-string p0, "$this$joinToString"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p5
.end method

.method public static final r1(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2}, Lh/s/d;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    const-string v0, "["

    .line 2
    invoke-static {p0, v0, v1, v2}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-static {p0, v0, v1, v2}, Lh/s/d;->c(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {p0, v4, v0}, Lc/a/a/b/g/h;->H(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lc/a/a/b/g/h;->H(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 6
    array-length v4, v2

    const/4 v5, 0x4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_8

    const-string p0, "address"

    invoke-static {v2, p0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 7
    :goto_1
    array-length v4, v2

    if-ge p0, v4, :cond_3

    move v4, p0

    :goto_2
    if-ge v4, v6, :cond_1

    .line 8
    aget-byte v7, v2, v4

    if-nez v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    if-nez v7, :cond_1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_1
    sub-int v7, v4, p0

    if-le v7, v0, :cond_2

    if-lt v7, v5, :cond_2

    move v3, p0

    move v0, v7

    :cond_2
    add-int/lit8 p0, v4, 0x2

    goto :goto_1

    .line 9
    :cond_3
    new-instance p0, Lj/g;

    invoke-direct {p0}, Lj/g;-><init>()V

    .line 10
    :cond_4
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_7

    const/16 v4, 0x3a

    if-ne v1, v3, :cond_5

    .line 11
    invoke-virtual {p0, v4}, Lj/g;->Q(I)Lj/g;

    add-int/2addr v1, v0

    if-ne v1, v6, :cond_4

    .line 12
    invoke-virtual {p0, v4}, Lj/g;->Q(I)Lj/g;

    goto :goto_3

    :cond_5
    if-lez v1, :cond_6

    .line 13
    invoke-virtual {p0, v4}, Lj/g;->Q(I)Lj/g;

    .line 14
    :cond_6
    aget-byte v4, v2, v1

    const/16 v5, 0xff

    invoke-static {v4, v5}, Li/m0/b;->a(BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v2, v7

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    int-to-long v4, v4

    .line 15
    invoke-virtual {p0, v4, v5}, Lj/g;->Y(J)Lj/g;

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lj/g;->I()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    array-length v1, v2

    if-ne v1, v5, :cond_9

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_a
    return-object v5

    .line 19
    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IDN.toASCII(host)"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_d

    return-object v5

    .line 21
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_11

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1f

    if-le v6, v7, :cond_10

    const/16 v7, 0x7f

    if-lt v6, v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x6

    const-string v8, " #%/:?@[\\]"

    .line 23
    invoke-static {v8, v6, v1, v1, v7}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v6, v3, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    const/4 v1, 0x1

    :cond_11
    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    move-object v5, p0

    :catch_0
    :goto_7
    return-object v5
.end method

.method public static s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final s0(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "java.util.Collections.singletonList(element)"

    invoke-static {p0, v0}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final s1([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lh/k/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh/k/a;-><init>([Ljava/lang/Object;Z)V

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lf/d/a/j;->p(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p4}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static t1(Ljava/io/File;Lf/i/a/a/e1/j;Lf/i/a/a/e1/k;ZZ)V
    .locals 23
    .param p1    # Lf/i/a/a/e1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_c

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    new-array v3, v5, [Lf/i/a/a/e1/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 7
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 8
    :cond_5
    :goto_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    if-gtz v6, :cond_a

    .line 11
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_6

    .line 13
    :try_start_3
    invoke-static {v3}, Lf/i/a/a/e1/i;->a(Ljava/io/DataInputStream;)Lf/i/a/a/e1/u;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lf/i/a/a/e1/u$b; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :try_start_4
    new-array v3, v5, [Lf/i/a/a/e1/u;

    .line 14
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lf/i/a/a/e1/u;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    :try_start_5
    invoke-static {v4}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 16
    :goto_5
    array-length v4, v3

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v4, :cond_9

    aget-object v7, v3, v15

    .line 17
    iget-object v6, v7, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lf/i/a/a/e1/k;->c(Ljava/lang/String;)Lf/i/a/a/e1/m;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 18
    iget v8, v6, Lf/i/a/a/e1/m;->f:I

    invoke-static {v6, v7, v8, v13, v14}, Lf/i/a/a/e1/s;->b(Lf/i/a/a/e1/m;Lf/i/a/a/e1/u;IJ)Lf/i/a/a/e1/m;

    move-result-object v6

    move-wide/from16 v21, v13

    move/from16 v18, v15

    goto :goto_8

    .line 19
    :cond_7
    new-instance v17, Lf/i/a/a/e1/m;

    if-eqz p4, :cond_8

    const/4 v6, 0x3

    const/4 v8, 0x3

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    const-wide/16 v18, -0x1

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v6, v17

    move-wide v9, v13

    move-wide v11, v13

    move-wide/from16 v21, v13

    move-wide/from16 v13, v18

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v6 .. v16}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJII)V

    move-object/from16 v6, v17

    .line 20
    :goto_8
    invoke-virtual {v0, v6}, Lf/i/a/a/e1/k;->g(Lf/i/a/a/e1/m;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v15, v18, 0x1

    move-wide/from16 v13, v21

    goto :goto_6

    .line 21
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 23
    :cond_a
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported action file version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v4

    .line 24
    :goto_9
    :try_start_7
    invoke-static {v3}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 25
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_a
    if-eqz p3, :cond_b

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 28
    :cond_b
    throw v0

    :cond_c
    :goto_b
    return-void
.end method

.method public static u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static u0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v1, 0x7f0800a4

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p0, p1, v1, v2}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method

.method public static u1(ILf/i/a/a/m1/u;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p0, Lf/i/a/a/h0;

    const-string p2, "too short header: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    if-eq v0, p0, :cond_3

    if-eqz p2, :cond_2

    return v1

    .line 4
    :cond_2
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "expected header type "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    .line 7
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    .line 8
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    .line 9
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->p()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    return v1

    .line 11
    :cond_6
    new-instance p0, Lf/i/a/a/h0;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static v0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/b/g/e/a;

    invoke-direct {v1, p0}, Lf/e/a/j/b/g/e/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static w(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w0(Lcom/comeback/data/ui/cm/bean/CoverBase64;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/cm/bean/CoverBase64;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/i/b/a/a;

    invoke-virtual {p0}, Lcom/comeback/data/ui/cm/bean/CoverBase64;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lf/e/a/i/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    const v0, 0x7f0800a5

    .line 5
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    .line 6
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    :cond_1
    :goto_0
    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    const/4 p0, 0x1
    return p0
.end method

.method public static x0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/d/a/j;->p(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a5

    .line 3
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 4
    sget-object v0, Lf/d/a/o/n/k;->a:Lf/d/a/o/n/k;

    .line 5
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    const/high16 v0, -0x80000000

    .line 6
    invoke-virtual {p0, v0, v0}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    sget-object v0, Lf/d/a/o/b;->b:Lf/d/a/o/b;

    .line 7
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->i(Lf/d/a/o/b;)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 8
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static y(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 7
    aget-object v2, v0, v1

    invoke-static {v2}, Lc/a/a/b/g/h;->y(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static y0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    new-instance v1, Lf/e/a/j/j/m/f/a;

    invoke-direct {v1, p0}, Lf/e/a/j/j/m/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p0

    const v0, 0x7f0800a4

    .line 4
    invoke-virtual {p0, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p0

    check-cast p0, Lf/d/a/i;

    .line 5
    invoke-virtual {p0, p1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method

.method public static final z(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 2
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 3
    sget-object v1, Lh/n/b;->a:Lh/n/a;

    if-eqz v1, :cond_3

    .line 4
    sget-object v0, Lh/n/a$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    throw v0
.end method

.method public static z0(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-static {}, Lf/d/a/s/e;->C()Lf/d/a/s/e;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    const v2, 0x7f0800a4

    .line 3
    invoke-static {v1, p0, p1, v2, v0}, Lc/a/a/b/g/h;->t0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILf/d/a/s/a;)V

    return-void
.end method
