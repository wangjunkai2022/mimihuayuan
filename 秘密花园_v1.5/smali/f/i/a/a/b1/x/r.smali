.class public final Lf/i/a/a/b1/x/r;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lf/i/a/a/b1/x/c0;


# instance fields
.field public final a:Lf/i/a/a/b1/x/j;

.field public final b:Lf/i/a/a/m1/t;

.field public c:I

.field public d:I

.field public e:Lf/i/a/a/m1/e0;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    .line 3
    new-instance p1, Lf/i/a/a/m1/t;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lf/i/a/a/b1/x/r;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/x/r;->c:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/x/r;->d:I

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/b1/x/r;->h:Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v0}, Lf/i/a/a/b1/x/j;->a()V

    return-void
.end method

.method public b(Lf/i/a/a/m1/e0;Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/r;->e:Lf/i/a/a/m1/e0;

    .line 2
    iget-object p1, p0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {p1, p2, p3}, Lf/i/a/a/b1/x/j;->f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    return-void
.end method

.method public final c(Lf/i/a/a/m1/u;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 1
    iget v2, v0, Lf/i/a/a/b1/x/r;->c:I

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    .line 2
    iget v2, v0, Lf/i/a/a/b1/x/r;->j:I

    .line 3
    iget-object v2, v0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v2}, Lf/i/a/a/b1/x/j;->d()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Lf/i/a/a/b1/x/r;->e(I)V

    :cond_2
    move/from16 v2, p2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v7

    if-lez v7, :cond_10

    .line 7
    iget v7, v0, Lf/i/a/a/b1/x/r;->c:I

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    if-eq v7, v6, :cond_b

    if-eq v7, v5, :cond_7

    if-ne v7, v4, :cond_6

    .line 8
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v7

    .line 9
    iget v9, v0, Lf/i/a/a/b1/x/r;->j:I

    if-ne v9, v3, :cond_4

    goto :goto_2

    :cond_4
    sub-int v8, v7, v9

    :goto_2
    if-lez v8, :cond_5

    sub-int/2addr v7, v8

    .line 10
    iget v8, v1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr v8, v7

    .line 11
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->z(I)V

    .line 12
    :cond_5
    iget-object v8, v0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v8, v1}, Lf/i/a/a/b1/x/j;->c(Lf/i/a/a/m1/u;)V

    .line 13
    iget v8, v0, Lf/i/a/a/b1/x/r;->j:I

    if-eq v8, v3, :cond_3

    sub-int/2addr v8, v7

    .line 14
    iput v8, v0, Lf/i/a/a/b1/x/r;->j:I

    if-nez v8, :cond_3

    .line 15
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v7}, Lf/i/a/a/b1/x/j;->d()V

    .line 16
    invoke-virtual {v0, v6}, Lf/i/a/a/b1/x/r;->e(I)V

    goto :goto_1

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_7
    const/16 v7, 0xa

    .line 18
    iget v9, v0, Lf/i/a/a/b1/x/r;->i:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 19
    iget-object v9, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    iget-object v9, v9, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v0, v1, v9, v7}, Lf/i/a/a/b1/x/r;->d(Lf/i/a/a/m1/u;[BI)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    iget v9, v0, Lf/i/a/a/b1/x/r;->i:I

    .line 20
    invoke-virtual {v0, v1, v7, v9}, Lf/i/a/a/b1/x/r;->d(Lf/i/a/a/m1/u;[BI)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 21
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v8}, Lf/i/a/a/m1/t;->j(I)V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide v9, v0, Lf/i/a/a/b1/x/r;->l:J

    .line 23
    iget-boolean v7, v0, Lf/i/a/a/b1/x/r;->f:Z

    const/4 v9, 0x4

    if-eqz v7, :cond_9

    .line 24
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 25
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x1e

    shl-long/2addr v10, v7

    .line 26
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 27
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lf/i/a/a/m1/t;->f(I)I

    move-result v12

    shl-int/2addr v12, v13

    int-to-long v14, v12

    or-long/2addr v10, v14

    .line 28
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 29
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v13}, Lf/i/a/a/m1/t;->f(I)I

    move-result v12

    int-to-long v14, v12

    or-long/2addr v10, v14

    .line 30
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 31
    iget-boolean v12, v0, Lf/i/a/a/b1/x/r;->h:Z

    if-nez v12, :cond_8

    iget-boolean v12, v0, Lf/i/a/a/b1/x/r;->g:Z

    if-eqz v12, :cond_8

    .line 32
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 33
    iget-object v12, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v12, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v12

    int-to-long v14, v12

    shl-long/2addr v14, v7

    .line 34
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 35
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v13}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    shl-int/2addr v7, v13

    int-to-long v8, v7

    or-long v7, v14, v8

    .line 36
    iget-object v9, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v9, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 37
    iget-object v9, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v9, v13}, Lf/i/a/a/m1/t;->f(I)I

    move-result v9

    int-to-long v13, v9

    or-long/2addr v7, v13

    .line 38
    iget-object v9, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v9, v6}, Lf/i/a/a/m1/t;->l(I)V

    .line 39
    iget-object v9, v0, Lf/i/a/a/b1/x/r;->e:Lf/i/a/a/m1/e0;

    invoke-virtual {v9, v7, v8}, Lf/i/a/a/m1/e0;->b(J)J

    .line 40
    iput-boolean v6, v0, Lf/i/a/a/b1/x/r;->h:Z

    .line 41
    :cond_8
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->e:Lf/i/a/a/m1/e0;

    invoke-virtual {v7, v10, v11}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v7

    iput-wide v7, v0, Lf/i/a/a/b1/x/r;->l:J

    .line 42
    :cond_9
    iget-boolean v7, v0, Lf/i/a/a/b1/x/r;->k:Z

    if-eqz v7, :cond_a

    const/4 v8, 0x4

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    or-int/2addr v2, v8

    .line 43
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->a:Lf/i/a/a/b1/x/j;

    iget-wide v8, v0, Lf/i/a/a/b1/x/r;->l:J

    invoke-interface {v7, v8, v9, v2}, Lf/i/a/a/b1/x/j;->e(JI)V

    .line 44
    invoke-virtual {v0, v4}, Lf/i/a/a/b1/x/r;->e(I)V

    goto/16 :goto_1

    .line 45
    :cond_b
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    iget-object v7, v7, Lf/i/a/a/m1/t;->a:[B

    const/16 v8, 0x9

    invoke-virtual {v0, v1, v7, v8}, Lf/i/a/a/b1/x/r;->d(Lf/i/a/a/m1/u;[BI)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 46
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lf/i/a/a/m1/t;->j(I)V

    .line 47
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/16 v9, 0x18

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    if-eq v7, v6, :cond_c

    .line 48
    iput v3, v0, Lf/i/a/a/b1/x/r;->j:I

    const/4 v7, 0x0

    goto :goto_5

    .line 49
    :cond_c
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 50
    iget-object v7, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 51
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lf/i/a/a/m1/t;->l(I)V

    .line 52
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v10}, Lf/i/a/a/m1/t;->e()Z

    move-result v10

    iput-boolean v10, v0, Lf/i/a/a/b1/x/r;->k:Z

    .line 53
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v10, v5}, Lf/i/a/a/m1/t;->l(I)V

    .line 54
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v10}, Lf/i/a/a/m1/t;->e()Z

    move-result v10

    iput-boolean v10, v0, Lf/i/a/a/b1/x/r;->f:Z

    .line 55
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v10}, Lf/i/a/a/m1/t;->e()Z

    move-result v10

    iput-boolean v10, v0, Lf/i/a/a/b1/x/r;->g:Z

    .line 56
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lf/i/a/a/m1/t;->l(I)V

    .line 57
    iget-object v10, v0, Lf/i/a/a/b1/x/r;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v10, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v9

    iput v9, v0, Lf/i/a/a/b1/x/r;->i:I

    if-nez v7, :cond_d

    .line 58
    iput v3, v0, Lf/i/a/a/b1/x/r;->j:I

    goto :goto_4

    :cond_d
    add-int/lit8 v7, v7, 0x6

    add-int/lit8 v7, v7, -0x9

    sub-int/2addr v7, v9

    .line 59
    iput v7, v0, Lf/i/a/a/b1/x/r;->j:I

    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_e

    const/4 v8, 0x2

    .line 60
    :cond_e
    invoke-virtual {v0, v8}, Lf/i/a/a/b1/x/r;->e(I)V

    goto/16 :goto_1

    .line 61
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v7

    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->B(I)V

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public final d(Lf/i/a/a/m1/u;[BI)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    iget v1, p0, Lf/i/a/a/b1/x/r;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->B(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget v2, p0, Lf/i/a/a/b1/x/r;->d:I

    .line 4
    iget-object v3, p1, Lf/i/a/a/m1/u;->a:[B

    iget v4, p1, Lf/i/a/a/m1/u;->b:I

    invoke-static {v3, v4, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p2, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lf/i/a/a/m1/u;->b:I

    .line 6
    :goto_0
    iget p1, p0, Lf/i/a/a/b1/x/r;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lf/i/a/a/b1/x/r;->d:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/b1/x/r;->c:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf/i/a/a/b1/x/r;->d:I

    return-void
.end method
