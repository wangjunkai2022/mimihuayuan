.class public final Lf/i/a/a/b1/x/l;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lf/i/a/a/b1/x/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/x/l$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/x/x;

.field public final b:Z

.field public final c:Z

.field public final d:Lf/i/a/a/b1/x/q;

.field public final e:Lf/i/a/a/b1/x/q;

.field public final f:Lf/i/a/a/b1/x/q;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lf/i/a/a/b1/p;

.field public k:Lf/i/a/a/b1/x/l$b;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lf/i/a/a/m1/u;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/x;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/x/l;->a:Lf/i/a/a/b1/x/x;

    .line 3
    iput-boolean p2, p0, Lf/i/a/a/b1/x/l;->b:Z

    .line 4
    iput-boolean p3, p0, Lf/i/a/a/b1/x/l;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lf/i/a/a/b1/x/l;->h:[Z

    .line 6
    new-instance p1, Lf/i/a/a/b1/x/q;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lf/i/a/a/b1/x/q;-><init>(II)V

    iput-object p1, p0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    .line 7
    new-instance p1, Lf/i/a/a/b1/x/q;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lf/i/a/a/b1/x/q;-><init>(II)V

    iput-object p1, p0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    .line 8
    new-instance p1, Lf/i/a/a/b1/x/q;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lf/i/a/a/b1/x/q;-><init>(II)V

    iput-object p1, p0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    .line 9
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/l;->o:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->h:[Z

    invoke-static {v0}, Lf/i/a/a/m1/s;->a([Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    invoke-virtual {v0}, Lf/i/a/a/b1/x/q;->c()V

    .line 3
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v0}, Lf/i/a/a/b1/x/q;->c()V

    .line 4
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    invoke-virtual {v0}, Lf/i/a/a/b1/x/q;->c()V

    .line 5
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b;->k:Z

    .line 7
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b;->o:Z

    .line 8
    iget-object v0, v0, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    .line 9
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b$a;->b:Z

    .line 10
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b$a;->a:Z

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lf/i/a/a/b1/x/l;->g:J

    .line 12
    iput-boolean v1, p0, Lf/i/a/a/b1/x/l;->n:Z

    return-void
.end method

.method public final b([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lf/i/a/a/b1/x/l;->l:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 2
    iget-boolean v4, v4, Lf/i/a/a/b1/x/l$b;->c:Z

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v4, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    invoke-virtual {v4, v1, v2, v3}, Lf/i/a/a/b1/x/q;->a([BII)V

    .line 4
    iget-object v4, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v4, v1, v2, v3}, Lf/i/a/a/b1/x/q;->a([BII)V

    .line 5
    :cond_1
    iget-object v4, v0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    invoke-virtual {v4, v1, v2, v3}, Lf/i/a/a/b1/x/q;->a([BII)V

    .line 6
    iget-object v4, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 7
    iget-boolean v5, v4, Lf/i/a/a/b1/x/l$b;->k:Z

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    sub-int/2addr v3, v2

    .line 8
    iget-object v5, v4, Lf/i/a/a/b1/x/l$b;->g:[B

    array-length v6, v5

    iget v7, v4, Lf/i/a/a/b1/x/l$b;->h:I

    add-int/2addr v7, v3

    const/4 v8, 0x2

    if-ge v6, v7, :cond_3

    mul-int/lit8 v7, v7, 0x2

    .line 9
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lf/i/a/a/b1/x/l$b;->g:[B

    .line 10
    :cond_3
    iget-object v5, v4, Lf/i/a/a/b1/x/l$b;->g:[B

    iget v6, v4, Lf/i/a/a/b1/x/l$b;->h:I

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v1, v4, Lf/i/a/a/b1/x/l$b;->h:I

    add-int/2addr v1, v3

    iput v1, v4, Lf/i/a/a/b1/x/l$b;->h:I

    .line 12
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    iget-object v3, v4, Lf/i/a/a/b1/x/l$b;->g:[B

    .line 13
    iput-object v3, v2, Lf/i/a/a/m1/v;->a:[B

    const/4 v3, 0x0

    .line 14
    iput v3, v2, Lf/i/a/a/m1/v;->c:I

    .line 15
    iput v1, v2, Lf/i/a/a/m1/v;->b:I

    .line 16
    iput v3, v2, Lf/i/a/a/m1/v;->d:I

    .line 17
    invoke-virtual {v2}, Lf/i/a/a/m1/v;->a()V

    .line 18
    iget-object v1, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 19
    :cond_4
    iget-object v1, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v1}, Lf/i/a/a/m1/v;->i()V

    .line 20
    iget-object v1, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v1, v8}, Lf/i/a/a/m1/v;->e(I)I

    move-result v1

    .line 21
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lf/i/a/a/m1/v;->j(I)V

    .line 22
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v2}, Lf/i/a/a/m1/v;->c()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_5

    .line 23
    :cond_5
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    .line 24
    invoke-virtual {v2}, Lf/i/a/a/m1/v;->f()I

    .line 25
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v2}, Lf/i/a/a/m1/v;->c()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 26
    :cond_6
    iget-object v2, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    .line 27
    invoke-virtual {v2}, Lf/i/a/a/m1/v;->f()I

    move-result v2

    .line 28
    iget-boolean v6, v4, Lf/i/a/a/b1/x/l$b;->c:Z

    const/4 v7, 0x1

    if-nez v6, :cond_7

    .line 29
    iput-boolean v3, v4, Lf/i/a/a/b1/x/l$b;->k:Z

    .line 30
    iget-object v1, v4, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    .line 31
    iput v2, v1, Lf/i/a/a/b1/x/l$b$a;->e:I

    .line 32
    iput-boolean v7, v1, Lf/i/a/a/b1/x/l$b$a;->b:Z

    goto/16 :goto_5

    .line 33
    :cond_7
    iget-object v6, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v6}, Lf/i/a/a/m1/v;->c()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_5

    .line 34
    :cond_8
    iget-object v6, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    .line 35
    invoke-virtual {v6}, Lf/i/a/a/m1/v;->f()I

    move-result v6

    .line 36
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_9

    .line 37
    iput-boolean v3, v4, Lf/i/a/a/b1/x/l$b;->k:Z

    goto/16 :goto_5

    .line 38
    :cond_9
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf/i/a/a/m1/s$a;

    .line 39
    iget-object v10, v4, Lf/i/a/a/b1/x/l$b;->d:Landroid/util/SparseArray;

    iget v11, v9, Lf/i/a/a/m1/s$a;->b:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf/i/a/a/m1/s$b;

    .line 40
    iget-boolean v11, v10, Lf/i/a/a/m1/s$b;->h:Z

    if-eqz v11, :cond_b

    .line 41
    iget-object v11, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v11, v8}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 42
    :cond_a
    iget-object v11, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v11, v8}, Lf/i/a/a/m1/v;->j(I)V

    .line 43
    :cond_b
    iget-object v8, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    iget v11, v10, Lf/i/a/a/m1/s$b;->j:I

    invoke-virtual {v8, v11}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_5

    .line 44
    :cond_c
    iget-object v8, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    iget v11, v10, Lf/i/a/a/m1/s$b;->j:I

    invoke-virtual {v8, v11}, Lf/i/a/a/m1/v;->e(I)I

    move-result v8

    .line 45
    iget-boolean v11, v10, Lf/i/a/a/m1/s$b;->i:Z

    if-nez v11, :cond_f

    .line 46
    iget-object v11, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v11, v7}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_5

    .line 47
    :cond_d
    iget-object v11, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v11}, Lf/i/a/a/m1/v;->d()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 48
    iget-object v12, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v12, v7}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v12

    if-nez v12, :cond_e

    goto/16 :goto_5

    .line 49
    :cond_e
    iget-object v12, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v12}, Lf/i/a/a/m1/v;->d()Z

    move-result v12

    const/4 v13, 0x1

    goto :goto_0

    :cond_f
    const/4 v11, 0x0

    :cond_10
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 50
    :goto_0
    iget v14, v4, Lf/i/a/a/b1/x/l$b;->i:I

    if-ne v14, v5, :cond_11

    const/4 v5, 0x1

    goto :goto_1

    :cond_11
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_13

    .line 51
    iget-object v14, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v14}, Lf/i/a/a/m1/v;->c()Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_5

    .line 52
    :cond_12
    iget-object v14, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    .line 53
    invoke-virtual {v14}, Lf/i/a/a/m1/v;->f()I

    move-result v14

    goto :goto_2

    :cond_13
    const/4 v14, 0x0

    .line 54
    :goto_2
    iget v15, v10, Lf/i/a/a/m1/s$b;->k:I

    if-nez v15, :cond_17

    .line 55
    iget-object v15, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    iget v3, v10, Lf/i/a/a/m1/s$b;->l:I

    invoke-virtual {v15, v3}, Lf/i/a/a/m1/v;->b(I)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_5

    .line 56
    :cond_14
    iget-object v3, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    iget v15, v10, Lf/i/a/a/m1/s$b;->l:I

    invoke-virtual {v3, v15}, Lf/i/a/a/m1/v;->e(I)I

    move-result v3

    .line 57
    iget-boolean v9, v9, Lf/i/a/a/m1/s$a;->c:Z

    if-eqz v9, :cond_16

    if-nez v11, :cond_16

    .line 58
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v9}, Lf/i/a/a/m1/v;->c()Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_5

    .line 59
    :cond_15
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v9}, Lf/i/a/a/m1/v;->g()I

    move-result v9

    goto :goto_3

    :cond_16
    const/4 v9, 0x0

    :goto_3
    move v15, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_17
    if-ne v15, v7, :cond_1a

    .line 60
    iget-boolean v3, v10, Lf/i/a/a/m1/s$b;->m:Z

    if-nez v3, :cond_1a

    .line 61
    iget-object v3, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v3}, Lf/i/a/a/m1/v;->c()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_5

    .line 62
    :cond_18
    iget-object v3, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v3}, Lf/i/a/a/m1/v;->g()I

    move-result v3

    .line 63
    iget-boolean v9, v9, Lf/i/a/a/m1/s$a;->c:Z

    if-eqz v9, :cond_1b

    if-nez v11, :cond_1b

    .line 64
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v9}, Lf/i/a/a/m1/v;->c()Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_5

    .line 65
    :cond_19
    iget-object v9, v4, Lf/i/a/a/b1/x/l$b;->f:Lf/i/a/a/m1/v;

    invoke-virtual {v9}, Lf/i/a/a/m1/v;->g()I

    move-result v9

    move v7, v9

    const/4 v15, 0x0

    move v9, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    move v9, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 66
    :goto_4
    iget-object v0, v4, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    .line 67
    iput-object v10, v0, Lf/i/a/a/b1/x/l$b$a;->c:Lf/i/a/a/m1/s$b;

    .line 68
    iput v1, v0, Lf/i/a/a/b1/x/l$b$a;->d:I

    .line 69
    iput v2, v0, Lf/i/a/a/b1/x/l$b$a;->e:I

    .line 70
    iput v8, v0, Lf/i/a/a/b1/x/l$b$a;->f:I

    .line 71
    iput v6, v0, Lf/i/a/a/b1/x/l$b$a;->g:I

    .line 72
    iput-boolean v11, v0, Lf/i/a/a/b1/x/l$b$a;->h:Z

    .line 73
    iput-boolean v13, v0, Lf/i/a/a/b1/x/l$b$a;->i:Z

    .line 74
    iput-boolean v12, v0, Lf/i/a/a/b1/x/l$b$a;->j:Z

    .line 75
    iput-boolean v5, v0, Lf/i/a/a/b1/x/l$b$a;->k:Z

    .line 76
    iput v14, v0, Lf/i/a/a/b1/x/l$b$a;->l:I

    .line 77
    iput v3, v0, Lf/i/a/a/b1/x/l$b$a;->m:I

    .line 78
    iput v15, v0, Lf/i/a/a/b1/x/l$b$a;->n:I

    .line 79
    iput v9, v0, Lf/i/a/a/b1/x/l$b$a;->o:I

    .line 80
    iput v7, v0, Lf/i/a/a/b1/x/l$b$a;->p:I

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b$a;->a:Z

    .line 82
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l$b$a;->b:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, v4, Lf/i/a/a/b1/x/l$b;->k:Z

    :goto_5
    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 2
    iget v3, v1, Lf/i/a/a/m1/u;->c:I

    .line 3
    iget-object v4, v1, Lf/i/a/a/m1/u;->a:[B

    .line 4
    iget-wide v5, v0, Lf/i/a/a/b1/x/l;->g:J

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lf/i/a/a/b1/x/l;->g:J

    .line 5
    iget-object v5, v0, Lf/i/a/a/b1/x/l;->j:Lf/i/a/a/b1/p;

    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 6
    :goto_0
    iget-object v1, v0, Lf/i/a/a/b1/x/l;->h:[Z

    invoke-static {v4, v2, v3, v1}, Lf/i/a/a/m1/s;->c([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 7
    invoke-virtual {v0, v4, v2, v3}, Lf/i/a/a/b1/x/l;->b([BII)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 8
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    .line 9
    invoke-virtual {v0, v4, v2, v1}, Lf/i/a/a/b1/x/l;->b([BII)V

    :cond_1
    sub-int v1, v3, v1

    .line 10
    iget-wide v8, v0, Lf/i/a/a/b1/x/l;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 11
    :goto_1
    iget-wide v10, v0, Lf/i/a/a/b1/x/l;->m:J

    .line 12
    iget-boolean v12, v0, Lf/i/a/a/b1/x/l;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 13
    iget-boolean v12, v12, Lf/i/a/a/b1/x/l$b;->c:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    goto/16 :goto_3

    .line 14
    :cond_4
    :goto_2
    iget-object v12, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    invoke-virtual {v12, v7}, Lf/i/a/a/b1/x/q;->b(I)Z

    .line 15
    iget-object v12, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v12, v7}, Lf/i/a/a/b1/x/q;->b(I)Z

    .line 16
    iget-boolean v12, v0, Lf/i/a/a/b1/x/l;->l:Z

    const/4 v15, 0x3

    if-nez v12, :cond_5

    .line 17
    iget-object v12, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    .line 18
    iget-boolean v12, v12, Lf/i/a/a/b1/x/q;->c:Z

    if-eqz v12, :cond_3

    .line 19
    iget-object v12, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    .line 20
    iget-boolean v12, v12, Lf/i/a/a/b1/x/q;->c:Z

    if-eqz v12, :cond_3

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v13, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    iget-object v14, v13, Lf/i/a/a/b1/x/q;->d:[B

    iget v13, v13, Lf/i/a/a/b1/x/q;->e:I

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v13, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    iget-object v14, v13, Lf/i/a/a/b1/x/q;->d:[B

    iget v13, v13, Lf/i/a/a/b1/x/q;->e:I

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v13, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    iget-object v14, v13, Lf/i/a/a/b1/x/q;->d:[B

    iget v13, v13, Lf/i/a/a/b1/x/q;->e:I

    invoke-static {v14, v15, v13}, Lf/i/a/a/m1/s;->f([BII)Lf/i/a/a/m1/s$b;

    move-result-object v13

    .line 25
    iget-object v14, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    iget-object v2, v14, Lf/i/a/a/b1/x/q;->d:[B

    iget v14, v14, Lf/i/a/a/b1/x/q;->e:I

    invoke-static {v2, v15, v14}, Lf/i/a/a/m1/s;->e([BII)Lf/i/a/a/m1/s$a;

    move-result-object v2

    .line 26
    iget-object v14, v0, Lf/i/a/a/b1/x/l;->j:Lf/i/a/a/b1/p;

    iget-object v15, v0, Lf/i/a/a/b1/x/l;->i:Ljava/lang/String;

    move/from16 v28, v3

    iget v3, v13, Lf/i/a/a/m1/s$b;->a:I

    move-object/from16 v29, v4

    iget v4, v13, Lf/i/a/a/m1/s$b;->b:I

    move/from16 v30, v5

    iget v5, v13, Lf/i/a/a/m1/s$b;->c:I

    move/from16 v31, v6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v16, 0x0

    aput-object v3, v6, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v6, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v6, v4

    const-string v3, "avc1.%02X%02X%02X"

    .line 28
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    .line 29
    iget v3, v13, Lf/i/a/a/m1/s$b;->e:I

    iget v4, v13, Lf/i/a/a/m1/s$b;->f:I

    const/high16 v23, -0x40800000    # -1.0f

    const/16 v25, -0x1

    iget v5, v13, Lf/i/a/a/m1/s$b;->g:F

    const/16 v27, 0x0

    const-string v17, "video/avc"

    move-object/from16 v16, v15

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v24, v12

    move/from16 v26, v5

    .line 30
    invoke-static/range {v16 .. v27}, Lf/i/a/a/b0;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v3

    .line 31
    invoke-interface {v14, v3}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    const/4 v3, 0x1

    .line 32
    iput-boolean v3, v0, Lf/i/a/a/b1/x/l;->l:Z

    .line 33
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 34
    iget-object v3, v3, Lf/i/a/a/b1/x/l$b;->d:Landroid/util/SparseArray;

    iget v4, v13, Lf/i/a/a/m1/s$b;->d:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 35
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 36
    iget-object v3, v3, Lf/i/a/a/b1/x/l$b;->e:Landroid/util/SparseArray;

    iget v4, v2, Lf/i/a/a/m1/s$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 37
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    invoke-virtual {v2}, Lf/i/a/a/b1/x/q;->c()V

    .line 38
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v2}, Lf/i/a/a/b1/x/q;->c()V

    goto :goto_3

    :cond_5
    move/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    .line 39
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    .line 40
    iget-boolean v3, v2, Lf/i/a/a/b1/x/q;->c:Z

    if-eqz v3, :cond_6

    .line 41
    iget-object v3, v2, Lf/i/a/a/b1/x/q;->d:[B

    iget v2, v2, Lf/i/a/a/b1/x/q;->e:I

    const/4 v4, 0x3

    invoke-static {v3, v4, v2}, Lf/i/a/a/m1/s;->f([BII)Lf/i/a/a/m1/s$b;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 43
    iget-object v3, v3, Lf/i/a/a/b1/x/l$b;->d:Landroid/util/SparseArray;

    iget v4, v2, Lf/i/a/a/m1/s$b;->d:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    invoke-virtual {v2}, Lf/i/a/a/b1/x/q;->c()V

    goto :goto_3

    .line 45
    :cond_6
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    .line 46
    iget-boolean v3, v2, Lf/i/a/a/b1/x/q;->c:Z

    if-eqz v3, :cond_7

    .line 47
    iget-object v3, v2, Lf/i/a/a/b1/x/q;->d:[B

    iget v2, v2, Lf/i/a/a/b1/x/q;->e:I

    const/4 v4, 0x3

    invoke-static {v3, v4, v2}, Lf/i/a/a/m1/s;->e([BII)Lf/i/a/a/m1/s$a;

    move-result-object v2

    .line 48
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 49
    iget-object v3, v3, Lf/i/a/a/b1/x/l$b;->e:Landroid/util/SparseArray;

    iget v4, v2, Lf/i/a/a/m1/s$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 50
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v2}, Lf/i/a/a/b1/x/q;->c()V

    .line 51
    :cond_7
    :goto_3
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    invoke-virtual {v2, v7}, Lf/i/a/a/b1/x/q;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 52
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    iget-object v3, v2, Lf/i/a/a/b1/x/q;->d:[B

    iget v2, v2, Lf/i/a/a/b1/x/q;->e:I

    invoke-static {v3, v2}, Lf/i/a/a/m1/s;->g([BI)I

    move-result v2

    .line 53
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->o:Lf/i/a/a/m1/u;

    iget-object v4, v0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    iget-object v4, v4, Lf/i/a/a/b1/x/q;->d:[B

    invoke-virtual {v3, v4, v2}, Lf/i/a/a/m1/u;->y([BI)V

    .line 54
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->o:Lf/i/a/a/m1/u;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 55
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->a:Lf/i/a/a/b1/x/x;

    iget-object v3, v0, Lf/i/a/a/b1/x/l;->o:Lf/i/a/a/m1/u;

    .line 56
    iget-object v2, v2, Lf/i/a/a/b1/x/x;->b:[Lf/i/a/a/b1/p;

    invoke-static {v10, v11, v3, v2}, Lf/i/a/a/i1/m/f;->a(JLf/i/a/a/m1/u;[Lf/i/a/a/b1/p;)V

    .line 57
    :cond_8
    iget-object v2, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    iget-boolean v3, v0, Lf/i/a/a/b1/x/l;->l:Z

    iget-boolean v4, v0, Lf/i/a/a/b1/x/l;->n:Z

    .line 58
    iget v5, v2, Lf/i/a/a/b1/x/l$b;->i:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_f

    iget-boolean v5, v2, Lf/i/a/a/b1/x/l$b;->c:Z

    if-eqz v5, :cond_11

    iget-object v5, v2, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    iget-object v6, v2, Lf/i/a/a/b1/x/l$b;->m:Lf/i/a/a/b1/x/l$b$a;

    .line 59
    iget-boolean v7, v5, Lf/i/a/a/b1/x/l$b$a;->a:Z

    if-eqz v7, :cond_e

    iget-boolean v7, v6, Lf/i/a/a/b1/x/l$b$a;->a:Z

    if-eqz v7, :cond_d

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->f:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->f:I

    if-ne v7, v10, :cond_d

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->g:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->g:I

    if-ne v7, v10, :cond_d

    iget-boolean v7, v5, Lf/i/a/a/b1/x/l$b$a;->h:Z

    iget-boolean v10, v6, Lf/i/a/a/b1/x/l$b$a;->h:Z

    if-ne v7, v10, :cond_d

    iget-boolean v7, v5, Lf/i/a/a/b1/x/l$b$a;->i:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v6, Lf/i/a/a/b1/x/l$b$a;->i:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v5, Lf/i/a/a/b1/x/l$b$a;->j:Z

    iget-boolean v10, v6, Lf/i/a/a/b1/x/l$b$a;->j:Z

    if-ne v7, v10, :cond_d

    :cond_9
    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->d:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->d:I

    if-eq v7, v10, :cond_a

    if-eqz v7, :cond_d

    if-eqz v10, :cond_d

    :cond_a
    iget-object v7, v5, Lf/i/a/a/b1/x/l$b$a;->c:Lf/i/a/a/m1/s$b;

    iget v7, v7, Lf/i/a/a/m1/s$b;->k:I

    if-nez v7, :cond_b

    iget-object v7, v6, Lf/i/a/a/b1/x/l$b$a;->c:Lf/i/a/a/m1/s$b;

    iget v7, v7, Lf/i/a/a/m1/s$b;->k:I

    if-nez v7, :cond_b

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->m:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->m:I

    if-ne v7, v10, :cond_d

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->n:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->n:I

    if-ne v7, v10, :cond_d

    :cond_b
    iget-object v7, v5, Lf/i/a/a/b1/x/l$b$a;->c:Lf/i/a/a/m1/s$b;

    iget v7, v7, Lf/i/a/a/m1/s$b;->k:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    iget-object v7, v6, Lf/i/a/a/b1/x/l$b$a;->c:Lf/i/a/a/m1/s$b;

    iget v7, v7, Lf/i/a/a/m1/s$b;->k:I

    if-ne v7, v10, :cond_c

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->o:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->o:I

    if-ne v7, v10, :cond_d

    iget v7, v5, Lf/i/a/a/b1/x/l$b$a;->p:I

    iget v10, v6, Lf/i/a/a/b1/x/l$b$a;->p:I

    if-ne v7, v10, :cond_d

    :cond_c
    iget-boolean v7, v5, Lf/i/a/a/b1/x/l$b$a;->k:Z

    iget-boolean v10, v6, Lf/i/a/a/b1/x/l$b$a;->k:Z

    if-ne v7, v10, :cond_d

    if-eqz v7, :cond_e

    if-eqz v10, :cond_e

    iget v5, v5, Lf/i/a/a/b1/x/l$b$a;->l:I

    iget v6, v6, Lf/i/a/a/b1/x/l$b$a;->l:I

    if-eq v5, v6, :cond_e

    :cond_d
    const/4 v5, 0x1

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_11

    :cond_f
    if-eqz v3, :cond_10

    .line 60
    iget-boolean v3, v2, Lf/i/a/a/b1/x/l$b;->o:Z

    if-eqz v3, :cond_10

    .line 61
    iget-wide v5, v2, Lf/i/a/a/b1/x/l$b;->j:J

    sub-long v10, v8, v5

    long-to-int v3, v10

    add-int v15, v1, v3

    .line 62
    iget-boolean v13, v2, Lf/i/a/a/b1/x/l$b;->r:Z

    .line 63
    iget-wide v10, v2, Lf/i/a/a/b1/x/l$b;->p:J

    sub-long/2addr v5, v10

    long-to-int v14, v5

    .line 64
    iget-object v10, v2, Lf/i/a/a/b1/x/l$b;->a:Lf/i/a/a/b1/p;

    iget-wide v11, v2, Lf/i/a/a/b1/x/l$b;->q:J

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 65
    :cond_10
    iget-wide v5, v2, Lf/i/a/a/b1/x/l$b;->j:J

    iput-wide v5, v2, Lf/i/a/a/b1/x/l$b;->p:J

    .line 66
    iget-wide v5, v2, Lf/i/a/a/b1/x/l$b;->l:J

    iput-wide v5, v2, Lf/i/a/a/b1/x/l$b;->q:J

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v2, Lf/i/a/a/b1/x/l$b;->r:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, v2, Lf/i/a/a/b1/x/l$b;->o:Z

    .line 69
    :cond_11
    iget-boolean v1, v2, Lf/i/a/a/b1/x/l$b;->b:Z

    if-eqz v1, :cond_14

    iget-object v1, v2, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    .line 70
    iget-boolean v3, v1, Lf/i/a/a/b1/x/l$b$a;->b:Z

    if-eqz v3, :cond_13

    iget v1, v1, Lf/i/a/a/b1/x/l$b$a;->e:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_12

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13

    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    :cond_13
    const/4 v4, 0x0

    .line 71
    :cond_14
    :goto_5
    iget-boolean v1, v2, Lf/i/a/a/b1/x/l$b;->r:Z

    iget v3, v2, Lf/i/a/a/b1/x/l$b;->i:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_16

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    goto :goto_6

    :cond_15
    const/4 v3, 0x0

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v3, 0x1

    :goto_7
    or-int/2addr v1, v3

    iput-boolean v1, v2, Lf/i/a/a/b1/x/l$b;->r:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, v0, Lf/i/a/a/b1/x/l;->n:Z

    .line 73
    :cond_17
    iget-wide v1, v0, Lf/i/a/a/b1/x/l;->m:J

    .line 74
    iget-boolean v3, v0, Lf/i/a/a/b1/x/l;->l:Z

    if-eqz v3, :cond_19

    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 75
    iget-boolean v3, v3, Lf/i/a/a/b1/x/l$b;->c:Z

    if-eqz v3, :cond_18

    goto :goto_8

    :cond_18
    move/from16 v4, v31

    goto :goto_9

    .line 76
    :cond_19
    :goto_8
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->d:Lf/i/a/a/b1/x/q;

    move/from16 v4, v31

    invoke-virtual {v3, v4}, Lf/i/a/a/b1/x/q;->d(I)V

    .line 77
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->e:Lf/i/a/a/b1/x/q;

    invoke-virtual {v3, v4}, Lf/i/a/a/b1/x/q;->d(I)V

    .line 78
    :goto_9
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->f:Lf/i/a/a/b1/x/q;

    invoke-virtual {v3, v4}, Lf/i/a/a/b1/x/q;->d(I)V

    .line 79
    iget-object v3, v0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 80
    iput v4, v3, Lf/i/a/a/b1/x/l$b;->i:I

    .line 81
    iput-wide v1, v3, Lf/i/a/a/b1/x/l$b;->l:J

    .line 82
    iput-wide v8, v3, Lf/i/a/a/b1/x/l$b;->j:J

    .line 83
    iget-boolean v1, v3, Lf/i/a/a/b1/x/l$b;->b:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    if-eq v4, v1, :cond_1b

    goto :goto_a

    :cond_1a
    const/4 v1, 0x1

    :goto_a
    iget-boolean v2, v3, Lf/i/a/a/b1/x/l$b;->c:Z

    if-eqz v2, :cond_1c

    iget v2, v3, Lf/i/a/a/b1/x/l$b;->i:I

    if-eq v2, v5, :cond_1b

    if-eq v2, v1, :cond_1b

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1c

    .line 84
    :cond_1b
    iget-object v1, v3, Lf/i/a/a/b1/x/l$b;->m:Lf/i/a/a/b1/x/l$b$a;

    .line 85
    iget-object v2, v3, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    iput-object v2, v3, Lf/i/a/a/b1/x/l$b;->m:Lf/i/a/a/b1/x/l$b$a;

    .line 86
    iput-object v1, v3, Lf/i/a/a/b1/x/l$b;->n:Lf/i/a/a/b1/x/l$b$a;

    const/4 v2, 0x0

    .line 87
    iput-boolean v2, v1, Lf/i/a/a/b1/x/l$b$a;->b:Z

    .line 88
    iput-boolean v2, v1, Lf/i/a/a/b1/x/l$b$a;->a:Z

    .line 89
    iput v2, v3, Lf/i/a/a/b1/x/l$b;->h:I

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v3, Lf/i/a/a/b1/x/l$b;->k:Z

    :cond_1c
    move/from16 v3, v28

    move-object/from16 v4, v29

    move/from16 v2, v30

    goto/16 :goto_0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/b1/x/l;->m:J

    .line 2
    iget-boolean p1, p0, Lf/i/a/a/b1/x/l;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lf/i/a/a/b1/x/l;->n:Z

    return-void
.end method

.method public f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/x/l;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/x/l;->j:Lf/i/a/a/b1/p;

    .line 4
    new-instance v1, Lf/i/a/a/b1/x/l$b;

    iget-boolean v2, p0, Lf/i/a/a/b1/x/l;->b:Z

    iget-boolean v3, p0, Lf/i/a/a/b1/x/l;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lf/i/a/a/b1/x/l$b;-><init>(Lf/i/a/a/b1/p;ZZ)V

    iput-object v1, p0, Lf/i/a/a/b1/x/l;->k:Lf/i/a/a/b1/x/l$b;

    .line 5
    iget-object v0, p0, Lf/i/a/a/b1/x/l;->a:Lf/i/a/a/b1/x/x;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/b1/x/x;->a(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    return-void
.end method
