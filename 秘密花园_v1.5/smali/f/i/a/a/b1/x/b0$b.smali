.class public Lf/i/a/a/b1/x/b0$b;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/x/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/x/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/t;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/x/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Lf/i/a/a/b1/x/b0;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/b0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lf/i/a/a/m1/t;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0$b;->b:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    .line 5
    iput p2, p0, Lf/i/a/a/b1/x/b0$b;->d:I

    return-void
.end method


# virtual methods
.method public b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 3
    iget v4, v2, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    if-eq v4, v3, :cond_2

    .line 4
    iget v4, v2, Lf/i/a/a/b1/x/b0;->l:I

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v4, Lf/i/a/a/m1/e0;

    .line 6
    iget-object v2, v2, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    .line 7
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/m1/e0;

    .line 8
    iget-wide v7, v2, Lf/i/a/a/m1/e0;->a:J

    .line 9
    invoke-direct {v4, v7, v8}, Lf/i/a/a/m1/e0;-><init>(J)V

    .line 10
    iget-object v2, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 11
    iget-object v2, v2, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iget-object v2, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 14
    iget-object v2, v2, Lf/i/a/a/b1/x/b0;->b:Ljava/util/List;

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lf/i/a/a/m1/e0;

    .line 16
    :goto_1
    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->B(I)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->u()I

    move-result v2

    const/4 v7, 0x3

    .line 18
    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->B(I)V

    .line 19
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v8, v3}, Lf/i/a/a/m1/u;->b(Lf/i/a/a/m1/t;I)V

    .line 20
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v7}, Lf/i/a/a/m1/t;->l(I)V

    .line 21
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    iget-object v9, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v9

    .line 22
    iput v9, v8, Lf/i/a/a/b1/x/b0;->r:I

    .line 23
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v1, v8, v3}, Lf/i/a/a/m1/u;->b(Lf/i/a/a/m1/t;I)V

    .line 24
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 25
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    .line 26
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->B(I)V

    .line 27
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 28
    iget v12, v8, Lf/i/a/a/b1/x/b0;->a:I

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/16 v15, 0x2000

    if-ne v12, v3, :cond_3

    .line 29
    iget-object v8, v8, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    if-nez v8, :cond_3

    .line 30
    new-instance v8, Lf/i/a/a/b1/x/c0$b;

    sget-object v12, Lf/i/a/a/m1/h0;->f:[B

    invoke-direct {v8, v13, v14, v14, v12}, Lf/i/a/a/b1/x/c0$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 31
    iget-object v12, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 32
    iget-object v14, v12, Lf/i/a/a/b1/x/b0;->e:Lf/i/a/a/b1/x/c0$c;

    .line 33
    invoke-interface {v14, v13, v8}, Lf/i/a/a/b1/x/c0$c;->b(ILf/i/a/a/b1/x/c0$b;)Lf/i/a/a/b1/x/c0;

    move-result-object v8

    .line 34
    iput-object v8, v12, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    .line 35
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 36
    iget-object v12, v8, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    .line 37
    iget-object v8, v8, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    .line 38
    new-instance v14, Lf/i/a/a/b1/x/c0$d;

    invoke-direct {v14, v2, v13, v15}, Lf/i/a/a/b1/x/c0$d;-><init>(III)V

    invoke-interface {v12, v4, v8, v14}, Lf/i/a/a/b1/x/c0;->b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    .line 39
    :cond_3
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 40
    iget-object v8, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 41
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v8

    :goto_2
    if-lez v8, :cond_17

    .line 42
    iget-object v14, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    const/4 v12, 0x5

    invoke-virtual {v1, v14, v12}, Lf/i/a/a/m1/u;->b(Lf/i/a/a/m1/t;I)V

    .line 43
    iget-object v14, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    const/16 v6, 0x8

    invoke-virtual {v14, v6}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    .line 44
    iget-object v14, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v14, v7}, Lf/i/a/a/m1/t;->l(I)V

    .line 45
    iget-object v14, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v14, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v14

    .line 46
    iget-object v10, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v10, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 47
    iget-object v10, v0, Lf/i/a/a/b1/x/b0$b;->a:Lf/i/a/a/m1/t;

    invoke-virtual {v10, v11}, Lf/i/a/a/m1/t;->f(I)I

    move-result v10

    .line 48
    iget v11, v1, Lf/i/a/a/m1/u;->b:I

    add-int v15, v10, v11

    const/4 v3, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 49
    :goto_3
    iget v5, v1, Lf/i/a/a/m1/u;->b:I

    if-ge v5, v15, :cond_f

    .line 50
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    .line 51
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v16

    .line 52
    iget v9, v1, Lf/i/a/a/m1/u;->b:I

    add-int v9, v9, v16

    const/16 v7, 0x59

    if-ne v5, v12, :cond_7

    .line 53
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v19

    .line 54
    sget-wide v21, Lf/i/a/a/b1/x/b0;->s:J

    cmp-long v5, v19, v21

    if-nez v5, :cond_4

    goto :goto_4

    .line 55
    :cond_4
    sget-wide v21, Lf/i/a/a/b1/x/b0;->t:J

    cmp-long v5, v19, v21

    if-nez v5, :cond_5

    goto :goto_5

    .line 56
    :cond_5
    sget-wide v21, Lf/i/a/a/b1/x/b0;->u:J

    cmp-long v5, v19, v21

    if-nez v5, :cond_6

    goto :goto_6

    .line 57
    :cond_6
    sget-wide v21, Lf/i/a/a/b1/x/b0;->v:J

    cmp-long v5, v19, v21

    if-nez v5, :cond_a

    const/16 v3, 0x24

    goto :goto_7

    :cond_7
    const/16 v12, 0x6a

    if-ne v5, v12, :cond_8

    :goto_4
    const/16 v3, 0x81

    goto :goto_7

    :cond_8
    const/16 v12, 0x7a

    if-ne v5, v12, :cond_9

    :goto_5
    const/16 v3, 0x87

    goto :goto_7

    :cond_9
    const/16 v12, 0x7f

    if-ne v5, v12, :cond_b

    .line 58
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v5

    if-ne v5, v13, :cond_a

    :goto_6
    const/16 v3, 0xac

    :cond_a
    :goto_7
    move/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    goto :goto_9

    :cond_b
    const/16 v12, 0x7b

    if-ne v5, v12, :cond_c

    const/16 v3, 0x8a

    goto :goto_7

    :cond_c
    const/16 v12, 0xa

    if-ne v5, v12, :cond_d

    const/4 v12, 0x3

    .line 59
    invoke-virtual {v1, v12}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_d
    const/4 v12, 0x3

    if-ne v5, v7, :cond_a

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :goto_8
    iget v5, v1, Lf/i/a/a/m1/u;->b:I

    if-ge v5, v9, :cond_e

    .line 62
    invoke-virtual {v1, v12}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v7

    const/4 v12, 0x4

    new-array v13, v12, [B

    move-object/from16 v20, v4

    .line 64
    iget-object v4, v1, Lf/i/a/a/m1/u;->a:[B

    move/from16 v21, v2

    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-static {v4, v2, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v2, v12

    iput v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 66
    new-instance v2, Lf/i/a/a/b1/x/c0$a;

    invoke-direct {v2, v5, v7, v13}, Lf/i/a/a/b1/x/c0$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v20

    move/from16 v2, v21

    move/from16 v14, v22

    const/16 v7, 0x59

    const/4 v12, 0x3

    const/16 v13, 0x15

    goto :goto_8

    :cond_e
    move/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    move-object/from16 v18, v3

    const/16 v3, 0x59

    .line 67
    :goto_9
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    sub-int/2addr v9, v2

    .line 68
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->B(I)V

    move-object/from16 v4, v20

    move/from16 v2, v21

    move/from16 v14, v22

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/4 v12, 0x5

    const/16 v13, 0x15

    goto/16 :goto_3

    :cond_f
    move/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    .line 69
    invoke-virtual {v1, v15}, Lf/i/a/a/m1/u;->A(I)V

    .line 70
    new-instance v2, Lf/i/a/a/b1/x/c0$b;

    iget-object v4, v1, Lf/i/a/a/m1/u;->a:[B

    .line 71
    invoke-static {v4, v11, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    invoke-direct {v2, v3, v5, v7, v4}, Lf/i/a/a/b1/x/c0$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    const/4 v3, 0x6

    if-ne v6, v3, :cond_10

    .line 72
    iget v6, v2, Lf/i/a/a/b1/x/c0$b;->a:I

    :cond_10
    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v8, v10

    .line 73
    iget-object v3, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 74
    iget v3, v3, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    move v3, v6

    goto :goto_a

    :cond_11
    move/from16 v3, v22

    .line 75
    :goto_a
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 76
    iget-object v5, v5, Lf/i/a/a/b1/x/b0;->g:Landroid/util/SparseBooleanArray;

    .line 77
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v4, 0x15

    goto :goto_d

    .line 78
    :cond_12
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 79
    iget v7, v5, Lf/i/a/a/b1/x/b0;->a:I

    if-ne v7, v4, :cond_13

    const/16 v4, 0x15

    if-ne v6, v4, :cond_14

    .line 80
    iget-object v2, v5, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    goto :goto_b

    :cond_13
    const/16 v4, 0x15

    .line 81
    :cond_14
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 82
    iget-object v5, v5, Lf/i/a/a/b1/x/b0;->e:Lf/i/a/a/b1/x/c0$c;

    .line 83
    invoke-interface {v5, v6, v2}, Lf/i/a/a/b1/x/c0$c;->b(ILf/i/a/a/b1/x/c0$b;)Lf/i/a/a/b1/x/c0;

    move-result-object v2

    .line 84
    :goto_b
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 85
    iget v5, v5, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 86
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    const/16 v6, 0x2000

    .line 87
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move/from16 v6, v22

    if-ge v6, v5, :cond_16

    goto :goto_c

    :cond_15
    move/from16 v6, v22

    .line 88
    :goto_c
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    :goto_d
    move-object/from16 v4, v20

    move/from16 v2, v21

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v13, 0x15

    const/16 v15, 0x2000

    goto/16 :goto_2

    :cond_17
    move/from16 v21, v2

    move-object/from16 v20, v4

    .line 90
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v1, :cond_1a

    .line 91
    iget-object v2, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 92
    iget-object v3, v0, Lf/i/a/a/b1/x/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 93
    iget-object v4, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 94
    iget-object v4, v4, Lf/i/a/a/b1/x/b0;->g:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    .line 95
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 96
    iget-object v4, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 97
    iget-object v4, v4, Lf/i/a/a/b1/x/b0;->h:Landroid/util/SparseBooleanArray;

    .line 98
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 99
    iget-object v4, v0, Lf/i/a/a/b1/x/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/x/c0;

    if-eqz v4, :cond_19

    .line 100
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 101
    iget-object v6, v5, Lf/i/a/a/b1/x/b0;->p:Lf/i/a/a/b1/x/c0;

    if-eq v4, v6, :cond_18

    .line 102
    iget-object v5, v5, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    .line 103
    new-instance v6, Lf/i/a/a/b1/x/c0$d;

    move/from16 v7, v21

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v2, v8}, Lf/i/a/a/b1/x/c0$d;-><init>(III)V

    move-object/from16 v2, v20

    invoke-interface {v4, v2, v5, v6}, Lf/i/a/a/b1/x/c0;->b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    goto :goto_f

    :cond_18
    move-object/from16 v2, v20

    move/from16 v7, v21

    const/16 v8, 0x2000

    .line 104
    :goto_f
    iget-object v5, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 105
    iget-object v5, v5, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    :cond_19
    move-object/from16 v2, v20

    move/from16 v7, v21

    const/16 v8, 0x2000

    :goto_10
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v2

    move/from16 v21, v7

    goto :goto_e

    .line 107
    :cond_1a
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 108
    iget v2, v1, Lf/i/a/a/b1/x/b0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 109
    iget-boolean v2, v1, Lf/i/a/a/b1/x/b0;->m:Z

    if-nez v2, :cond_1d

    .line 110
    iget-object v1, v1, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    .line 111
    invoke-interface {v1}, Lf/i/a/a/b1/h;->d()V

    .line 112
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    const/4 v2, 0x0

    .line 113
    iput v2, v1, Lf/i/a/a/b1/x/b0;->l:I

    const/4 v3, 0x1

    .line 114
    iput-boolean v3, v1, Lf/i/a/a/b1/x/b0;->m:Z

    goto :goto_12

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 115
    iget-object v1, v1, Lf/i/a/a/b1/x/b0;->f:Landroid/util/SparseArray;

    .line 116
    iget v4, v0, Lf/i/a/a/b1/x/b0$b;->d:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 118
    iget v4, v1, Lf/i/a/a/b1/x/b0;->a:I

    if-ne v4, v3, :cond_1c

    const/4 v5, 0x0

    goto :goto_11

    .line 119
    :cond_1c
    iget v2, v1, Lf/i/a/a/b1/x/b0;->l:I

    const/4 v3, -0x1

    add-int/lit8 v5, v2, -0x1

    .line 120
    :goto_11
    iput v5, v1, Lf/i/a/a/b1/x/b0;->l:I

    .line 121
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    .line 122
    iget v2, v1, Lf/i/a/a/b1/x/b0;->l:I

    if-nez v2, :cond_1d

    .line 123
    iget-object v1, v1, Lf/i/a/a/b1/x/b0;->k:Lf/i/a/a/b1/h;

    .line 124
    invoke-interface {v1}, Lf/i/a/a/b1/h;->d()V

    .line 125
    iget-object v1, v0, Lf/i/a/a/b1/x/b0$b;->e:Lf/i/a/a/b1/x/b0;

    const/4 v2, 0x1

    .line 126
    iput-boolean v2, v1, Lf/i/a/a/b1/x/b0;->m:Z

    :cond_1d
    :goto_12
    return-void
.end method
