.class public final Lf/i/a/a/d1/j/c;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lf/i/a/a/d1/b;


# instance fields
.field public final a:Lf/i/a/a/m1/u;

.field public final b:Lf/i/a/a/m1/t;

.field public c:Lf/i/a/a/m1/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    .line 3
    new-instance v0, Lf/i/a/a/m1/t;

    invoke-direct {v0}, Lf/i/a/a/m1/t;-><init>()V

    iput-object v0, p0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/d1/j/c;->c:Lf/i/a/a/m1/e0;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Lf/i/a/a/d1/d;->f:J

    .line 2
    invoke-virtual {v2}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    new-instance v2, Lf/i/a/a/m1/e0;

    iget-wide v3, v1, Lf/i/a/a/y0/e;->d:J

    invoke-direct {v2, v3, v4}, Lf/i/a/a/m1/e0;-><init>(J)V

    iput-object v2, v0, Lf/i/a/a/d1/j/c;->c:Lf/i/a/a/m1/e0;

    .line 4
    iget-wide v3, v1, Lf/i/a/a/y0/e;->d:J

    iget-wide v5, v1, Lf/i/a/a/d1/d;->f:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lf/i/a/a/m1/e0;->a(J)J

    .line 5
    :cond_1
    iget-object v1, v1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 8
    iget-object v3, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v3, v2, v1}, Lf/i/a/a/m1/u;->y([BI)V

    .line 9
    iget-object v3, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v3, v2, v1}, Lf/i/a/a/m1/t;->i([BI)V

    .line 10
    iget-object v1, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/t;->l(I)V

    .line 11
    iget-object v1, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    .line 12
    iget-object v5, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v5, v1}, Lf/i/a/a/m1/t;->f(I)I

    move-result v5

    int-to-long v5, v5

    or-long v11, v3, v5

    .line 13
    iget-object v3, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 14
    iget-object v3, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v3

    .line 15
    iget-object v4, v0, Lf/i/a/a/d1/j/c;->b:Lf/i/a/a/m1/t;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lf/i/a/a/m1/t;->f(I)I

    move-result v4

    .line 16
    iget-object v5, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/u;->B(I)V

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    const/16 v7, 0xff

    if-eq v4, v7, :cond_1c

    const/4 v3, 0x4

    const-wide/16 v7, 0x80

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    if-eq v4, v3, :cond_10

    const/4 v3, 0x5

    if-eq v4, v3, :cond_3

    const/4 v1, 0x6

    if-eq v4, v1, :cond_2

    goto/16 :goto_16

    .line 17
    :cond_2
    iget-object v1, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    iget-object v3, v0, Lf/i/a/a/d1/j/c;->c:Lf/i/a/a/m1/e0;

    .line 18
    invoke-static {v1, v11, v12}, Lf/i/a/a/d1/j/g;->a(Lf/i/a/a/m1/u;J)J

    move-result-wide v4

    .line 19
    invoke-virtual {v3, v4, v5}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v7

    .line 20
    new-instance v1, Lf/i/a/a/d1/j/g;

    invoke-direct {v1, v4, v5, v7, v8}, Lf/i/a/a/d1/j/g;-><init>(JJ)V

    move-object v5, v1

    goto/16 :goto_16

    .line 21
    :cond_3
    iget-object v3, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    iget-object v4, v0, Lf/i/a/a/d1/j/c;->c:Lf/i/a/a/m1/e0;

    .line 22
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v22

    .line 23
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    const/16 v24, 0x1

    goto :goto_0

    :cond_4
    const/16 v24, 0x0

    .line 24
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    if-nez v24, :cond_f

    .line 25
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v21, v9, 0x40

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    goto :goto_2

    :cond_6
    const/16 v21, 0x0

    :goto_2
    and-int/lit8 v27, v9, 0x20

    if-eqz v27, :cond_7

    const/16 v27, 0x1

    goto :goto_3

    :cond_7
    const/16 v27, 0x0

    :goto_3
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    if-eqz v21, :cond_9

    if-nez v9, :cond_9

    .line 26
    invoke-static {v3, v11, v12}, Lf/i/a/a/d1/j/g;->a(Lf/i/a/a/m1/u;J)J

    move-result-wide v28

    goto :goto_5

    :cond_9
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v21, :cond_c

    .line 27
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_b

    .line 29
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v31

    if-nez v9, :cond_a

    .line 30
    invoke-static {v3, v11, v12}, Lf/i/a/a/d1/j/g;->a(Lf/i/a/a/m1/u;J)J

    move-result-wide v32

    move-wide/from16 v13, v32

    goto :goto_7

    :cond_a
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    :goto_7
    new-instance v15, Lf/i/a/a/d1/j/d$b;

    .line 32
    invoke-virtual {v4, v13, v14}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v34

    const/16 v36, 0x0

    move-object/from16 v30, v15

    move-wide/from16 v32, v13

    invoke-direct/range {v30 .. v36}, Lf/i/a/a/d1/j/d$b;-><init>(IJJLf/i/a/a/d1/j/d$a;)V

    .line 33
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    move-object v5, v2

    :cond_c
    if-eqz v27, :cond_e

    .line 34
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    int-to-long v11, v2

    and-long v6, v11, v7

    cmp-long v2, v6, v17

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    and-long v6, v11, v19

    shl-long/2addr v6, v1

    .line 35
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v11

    or-long/2addr v6, v11

    const-wide/16 v11, 0x3e8

    mul-long v6, v6, v11

    const-wide/16 v11, 0x5a

    .line 36
    div-long/2addr v6, v11

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    :goto_9
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->u()I

    move-result v1

    .line 38
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v8

    .line 39
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->p()I

    move-result v3

    move/from16 v36, v1

    move/from16 v33, v2

    move/from16 v38, v3

    move-object/from16 v32, v5

    move-wide/from16 v34, v6

    move/from16 v37, v8

    move/from16 v27, v9

    move/from16 v25, v10

    move/from16 v26, v21

    move-wide/from16 v1, v28

    goto :goto_a

    :cond_f
    move-object/from16 v32, v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 40
    :goto_a
    new-instance v5, Lf/i/a/a/d1/j/d;

    move-object/from16 v21, v5

    .line 41
    invoke-virtual {v4, v1, v2}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v30

    move-wide/from16 v28, v1

    invoke-direct/range {v21 .. v38}, Lf/i/a/a/d1/j/d;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    goto/16 :goto_16

    .line 42
    :cond_10
    iget-object v2, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    .line 43
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v3

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_1b

    .line 45
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v40

    .line 46
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_11

    const/16 v42, 0x1

    goto :goto_c

    :cond_11
    const/16 v42, 0x0

    .line 47
    :goto_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v42, :cond_1a

    .line 48
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v10

    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    :goto_d
    and-int/lit8 v12, v10, 0x40

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    :goto_e
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    goto :goto_f

    :cond_14
    const/4 v10, 0x0

    :goto_f
    if-eqz v12, :cond_15

    .line 49
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v13

    goto :goto_10

    :cond_15
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_10
    if-nez v12, :cond_17

    .line 50
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    .line 51
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v9, :cond_16

    .line 52
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v7

    move/from16 v23, v9

    .line 53
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v8

    move/from16 v24, v3

    .line 54
    new-instance v3, Lf/i/a/a/d1/j/f$b;

    invoke-direct {v3, v7, v8, v9, v5}, Lf/i/a/a/d1/j/f$b;-><init>(IJLf/i/a/a/d1/j/f$a;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v23

    move/from16 v3, v24

    const-wide/16 v7, 0x80

    goto :goto_11

    :cond_16
    move/from16 v24, v3

    move-object v9, v15

    goto :goto_12

    :cond_17
    move/from16 v24, v3

    :goto_12
    if-eqz v10, :cond_19

    .line 55
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v21, 0x80

    and-long v27, v7, v21

    cmp-long v1, v27, v17

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_13

    :cond_18
    const/4 v1, 0x0

    :goto_13
    and-long v7, v7, v19

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    .line 56
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v15

    or-long/2addr v7, v15

    const-wide/16 v15, 0x3e8

    mul-long v7, v7, v15

    const-wide/16 v27, 0x5a

    .line 57
    div-long v7, v7, v27

    goto :goto_14

    :cond_19
    const/16 v3, 0x20

    const-wide/16 v15, 0x3e8

    const-wide/16 v21, 0x80

    const-wide/16 v27, 0x5a

    const/4 v1, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    :goto_14
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v10

    .line 59
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v23

    .line 60
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v29

    move/from16 v48, v1

    move-wide/from16 v49, v7

    move-object/from16 v45, v9

    move/from16 v51, v10

    move/from16 v43, v11

    move/from16 v44, v12

    move-wide/from16 v46, v13

    move/from16 v52, v23

    move/from16 v53, v29

    goto :goto_15

    :cond_1a
    move/from16 v24, v3

    move-wide/from16 v21, v7

    const/16 v3, 0x20

    const-wide/16 v15, 0x3e8

    const-wide/16 v27, 0x5a

    move-object/from16 v45, v9

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v48, 0x0

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    .line 61
    :goto_15
    new-instance v1, Lf/i/a/a/d1/j/f$c;

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v53}, Lf/i/a/a/d1/j/f$c;-><init>(JZZZLjava/util/List;JZJIII)V

    .line 62
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v7, v21

    move/from16 v3, v24

    const/16 v1, 0x20

    goto/16 :goto_b

    .line 63
    :cond_1b
    new-instance v5, Lf/i/a/a/d1/j/f;

    invoke-direct {v5, v4}, Lf/i/a/a/d1/j/f;-><init>(Ljava/util/List;)V

    goto :goto_16

    .line 64
    :cond_1c
    iget-object v1, v0, Lf/i/a/a/d1/j/c;->a:Lf/i/a/a/m1/u;

    .line 65
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v8

    add-int/lit8 v3, v3, -0x4

    .line 66
    new-array v10, v3, [B

    .line 67
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    iget v4, v1, Lf/i/a/a/m1/u;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v4, v10, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 69
    new-instance v5, Lf/i/a/a/d1/j/a;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lf/i/a/a/d1/j/a;-><init>(J[BJ)V

    goto :goto_16

    .line 70
    :cond_1d
    new-instance v5, Lf/i/a/a/d1/j/e;

    invoke-direct {v5}, Lf/i/a/a/d1/j/e;-><init>()V

    :goto_16
    if-nez v5, :cond_1e

    .line 71
    new-instance v1, Lf/i/a/a/d1/a;

    const/4 v2, 0x0

    new-array v2, v2, [Lf/i/a/a/d1/a$b;

    invoke-direct {v1, v2}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    goto :goto_17

    :cond_1e
    const/4 v2, 0x0

    new-instance v1, Lf/i/a/a/d1/a;

    const/4 v3, 0x1

    new-array v3, v3, [Lf/i/a/a/d1/a$b;

    aput-object v5, v3, v2

    invoke-direct {v1, v3}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    :goto_17
    return-object v1
.end method
