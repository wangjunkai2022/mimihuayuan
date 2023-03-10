.class public final Lf/i/a/a/b1/x/p;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lf/i/a/a/b1/x/j;


# instance fields
.field public final a:Lf/i/a/a/m1/u;

.field public final b:Lf/i/a/a/b1/l;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lf/i/a/a/b1/p;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/i/a/a/b1/x/p;->f:I

    .line 3
    new-instance v1, Lf/i/a/a/m1/u;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v1, p0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    .line 4
    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 5
    new-instance v0, Lf/i/a/a/b1/l;

    invoke-direct {v0}, Lf/i/a/a/b1/l;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/x/p;->b:Lf/i/a/a/b1/l;

    .line 6
    iput-object p1, p0, Lf/i/a/a/b1/x/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/x/p;->f:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/x/p;->g:I

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/b1/x/p;->i:Z

    return-void
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    if-lez v2, :cond_b

    .line 2
    iget v2, v0, Lf/i/a/a/b1/x/p;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    iget v3, v0, Lf/i/a/a/b1/x/p;->k:I

    iget v5, v0, Lf/i/a/a/b1/x/p;->g:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Lf/i/a/a/b1/x/p;->e:Lf/i/a/a/b1/p;

    invoke-interface {v3, v1, v2}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 5
    iget v3, v0, Lf/i/a/a/b1/x/p;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Lf/i/a/a/b1/x/p;->g:I

    .line 6
    iget v9, v0, Lf/i/a/a/b1/x/p;->k:I

    if-ge v3, v9, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, v0, Lf/i/a/a/b1/x/p;->e:Lf/i/a/a/b1/p;

    iget-wide v6, v0, Lf/i/a/a/b1/x/p;->l:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 8
    iget-wide v2, v0, Lf/i/a/a/b1/x/p;->l:J

    iget-wide v5, v0, Lf/i/a/a/b1/x/p;->j:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Lf/i/a/a/b1/x/p;->l:J

    .line 9
    iput v4, v0, Lf/i/a/a/b1/x/p;->g:I

    .line 10
    iput v4, v0, Lf/i/a/a/b1/x/p;->f:I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    iget v6, v0, Lf/i/a/a/b1/x/p;->g:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 13
    iget-object v6, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    iget-object v6, v6, Lf/i/a/a/m1/u;->a:[B

    iget v8, v0, Lf/i/a/a/b1/x/p;->g:I

    invoke-virtual {v1, v6, v8, v2}, Lf/i/a/a/m1/u;->c([BII)V

    .line 14
    iget v6, v0, Lf/i/a/a/b1/x/p;->g:I

    add-int/2addr v6, v2

    iput v6, v0, Lf/i/a/a/b1/x/p;->g:I

    if-ge v6, v7, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 16
    iget-object v2, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v2

    iget-object v6, v0, Lf/i/a/a/b1/x/p;->b:Lf/i/a/a/b1/l;

    invoke-static {v2, v6}, Lf/i/a/a/b1/l;->b(ILf/i/a/a/b1/l;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    iput v4, v0, Lf/i/a/a/b1/x/p;->g:I

    .line 18
    iput v5, v0, Lf/i/a/a/b1/x/p;->f:I

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, v0, Lf/i/a/a/b1/x/p;->b:Lf/i/a/a/b1/l;

    iget v6, v2, Lf/i/a/a/b1/l;->c:I

    iput v6, v0, Lf/i/a/a/b1/x/p;->k:I

    .line 20
    iget-boolean v6, v0, Lf/i/a/a/b1/x/p;->h:Z

    if-nez v6, :cond_5

    const-wide/32 v8, 0xf4240

    .line 21
    iget v6, v2, Lf/i/a/a/b1/l;->g:I

    int-to-long v10, v6

    mul-long v10, v10, v8

    iget v6, v2, Lf/i/a/a/b1/l;->d:I

    int-to-long v8, v6

    div-long/2addr v10, v8

    iput-wide v10, v0, Lf/i/a/a/b1/x/p;->j:J

    .line 22
    iget-object v12, v0, Lf/i/a/a/b1/x/p;->d:Ljava/lang/String;

    iget-object v13, v2, Lf/i/a/a/b1/l;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x1000

    iget v2, v2, Lf/i/a/a/b1/l;->e:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Lf/i/a/a/b1/x/p;->c:Ljava/lang/String;

    move/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v22, v8

    invoke-static/range {v12 .. v22}, Lf/i/a/a/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v2

    .line 23
    iget-object v6, v0, Lf/i/a/a/b1/x/p;->e:Lf/i/a/a/b1/p;

    invoke-interface {v6, v2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 24
    iput-boolean v5, v0, Lf/i/a/a/b1/x/p;->h:Z

    .line 25
    :cond_5
    iget-object v2, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/u;->A(I)V

    .line 26
    iget-object v2, v0, Lf/i/a/a/b1/x/p;->e:Lf/i/a/a/b1/p;

    iget-object v4, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    invoke-interface {v2, v4, v7}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 27
    iput v3, v0, Lf/i/a/a/b1/x/p;->f:I

    goto/16 :goto_0

    .line 28
    :cond_6
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    .line 29
    iget v6, v1, Lf/i/a/a/m1/u;->b:I

    .line 30
    iget v7, v1, Lf/i/a/a/m1/u;->c:I

    :goto_1
    if-ge v6, v7, :cond_a

    .line 31
    aget-byte v8, v2, v6

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 32
    :goto_2
    iget-boolean v9, v0, Lf/i/a/a/b1/x/p;->i:Z

    if-eqz v9, :cond_8

    aget-byte v9, v2, v6

    const/16 v10, 0xe0

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 33
    :goto_3
    iput-boolean v8, v0, Lf/i/a/a/b1/x/p;->i:Z

    if-eqz v9, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 34
    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->A(I)V

    .line 35
    iput-boolean v4, v0, Lf/i/a/a/b1/x/p;->i:Z

    .line 36
    iget-object v4, v0, Lf/i/a/a/b1/x/p;->a:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    aget-byte v2, v2, v6

    aput-byte v2, v4, v5

    .line 37
    iput v3, v0, Lf/i/a/a/b1/x/p;->g:I

    .line 38
    iput v5, v0, Lf/i/a/a/b1/x/p;->f:I

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 39
    :cond_a
    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->A(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/b1/x/p;->l:J

    return-void
.end method

.method public f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/x/p;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/x/p;->e:Lf/i/a/a/b1/p;

    return-void
.end method
