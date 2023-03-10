.class public Lf/i/a/a/b1/v/c;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# instance fields
.field public a:Lf/i/a/a/b1/h;

.field public b:Lf/i/a/a/b1/v/h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(Lf/i/a/a/b1/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/b1/v/e;

    invoke-direct {v0}, Lf/i/a/a/b1/v/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i/a/a/b1/v/e;->a(Lf/i/a/a/b1/d;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, v0, Lf/i/a/a/b1/v/e;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget v0, v0, Lf/i/a/a/b1/v/e;->f:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lf/i/a/a/m1/u;

    invoke-direct {v2, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    .line 5
    iget-object v4, v2, Lf/i/a/a/m1/u;->a:[B

    .line 6
    invoke-virtual {p1, v4, v3, v0, v3}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 7
    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 8
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Lf/i/a/a/b1/v/b;

    invoke-direct {p1}, Lf/i/a/a/b1/v/b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 12
    :try_start_0
    invoke-static {v1, v2, v1}, Lc/a/a/b/g/h;->w1(ILf/i/a/a/m1/u;Z)Z

    move-result p1
    :try_end_0
    .catch Lf/i/a/a/h0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Lf/i/a/a/b1/v/j;

    invoke-direct {p1}, Lf/i/a/a/b1/v/j;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 15
    invoke-static {v2}, Lf/i/a/a/b1/v/g;->h(Lf/i/a/a/m1/u;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Lf/i/a/a/b1/v/g;

    invoke-direct {p1}, Lf/i/a/a/b1/v/g;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    :goto_2
    return v1

    :cond_4
    :goto_3
    return v3
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/v/c;->b(Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput v3, v1, Lf/i/a/a/b1/d;->f:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Failed to determine bitstream type"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lf/i/a/a/b1/v/c;->c:Z

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 6
    iget-object v2, v0, Lf/i/a/a/b1/v/c;->a:Lf/i/a/a/b1/h;

    invoke-interface {v2, v3, v4}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v2

    .line 7
    iget-object v5, v0, Lf/i/a/a/b1/v/c;->a:Lf/i/a/a/b1/h;

    invoke-interface {v5}, Lf/i/a/a/b1/h;->d()V

    .line 8
    iget-object v5, v0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    iget-object v6, v0, Lf/i/a/a/b1/v/c;->a:Lf/i/a/a/b1/h;

    .line 9
    iput-object v6, v5, Lf/i/a/a/b1/v/h;->c:Lf/i/a/a/b1/h;

    .line 10
    iput-object v2, v5, Lf/i/a/a/b1/v/h;->b:Lf/i/a/a/b1/p;

    .line 11
    invoke-virtual {v5, v4}, Lf/i/a/a/b1/v/h;->f(Z)V

    .line 12
    iput-boolean v4, v0, Lf/i/a/a/b1/v/c;->c:Z

    .line 13
    :cond_2
    iget-object v2, v0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    .line 14
    iget v5, v2, Lf/i/a/a/b1/v/h;->h:I

    const-wide/16 v6, -0x1

    const/4 v8, 0x3

    const/4 v15, 0x2

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    if-ne v5, v15, :cond_9

    .line 15
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    invoke-interface {v5, v1}, Lf/i/a/a/b1/v/f;->c(Lf/i/a/a/b1/d;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-ltz v5, :cond_3

    move-object/from16 v5, p2

    .line 16
    iput-wide v9, v5, Lf/i/a/a/b1/m;->a:J

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_3
    cmp-long v5, v9, v6

    if-gez v5, :cond_4

    const-wide/16 v13, 0x2

    add-long/2addr v9, v13

    neg-long v9, v9

    .line 17
    invoke-virtual {v2, v9, v10}, Lf/i/a/a/b1/v/h;->c(J)V

    .line 18
    :cond_4
    iget-boolean v5, v2, Lf/i/a/a/b1/v/h;->l:Z

    if-nez v5, :cond_5

    .line 19
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    invoke-interface {v5}, Lf/i/a/a/b1/v/f;->a()Lf/i/a/a/b1/n;

    move-result-object v5

    .line 20
    iget-object v9, v2, Lf/i/a/a/b1/v/h;->c:Lf/i/a/a/b1/h;

    invoke-interface {v9, v5}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 21
    iput-boolean v4, v2, Lf/i/a/a/b1/v/h;->l:Z

    .line 22
    :cond_5
    iget-wide v4, v2, Lf/i/a/a/b1/v/h;->k:J

    cmp-long v9, v4, v11

    if-gtz v9, :cond_7

    iget-object v4, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    invoke-virtual {v4, v1}, Lf/i/a/a/b1/v/d;->b(Lf/i/a/a/b1/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    iput v8, v2, Lf/i/a/a/b1/v/h;->h:I

    goto :goto_3

    .line 24
    :cond_7
    :goto_1
    iput-wide v11, v2, Lf/i/a/a/b1/v/h;->k:J

    .line 25
    iget-object v1, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    .line 26
    iget-object v1, v1, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    .line 27
    invoke-virtual {v2, v1}, Lf/i/a/a/b1/v/h;->d(Lf/i/a/a/m1/u;)J

    move-result-wide v4

    cmp-long v8, v4, v11

    if-ltz v8, :cond_8

    .line 28
    iget-wide v8, v2, Lf/i/a/a/b1/v/h;->g:J

    add-long v10, v8, v4

    iget-wide v12, v2, Lf/i/a/a/b1/v/h;->e:J

    cmp-long v14, v10, v12

    if-ltz v14, :cond_8

    .line 29
    invoke-virtual {v2, v8, v9}, Lf/i/a/a/b1/v/h;->a(J)J

    move-result-wide v16

    .line 30
    iget-object v8, v2, Lf/i/a/a/b1/v/h;->b:Lf/i/a/a/b1/p;

    .line 31
    iget v9, v1, Lf/i/a/a/m1/u;->c:I

    .line 32
    invoke-interface {v8, v1, v9}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 33
    iget-object v15, v2, Lf/i/a/a/b1/v/h;->b:Lf/i/a/a/b1/p;

    const/16 v18, 0x1

    .line 34
    iget v1, v1, Lf/i/a/a/m1/u;->c:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v1

    .line 35
    invoke-interface/range {v15 .. v21}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 36
    iput-wide v6, v2, Lf/i/a/a/b1/v/h;->e:J

    .line 37
    :cond_8
    iget-wide v6, v2, Lf/i/a/a/b1/v/h;->g:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lf/i/a/a/b1/v/h;->g:J

    goto/16 :goto_8

    .line 38
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 39
    :cond_a
    iget-wide v4, v2, Lf/i/a/a/b1/v/h;->f:J

    long-to-int v5, v4

    invoke-virtual {v1, v5}, Lf/i/a/a/b1/d;->h(I)V

    .line 40
    iput v15, v2, Lf/i/a/a/b1/v/h;->h:I

    goto/16 :goto_8

    :cond_b
    const/4 v5, 0x1

    :cond_c
    :goto_2
    if-eqz v5, :cond_e

    .line 41
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    invoke-virtual {v5, v1}, Lf/i/a/a/b1/v/d;->b(Lf/i/a/a/b1/d;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 42
    iput v8, v2, Lf/i/a/a/b1/v/h;->h:I

    :goto_3
    const/4 v3, -0x1

    goto/16 :goto_8

    .line 43
    :cond_d
    iget-wide v9, v1, Lf/i/a/a/b1/d;->d:J

    .line 44
    iget-wide v11, v2, Lf/i/a/a/b1/v/h;->f:J

    sub-long/2addr v9, v11

    iput-wide v9, v2, Lf/i/a/a/b1/v/h;->k:J

    .line 45
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    .line 46
    iget-object v5, v5, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    .line 47
    iget-object v9, v2, Lf/i/a/a/b1/v/h;->j:Lf/i/a/a/b1/v/h$b;

    invoke-virtual {v2, v5, v11, v12, v9}, Lf/i/a/a/b1/v/h;->e(Lf/i/a/a/m1/u;JLf/i/a/a/b1/v/h$b;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 48
    iget-wide v9, v1, Lf/i/a/a/b1/d;->d:J

    .line 49
    iput-wide v9, v2, Lf/i/a/a/b1/v/h;->f:J

    goto :goto_2

    .line 50
    :cond_e
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->j:Lf/i/a/a/b1/v/h$b;

    iget-object v5, v5, Lf/i/a/a/b1/v/h$b;->a:Lf/i/a/a/b0;

    iget v8, v5, Lf/i/a/a/b0;->w:I

    iput v8, v2, Lf/i/a/a/b1/v/h;->i:I

    .line 51
    iget-boolean v8, v2, Lf/i/a/a/b1/v/h;->m:Z

    if-nez v8, :cond_f

    .line 52
    iget-object v8, v2, Lf/i/a/a/b1/v/h;->b:Lf/i/a/a/b1/p;

    invoke-interface {v8, v5}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 53
    iput-boolean v4, v2, Lf/i/a/a/b1/v/h;->m:Z

    .line 54
    :cond_f
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->j:Lf/i/a/a/b1/v/h$b;

    iget-object v5, v5, Lf/i/a/a/b1/v/h$b;->b:Lf/i/a/a/b1/v/f;

    const/4 v13, 0x0

    if-eqz v5, :cond_10

    .line 55
    iput-object v5, v2, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    goto :goto_4

    .line 56
    :cond_10
    iget-wide v8, v1, Lf/i/a/a/b1/d;->c:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_11

    .line 57
    new-instance v1, Lf/i/a/a/b1/v/h$c;

    invoke-direct {v1, v13}, Lf/i/a/a/b1/v/h$c;-><init>(Lf/i/a/a/b1/v/h$a;)V

    iput-object v1, v2, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    :goto_4
    move-object v3, v13

    const/4 v5, 0x2

    goto :goto_6

    .line 58
    :cond_11
    iget-object v5, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    .line 59
    iget-object v5, v5, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    .line 60
    iget v6, v5, Lf/i/a/a/b1/v/e;->b:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_12

    const/16 v17, 0x1

    goto :goto_5

    :cond_12
    const/16 v17, 0x0

    .line 61
    :goto_5
    new-instance v4, Lf/i/a/a/b1/v/a;

    iget-wide v9, v2, Lf/i/a/a/b1/v/h;->f:J

    .line 62
    iget-wide v11, v1, Lf/i/a/a/b1/d;->c:J

    .line 63
    iget v1, v5, Lf/i/a/a/b1/v/e;->e:I

    iget v6, v5, Lf/i/a/a/b1/v/e;->f:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v0, v5, Lf/i/a/a/b1/v/e;->c:J

    move-wide v5, v6

    move-object v7, v4

    move-object v8, v2

    move-object v3, v13

    move-wide v13, v5

    const/4 v5, 0x2

    move-wide v15, v0

    invoke-direct/range {v7 .. v17}, Lf/i/a/a/b1/v/a;-><init>(Lf/i/a/a/b1/v/h;JJJJZ)V

    iput-object v4, v2, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    .line 64
    :goto_6
    iput-object v3, v2, Lf/i/a/a/b1/v/h;->j:Lf/i/a/a/b1/v/h$b;

    .line 65
    iput v5, v2, Lf/i/a/a/b1/v/h;->h:I

    .line 66
    iget-object v0, v2, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    .line 67
    iget-object v0, v0, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    iget-object v1, v0, Lf/i/a/a/m1/u;->a:[B

    array-length v2, v1

    const v3, 0xfe01

    if-ne v2, v3, :cond_13

    goto :goto_7

    .line 68
    :cond_13
    iget v2, v0, Lf/i/a/a/m1/u;->c:I

    .line 69
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/m1/u;->a:[B

    :goto_7
    const/4 v3, 0x0

    :goto_8
    return v3
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/v/c;->a:Lf/i/a/a/b1/h;

    return-void
.end method

.method public f(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/v/c;->b:Lf/i/a/a/b1/v/h;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lf/i/a/a/b1/v/h;->a:Lf/i/a/a/b1/v/d;

    .line 3
    iget-object v2, v1, Lf/i/a/a/b1/v/d;->a:Lf/i/a/a/b1/v/e;

    invoke-virtual {v2}, Lf/i/a/a/b1/v/e;->b()V

    .line 4
    iget-object v2, v1, Lf/i/a/a/b1/v/d;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->v()V

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Lf/i/a/a/b1/v/d;->c:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lf/i/a/a/b1/v/d;->e:Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 7
    iget-boolean p1, v0, Lf/i/a/a/b1/v/h;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lf/i/a/a/b1/v/h;->f(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lf/i/a/a/b1/v/h;->h:I

    if-eqz p1, :cond_1

    .line 9
    iget p1, v0, Lf/i/a/a/b1/v/h;->i:I

    int-to-long p1, p1

    mul-long p1, p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 10
    iput-wide p1, v0, Lf/i/a/a/b1/v/h;->e:J

    .line 11
    iget-object p3, v0, Lf/i/a/a/b1/v/h;->d:Lf/i/a/a/b1/v/f;

    invoke-interface {p3, p1, p2}, Lf/i/a/a/b1/v/f;->d(J)V

    const/4 p1, 0x2

    .line 12
    iput p1, v0, Lf/i/a/a/b1/v/h;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lf/i/a/a/b1/v/c;->b(Lf/i/a/a/b1/d;)Z

    move-result p1
    :try_end_0
    .catch Lf/i/a/a/h0; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
