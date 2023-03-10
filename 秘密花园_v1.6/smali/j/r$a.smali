.class public final Lj/r$a;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLj/g;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj/g;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lj/k;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v0, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    if-ge v0, v13, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_14

    move v3, v0

    :goto_1
    if-ge v3, v13, :cond_3

    .line 1
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/k;

    .line 2
    invoke-virtual {v5}, Lj/k;->b()I

    move-result v5

    if-lt v5, v11, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/k;

    add-int/lit8 v4, v13, -0x1

    .line 5
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/k;

    .line 6
    invoke-virtual {v3}, Lj/k;->b()I

    move-result v5

    const/4 v15, -0x1

    if-ne v11, v5, :cond_4

    .line 7
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/k;

    move v6, v0

    move v0, v3

    move-object v3, v5

    goto :goto_3

    :cond_4
    move v6, v0

    const/4 v0, -0x1

    .line 9
    :goto_3
    invoke-virtual {v3, v11}, Lj/k;->e(I)B

    move-result v5

    invoke-virtual {v4, v11}, Lj/k;->e(I)B

    move-result v7

    const/4 v8, 0x2

    if-eq v5, v7, :cond_e

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    :goto_4
    if-ge v1, v13, :cond_6

    add-int/lit8 v3, v1, -0x1

    .line 10
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/k;

    .line 11
    invoke-virtual {v3, v11}, Lj/k;->e(I)B

    move-result v3

    .line 12
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/k;

    .line 13
    invoke-virtual {v4, v11}, Lj/k;->e(I)B

    move-result v4

    if-eq v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {v9, v10}, Lj/r$a;->b(Lj/g;)J

    move-result-wide v3

    add-long v3, v3, p1

    int-to-long v7, v8

    add-long/2addr v3, v7

    mul-int/lit8 v1, v2, 0x2

    int-to-long v7, v1

    add-long v16, v3, v7

    .line 15
    invoke-virtual {v10, v2}, Lj/g;->Z(I)Lj/g;

    .line 16
    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    move v0, v6

    :goto_5
    if-ge v0, v13, :cond_9

    .line 17
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/k;

    .line 18
    invoke-virtual {v1, v11}, Lj/k;->e(I)B

    move-result v1

    if-eq v0, v6, :cond_7

    add-int/lit8 v2, v0, -0x1

    .line 19
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/k;

    .line 20
    invoke-virtual {v2, v11}, Lj/k;->e(I)B

    move-result v2

    if-eq v1, v2, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0xff

    .line 21
    invoke-virtual {v10, v1}, Lj/g;->Z(I)Lj/g;

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 22
    :cond_9
    new-instance v8, Lj/g;

    invoke-direct {v8}, Lj/g;-><init>()V

    :goto_6
    if-ge v6, v13, :cond_d

    .line 23
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/k;

    .line 24
    invoke-virtual {v0, v11}, Lj/k;->e(I)B

    move-result v0

    add-int/lit8 v1, v6, 0x1

    move v2, v1

    :goto_7
    if-ge v2, v13, :cond_b

    .line 25
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/k;

    .line 26
    invoke-virtual {v3, v11}, Lj/k;->e(I)B

    move-result v3

    if-eq v0, v3, :cond_a

    move v7, v2

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move v7, v13

    :goto_8
    if-ne v1, v7, :cond_c

    add-int/lit8 v0, v11, 0x1

    .line 27
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/k;

    .line 28
    invoke-virtual {v1}, Lj/k;->b()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 29
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    move/from16 v18, v7

    move-object v15, v8

    goto :goto_9

    .line 30
    :cond_c
    invoke-virtual {v9, v8}, Lj/r$a;->b(Lj/g;)J

    move-result-wide v0

    add-long v0, v0, v16

    long-to-int v1, v0

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Lj/g;->Z(I)Lj/g;

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object v15, v8

    move-object/from16 v8, p8

    .line 31
    invoke-virtual/range {v0 .. v8}, Lj/r$a;->a(JLj/g;ILjava/util/List;IILjava/util/List;)V

    :goto_9
    move-object v8, v15

    move/from16 v6, v18

    const/4 v15, -0x1

    goto :goto_6

    :cond_d
    move-object v15, v8

    .line 32
    invoke-virtual {v10, v15}, Lj/g;->P(Lj/a0;)J

    goto/16 :goto_d

    .line 33
    :cond_e
    invoke-virtual {v3}, Lj/k;->b()I

    move-result v5

    invoke-virtual {v4}, Lj/k;->b()I

    move-result v7

    .line 34
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v11

    const/4 v15, 0x0

    :goto_a
    if-ge v7, v5, :cond_f

    .line 35
    invoke-virtual {v3, v7}, Lj/k;->e(I)B

    move-result v1

    invoke-virtual {v4, v7}, Lj/k;->e(I)B

    move-result v2

    if-ne v1, v2, :cond_f

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 36
    :cond_f
    invoke-virtual {v9, v10}, Lj/r$a;->b(Lj/g;)J

    move-result-wide v1

    add-long v1, v1, p1

    int-to-long v4, v8

    add-long/2addr v1, v4

    int-to-long v4, v15

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    neg-int v4, v15

    .line 37
    invoke-virtual {v10, v4}, Lj/g;->Z(I)Lj/g;

    .line 38
    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    add-int v4, v11, v15

    :goto_b
    if-ge v11, v4, :cond_10

    .line 39
    invoke-virtual {v3, v11}, Lj/k;->e(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 40
    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v13, :cond_13

    .line 41
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/k;

    .line 42
    invoke-virtual {v0}, Lj/k;->b()I

    move-result v0

    if-ne v4, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_12

    .line 43
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    goto :goto_d

    .line 44
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_13
    new-instance v11, Lj/g;

    invoke-direct {v11}, Lj/g;-><init>()V

    .line 46
    invoke-virtual {v9, v11}, Lj/r$a;->b(Lj/g;)J

    move-result-wide v7

    add-long/2addr v7, v1

    long-to-int v0, v7

    const/4 v3, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lj/g;->Z(I)Lj/g;

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 47
    invoke-virtual/range {v0 .. v8}, Lj/r$a;->a(JLj/g;ILjava/util/List;IILjava/util/List;)V

    .line 48
    invoke-virtual {v10, v11}, Lj/g;->P(Lj/a0;)J

    :goto_d
    return-void

    .line 49
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lj/g;)J
    .locals 4

    .line 1
    iget-wide v0, p1, Lj/g;->b:J

    const/4 p1, 0x4

    int-to-long v2, p1

    .line 2
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final varargs c([Lj/k;)Lj/r;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Lj/r;

    new-array v1, v2, [Lj/k;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2, v4}, Lj/r;-><init>([Lj/k;[ILh/o/c/f;)V

    return-object v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lc/a/a/b/g/h;->u1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 4
    move-object v1, v10

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-ge v7, v6, :cond_3

    aget-object v9, v0, v7

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v2, [Ljava/lang/Integer;

    .line 8
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    check-cast v5, [Ljava/lang/Integer;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    if-eqz v5, :cond_19

    .line 9
    array-length v6, v5

    if-nez v6, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    new-instance v7, Lh/k/a;

    invoke-direct {v7, v5, v3}, Lh/k/a;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v6

    .line 10
    :goto_2
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v6, v5, :cond_d

    aget-object v9, v0, v6

    add-int/lit8 v11, v7, 0x1

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v15, ")."

    if-ltz v12, :cond_c

    if-gt v12, v14, :cond_b

    add-int/lit8 v12, v12, -0x1

    const/4 v14, 0x0

    :goto_4
    if-gt v14, v12, :cond_9

    add-int v15, v14, v12

    ushr-int/2addr v15, v3

    .line 13
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/Comparable;

    if-ne v3, v9, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    const/4 v3, -0x1

    goto :goto_5

    :cond_6
    if-nez v9, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v3, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_5
    if-gez v3, :cond_8

    add-int/lit8 v14, v15, 0x1

    goto :goto_6

    :cond_8
    if-lez v3, :cond_a

    add-int/lit8 v15, v15, -0x1

    move v12, v15

    :goto_6
    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v14, 0x1

    neg-int v15, v14

    .line 15
    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v15, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v7, v11

    const/4 v3, 0x1

    goto :goto_3

    .line 16
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIndex ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/k;

    .line 19
    invoke-virtual {v3}, Lj/k;->b()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_18

    const/4 v3, 0x0

    .line 20
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/k;

    add-int/lit8 v6, v3, 0x1

    move v7, v6

    .line 22
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 23
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj/k;

    if-eqz v8, :cond_14

    if-eqz v5, :cond_13

    .line 24
    invoke-static {v8, v5}, Lj/c0/a;->o(Lj/k;Lj/k;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_b

    .line 25
    :cond_f
    invoke-virtual {v8}, Lj/k;->b()I

    move-result v9

    invoke-virtual {v5}, Lj/k;->b()I

    move-result v11

    if-eq v9, v11, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_12

    .line 26
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-le v8, v9, :cond_11

    .line 27
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    invoke-interface {v13, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 29
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const-string v0, "prefix"

    .line 30
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_14
    throw v4

    :cond_15
    :goto_b
    move v3, v6

    goto :goto_8

    .line 32
    :cond_16
    new-instance v3, Lj/g;

    invoke-direct {v3}, Lj/g;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v5, p0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lj/r$a;->a(JLj/g;ILjava/util/List;IILjava/util/List;)V

    move-object/from16 v1, p0

    .line 34
    invoke-virtual {v1, v3}, Lj/r$a;->b(Lj/g;)J

    move-result-wide v5

    long-to-int v6, v5

    new-array v5, v6, [I

    .line 35
    :goto_c
    invoke-virtual {v3}, Lj/g;->p()Z

    move-result v6

    if-nez v6, :cond_17

    add-int/lit8 v6, v2, 0x1

    .line 36
    invoke-virtual {v3}, Lj/g;->readInt()I

    move-result v7

    aput v7, v5, v2

    move v2, v6

    goto :goto_c

    .line 37
    :cond_17
    new-instance v2, Lj/r;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/k;

    invoke-direct {v2, v0, v5, v4}, Lj/r;-><init>([Lj/k;[ILh/o/c/f;)V

    return-object v2

    :cond_18
    move-object/from16 v1, p0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "the empty byte string is not a supported option"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v1, p0

    const-string v0, "elements"

    .line 39
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4

    :cond_1a
    move-object/from16 v1, p0

    .line 40
    new-instance v0, Lh/f;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
