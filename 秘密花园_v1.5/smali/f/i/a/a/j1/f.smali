.class public abstract Lf/i/a/a/j1/f;
.super Lf/i/a/a/j1/m;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/j1/f$a;
    }
.end annotation


# instance fields
.field public c:Lf/i/a/a/j1/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/j1/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Lf/i/a/a/p;Lf/i/a/a/h1/p0;Lf/i/a/a/h1/e0$a;Lf/i/a/a/u0;)Lf/i/a/a/j1/n;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lf/i/a/a/h1/o0;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Lf/i/a/a/h1/p0;->a:I

    new-array v9, v8, [Lf/i/a/a/h1/o0;

    aput-object v9, v5, v7

    .line 5
    new-array v8, v8, [[I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v14, v4, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-virtual {v8}, Lf/i/a/a/p;->H()I

    move-result v8

    aput v8, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget v7, v1, Lf/i/a/a/h1/p0;->a:I

    const/4 v15, 0x7

    if-ge v4, v7, :cond_8

    .line 9
    iget-object v7, v1, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v7, v7, v4

    .line 10
    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_3
    array-length v11, v0

    if-ge v9, v11, :cond_5

    .line 12
    aget-object v11, v0, v9

    const/4 v12, 0x0

    .line 13
    :goto_4
    iget v13, v7, Lf/i/a/a/h1/o0;->a:I

    if-ge v12, v13, :cond_4

    .line 14
    iget-object v13, v7, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v13, v13, v12

    .line 15
    invoke-virtual {v11, v13}, Lf/i/a/a/p;->F(Lf/i/a/a/b0;)I

    move-result v13

    and-int/2addr v13, v15

    if-le v13, v10, :cond_3

    const/4 v8, 0x4

    if-ne v13, v8, :cond_2

    move v8, v9

    goto :goto_5

    :cond_2
    move v8, v9

    move v10, v13

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 16
    :cond_5
    :goto_5
    array-length v9, v0

    if-ne v8, v9, :cond_6

    iget v9, v7, Lf/i/a/a/h1/o0;->a:I

    new-array v9, v9, [I

    goto :goto_7

    :cond_6
    aget-object v9, v0, v8

    .line 17
    iget v10, v7, Lf/i/a/a/h1/o0;->a:I

    new-array v10, v10, [I

    const/4 v11, 0x0

    .line 18
    :goto_6
    iget v12, v7, Lf/i/a/a/h1/o0;->a:I

    if-ge v11, v12, :cond_7

    .line 19
    iget-object v12, v7, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v12, v12, v11

    .line 20
    invoke-virtual {v9, v12}, Lf/i/a/a/p;->F(Lf/i/a/a/b0;)I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    move-object v9, v10

    .line 21
    :goto_7
    aget v10, v2, v8

    .line 22
    aget-object v11, v5, v8

    aput-object v7, v11, v10

    .line 23
    aget-object v7, v6, v8

    aput-object v9, v7, v10

    .line 24
    aget v7, v2, v8

    add-int/2addr v7, v3

    aput v7, v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 25
    :cond_8
    array-length v1, v0

    new-array v9, v1, [Lf/i/a/a/h1/p0;

    .line 26
    array-length v1, v0

    new-array v8, v1, [I

    const/4 v1, 0x0

    .line 27
    :goto_8
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 28
    aget v4, v2, v1

    .line 29
    new-instance v7, Lf/i/a/a/h1/p0;

    aget-object v10, v5, v1

    .line 30
    invoke-static {v10, v4}, Lf/i/a/a/m1/h0;->c0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lf/i/a/a/h1/o0;

    invoke-direct {v7, v10}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    aput-object v7, v9, v1

    .line 31
    aget-object v7, v6, v1

    .line 32
    invoke-static {v7, v4}, Lf/i/a/a/m1/h0;->c0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v6, v1

    .line 33
    aget-object v4, v0, v1

    .line 34
    iget v4, v4, Lf/i/a/a/p;->a:I

    .line 35
    aput v4, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 36
    :cond_9
    array-length v1, v0

    aget v1, v2, v1

    .line 37
    new-instance v12, Lf/i/a/a/h1/p0;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 38
    invoke-static {v0, v1}, Lf/i/a/a/m1/h0;->c0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/h1/o0;

    invoke-direct {v12, v0}, Lf/i/a/a/h1/p0;-><init>([Lf/i/a/a/h1/o0;)V

    .line 39
    new-instance v0, Lf/i/a/a/j1/f$a;

    move-object v7, v0

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lf/i/a/a/j1/f$a;-><init>([I[Lf/i/a/a/h1/p0;[I[[[ILf/i/a/a/h1/p0;)V

    .line 40
    move-object/from16 v1, p0

    check-cast v1, Lf/i/a/a/j1/d;

    .line 41
    iget-object v2, v1, Lf/i/a/a/j1/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/j1/d$c;

    .line 42
    iget v4, v0, Lf/i/a/a/j1/f$a;->a:I

    .line 43
    new-array v5, v4, [Lf/i/a/a/j1/j$a;

    move-object v10, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_9
    const/4 v11, 0x2

    if-ge v7, v4, :cond_31

    .line 44
    iget-object v15, v10, Lf/i/a/a/j1/f$a;->b:[I

    aget v15, v15, v7

    if-ne v11, v15, :cond_30

    if-nez v9, :cond_2e

    .line 45
    iget-object v9, v10, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v9, v9, v7

    .line 46
    aget-object v10, v6, v7

    aget v15, v14, v7

    .line 47
    iget-boolean v13, v2, Lf/i/a/a/j1/d$c;->v:Z

    if-nez v13, :cond_18

    iget-boolean v13, v2, Lf/i/a/a/j1/d$c;->u:Z

    if-nez v13, :cond_18

    .line 48
    iget-boolean v13, v2, Lf/i/a/a/j1/d$c;->l:Z

    if-eqz v13, :cond_a

    const/16 v13, 0x18

    goto :goto_a

    :cond_a
    const/16 v13, 0x10

    .line 49
    :goto_a
    iget-boolean v3, v2, Lf/i/a/a/j1/d$c;->k:Z

    if-eqz v3, :cond_b

    and-int v3, v15, v13

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    const/4 v15, 0x0

    .line 50
    :goto_c
    iget v12, v9, Lf/i/a/a/h1/p0;->a:I

    if-ge v15, v12, :cond_18

    .line 51
    iget-object v12, v9, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v12, v12, v15

    .line 52
    aget-object v24, v10, v15

    iget v11, v2, Lf/i/a/a/j1/d$c;->f:I

    move-object/from16 v25, v1

    iget v1, v2, Lf/i/a/a/j1/d$c;->g:I

    move-object/from16 v26, v14

    iget v14, v2, Lf/i/a/a/j1/d$c;->h:I

    move-object/from16 v27, v6

    iget v6, v2, Lf/i/a/a/j1/d$c;->i:I

    move/from16 v28, v4

    iget v4, v2, Lf/i/a/a/j1/d$c;->m:I

    move/from16 v29, v8

    iget v8, v2, Lf/i/a/a/j1/d$c;->n:I

    move-object/from16 v30, v0

    iget-boolean v0, v2, Lf/i/a/a/j1/d$c;->o:Z

    move-object/from16 v31, v5

    .line 53
    iget v5, v12, Lf/i/a/a/h1/o0;->a:I

    move/from16 v32, v7

    const/4 v7, 0x2

    if-ge v5, v7, :cond_c

    .line 54
    sget-object v0, Lf/i/a/a/j1/d;->f:[I

    goto :goto_d

    .line 55
    :cond_c
    invoke-static {v12, v4, v8, v0}, Lf/i/a/a/j1/d;->e(Lf/i/a/a/h1/o0;IIZ)Ljava/util/List;

    move-result-object v0

    .line 56
    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_d

    .line 57
    sget-object v0, Lf/i/a/a/j1/d;->f:[I

    :goto_d
    move-object/from16 v37, v2

    move/from16 v33, v3

    move-object/from16 v38, v9

    move-object/from16 v35, v10

    goto/16 :goto_13

    :cond_d
    if-nez v3, :cond_13

    .line 58
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v33, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v34, 0x0

    .line 59
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_12

    .line 60
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v35, v10

    .line 61
    iget-object v10, v12, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v7, v10, v7

    .line 62
    iget-object v7, v7, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move-object/from16 v37, v2

    move-object/from16 v36, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 64
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_f

    .line 65
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v38, v9

    .line 66
    iget-object v9, v12, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v16, v9, v2

    .line 67
    aget v18, v24, v2

    move-object/from16 v17, v7

    move/from16 v19, v13

    move/from16 v20, v11

    move/from16 v21, v1

    move/from16 v22, v14

    move/from16 v23, v6

    .line 68
    invoke-static/range {v16 .. v23}, Lf/i/a/a/j1/d;->h(Lf/i/a/a/b0;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v5, v5, 0x1

    :cond_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v38

    goto :goto_f

    :cond_f
    move-object/from16 v38, v9

    if-le v5, v3, :cond_11

    move v3, v5

    move-object/from16 v34, v7

    goto :goto_10

    :cond_10
    move-object/from16 v37, v2

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    :cond_11
    :goto_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v35

    move-object/from16 v5, v36

    move-object/from16 v2, v37

    move-object/from16 v9, v38

    goto :goto_e

    :cond_12
    move-object/from16 v37, v2

    move-object/from16 v38, v9

    move-object/from16 v35, v10

    goto :goto_11

    :cond_13
    move-object/from16 v37, v2

    move/from16 v33, v3

    move-object/from16 v38, v9

    move-object/from16 v35, v10

    const/16 v34, 0x0

    .line 69
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_14
    :goto_12
    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_15

    .line 70
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 71
    iget-object v5, v12, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v16, v5, v3

    .line 72
    aget v18, v24, v3

    move-object/from16 v17, v34

    move/from16 v19, v13

    move/from16 v20, v11

    move/from16 v21, v1

    move/from16 v22, v14

    move/from16 v23, v6

    .line 73
    invoke-static/range {v16 .. v23}, Lf/i/a/a/j1/d;->h(Lf/i/a/a/b0;Ljava/lang/String;IIIIII)Z

    move-result v3

    if-nez v3, :cond_14

    .line 74
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    .line 75
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    sget-object v0, Lf/i/a/a/j1/d;->f:[I

    goto :goto_13

    :cond_16
    invoke-static {v0}, Lf/i/a/a/m1/h0;->o0(Ljava/util/List;)[I

    move-result-object v0

    .line 76
    :goto_13
    array-length v1, v0

    if-lez v1, :cond_17

    .line 77
    new-instance v1, Lf/i/a/a/j1/j$a;

    invoke-direct {v1, v12, v0}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    goto :goto_14

    :cond_17
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v25

    move-object/from16 v14, v26

    move-object/from16 v6, v27

    move/from16 v4, v28

    move/from16 v8, v29

    move-object/from16 v0, v30

    move-object/from16 v5, v31

    move/from16 v7, v32

    move/from16 v3, v33

    move-object/from16 v10, v35

    move-object/from16 v2, v37

    move-object/from16 v9, v38

    const/4 v11, 0x2

    goto/16 :goto_c

    :cond_18
    move-object/from16 v30, v0

    move-object/from16 v25, v1

    move-object/from16 v37, v2

    move/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move/from16 v32, v7

    move/from16 v29, v8

    move-object/from16 v38, v9

    move-object/from16 v35, v10

    move-object/from16 v26, v14

    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_2c

    move-object/from16 v6, v38

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 78
    :goto_15
    iget v7, v6, Lf/i/a/a/h1/p0;->a:I

    if-ge v3, v7, :cond_2a

    .line 79
    iget-object v7, v6, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v7, v7, v3

    move-object/from16 v8, v37

    .line 80
    iget v9, v8, Lf/i/a/a/j1/d$c;->m:I

    iget v10, v8, Lf/i/a/a/j1/d$c;->n:I

    iget-boolean v11, v8, Lf/i/a/a/j1/d$c;->o:Z

    invoke-static {v7, v9, v10, v11}, Lf/i/a/a/j1/d;->e(Lf/i/a/a/h1/o0;IIZ)Ljava/util/List;

    move-result-object v9

    .line 81
    aget-object v10, v35, v3

    move v11, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    .line 82
    :goto_16
    iget v12, v7, Lf/i/a/a/h1/o0;->a:I

    if-ge v0, v12, :cond_29

    .line 83
    aget v12, v10, v0

    iget-boolean v13, v8, Lf/i/a/a/j1/d$c;->w:Z

    invoke-static {v12, v13}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 84
    iget-object v12, v7, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v12, v12, v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    iget v13, v12, Lf/i/a/a/b0;->n:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_19

    iget v15, v8, Lf/i/a/a/j1/d$c;->f:I

    if-gt v13, v15, :cond_1d

    :cond_19
    iget v13, v12, Lf/i/a/a/b0;->o:I

    if-eq v13, v14, :cond_1a

    iget v14, v8, Lf/i/a/a/j1/d$c;->g:I

    if-gt v13, v14, :cond_1d

    :cond_1a
    iget v13, v12, Lf/i/a/a/b0;->p:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_1b

    iget v14, v8, Lf/i/a/a/j1/d$c;->h:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1d

    :cond_1b
    iget v13, v12, Lf/i/a/a/b0;->e:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1c

    iget v14, v8, Lf/i/a/a/j1/d$c;->i:I

    if-gt v13, v14, :cond_1d

    :cond_1c
    const/4 v13, 0x1

    goto :goto_17

    :cond_1d
    const/4 v13, 0x0

    :goto_17
    if-nez v13, :cond_1e

    .line 86
    iget-boolean v14, v8, Lf/i/a/a/j1/d$c;->j:Z

    if-nez v14, :cond_1e

    goto/16 :goto_1d

    :cond_1e
    if-eqz v13, :cond_1f

    const/4 v14, 0x2

    goto :goto_18

    :cond_1f
    const/4 v14, 0x1

    .line 87
    :goto_18
    aget v15, v10, v0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v15, v1}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v15

    if-eqz v15, :cond_20

    add-int/lit16 v14, v14, 0x3e8

    :cond_20
    if-le v14, v5, :cond_21

    const/4 v1, 0x1

    goto :goto_19

    :cond_21
    const/4 v1, 0x0

    :goto_19
    if-ne v14, v5, :cond_26

    .line 88
    iget v1, v12, Lf/i/a/a/b0;->e:I

    invoke-static {v1, v4}, Lf/i/a/a/j1/d;->c(II)I

    move-result v1

    move/from16 v17, v5

    .line 89
    iget-boolean v5, v8, Lf/i/a/a/j1/d$c;->u:Z

    if-eqz v5, :cond_22

    if-eqz v1, :cond_22

    if-gez v1, :cond_25

    goto :goto_1b

    .line 90
    :cond_22
    invoke-virtual {v12}, Lf/i/a/a/b0;->v()I

    move-result v1

    if-eq v1, v2, :cond_23

    .line 91
    invoke-static {v1, v2}, Lf/i/a/a/j1/d;->c(II)I

    move-result v1

    goto :goto_1a

    :cond_23
    iget v1, v12, Lf/i/a/a/b0;->e:I

    .line 92
    invoke-static {v1, v4}, Lf/i/a/a/j1/d;->c(II)I

    move-result v1

    :goto_1a
    if-eqz v15, :cond_24

    if-eqz v13, :cond_24

    if-lez v1, :cond_25

    goto :goto_1b

    :cond_24
    if-gez v1, :cond_25

    :goto_1b
    const/4 v1, 0x1

    goto :goto_1c

    :cond_25
    const/4 v1, 0x0

    goto :goto_1c

    :cond_26
    move/from16 v17, v5

    :goto_1c
    if-eqz v1, :cond_28

    .line 93
    iget v1, v12, Lf/i/a/a/b0;->e:I

    .line 94
    invoke-virtual {v12}, Lf/i/a/a/b0;->v()I

    move-result v2

    move v11, v0

    move v4, v1

    move-object v1, v7

    move v5, v14

    goto :goto_1e

    :cond_27
    :goto_1d
    move-object/from16 v16, v1

    move/from16 v17, v5

    :cond_28
    move-object/from16 v1, v16

    move/from16 v5, v17

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :cond_29
    move-object/from16 v16, v1

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    move v1, v2

    move v2, v4

    move-object/from16 v37, v8

    move v5, v11

    move-object/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v8, v37

    if-nez v0, :cond_2b

    const/4 v13, 0x0

    goto :goto_1f

    .line 95
    :cond_2b
    new-instance v13, Lf/i/a/a/j1/j$a;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v5, v2, v1

    invoke-direct {v13, v0, v2}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    :goto_1f
    move-object v1, v13

    goto :goto_20

    :cond_2c
    move-object/from16 v8, v37

    .line 96
    :goto_20
    aput-object v1, v31, v32

    .line 97
    aget-object v0, v31, v32

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_21

    :cond_2d
    const/4 v0, 0x0

    :goto_21
    move v9, v0

    move-object/from16 v0, v30

    goto :goto_22

    :cond_2e
    move-object/from16 v25, v1

    move/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move/from16 v32, v7

    move/from16 v29, v8

    move-object/from16 v26, v14

    move-object v8, v2

    .line 98
    :goto_22
    iget-object v1, v0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v1, v1, v32

    .line 99
    iget v1, v1, Lf/i/a/a/h1/p0;->a:I

    if-lez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_23

    :cond_2f
    const/4 v1, 0x0

    :goto_23
    or-int v1, v29, v1

    move-object v10, v0

    move/from16 v29, v1

    goto :goto_24

    :cond_30
    move-object/from16 v25, v1

    move/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move/from16 v32, v7

    move/from16 v29, v8

    move-object/from16 v26, v14

    move-object v8, v2

    :goto_24
    add-int/lit8 v7, v32, 0x1

    move-object v2, v8

    move-object/from16 v1, v25

    move-object/from16 v14, v26

    move-object/from16 v6, v27

    move/from16 v4, v28

    move/from16 v8, v29

    move-object/from16 v5, v31

    const/4 v3, 0x1

    const/4 v15, 0x7

    goto/16 :goto_9

    :cond_31
    move-object/from16 v25, v1

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move/from16 v29, v8

    move-object/from16 v26, v14

    move-object v8, v2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v3, v4, :cond_47

    .line 100
    iget-object v6, v10, Lf/i/a/a/j1/f$a;->b:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    if-ne v7, v6, :cond_46

    xor-int/lit8 v6, v29, 0x1

    .line 101
    iget-object v7, v10, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v7, v7, v3

    .line 102
    aget-object v9, v27, v3

    aget v10, v26, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 103
    :goto_26
    iget v14, v7, Lf/i/a/a/h1/p0;->a:I

    if-ge v13, v14, :cond_37

    .line 104
    iget-object v14, v7, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v14, v14, v13

    .line 105
    aget-object v15, v9, v13

    move/from16 v17, v11

    move/from16 v16, v12

    move-object v11, v10

    const/4 v10, 0x0

    .line 106
    :goto_27
    iget v12, v14, Lf/i/a/a/h1/o0;->a:I

    if-ge v10, v12, :cond_36

    .line 107
    aget v12, v15, v10

    move-object/from16 v18, v5

    iget-boolean v5, v8, Lf/i/a/a/j1/d$c;->w:Z

    invoke-static {v12, v5}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 108
    iget-object v5, v14, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v5, v5, v10

    .line 109
    new-instance v12, Lf/i/a/a/j1/d$b;

    move-object/from16 v19, v14

    aget v14, v15, v10

    invoke-direct {v12, v5, v8, v14}, Lf/i/a/a/j1/d$b;-><init>(Lf/i/a/a/b0;Lf/i/a/a/j1/d$c;I)V

    .line 110
    iget-boolean v5, v12, Lf/i/a/a/j1/d$b;->a:Z

    if-nez v5, :cond_32

    iget-boolean v5, v8, Lf/i/a/a/j1/d$c;->r:Z

    if-nez v5, :cond_32

    goto :goto_28

    :cond_32
    if-eqz v11, :cond_33

    .line 111
    invoke-virtual {v12, v11}, Lf/i/a/a/j1/d$b;->a(Lf/i/a/a/j1/d$b;)I

    move-result v5

    if-lez v5, :cond_35

    :cond_33
    move/from16 v16, v10

    move-object v11, v12

    move/from16 v17, v13

    goto :goto_28

    :cond_34
    move-object/from16 v19, v14

    :cond_35
    :goto_28
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v18

    move-object/from16 v14, v19

    goto :goto_27

    :cond_36
    move-object/from16 v18, v5

    add-int/lit8 v13, v13, 0x1

    move-object v10, v11

    move/from16 v12, v16

    move/from16 v11, v17

    goto :goto_26

    :cond_37
    move-object/from16 v18, v5

    const/4 v5, -0x1

    if-ne v11, v5, :cond_38

    move-object/from16 v30, v0

    move/from16 v19, v2

    move/from16 v17, v3

    move/from16 v28, v4

    move-object/from16 v16, v8

    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 112
    :cond_38
    iget-object v5, v7, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v5, v5, v11

    .line 113
    iget-boolean v7, v8, Lf/i/a/a/j1/d$c;->v:Z

    if-nez v7, :cond_40

    iget-boolean v7, v8, Lf/i/a/a/j1/d$c;->u:Z

    if-nez v7, :cond_40

    if-eqz v6, :cond_40

    .line 114
    aget-object v6, v9, v11

    iget v7, v8, Lf/i/a/a/j1/d$c;->q:I

    iget-boolean v9, v8, Lf/i/a/a/j1/d$c;->s:Z

    iget-boolean v11, v8, Lf/i/a/a/j1/d$c;->t:Z

    .line 115
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v30, v0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 116
    :goto_29
    iget v0, v5, Lf/i/a/a/h1/o0;->a:I

    if-ge v15, v0, :cond_3c

    .line 117
    iget-object v0, v5, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v0, v0, v15

    move/from16 v28, v4

    .line 118
    new-instance v4, Lf/i/a/a/j1/d$a;

    move/from16 v17, v3

    iget v3, v0, Lf/i/a/a/b0;->v:I

    move/from16 v19, v2

    iget v2, v0, Lf/i/a/a/b0;->w:I

    iget-object v0, v0, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-direct {v4, v3, v2, v0}, Lf/i/a/a/j1/d$a;-><init>(IILjava/lang/String;)V

    .line 119
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 120
    :goto_2a
    iget v3, v5, Lf/i/a/a/h1/o0;->a:I

    if-ge v0, v3, :cond_3a

    .line 121
    iget-object v3, v5, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v32, v3, v0

    .line 122
    aget v33, v6, v0

    move-object/from16 v34, v4

    move/from16 v35, v7

    move/from16 v36, v9

    move/from16 v37, v11

    .line 123
    invoke-static/range {v32 .. v37}, Lf/i/a/a/j1/d;->g(Lf/i/a/a/b0;ILf/i/a/a/j1/d$a;IZZ)Z

    move-result v3

    if-eqz v3, :cond_39

    add-int/lit8 v2, v2, 0x1

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3a
    if-le v2, v8, :cond_3b

    move v8, v2

    move-object v14, v4

    :cond_3b
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v17

    move/from16 v2, v19

    move/from16 v4, v28

    goto :goto_29

    :cond_3c
    move/from16 v19, v2

    move/from16 v17, v3

    move/from16 v28, v4

    const/4 v0, 0x1

    if-le v8, v0, :cond_3e

    .line 124
    invoke-static {v14}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-array v0, v8, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    :goto_2b
    iget v4, v5, Lf/i/a/a/h1/o0;->a:I

    if-ge v2, v4, :cond_3f

    .line 127
    iget-object v4, v5, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v32, v4, v2

    .line 128
    aget v33, v6, v2

    move-object/from16 v34, v14

    move/from16 v35, v7

    move/from16 v36, v9

    move/from16 v37, v11

    invoke-static/range {v32 .. v37}, Lf/i/a/a/j1/d;->g(Lf/i/a/a/b0;ILf/i/a/a/j1/d$a;IZZ)Z

    move-result v4

    if-eqz v4, :cond_3d

    add-int/lit8 v4, v3, 0x1

    .line 129
    aput v2, v0, v3

    move v3, v4

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 130
    :cond_3e
    sget-object v0, Lf/i/a/a/j1/d;->f:[I

    .line 131
    :cond_3f
    array-length v2, v0

    if-lez v2, :cond_41

    .line 132
    new-instance v2, Lf/i/a/a/j1/j$a;

    invoke-direct {v2, v5, v0}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    goto :goto_2c

    :cond_40
    move-object/from16 v30, v0

    move/from16 v19, v2

    move/from16 v17, v3

    move/from16 v28, v4

    move-object/from16 v16, v8

    :cond_41
    const/4 v2, 0x0

    :goto_2c
    if-nez v2, :cond_42

    .line 133
    new-instance v2, Lf/i/a/a/j1/j$a;

    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput v12, v3, v0

    invoke-direct {v2, v5, v3}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 134
    :cond_42
    invoke-static {v10}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_45

    if-eqz v1, :cond_43

    .line 135
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lf/i/a/a/j1/d$b;

    .line 136
    invoke-virtual {v2, v1}, Lf/i/a/a/j1/d$b;->a(Lf/i/a/a/j1/d$b;)I

    move-result v2

    if-lez v2, :cond_45

    :cond_43
    move/from16 v2, v19

    const/4 v1, -0x1

    if-eq v2, v1, :cond_44

    const/4 v1, 0x0

    .line 137
    aput-object v1, v31, v2

    .line 138
    :cond_44
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lf/i/a/a/j1/j$a;

    .line 139
    aput-object v1, v31, v17

    .line 140
    iget-object v2, v1, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    iget-object v1, v1, Lf/i/a/a/j1/j$a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 141
    iget-object v2, v2, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v1, v2, v1

    .line 142
    iget-object v1, v1, Lf/i/a/a/b0;->A:Ljava/lang/String;

    .line 143
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/j1/d$b;

    move-object v5, v1

    move/from16 v2, v17

    move-object v1, v0

    goto :goto_2f

    :cond_45
    move/from16 v2, v19

    goto :goto_2e

    :cond_46
    move-object/from16 v30, v0

    move/from16 v17, v3

    move/from16 v28, v4

    move-object/from16 v18, v5

    move-object/from16 v16, v8

    :goto_2e
    move-object/from16 v5, v18

    :goto_2f
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v8, v16

    move/from16 v4, v28

    move-object/from16 v0, v30

    move-object v10, v0

    goto/16 :goto_25

    :cond_47
    move-object/from16 v30, v0

    move/from16 v28, v4

    move-object/from16 v18, v5

    move-object/from16 v16, v8

    const/high16 v0, -0x80000000

    move/from16 v2, v28

    const/4 v1, 0x0

    const/4 v3, -0x1

    :goto_30
    if-ge v1, v2, :cond_62

    move-object/from16 v4, v30

    .line 144
    iget-object v5, v4, Lf/i/a/a/j1/f$a;->b:[I

    aget v5, v5, v1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_60

    const/4 v6, 0x2

    if-eq v5, v6, :cond_60

    const/4 v6, 0x3

    if-eq v5, v6, :cond_50

    .line 145
    iget-object v5, v4, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v5, v5, v1

    .line 146
    aget-object v6, v27, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 147
    :goto_31
    iget v11, v5, Lf/i/a/a/h1/p0;->a:I

    if-ge v8, v11, :cond_4e

    .line 148
    iget-object v11, v5, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v11, v11, v8

    .line 149
    aget-object v12, v6, v8

    move v13, v10

    move v10, v9

    move-object v9, v7

    const/4 v7, 0x0

    .line 150
    :goto_32
    iget v14, v11, Lf/i/a/a/h1/o0;->a:I

    if-ge v7, v14, :cond_4d

    .line 151
    aget v14, v12, v7

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    iget-boolean v5, v15, Lf/i/a/a/j1/d$c;->w:Z

    invoke-static {v14, v5}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 152
    iget-object v5, v11, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v5, v5, v7

    .line 153
    iget v5, v5, Lf/i/a/a/b0;->c:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    if-eqz v5, :cond_48

    const/4 v5, 0x1

    goto :goto_33

    :cond_48
    const/4 v5, 0x0

    :goto_33
    if-eqz v5, :cond_49

    const/4 v5, 0x2

    goto :goto_34

    :cond_49
    const/4 v5, 0x1

    .line 154
    :goto_34
    aget v14, v12, v7

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v14

    if-eqz v14, :cond_4a

    add-int/lit16 v5, v5, 0x3e8

    :cond_4a
    if-le v5, v10, :cond_4c

    move v10, v5

    move v13, v7

    move-object v9, v11

    goto :goto_35

    :cond_4b
    move-object/from16 v17, v6

    :cond_4c
    :goto_35
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v16, v15

    goto :goto_32

    :cond_4d
    move-object/from16 v17, v6

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    move v9, v10

    move v10, v13

    move-object/from16 v16, v15

    goto :goto_31

    :cond_4e
    move-object/from16 v15, v16

    if-nez v7, :cond_4f

    const/4 v5, 0x0

    goto :goto_36

    .line 155
    :cond_4f
    new-instance v5, Lf/i/a/a/j1/j$a;

    const/4 v6, 0x1

    new-array v8, v6, [I

    const/4 v6, 0x0

    aput v10, v8, v6

    invoke-direct {v5, v7, v8}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 156
    :goto_36
    aput-object v5, v31, v1

    goto/16 :goto_40

    :cond_50
    move-object/from16 v15, v16

    .line 157
    iget-object v5, v4, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v5, v5, v1

    .line 158
    aget-object v7, v27, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 159
    :goto_37
    iget v12, v5, Lf/i/a/a/h1/p0;->a:I

    if-ge v9, v12, :cond_5d

    .line 160
    iget-object v12, v5, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v12, v12, v9

    .line 161
    aget-object v13, v7, v9

    move v14, v11

    move v11, v10

    move-object v10, v8

    const/4 v8, 0x0

    .line 162
    :goto_38
    iget v6, v12, Lf/i/a/a/h1/o0;->a:I

    if-ge v8, v6, :cond_5c

    .line 163
    aget v6, v13, v8

    move-object/from16 v17, v5

    iget-boolean v5, v15, Lf/i/a/a/j1/d$c;->w:Z

    invoke-static {v6, v5}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 164
    iget-object v5, v12, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v5, v5, v8

    .line 165
    iget v6, v5, Lf/i/a/a/b0;->c:I

    move-object/from16 v19, v7

    iget v7, v15, Lf/i/a/a/j1/l;->d:I

    not-int v7, v7

    and-int/2addr v6, v7

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_51

    const/4 v7, 0x1

    goto :goto_39

    :cond_51
    const/4 v7, 0x0

    :goto_39
    and-int/lit8 v6, v6, 0x2

    move-object/from16 v20, v10

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    goto :goto_3a

    :cond_52
    const/4 v6, 0x0

    .line 166
    :goto_3a
    iget-object v10, v15, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    invoke-static {v5, v10}, Lf/i/a/a/j1/d;->d(Lf/i/a/a/b0;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v21, v12

    .line 167
    iget-object v12, v5, Lf/i/a/a/b0;->A:Ljava/lang/String;

    invoke-static {v12}, Lf/i/a/a/j1/d;->j(Ljava/lang/String;)Z

    move-result v12

    move/from16 v22, v14

    if-gtz v10, :cond_56

    .line 168
    iget-boolean v14, v15, Lf/i/a/a/j1/l;->c:Z

    if-eqz v14, :cond_53

    if-eqz v12, :cond_53

    goto :goto_3b

    :cond_53
    move-object/from16 v14, v18

    if-eqz v7, :cond_54

    const/4 v5, 0x2

    goto :goto_3d

    :cond_54
    if-eqz v6, :cond_5b

    .line 169
    invoke-static {v5, v14}, Lf/i/a/a/j1/d;->d(Lf/i/a/a/b0;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_55

    if-eqz v12, :cond_5b

    .line 170
    invoke-static {v14}, Lf/i/a/a/j1/d;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    :cond_55
    const/4 v5, 0x1

    goto :goto_3d

    :cond_56
    :goto_3b
    move-object/from16 v14, v18

    if-eqz v7, :cond_57

    const/16 v5, 0xb

    goto :goto_3c

    :cond_57
    if-nez v6, :cond_58

    const/4 v5, 0x7

    goto :goto_3c

    :cond_58
    const/4 v5, 0x3

    :goto_3c
    add-int/2addr v5, v10

    .line 171
    :goto_3d
    aget v6, v13, v8

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lf/i/a/a/j1/d;->f(IZ)Z

    move-result v6

    if-eqz v6, :cond_59

    add-int/lit16 v5, v5, 0x3e8

    :cond_59
    if-le v5, v11, :cond_5b

    move v11, v5

    move/from16 v22, v8

    move-object/from16 v10, v21

    goto :goto_3e

    :cond_5a
    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move/from16 v22, v14

    move-object/from16 v14, v18

    :cond_5b
    move-object/from16 v10, v20

    :goto_3e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v18, v14

    move-object/from16 v5, v17

    move-object/from16 v7, v19

    move-object/from16 v12, v21

    move/from16 v14, v22

    goto/16 :goto_38

    :cond_5c
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move/from16 v22, v14

    move-object/from16 v14, v18

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    move-object/from16 v8, v20

    move/from16 v11, v22

    const/4 v6, 0x3

    goto/16 :goto_37

    :cond_5d
    move-object/from16 v14, v18

    if-nez v8, :cond_5e

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3f

    .line 172
    :cond_5e
    new-instance v5, Lf/i/a/a/j1/j$a;

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput v11, v7, v6

    invoke-direct {v5, v8, v7}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[I)V

    .line 173
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 174
    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_3f
    if-eqz v5, :cond_61

    .line 175
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v0, :cond_61

    const/4 v7, -0x1

    if-eq v3, v7, :cond_5f

    const/4 v0, 0x0

    .line 176
    aput-object v0, v31, v3

    .line 177
    :cond_5f
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lf/i/a/a/j1/j$a;

    aput-object v0, v31, v1

    .line 178
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v1

    goto :goto_41

    :cond_60
    move-object/from16 v15, v16

    :goto_40
    move-object/from16 v14, v18

    const/4 v6, 0x0

    :cond_61
    :goto_41
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v30, v4

    move-object/from16 v18, v14

    move-object/from16 v16, v15

    goto/16 :goto_30

    :cond_62
    move-object/from16 v15, v16

    move-object/from16 v4, v30

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_42
    if-ge v1, v2, :cond_67

    .line 179
    invoke-virtual {v15, v1}, Lf/i/a/a/j1/d$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    .line 180
    aput-object v0, v31, v1

    goto :goto_45

    :cond_63
    const/4 v0, 0x0

    .line 181
    iget-object v3, v4, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v3, v3, v1

    .line 182
    iget-object v5, v15, Lf/i/a/a/j1/d$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_64

    .line 183
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    goto :goto_43

    :cond_64
    const/4 v5, 0x0

    :goto_43
    if-eqz v5, :cond_66

    .line 184
    invoke-virtual {v15, v1, v3}, Lf/i/a/a/j1/d$c;->b(ILf/i/a/a/h1/p0;)Lf/i/a/a/j1/d$e;

    move-result-object v5

    if-nez v5, :cond_65

    move-object v7, v0

    goto :goto_44

    .line 185
    :cond_65
    new-instance v7, Lf/i/a/a/j1/j$a;

    iget v8, v5, Lf/i/a/a/j1/d$e;->a:I

    .line 186
    iget-object v3, v3, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v3, v3, v8

    .line 187
    iget-object v8, v5, Lf/i/a/a/j1/d$e;->b:[I

    iget v9, v5, Lf/i/a/a/j1/d$e;->d:I

    iget v5, v5, Lf/i/a/a/j1/d$e;->e:I

    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v3, v8, v9, v5}, Lf/i/a/a/j1/j$a;-><init>(Lf/i/a/a/h1/o0;[IILjava/lang/Object;)V

    :goto_44
    aput-object v7, v31, v1

    :cond_66
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_67
    move-object/from16 v1, v25

    const/4 v0, 0x0

    .line 189
    iget-object v3, v1, Lf/i/a/a/j1/d;->d:Lf/i/a/a/j1/j$b;

    .line 190
    iget-object v1, v1, Lf/i/a/a/j1/m;->b:Lf/i/a/a/l1/g;

    invoke-static {v1}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v31

    .line 191
    invoke-interface {v3, v5, v1}, Lf/i/a/a/j1/j$b;->a([Lf/i/a/a/j1/j$a;Lf/i/a/a/l1/g;)[Lf/i/a/a/j1/j;

    move-result-object v1

    .line 192
    new-array v3, v2, [Lf/i/a/a/q0;

    const/4 v5, 0x0

    :goto_46
    if-ge v5, v2, :cond_6b

    .line 193
    invoke-virtual {v15, v5}, Lf/i/a/a/j1/d$c;->a(I)Z

    move-result v7

    if-nez v7, :cond_69

    .line 194
    iget-object v7, v4, Lf/i/a/a/j1/f$a;->b:[I

    aget v7, v7, v5

    const/4 v8, 0x6

    if-eq v7, v8, :cond_68

    .line 195
    aget-object v7, v1, v5

    if-eqz v7, :cond_69

    :cond_68
    const/4 v7, 0x1

    goto :goto_47

    :cond_69
    const/4 v7, 0x0

    :goto_47
    if-eqz v7, :cond_6a

    .line 196
    sget-object v7, Lf/i/a/a/q0;->b:Lf/i/a/a/q0;

    goto :goto_48

    :cond_6a
    move-object v7, v0

    :goto_48
    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 197
    :cond_6b
    iget v0, v15, Lf/i/a/a/j1/d$c;->x:I

    if-nez v0, :cond_6c

    goto/16 :goto_50

    :cond_6c
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    .line 198
    :goto_49
    iget v8, v4, Lf/i/a/a/j1/f$a;->a:I

    if-ge v2, v8, :cond_74

    .line 199
    iget-object v8, v4, Lf/i/a/a/j1/f$a;->b:[I

    aget v8, v8, v2

    .line 200
    aget-object v9, v1, v2

    const/4 v10, 0x1

    if-eq v8, v10, :cond_6e

    const/4 v10, 0x2

    if-ne v8, v10, :cond_6d

    goto :goto_4a

    :cond_6d
    const/4 v8, -0x1

    const/4 v9, 0x1

    goto :goto_4e

    :cond_6e
    const/4 v10, 0x2

    :goto_4a
    if-eqz v9, :cond_6d

    .line 201
    aget-object v11, v27, v2

    .line 202
    iget-object v12, v4, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v12, v12, v2

    .line 203
    invoke-interface {v9}, Lf/i/a/a/j1/j;->j()Lf/i/a/a/h1/o0;

    move-result-object v13

    invoke-virtual {v12, v13}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v12

    const/4 v13, 0x0

    .line 204
    :goto_4b
    invoke-interface {v9}, Lf/i/a/a/j1/j;->length()I

    move-result v14

    if-ge v13, v14, :cond_70

    .line 205
    aget-object v14, v11, v12

    invoke-interface {v9, v13}, Lf/i/a/a/j1/j;->e(I)I

    move-result v15

    aget v14, v14, v15

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_6f

    const/4 v9, 0x0

    goto :goto_4c

    :cond_6f
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    :cond_70
    const/4 v9, 0x1

    :goto_4c
    if-eqz v9, :cond_6d

    const/4 v9, 0x1

    if-ne v8, v9, :cond_72

    const/4 v8, -0x1

    if-eq v7, v8, :cond_71

    goto :goto_4d

    :cond_71
    move v7, v2

    goto :goto_4e

    :cond_72
    const/4 v8, -0x1

    if-eq v5, v8, :cond_73

    :goto_4d
    const/4 v2, 0x0

    goto :goto_4f

    :cond_73
    move v5, v2

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_74
    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x1

    :goto_4f
    if-eq v7, v8, :cond_75

    if-eq v5, v8, :cond_75

    const/4 v6, 0x1

    :cond_75
    and-int/2addr v2, v6

    if-eqz v2, :cond_76

    .line 206
    new-instance v2, Lf/i/a/a/q0;

    invoke-direct {v2, v0}, Lf/i/a/a/q0;-><init>(I)V

    .line 207
    aput-object v2, v3, v7

    .line 208
    aput-object v2, v3, v5

    .line 209
    :cond_76
    :goto_50
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 210
    new-instance v1, Lf/i/a/a/j1/n;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lf/i/a/a/q0;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lf/i/a/a/j1/j;

    invoke-direct {v1, v2, v0, v4}, Lf/i/a/a/j1/n;-><init>([Lf/i/a/a/q0;[Lf/i/a/a/j1/j;Ljava/lang/Object;)V

    return-object v1
.end method
