.class public final Lf/i/a/a/b1/r/b;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# static fields
.field public static final q:I


# instance fields
.field public final a:Lf/i/a/a/m1/u;

.field public final b:Lf/i/a/a/m1/u;

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Lf/i/a/a/m1/u;

.field public final e:Lf/i/a/a/b1/r/c;

.field public f:Lf/i/a/a/b1/h;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lf/i/a/a/b1/r/a;

.field public p:Lf/i/a/a/b1/r/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FLV"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/r/b;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    .line 3
    new-instance v0, Lf/i/a/a/m1/u;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    .line 4
    new-instance v0, Lf/i/a/a/m1/u;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    .line 5
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/r/b;->d:Lf/i/a/a/m1/u;

    .line 6
    new-instance v0, Lf/i/a/a/b1/r/c;

    invoke-direct {v0}, Lf/i/a/a/b1/r/c;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/r/b;->e:Lf/i/a/a/b1/r/c;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lf/i/a/a/b1/r/b;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/b1/r/b;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    new-instance v1, Lf/i/a/a/b1/n$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lf/i/a/a/b1/r/b;->n:Z

    :cond_0
    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, Lf/i/a/a/b1/r/b;->g:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v7, :cond_9

    .line 2
    iget-boolean v2, v0, Lf/i/a/a/b1/r/b;->h:Z

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lf/i/a/a/b1/r/b;->i:J

    iget-wide v14, v0, Lf/i/a/a/b1/r/b;->m:J

    add-long/2addr v2, v14

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->e:Lf/i/a/a/b1/r/c;

    .line 3
    iget-wide v2, v2, Lf/i/a/a/b1/r/c;->b:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    move-wide v2, v10

    goto :goto_1

    .line 4
    :cond_2
    iget-wide v2, v0, Lf/i/a/a/b1/r/b;->m:J

    .line 5
    :goto_1
    iget v14, v0, Lf/i/a/a/b1/r/b;->k:I

    if-ne v14, v4, :cond_3

    iget-object v4, v0, Lf/i/a/a/b1/r/b;->o:Lf/i/a/a/b1/r/a;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/r/b;->b()V

    .line 7
    iget-object v4, v0, Lf/i/a/a/b1/r/b;->o:Lf/i/a/a/b1/r/a;

    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/r/b;->e(Lf/i/a/a/b1/d;)Lf/i/a/a/m1/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lf/i/a/a/b1/r/d;->a(Lf/i/a/a/m1/u;J)Z

    move-result v2

    goto :goto_2

    .line 8
    :cond_3
    iget v4, v0, Lf/i/a/a/b1/r/b;->k:I

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lf/i/a/a/b1/r/b;->p:Lf/i/a/a/b1/r/e;

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/r/b;->b()V

    .line 10
    iget-object v4, v0, Lf/i/a/a/b1/r/b;->p:Lf/i/a/a/b1/r/e;

    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/r/b;->e(Lf/i/a/a/b1/d;)Lf/i/a/a/m1/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lf/i/a/a/b1/r/d;->a(Lf/i/a/a/m1/u;J)Z

    move-result v2

    goto :goto_2

    .line 11
    :cond_4
    iget v4, v0, Lf/i/a/a/b1/r/b;->k:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    iget-boolean v4, v0, Lf/i/a/a/b1/r/b;->n:Z

    if-nez v4, :cond_6

    .line 12
    iget-object v4, v0, Lf/i/a/a/b1/r/b;->e:Lf/i/a/a/b1/r/c;

    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/r/b;->e(Lf/i/a/a/b1/d;)Lf/i/a/a/m1/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lf/i/a/a/b1/r/d;->a(Lf/i/a/a/m1/u;J)Z

    move-result v2

    .line 13
    iget-object v3, v0, Lf/i/a/a/b1/r/b;->e:Lf/i/a/a/b1/r/c;

    .line 14
    iget-wide v3, v3, Lf/i/a/a/b1/r/c;->b:J

    cmp-long v5, v3, v12

    if-eqz v5, :cond_5

    .line 15
    iget-object v5, v0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    new-instance v14, Lf/i/a/a/b1/n$b;

    .line 16
    invoke-direct {v14, v3, v4, v10, v11}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 17
    invoke-interface {v5, v14}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 18
    iput-boolean v9, v0, Lf/i/a/a/b1/r/b;->n:Z

    :cond_5
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iget v2, v0, Lf/i/a/a/b1/r/b;->l:I

    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 20
    :goto_3
    iget-boolean v4, v0, Lf/i/a/a/b1/r/b;->h:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 21
    iput-boolean v9, v0, Lf/i/a/a/b1/r/b;->h:Z

    .line 22
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->e:Lf/i/a/a/b1/r/c;

    .line 23
    iget-wide v4, v2, Lf/i/a/a/b1/r/c;->b:J

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    .line 24
    iget-wide v4, v0, Lf/i/a/a/b1/r/b;->m:J

    neg-long v10, v4

    :cond_7
    iput-wide v10, v0, Lf/i/a/a/b1/r/b;->i:J

    .line 25
    :cond_8
    iput v7, v0, Lf/i/a/a/b1/r/b;->j:I

    .line 26
    iput v6, v0, Lf/i/a/a/b1/r/b;->g:I

    if-eqz v3, :cond_0

    return v8

    .line 27
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 28
    :cond_a
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v8, v4, v9}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    .line 29
    :cond_b
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/u;->A(I)V

    .line 30
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    iput v2, v0, Lf/i/a/a/b1/r/b;->k:I

    .line 31
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->r()I

    move-result v2

    iput v2, v0, Lf/i/a/a/b1/r/b;->l:I

    .line 32
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->r()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lf/i/a/a/b1/r/b;->m:J

    .line 33
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v11, v0, Lf/i/a/a/b1/r/b;->m:J

    or-long/2addr v4, v11

    const-wide/16 v11, 0x3e8

    mul-long v4, v4, v11

    iput-wide v4, v0, Lf/i/a/a/b1/r/b;->m:J

    .line 34
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v10}, Lf/i/a/a/m1/u;->B(I)V

    .line 35
    iput v7, v0, Lf/i/a/a/b1/r/b;->g:I

    const/4 v8, 0x1

    :goto_4
    if-nez v8, :cond_0

    return v3

    .line 36
    :cond_c
    iget v2, v0, Lf/i/a/a/b1/r/b;->j:I

    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    .line 37
    iput v8, v0, Lf/i/a/a/b1/r/b;->j:I

    .line 38
    iput v10, v0, Lf/i/a/a/b1/r/b;->g:I

    goto/16 :goto_0

    .line 39
    :cond_d
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v1, v2, v8, v5, v9}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    .line 40
    :cond_e
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/u;->A(I)V

    .line 41
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v7}, Lf/i/a/a/m1/u;->B(I)V

    .line 42
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    const/4 v10, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    :cond_10
    if-eqz v10, :cond_11

    .line 43
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->o:Lf/i/a/a/b1/r/a;

    if-nez v2, :cond_11

    .line 44
    new-instance v2, Lf/i/a/a/b1/r/a;

    iget-object v10, v0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    .line 45
    invoke-interface {v10, v4, v9}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v4

    invoke-direct {v2, v4}, Lf/i/a/a/b1/r/a;-><init>(Lf/i/a/a/b1/p;)V

    iput-object v2, v0, Lf/i/a/a/b1/r/b;->o:Lf/i/a/a/b1/r/a;

    :cond_11
    if-eqz v8, :cond_12

    .line 46
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->p:Lf/i/a/a/b1/r/e;

    if-nez v2, :cond_12

    .line 47
    new-instance v2, Lf/i/a/a/b1/r/e;

    iget-object v4, v0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    .line 48
    invoke-interface {v4, v5, v6}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v4

    invoke-direct {v2, v4}, Lf/i/a/a/b1/r/e;-><init>(Lf/i/a/a/b1/p;)V

    iput-object v2, v0, Lf/i/a/a/b1/r/b;->p:Lf/i/a/a/b1/r/e;

    .line 49
    :cond_12
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    invoke-interface {v2}, Lf/i/a/a/b1/h;->d()V

    .line 50
    iget-object v2, v0, Lf/i/a/a/b1/r/b;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v7

    iput v2, v0, Lf/i/a/a/b1/r/b;->j:I

    .line 51
    iput v6, v0, Lf/i/a/a/b1/r/b;->g:I

    const/4 v8, 0x1

    :goto_6
    if-nez v8, :cond_0

    return v3
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/r/b;->f:Lf/i/a/a/b1/h;

    return-void
.end method

.method public final e(Lf/i/a/a/b1/d;)Lf/i/a/a/m1/u;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/b1/r/b;->l:I

    iget-object v1, p0, Lf/i/a/a/b1/r/b;->d:Lf/i/a/a/m1/u;

    .line 2
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 3
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 5
    iput-object v0, v1, Lf/i/a/a/m1/u;->a:[B

    .line 6
    iput v4, v1, Lf/i/a/a/m1/u;->c:I

    .line 7
    iput v4, v1, Lf/i/a/a/m1/u;->b:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->d:Lf/i/a/a/m1/u;

    iget v1, p0, Lf/i/a/a/b1/r/b;->l:I

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->z(I)V

    .line 10
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->d:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    iget v1, p0, Lf/i/a/a/b1/r/b;->l:I

    .line 11
    invoke-virtual {p1, v0, v4, v1, v4}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 12
    iget-object p1, p0, Lf/i/a/a/b1/r/b;->d:Lf/i/a/a/m1/u;

    return-object p1
.end method

.method public f(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lf/i/a/a/b1/r/b;->g:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/b1/r/b;->h:Z

    .line 3
    iput p1, p0, Lf/i/a/a/b1/r/b;->j:I

    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->r()I

    move-result v0

    sget v2, Lf/i/a/a/b1/r/b;->q:I

    if-eq v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 7
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 8
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->u()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 11
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 12
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    .line 13
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    .line 14
    invoke-virtual {p1, v0, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 15
    iget-object v0, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    .line 16
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 17
    iget-object p1, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {p1, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 18
    iget-object p1, p0, Lf/i/a/a/b1/r/b;->a:Lf/i/a/a/m1/u;

    invoke-virtual {p1}, Lf/i/a/a/m1/u;->d()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
