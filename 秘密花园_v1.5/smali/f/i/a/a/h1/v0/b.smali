.class public Lf/i/a/a/h1/v0/b;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lf/i/a/a/h1/v0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/v0/b$b;,
        Lf/i/a/a/h1/v0/b$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/d0;

.field public final b:I

.field public final c:[Lf/i/a/a/h1/s0/e;

.field public final d:Lf/i/a/a/l1/m;

.field public e:Lf/i/a/a/j1/j;

.field public f:Lf/i/a/a/h1/v0/e/a;

.field public g:I

.field public h:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/v0/e/a;ILf/i/a/a/j1/j;Lf/i/a/a/l1/m;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lf/i/a/a/h1/v0/b;->a:Lf/i/a/a/l1/d0;

    .line 3
    iput-object v1, v0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    .line 4
    iput v2, v0, Lf/i/a/a/h1/v0/b;->b:I

    .line 5
    iput-object v3, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lf/i/a/a/h1/v0/b;->d:Lf/i/a/a/l1/m;

    .line 7
    iget-object v4, v1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    aget-object v2, v4, v2

    .line 8
    invoke-interface/range {p4 .. p4}, Lf/i/a/a/j1/j;->length()I

    move-result v4

    new-array v4, v4, [Lf/i/a/a/h1/s0/e;

    iput-object v4, v0, Lf/i/a/a/h1/v0/b;->c:[Lf/i/a/a/h1/s0/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, v0, Lf/i/a/a/h1/v0/b;->c:[Lf/i/a/a/h1/s0/e;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 10
    invoke-interface {v3, v5}, Lf/i/a/a/j1/j;->e(I)I

    move-result v8

    .line 11
    iget-object v6, v2, Lf/i/a/a/h1/v0/e/a$b;->j:[Lf/i/a/a/b0;

    aget-object v6, v6, v8

    .line 12
    iget-object v7, v6, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lf/i/a/a/h1/v0/e/a;->e:Lf/i/a/a/h1/v0/e/a$a;

    iget-object v7, v7, Lf/i/a/a/h1/v0/e/a$a;->c:[Lf/i/a/a/b1/u/k;

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v18, v7

    .line 13
    iget v7, v2, Lf/i/a/a/h1/v0/e/a$b;->a:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    const/4 v7, 0x4

    const/16 v19, 0x4

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 14
    :goto_2
    new-instance v22, Lf/i/a/a/b1/u/j;

    iget v9, v2, Lf/i/a/a/h1/v0/e/a$b;->a:I

    iget-wide v10, v2, Lf/i/a/a/h1/v0/e/a$b;->c:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v14, v1, Lf/i/a/a/h1/v0/e/a;->g:J

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v7, v22

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v21}, Lf/i/a/a/b1/u/j;-><init>(IIJJJLf/i/a/a/b0;I[Lf/i/a/a/b1/u/k;I[J[J)V

    .line 15
    new-instance v7, Lf/i/a/a/b1/u/d;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v7

    move-object/from16 v12, v22

    .line 17
    invoke-direct/range {v9 .. v15}, Lf/i/a/a/b1/u/d;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V

    .line 18
    iget-object v8, v0, Lf/i/a/a/h1/v0/b;->c:[Lf/i/a/a/h1/s0/e;

    new-instance v9, Lf/i/a/a/h1/s0/e;

    iget v10, v2, Lf/i/a/a/h1/v0/e/a$b;->a:I

    invoke-direct {v9, v7, v10, v6}, Lf/i/a/a/h1/s0/e;-><init>(Lf/i/a/a/b1/g;ILf/i/a/a/b0;)V

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->h:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->a:Lf/i/a/a/l1/d0;

    invoke-interface {v0}, Lf/i/a/a/l1/d0;->a()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public b(JLf/i/a/a/s0;)J
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    iget-object v0, v0, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    iget v1, p0, Lf/i/a/a/h1/v0/b;->b:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result v1

    .line 3
    iget-object v3, v0, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v7, v3, v1

    cmp-long v4, v7, p1

    if-gez v4, :cond_0

    .line 4
    iget v0, v0, Lf/i/a/a/h1/v0/e/a$b;->k:I

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    add-int/2addr v1, v2

    .line 5
    aget-wide v0, v3, v1

    move-wide v9, v0

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    move-wide v4, p1

    move-object v6, p3

    .line 6
    invoke-static/range {v4 .. v10}, Lf/i/a/a/m1/h0;->g0(JLf/i/a/a/s0;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Lf/i/a/a/j1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    return-void
.end method

.method public e(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->h:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v0}, Lf/i/a/a/j1/j;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v0, p1, p2, p3}, Lf/i/a/a/j1/j;->f(JLjava/util/List;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public f(Lf/i/a/a/h1/s0/d;)V
    .locals 0

    return-void
.end method

.method public g(Lf/i/a/a/h1/v0/e/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    iget-object v0, v0, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    iget v1, p0, Lf/i/a/a/h1/v0/b;->b:I

    aget-object v0, v0, v1

    .line 2
    iget v2, v0, Lf/i/a/a/h1/v0/e/a$b;->k:I

    .line 3
    iget-object v3, p1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    aget-object v1, v3, v1

    if-eqz v2, :cond_2

    .line 4
    iget v3, v1, Lf/i/a/a/h1/v0/e/a$b;->k:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 5
    iget-object v4, v0, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v5, v4, v3

    .line 6
    invoke-virtual {v0, v3}, Lf/i/a/a/h1/v0/e/a$b;->c(I)J

    move-result-wide v3

    add-long/2addr v3, v5

    const/4 v5, 0x0

    .line 7
    iget-object v1, v1, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v5, v1, v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 8
    iget v0, p0, Lf/i/a/a/h1/v0/b;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lf/i/a/a/h1/v0/b;->g:I

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p0, Lf/i/a/a/h1/v0/b;->g:I

    invoke-virtual {v0, v5, v6}, Lf/i/a/a/h1/v0/e/a$b;->d(J)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lf/i/a/a/h1/v0/b;->g:I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lf/i/a/a/h1/v0/b;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lf/i/a/a/h1/v0/b;->g:I

    .line 11
    :goto_1
    iput-object p1, p0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    return-void
.end method

.method public final h(JJLjava/util/List;Lf/i/a/a/h1/s0/f;)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lf/i/a/a/h1/s0/l;",
            ">;",
            "Lf/i/a/a/h1/s0/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v10, p3

    move-object/from16 v12, p6

    .line 1
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->h:Ljava/io/IOException;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    iget-object v2, v1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    iget v3, v0, Lf/i/a/a/h1/v0/b;->b:I

    aget-object v13, v2, v3

    .line 3
    iget v2, v13, Lf/i/a/a/h1/v0/e/a$b;->k:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    iget-boolean v1, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v12, Lf/i/a/a/h1/s0/f;->b:Z

    return-void

    .line 5
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v13, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    invoke-static {v1, v10, v11, v3, v3}, Lf/i/a/a/m1/h0;->f([JJZZ)I

    move-result v1

    move-object/from16 v14, p5

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    move-object/from16 v14, p5

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/s0/l;

    invoke-virtual {v1}, Lf/i/a/a/h1/s0/l;->c()J

    move-result-wide v1

    iget v4, v0, Lf/i/a/a/h1/v0/b;->g:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    long-to-int v1, v1

    if-gez v1, :cond_3

    .line 8
    new-instance v1, Lf/i/a/a/h1/p;

    invoke-direct {v1}, Lf/i/a/a/h1/p;-><init>()V

    iput-object v1, v0, Lf/i/a/a/h1/v0/b;->h:Ljava/io/IOException;

    return-void

    :cond_3
    :goto_0
    move v15, v1

    .line 9
    iget v1, v13, Lf/i/a/a/h1/v0/e/a$b;->k:I

    if-lt v15, v1, :cond_4

    .line 10
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v1, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v12, Lf/i/a/a/h1/s0/f;->b:Z

    return-void

    :cond_4
    sub-long v4, v10, p1

    .line 11
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->f:Lf/i/a/a/h1/v0/e/a;

    iget-boolean v2, v1, Lf/i/a/a/h1/v0/e/a;->d:Z

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_5

    move-wide/from16 v6, v16

    goto :goto_1

    .line 12
    :cond_5
    iget-object v1, v1, Lf/i/a/a/h1/v0/e/a;->f:[Lf/i/a/a/h1/v0/e/a$b;

    iget v2, v0, Lf/i/a/a/h1/v0/b;->b:I

    aget-object v1, v1, v2

    .line 13
    iget v2, v1, Lf/i/a/a/h1/v0/e/a$b;->k:I

    add-int/lit8 v2, v2, -0x1

    .line 14
    iget-object v3, v1, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v6, v3, v2

    .line 15
    invoke-virtual {v1, v2}, Lf/i/a/a/h1/v0/e/a$b;->c(I)J

    move-result-wide v1

    add-long/2addr v1, v6

    sub-long v1, v1, p1

    move-wide v6, v1

    .line 16
    :goto_1
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v1}, Lf/i/a/a/j1/j;->length()I

    move-result v1

    new-array v9, v1, [Lf/i/a/a/h1/s0/m;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    .line 17
    iget-object v3, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v3, v2}, Lf/i/a/a/j1/j;->e(I)I

    move-result v3

    .line 18
    new-instance v8, Lf/i/a/a/h1/v0/b$b;

    invoke-direct {v8, v13, v3, v15}, Lf/i/a/a/h1/v0/b$b;-><init>(Lf/i/a/a/h1/v0/e/a$b;II)V

    aput-object v8, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iget-object v1, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    move-wide/from16 v2, p1

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v9}, Lf/i/a/a/j1/j;->h(JJJLjava/util/List;[Lf/i/a/a/h1/s0/m;)V

    .line 20
    iget-object v1, v13, Lf/i/a/a/h1/v0/e/a$b;->o:[J

    aget-wide v35, v1, v15

    .line 21
    invoke-virtual {v13, v15}, Lf/i/a/a/h1/v0/e/a$b;->c(I)J

    move-result-wide v1

    add-long v26, v1, v35

    .line 22
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide/from16 v28, v10

    goto :goto_3

    :cond_7
    move-wide/from16 v28, v16

    .line 23
    :goto_3
    iget v1, v0, Lf/i/a/a/h1/v0/b;->g:I

    add-int/2addr v1, v15

    .line 24
    iget-object v2, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v2}, Lf/i/a/a/j1/j;->m()I

    move-result v2

    .line 25
    iget-object v3, v0, Lf/i/a/a/h1/v0/b;->c:[Lf/i/a/a/h1/s0/e;

    aget-object v37, v3, v2

    .line 26
    iget-object v3, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    invoke-interface {v3, v2}, Lf/i/a/a/j1/j;->e(I)I

    move-result v2

    .line 27
    invoke-virtual {v13, v2, v15}, Lf/i/a/a/h1/v0/e/a$b;->a(II)Landroid/net/Uri;

    move-result-object v4

    .line 28
    iget-object v2, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    .line 29
    invoke-interface {v2}, Lf/i/a/a/j1/j;->k()Lf/i/a/a/b0;

    move-result-object v21

    iget-object v2, v0, Lf/i/a/a/h1/v0/b;->d:Lf/i/a/a/l1/m;

    const/4 v9, 0x0

    iget-object v3, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    .line 30
    invoke-interface {v3}, Lf/i/a/a/j1/j;->l()I

    move-result v22

    iget-object v3, v0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    .line 31
    invoke-interface {v3}, Lf/i/a/a/j1/j;->p()Ljava/lang/Object;

    move-result-object v23

    .line 32
    new-instance v3, Lf/i/a/a/l1/p;

    move-object/from16 v20, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-direct/range {v3 .. v9}, Lf/i/a/a/l1/p;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 33
    new-instance v3, Lf/i/a/a/h1/s0/i;

    move-object/from16 v18, v3

    int-to-long v4, v1

    move-wide/from16 v32, v4

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v34, 0x1

    move-object/from16 v19, v2

    move-wide/from16 v24, v35

    invoke-direct/range {v18 .. v37}, Lf/i/a/a/h1/s0/i;-><init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;Lf/i/a/a/b0;ILjava/lang/Object;JJJJJIJLf/i/a/a/h1/s0/e;)V

    .line 34
    iput-object v3, v12, Lf/i/a/a/h1/s0/f;->a:Lf/i/a/a/h1/s0/d;

    return-void
.end method

.method public i(Lf/i/a/a/h1/s0/d;ZLjava/lang/Exception;J)Z
    .locals 1

    if-eqz p2, :cond_0

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, p2

    if-eqz v0, :cond_0

    .line 1
    iget-object p2, p0, Lf/i/a/a/h1/v0/b;->e:Lf/i/a/a/j1/j;

    iget-object p1, p1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 2
    invoke-interface {p2, p1}, Lf/i/a/a/j1/j;->g(Lf/i/a/a/b0;)I

    move-result p1

    invoke-interface {p2, p1, p4, p5}, Lf/i/a/a/j1/j;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
