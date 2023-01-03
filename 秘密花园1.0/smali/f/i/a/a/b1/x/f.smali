.class public final Lf/i/a/a/b1/x/f;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lf/i/a/a/b1/x/j;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lf/i/a/a/m1/t;

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lf/i/a/a/b1/p;

.field public g:Lf/i/a/a/b1/p;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lf/i/a/a/b1/p;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lf/i/a/a/b1/x/f;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/t;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object v0, p0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    .line 3
    new-instance v0, Lf/i/a/a/m1/u;

    sget-object v1, Lf/i/a/a/b1/x/f;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object v0, p0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/b1/x/f;->h()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf/i/a/a/b1/x/f;->m:I

    .line 6
    iput v0, p0, Lf/i/a/a/b1/x/f;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lf/i/a/a/b1/x/f;->q:J

    .line 8
    iput-boolean p1, p0, Lf/i/a/a/b1/x/f;->a:Z

    .line 9
    iput-object p2, p0, Lf/i/a/a/b1/x/f;->d:Ljava/lang/String;

    return-void
.end method

.method public static g(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/b1/x/f;->l:Z

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/b1/x/f;->h()V

    return-void
.end method

.method public final b(Lf/i/a/a/m1/u;[BI)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    iget v1, p0, Lf/i/a/a/b1/x/f;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lf/i/a/a/b1/x/f;->i:I

    .line 3
    iget-object v2, p1, Lf/i/a/a/m1/u;->a:[B

    iget v3, p1, Lf/i/a/a/m1/u;->b:I

    invoke-static {v2, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lf/i/a/a/m1/u;->b:I

    .line 5
    iget p1, p0, Lf/i/a/a/b1/x/f;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lf/i/a/a/b1/x/f;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lf/i/a/a/m1/u;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    if-lez v2, :cond_21

    .line 2
    iget v2, v0, Lf/i/a/a/b1/x/f;->h:I

    const/4 v3, 0x6

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_c

    if-eq v2, v10, :cond_8

    const/16 v5, 0xa

    if-eq v2, v9, :cond_7

    if-eq v2, v6, :cond_2

    if-ne v2, v8, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    iget v3, v0, Lf/i/a/a/b1/x/f;->r:I

    iget v4, v0, Lf/i/a/a/b1/x/f;->i:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Lf/i/a/a/b1/x/f;->t:Lf/i/a/a/b1/p;

    invoke-interface {v3, v1, v2}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 5
    iget v3, v0, Lf/i/a/a/b1/x/f;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Lf/i/a/a/b1/x/f;->i:I

    .line 6
    iget v8, v0, Lf/i/a/a/b1/x/f;->r:I

    if-ne v3, v8, :cond_0

    .line 7
    iget-object v4, v0, Lf/i/a/a/b1/x/f;->t:Lf/i/a/a/b1/p;

    iget-wide v5, v0, Lf/i/a/a/b1/x/f;->s:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 8
    iget-wide v2, v0, Lf/i/a/a/b1/x/f;->s:J

    iget-wide v4, v0, Lf/i/a/a/b1/x/f;->u:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lf/i/a/a/b1/x/f;->s:J

    .line 9
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/x/f;->h()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_2
    iget-boolean v2, v0, Lf/i/a/a/b1/x/f;->k:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    .line 12
    :goto_1
    iget-object v11, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    iget-object v11, v11, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v0, v1, v11, v2}, Lf/i/a/a/b1/x/f;->b(Lf/i/a/a/m1/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v7}, Lf/i/a/a/m1/t;->j(I)V

    .line 14
    iget-boolean v2, v0, Lf/i/a/a/b1/x/f;->p:Z

    if-nez v2, :cond_5

    .line 15
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v9}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    add-int/2addr v2, v10

    if-eq v2, v9, :cond_4

    const/4 v2, 0x2

    .line 16
    :cond_4
    iget-object v5, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v5, v3}, Lf/i/a/a/m1/t;->l(I)V

    .line 17
    iget-object v5, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/t;->f(I)I

    move-result v5

    .line 18
    iget v6, v0, Lf/i/a/a/b1/x/f;->n:I

    .line 19
    invoke-static {v2, v6, v5}, Lf/i/a/a/m1/i;->a(III)[B

    move-result-object v2

    .line 20
    invoke-static {v2}, Lf/i/a/a/m1/i;->e([B)Landroid/util/Pair;

    move-result-object v5

    .line 21
    iget-object v11, v0, Lf/i/a/a/b1/x/f;->e:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 23
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lf/i/a/a/b1/x/f;->d:Ljava/lang/String;

    const-string v12, "audio/mp4a-latm"

    move-object/from16 v21, v2

    .line 24
    invoke-static/range {v11 .. v21}, Lf/i/a/a/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v2

    const-wide/32 v5, 0x3d090000

    .line 25
    iget v11, v2, Lf/i/a/a/b0;->w:I

    int-to-long v11, v11

    div-long/2addr v5, v11

    iput-wide v5, v0, Lf/i/a/a/b1/x/f;->q:J

    .line 26
    iget-object v5, v0, Lf/i/a/a/b1/x/f;->f:Lf/i/a/a/b1/p;

    invoke-interface {v5, v2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 27
    iput-boolean v10, v0, Lf/i/a/a/b1/x/f;->p:Z

    goto :goto_2

    .line 28
    :cond_5
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v5}, Lf/i/a/a/m1/t;->l(I)V

    .line 29
    :goto_2
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/t;->l(I)V

    .line 30
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    sub-int/2addr v2, v9

    sub-int/2addr v2, v3

    .line 31
    iget-boolean v3, v0, Lf/i/a/a/b1/x/f;->k:Z

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, -0x2

    .line 32
    :cond_6
    iget-object v3, v0, Lf/i/a/a/b1/x/f;->f:Lf/i/a/a/b1/p;

    iget-wide v4, v0, Lf/i/a/a/b1/x/f;->q:J

    .line 33
    iput v8, v0, Lf/i/a/a/b1/x/f;->h:I

    .line 34
    iput v7, v0, Lf/i/a/a/b1/x/f;->i:I

    .line 35
    iput-object v3, v0, Lf/i/a/a/b1/x/f;->t:Lf/i/a/a/b1/p;

    .line 36
    iput-wide v4, v0, Lf/i/a/a/b1/x/f;->u:J

    .line 37
    iput v2, v0, Lf/i/a/a/b1/x/f;->r:I

    goto/16 :goto_0

    .line 38
    :cond_7
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v0, v1, v2, v5}, Lf/i/a/a/b1/x/f;->b(Lf/i/a/a/m1/u;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->g:Lf/i/a/a/b1/p;

    iget-object v4, v0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    invoke-interface {v2, v4, v5}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 40
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 41
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->g:Lf/i/a/a/b1/p;

    iget-object v3, v0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    .line 42
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->o()I

    move-result v3

    add-int/2addr v3, v5

    .line 43
    iput v8, v0, Lf/i/a/a/b1/x/f;->h:I

    .line 44
    iput v5, v0, Lf/i/a/a/b1/x/f;->i:I

    .line 45
    iput-object v2, v0, Lf/i/a/a/b1/x/f;->t:Lf/i/a/a/b1/p;

    const-wide/16 v4, 0x0

    .line 46
    iput-wide v4, v0, Lf/i/a/a/b1/x/f;->u:J

    .line 47
    iput v3, v0, Lf/i/a/a/b1/x/f;->r:I

    goto/16 :goto_0

    .line 48
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->a()I

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 49
    :cond_9
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    iget-object v3, v2, Lf/i/a/a/m1/t;->a:[B

    iget-object v4, v1, Lf/i/a/a/m1/u;->a:[B

    .line 50
    iget v11, v1, Lf/i/a/a/m1/u;->b:I

    .line 51
    aget-byte v4, v4, v11

    aput-byte v4, v3, v7

    .line 52
    invoke-virtual {v2, v9}, Lf/i/a/a/m1/t;->j(I)V

    .line 53
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    .line 54
    iget v3, v0, Lf/i/a/a/b1/x/f;->n:I

    if-eq v3, v5, :cond_a

    if-eq v2, v3, :cond_a

    .line 55
    iput-boolean v7, v0, Lf/i/a/a/b1/x/f;->l:Z

    .line 56
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/x/f;->h()V

    goto/16 :goto_0

    .line 57
    :cond_a
    iget-boolean v3, v0, Lf/i/a/a/b1/x/f;->l:Z

    if-nez v3, :cond_b

    .line 58
    iput-boolean v10, v0, Lf/i/a/a/b1/x/f;->l:Z

    .line 59
    iget v3, v0, Lf/i/a/a/b1/x/f;->o:I

    iput v3, v0, Lf/i/a/a/b1/x/f;->m:I

    .line 60
    iput v2, v0, Lf/i/a/a/b1/x/f;->n:I

    .line 61
    :cond_b
    iput v6, v0, Lf/i/a/a/b1/x/f;->h:I

    .line 62
    iput v7, v0, Lf/i/a/a/b1/x/f;->i:I

    goto/16 :goto_0

    .line 63
    :cond_c
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    .line 64
    iget v11, v1, Lf/i/a/a/m1/u;->b:I

    .line 65
    iget v12, v1, Lf/i/a/a/m1/u;->c:I

    :goto_3
    if-ge v11, v12, :cond_20

    add-int/lit8 v13, v11, 0x1

    .line 66
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    .line 67
    iget v14, v0, Lf/i/a/a/b1/x/f;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_1a

    int-to-byte v14, v11

    const v16, 0xff00

    and-int/lit16 v14, v14, 0xff

    or-int v14, v14, v16

    .line 68
    invoke-static {v14}, Lf/i/a/a/b1/x/f;->g(I)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 69
    iget-boolean v14, v0, Lf/i/a/a/b1/x/f;->l:Z

    if-nez v14, :cond_17

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 70
    invoke-virtual {v1, v15}, Lf/i/a/a/m1/u;->A(I)V

    .line 71
    iget-object v15, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    iget-object v15, v15, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v0, v1, v15, v10}, Lf/i/a/a/b1/x/f;->i(Lf/i/a/a/m1/u;[BI)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_5

    .line 72
    :cond_d
    iget-object v15, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v15, v8}, Lf/i/a/a/m1/t;->j(I)V

    .line 73
    iget-object v15, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v15, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v15

    .line 74
    iget v7, v0, Lf/i/a/a/b1/x/f;->m:I

    if-eq v7, v5, :cond_e

    if-eq v15, v7, :cond_e

    goto/16 :goto_5

    .line 75
    :cond_e
    iget v7, v0, Lf/i/a/a/b1/x/f;->n:I

    if-eq v7, v5, :cond_11

    .line 76
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    iget-object v7, v7, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v0, v1, v7, v10}, Lf/i/a/a/b1/x/f;->i(Lf/i/a/a/m1/u;[BI)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_4

    .line 77
    :cond_f
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/t;->j(I)V

    .line 78
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v8}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    .line 79
    iget v9, v0, Lf/i/a/a/b1/x/f;->n:I

    if-eq v7, v9, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v7, v14, 0x2

    .line 80
    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->A(I)V

    .line 81
    :cond_11
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    iget-object v7, v7, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v0, v1, v7, v8}, Lf/i/a/a/b1/x/f;->i(Lf/i/a/a/m1/u;[BI)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_4

    .line 82
    :cond_12
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    const/16 v9, 0xe

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/t;->j(I)V

    .line 83
    iget-object v7, v0, Lf/i/a/a/b1/x/f;->b:Lf/i/a/a/m1/t;

    invoke-virtual {v7, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v7

    if-gt v7, v3, :cond_13

    goto :goto_5

    :cond_13
    add-int/2addr v14, v7

    add-int/lit8 v7, v14, 0x1

    .line 84
    iget v9, v1, Lf/i/a/a/m1/u;->c:I

    if-lt v7, v9, :cond_14

    goto :goto_4

    .line 85
    :cond_14
    iget-object v9, v1, Lf/i/a/a/m1/u;->a:[B

    aget-byte v14, v9, v14

    aget-byte v9, v9, v7

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v14

    .line 86
    invoke-static {v9}, Lf/i/a/a/b1/x/f;->g(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 87
    iget v9, v0, Lf/i/a/a/b1/x/f;->m:I

    if-eq v9, v5, :cond_15

    iget-object v9, v1, Lf/i/a/a/m1/u;->a:[B

    aget-byte v7, v9, v7

    and-int/lit8 v7, v7, 0x8

    shr-int/2addr v7, v6

    if-ne v7, v15, :cond_16

    :cond_15
    :goto_4
    const/4 v7, 0x1

    goto :goto_6

    :cond_16
    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_1a

    :cond_17
    and-int/lit8 v2, v11, 0x8

    shr-int/2addr v2, v6

    .line 88
    iput v2, v0, Lf/i/a/a/b1/x/f;->o:I

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_7

    :cond_18
    const/4 v2, 0x0

    .line 89
    :goto_7
    iput-boolean v2, v0, Lf/i/a/a/b1/x/f;->k:Z

    .line 90
    iget-boolean v2, v0, Lf/i/a/a/b1/x/f;->l:Z

    if-nez v2, :cond_19

    .line 91
    iput v10, v0, Lf/i/a/a/b1/x/f;->h:I

    const/4 v2, 0x0

    .line 92
    iput v2, v0, Lf/i/a/a/b1/x/f;->i:I

    goto :goto_8

    :cond_19
    const/4 v2, 0x0

    .line 93
    iput v6, v0, Lf/i/a/a/b1/x/f;->h:I

    .line 94
    iput v2, v0, Lf/i/a/a/b1/x/f;->i:I

    .line 95
    :goto_8
    invoke-virtual {v1, v13}, Lf/i/a/a/m1/u;->A(I)V

    goto/16 :goto_0

    .line 96
    :cond_1a
    iget v7, v0, Lf/i/a/a/b1/x/f;->j:I

    or-int v9, v11, v7

    const/16 v11, 0x149

    if-eq v9, v11, :cond_1f

    const/16 v11, 0x1ff

    if-eq v9, v11, :cond_1e

    const/16 v11, 0x344

    if-eq v9, v11, :cond_1d

    const/16 v11, 0x433

    if-eq v9, v11, :cond_1c

    const/16 v9, 0x100

    if-eq v7, v9, :cond_1b

    .line 97
    iput v9, v0, Lf/i/a/a/b1/x/f;->j:I

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_a

    :cond_1b
    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_9

    :cond_1c
    const/4 v7, 0x2

    .line 98
    iput v7, v0, Lf/i/a/a/b1/x/f;->h:I

    .line 99
    sget-object v2, Lf/i/a/a/b1/x/f;->v:[B

    array-length v2, v2

    iput v2, v0, Lf/i/a/a/b1/x/f;->i:I

    const/4 v9, 0x0

    .line 100
    iput v9, v0, Lf/i/a/a/b1/x/f;->r:I

    .line 101
    iget-object v2, v0, Lf/i/a/a/b1/x/f;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v9}, Lf/i/a/a/m1/u;->A(I)V

    .line 102
    invoke-virtual {v1, v13}, Lf/i/a/a/m1/u;->A(I)V

    goto/16 :goto_0

    :cond_1d
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x400

    .line 103
    iput v11, v0, Lf/i/a/a/b1/x/f;->j:I

    goto :goto_9

    :cond_1e
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x200

    .line 104
    iput v11, v0, Lf/i/a/a/b1/x/f;->j:I

    goto :goto_9

    :cond_1f
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/16 v11, 0x300

    .line 105
    iput v11, v0, Lf/i/a/a/b1/x/f;->j:I

    :goto_9
    move v11, v13

    :goto_a
    const/4 v7, 0x0

    const/4 v9, 0x2

    goto/16 :goto_3

    .line 106
    :cond_20
    invoke-virtual {v1, v11}, Lf/i/a/a/m1/u;->A(I)V

    goto/16 :goto_0

    :cond_21
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/b1/x/f;->s:J

    return-void
.end method

.method public f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/x/f;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/b1/x/f;->f:Lf/i/a/a/b1/p;

    .line 4
    iget-boolean v0, p0, Lf/i/a/a/b1/x/f;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->a()V

    .line 6
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/x/f;->g:Lf/i/a/a/b1/p;

    .line 7
    invoke-virtual {p2}, Lf/i/a/a/b1/x/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Lf/i/a/a/b0;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lf/i/a/a/b1/f;

    invoke-direct {p1}, Lf/i/a/a/b1/f;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/x/f;->g:Lf/i/a/a/b1/p;

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/x/f;->h:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/x/f;->i:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lf/i/a/a/b1/x/f;->j:I

    return-void
.end method

.method public final i(Lf/i/a/a/m1/u;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/m1/u;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Lf/i/a/a/m1/u;->a:[B

    iget v2, p1, Lf/i/a/a/m1/u;->b:I

    invoke-static {v0, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p2, p1, Lf/i/a/a/m1/u;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Lf/i/a/a/m1/u;->b:I

    const/4 p1, 0x1

    return p1
.end method
