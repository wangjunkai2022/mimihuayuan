.class public final Li/x$b;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li/x$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p10

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    :goto_0
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v7, v3, 0x8

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v8, v3, 0x10

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit8 v10, v3, 0x40

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    const/16 v11, 0x80

    and-int/2addr v3, v11

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v3, p9

    :goto_6
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_19

    move v13, v4

    :goto_7
    if-ge v13, v6, :cond_18

    .line 2
    invoke-virtual {v1, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    const/16 v12, 0x7f

    const/16 v15, 0x20

    const/4 v5, 0x2

    if-lt v14, v15, :cond_a

    if-eq v14, v12, :cond_a

    if-lt v14, v11, :cond_7

    if-eqz v10, :cond_a

    :cond_7
    int-to-char v11, v14

    const/4 v12, 0x0

    .line 3
    invoke-static {v2, v11, v12, v5}, Lh/s/d;->a(Ljava/lang/CharSequence;CZI)Z

    move-result v11

    if-nez v11, :cond_a

    const/16 v11, 0x25

    if-ne v14, v11, :cond_8

    if-eqz v7, :cond_a

    if-eqz v8, :cond_8

    .line 4
    invoke-virtual {v0, v1, v13, v6}, Li/x$b;->b(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_8
    const/16 v11, 0x2b

    if-ne v14, v11, :cond_9

    if-eqz v9, :cond_9

    goto :goto_8

    .line 5
    :cond_9
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v13, v5

    const/16 v11, 0x80

    goto :goto_7

    .line 6
    :cond_a
    :goto_8
    new-instance v11, Lj/g;

    invoke-direct {v11}, Lj/g;-><init>()V

    .line 7
    invoke-virtual {v11, v1, v4, v13}, Lj/g;->d0(Ljava/lang/String;II)Lj/g;

    const/4 v12, 0x0

    :goto_9
    if-ge v13, v6, :cond_17

    .line 8
    invoke-virtual {v1, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eqz v7, :cond_b

    const/16 v14, 0x9

    if-eq v4, v14, :cond_d

    const/16 v14, 0xa

    if-eq v4, v14, :cond_d

    const/16 v14, 0xc

    if-eq v4, v14, :cond_d

    const/16 v14, 0xd

    if-eq v4, v14, :cond_d

    :cond_b
    const/16 v14, 0x2b

    if-ne v4, v14, :cond_e

    if-eqz v9, :cond_e

    if-eqz v7, :cond_c

    const-string v17, "+"

    goto :goto_a

    :cond_c
    const-string v17, "%2B"

    :goto_a
    move-object/from16 v14, v17

    .line 9
    invoke-virtual {v11, v14}, Lj/g;->c0(Ljava/lang/String;)Lj/g;

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_e
    if-lt v4, v15, :cond_11

    const/16 v14, 0x7f

    if-eq v4, v14, :cond_11

    const/16 v14, 0x80

    if-lt v4, v14, :cond_f

    if-eqz v10, :cond_11

    :cond_f
    int-to-char v14, v4

    const/4 v15, 0x0

    .line 10
    invoke-static {v2, v14, v15, v5}, Lh/s/d;->a(Ljava/lang/CharSequence;CZI)Z

    move-result v14

    if-nez v14, :cond_12

    const/16 v14, 0x25

    if-ne v4, v14, :cond_10

    if-eqz v7, :cond_12

    if-eqz v8, :cond_10

    .line 11
    invoke-virtual {v0, v1, v13, v6}, Li/x$b;->b(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_b

    .line 12
    :cond_10
    invoke-virtual {v11, v4}, Lj/g;->e0(I)Lj/g;

    goto :goto_e

    :cond_11
    const/4 v15, 0x0

    :cond_12
    :goto_b
    if-nez v12, :cond_13

    .line 13
    new-instance v12, Lj/g;

    invoke-direct {v12}, Lj/g;-><init>()V

    :cond_13
    if-eqz v3, :cond_15

    .line 14
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v14}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    goto :goto_c

    .line 15
    :cond_14
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12, v1, v13, v14, v3}, Lj/g;->b0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lj/g;

    goto :goto_d

    .line 16
    :cond_15
    :goto_c
    invoke-virtual {v12, v4}, Lj/g;->e0(I)Lj/g;

    .line 17
    :goto_d
    invoke-virtual {v12}, Lj/g;->p()Z

    move-result v14

    if-nez v14, :cond_16

    .line 18
    invoke-virtual {v12}, Lj/g;->readByte()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    const/16 v5, 0x25

    .line 19
    invoke-virtual {v11, v5}, Lj/g;->Q(I)Lj/g;

    .line 20
    sget-object v16, Li/x;->k:[C

    shr-int/lit8 v17, v14, 0x4

    and-int/lit8 v17, v17, 0xf

    .line 21
    aget-char v5, v16, v17

    invoke-virtual {v11, v5}, Lj/g;->Q(I)Lj/g;

    .line 22
    sget-object v5, Li/x;->k:[C

    and-int/lit8 v14, v14, 0xf

    .line 23
    aget-char v5, v5, v14

    invoke-virtual {v11, v5}, Lj/g;->Q(I)Lj/g;

    const/4 v5, 0x2

    goto :goto_d

    .line 24
    :cond_16
    :goto_e
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v13, v4

    const/4 v5, 0x2

    const/16 v15, 0x20

    goto/16 :goto_9

    .line 25
    :cond_17
    invoke-virtual {v11}, Lj/g;->I()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 26
    :cond_18
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_19
    const-string v0, "$this$canonicalize"

    .line 27
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1a
    const/4 v0, 0x0

    .line 28
    throw v0
.end method

.method public static d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;
    .locals 6

    and-int/lit8 p0, p5, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_2

    const/4 p4, 0x0

    :cond_2
    if-eqz p1, :cond_9

    move p0, p2

    :goto_0
    if-ge p0, p3, :cond_8

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x2b

    const/16 v1, 0x25

    if-eq p5, v1, :cond_4

    if-ne p5, v0, :cond_3

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 3
    :cond_4
    :goto_1
    new-instance p5, Lj/g;

    invoke-direct {p5}, Lj/g;-><init>()V

    .line 4
    invoke-virtual {p5, p1, p2, p0}, Lj/g;->d0(Ljava/lang/String;II)Lj/g;

    :goto_2
    if-ge p0, p3, :cond_7

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, p0, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 v3, p0, 0x1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Li/m0/b;->w(C)I

    move-result v3

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Li/m0/b;->w(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    if-eq v4, v5, :cond_6

    shl-int/lit8 p0, v3, 0x4

    add-int/2addr p0, v4

    .line 8
    invoke-virtual {p5, p0}, Lj/g;->Q(I)Lj/g;

    .line 9
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p0, v2

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_6

    const/16 p2, 0x20

    .line 10
    invoke-virtual {p5, p2}, Lj/g;->Q(I)Lj/g;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p5, p2}, Lj/g;->e0(I)Lj/g;

    .line 12
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p0, p2

    goto :goto_2

    .line 13
    :cond_7
    invoke-virtual {p5}, Lj/g;->I()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 14
    :cond_8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0

    :cond_9
    const-string p0, "$this$percentDecode"

    .line 15
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;II)Z
    .locals 3

    add-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-ge v0, p3, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0x25

    if-ne p3, v2, :cond_0

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Li/m0/b;->w(C)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Li/m0/b;->w(C)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v2, p0

    move v6, p2

    .line 4
    invoke-static/range {v2 .. v7}, Li/x$b;->d(Li/x$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Collections.unmodifiableList(result)"

    invoke-static {p1, p2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    const/16 v3, 0x26

    const/4 v4, 0x4

    .line 3
    invoke-static {p1, v3, v2, v1, v4}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v6, 0x3d

    .line 5
    invoke-static {p1, v6, v2, v1, v4}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v5, :cond_2

    if-le v4, v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
