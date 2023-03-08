.class public final Lf/i/a/a/b1/v/j;
.super Lf/i/a/a/b1/v/h;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/v/j$a;
    }
.end annotation


# instance fields
.field public n:Lf/i/a/a/b1/v/j$a;

.field public o:I

.field public p:Z

.field public q:Lf/i/a/a/b1/v/m;

.field public r:Lf/i/a/a/b1/v/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/b1/v/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lf/i/a/a/b1/v/h;->g:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lf/i/a/a/b1/v/j;->p:Z

    .line 3
    iget-object p1, p0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    if-eqz p1, :cond_1

    iget v2, p1, Lf/i/a/a/b1/v/m;->d:I

    :cond_1
    iput v2, p0, Lf/i/a/a/b1/v/j;->o:I

    return-void
.end method

.method public d(Lf/i/a/a/m1/u;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    aget-byte v0, v0, v1

    iget-object v2, p0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    .line 3
    iget v4, v2, Lf/i/a/a/b1/v/j$a;->d:I

    shr-int/2addr v0, v3

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    .line 4
    iget-object v4, v2, Lf/i/a/a/b1/v/j$a;->c:[Lf/i/a/a/b1/v/l;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Lf/i/a/a/b1/v/l;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, v2, Lf/i/a/a/b1/v/j$a;->a:Lf/i/a/a/b1/v/m;

    iget v0, v0, Lf/i/a/a/b1/v/m;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v2, Lf/i/a/a/b1/v/j$a;->a:Lf/i/a/a/b1/v/m;

    iget v0, v0, Lf/i/a/a/b1/v/m;->e:I

    .line 7
    :goto_0
    iget-boolean v2, p0, Lf/i/a/a/b1/v/j;->p:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lf/i/a/a/b1/v/j;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    .line 8
    iget v4, p1, Lf/i/a/a/m1/u;->c:I

    add-int/lit8 v4, v4, 0x4

    .line 9
    invoke-virtual {p1, v4}, Lf/i/a/a/m1/u;->z(I)V

    .line 10
    iget-object v4, p1, Lf/i/a/a/m1/u;->a:[B

    .line 11
    iget p1, p1, Lf/i/a/a/m1/u;->c:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 12
    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 13
    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 14
    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 15
    aput-byte v5, v4, p1

    .line 16
    iput-boolean v3, p0, Lf/i/a/a/b1/v/j;->p:Z

    .line 17
    iput v0, p0, Lf/i/a/a/b1/v/j;->o:I

    return-wide v1
.end method

.method public e(Lf/i/a/a/m1/u;JLf/i/a/a/b1/v/h$b;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 3
    invoke-static {v5, v1, v3}, Lc/a/a/b/g/h;->u1(ILf/i/a/a/m1/u;Z)Z

    .line 4
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    .line 6
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->f()I

    move-result v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->f()I

    move-result v13

    .line 9
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->f()I

    move-result v14

    .line 10
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-double v5, v3

    move/from16 p2, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v3, v5

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    int-to-double v4, v2

    .line 12
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    const/4 v4, 0x1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 14
    :goto_0
    iget-object v4, v1, Lf/i/a/a/m1/u;->a:[B

    .line 15
    iget v1, v1, Lf/i/a/a/m1/u;->c:I

    .line 16
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v18

    .line 17
    new-instance v1, Lf/i/a/a/b1/v/m;

    move-object v6, v1

    move/from16 v14, p2

    move v15, v3

    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lf/i/a/a/b1/v/m;-><init>(JIJIIIIIZ[B)V

    .line 18
    iput-object v1, v0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    goto :goto_2

    .line 19
    :cond_2
    iget-object v2, v0, Lf/i/a/a/b1/v/j;->r:Lf/i/a/a/b1/v/k;

    const/4 v3, 0x3

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 20
    invoke-static {v3, v1, v2}, Lc/a/a/b/g/h;->u1(ILf/i/a/a/m1/u;Z)Z

    .line 21
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v2

    long-to-int v3, v2

    .line 22
    invoke-virtual {v1, v3}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    .line 24
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v5

    long-to-int v7, v5

    .line 25
    new-array v7, v7, [Ljava/lang/String;

    add-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_1
    int-to-long v8, v4

    cmp-long v10, v8, v5

    if-gez v10, :cond_3

    .line 26
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v3, v3, 0x4

    .line 27
    invoke-virtual {v1, v9}, Lf/i/a/a/m1/u;->m(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 28
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 30
    new-instance v1, Lf/i/a/a/b1/v/k;

    invoke-direct {v1, v2, v7, v3}, Lf/i/a/a/b1/v/k;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 31
    iput-object v1, v0, Lf/i/a/a/b1/v/j;->r:Lf/i/a/a/b1/v/k;

    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 32
    :cond_4
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "framing bit expected to be set"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_5
    iget v2, v1, Lf/i/a/a/m1/u;->c:I

    .line 34
    new-array v8, v2, [B

    .line 35
    iget-object v3, v1, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v2, v0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    iget v2, v2, Lf/i/a/a/b1/v/m;->a:I

    const/4 v3, 0x5

    .line 37
    invoke-static {v3, v1, v5}, Lc/a/a/b/g/h;->u1(ILf/i/a/a/m1/u;Z)Z

    .line 38
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/m1/u;->p()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 39
    new-instance v7, Lf/i/a/a/b1/v/i;

    iget-object v9, v1, Lf/i/a/a/m1/u;->a:[B

    invoke-direct {v7, v9}, Lf/i/a/a/b1/v/i;-><init>([B)V

    .line 40
    iget v1, v1, Lf/i/a/a/m1/u;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 41
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->c(I)V

    const/4 v1, 0x0

    :goto_3
    const/16 v9, 0x10

    const/16 v10, 0x18

    if-ge v1, v6, :cond_12

    .line 42
    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v11

    const v12, 0x564342

    if-ne v11, v12, :cond_11

    .line 43
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v9

    .line 44
    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v10

    .line 45
    new-array v11, v10, [J

    .line 46
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_8

    .line 47
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v12

    :goto_4
    if-ge v5, v10, :cond_b

    if-eqz v12, :cond_7

    .line 48
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 49
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    int-to-long v3, v15

    aput-wide v3, v11, v5

    goto :goto_5

    .line 50
    :cond_6
    aput-wide v13, v11, v5

    :goto_5
    const/4 v3, 0x5

    goto :goto_6

    .line 51
    :cond_7
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v13, v4

    aput-wide v13, v11, v5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x4

    const-wide/16 v13, 0x0

    goto :goto_4

    .line 52
    :cond_8
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v10, :cond_a

    sub-int v12, v10, v5

    .line 53
    invoke-static {v12}, Lc/a/a/b/g/h;->f0(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v12

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_9

    if-ge v5, v10, :cond_9

    int-to-long v14, v4

    .line 54
    aput-wide v14, v11, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x4

    .line 55
    :cond_b
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v5

    const/4 v4, 0x2

    if-gt v5, v4, :cond_10

    const/4 v11, 0x1

    if-eq v5, v11, :cond_c

    if-ne v5, v4, :cond_f

    :cond_c
    const/16 v4, 0x20

    .line 56
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 57
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->c(I)V

    const/4 v4, 0x4

    .line 58
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v12

    add-int/2addr v12, v11

    .line 59
    invoke-virtual {v7, v11}, Lf/i/a/a/b1/v/i;->c(I)V

    if-ne v5, v11, :cond_e

    if-eqz v9, :cond_d

    int-to-long v4, v10

    int-to-long v9, v9

    long-to-double v4, v4

    long-to-double v9, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v9

    .line 60
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v13, v4

    goto :goto_9

    :cond_d
    const-wide/16 v13, 0x0

    goto :goto_9

    :cond_e
    int-to-long v4, v10

    int-to-long v9, v9

    mul-long v13, v4, v9

    :goto_9
    int-to-long v4, v12

    mul-long v4, v4, v13

    long-to-int v5, v4

    .line 61
    invoke-virtual {v7, v5}, Lf/i/a/a/b1/v/i;->c(I)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    goto/16 :goto_3

    .line 62
    :cond_10
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-static {v2, v5}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_11
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    iget v3, v7, Lf/i/a/a/b1/v/i;->c:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, v7, Lf/i/a/a/b1/v/i;->d:I

    add-int/2addr v3, v4

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/4 v1, 0x6

    .line 66
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_14

    .line 67
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 68
    :cond_13
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_14
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_1e

    .line 70
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v1

    if-eqz v1, :cond_1c

    if-ne v1, v5, :cond_1b

    .line 71
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v1

    .line 72
    new-array v3, v1, [I

    const/4 v5, 0x0

    const/4 v9, -0x1

    :goto_c
    if-ge v5, v1, :cond_16

    const/4 v10, 0x4

    .line 73
    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v11

    aput v11, v3, v5

    .line 74
    aget v10, v3, v5

    if-le v10, v9, :cond_15

    .line 75
    aget v9, v3, v5

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 76
    new-array v5, v9, [I

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v9, :cond_19

    const/4 v11, 0x3

    .line 77
    invoke-virtual {v7, v11}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v5, v10

    const/4 v11, 0x2

    .line 78
    invoke-virtual {v7, v11}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v11

    const/16 v13, 0x8

    if-lez v11, :cond_17

    .line 79
    invoke-virtual {v7, v13}, Lf/i/a/a/b1/v/i;->c(I)V

    :cond_17
    const/4 v14, 0x0

    :goto_e
    shl-int/2addr v12, v11

    if-ge v14, v12, :cond_18

    .line 80
    invoke-virtual {v7, v13}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x8

    goto :goto_e

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_19
    const/4 v9, 0x2

    .line 81
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->c(I)V

    const/4 v9, 0x4

    .line 82
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_f
    if-ge v9, v1, :cond_1d

    .line 83
    aget v13, v3, v9

    .line 84
    aget v13, v5, v13

    add-int/2addr v11, v13

    :goto_10
    if-ge v12, v11, :cond_1a

    .line 85
    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 86
    :cond_1b
    new-instance v2, Lf/i/a/a/h0;

    const-string v3, "floor type greater than 1 not decodable: "

    invoke-static {v3, v1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    const/16 v1, 0x8

    .line 87
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->c(I)V

    const/16 v3, 0x10

    .line 88
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 89
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->c(I)V

    const/4 v3, 0x6

    .line 90
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 91
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->c(I)V

    const/4 v3, 0x4

    .line 92
    invoke-virtual {v7, v3}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v5, :cond_1d

    .line 93
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    goto :goto_11

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x6

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/16 v9, 0x10

    goto/16 :goto_b

    .line 94
    :cond_1e
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v3, :cond_25

    const/16 v6, 0x10

    .line 95
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_24

    const/16 v6, 0x18

    .line 96
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 97
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 98
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 99
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v1

    add-int/2addr v1, v4

    const/16 v4, 0x8

    .line 100
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 101
    new-array v6, v1, [I

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v1, :cond_20

    const/4 v10, 0x3

    .line 102
    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v10

    .line 103
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, 0x5

    .line 104
    invoke-virtual {v7, v11}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v11

    goto :goto_14

    :cond_1f
    const/4 v11, 0x0

    :goto_14
    mul-int/lit8 v11, v11, 0x8

    add-int/2addr v11, v10

    .line 105
    aput v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_20
    const/4 v9, 0x0

    :goto_15
    if-ge v9, v1, :cond_23

    const/4 v10, 0x0

    :goto_16
    if-ge v10, v4, :cond_22

    .line 106
    aget v11, v6, v9

    const/4 v12, 0x1

    shl-int/2addr v12, v10

    and-int/2addr v11, v12

    if-eqz v11, :cond_21

    .line 107
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->c(I)V

    :cond_21
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x8

    goto :goto_16

    :cond_22
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x8

    goto :goto_15

    :cond_23
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    const/4 v4, 0x1

    goto :goto_12

    .line 108
    :cond_24
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "residueType greater than 2 is not decodable"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_25
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_2c

    const/16 v4, 0x10

    .line 110
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    if-eqz v4, :cond_26

    const/4 v6, 0x4

    goto :goto_1c

    .line 111
    :cond_26
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x4

    .line 112
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_27
    const/4 v5, 0x1

    .line 113
    :goto_18
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v4, 0x8

    .line 114
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v4, :cond_28

    add-int/lit8 v9, v2, -0x1

    .line 115
    invoke-static {v9}, Lc/a/a/b/g/h;->f0(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 116
    invoke-static {v9}, Lc/a/a/b/g/h;->f0(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v4, 0x2

    .line 117
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    if-le v5, v4, :cond_29

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_29

    const/4 v6, 0x4

    .line 118
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_29
    const/4 v6, 0x4

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v5, :cond_2a

    const/16 v9, 0x8

    .line 119
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 120
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->c(I)V

    .line 121
    invoke-virtual {v7, v9}, Lf/i/a/a/b1/v/i;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 122
    :cond_2b
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    const/4 v1, 0x6

    .line 123
    invoke-virtual {v7, v1}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 124
    new-array v9, v1, [Lf/i/a/a/b1/v/l;

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2d

    .line 125
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v3

    const/16 v4, 0x10

    .line 126
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v5

    .line 127
    invoke-virtual {v7, v4}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v4

    const/16 v6, 0x8

    .line 128
    invoke-virtual {v7, v6}, Lf/i/a/a/b1/v/i;->b(I)I

    move-result v6

    .line 129
    new-instance v10, Lf/i/a/a/b1/v/l;

    invoke-direct {v10, v3, v5, v4, v6}, Lf/i/a/a/b1/v/l;-><init>(ZIII)V

    aput-object v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 130
    :cond_2d
    invoke-virtual {v7}, Lf/i/a/a/b1/v/i;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    add-int/lit8 v1, v1, -0x1

    .line 131
    invoke-static {v1}, Lc/a/a/b/g/h;->f0(I)I

    move-result v10

    .line 132
    new-instance v1, Lf/i/a/a/b1/v/j$a;

    iget-object v6, v0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    iget-object v7, v0, Lf/i/a/a/b1/v/j;->r:Lf/i/a/a/b1/v/k;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lf/i/a/a/b1/v/j$a;-><init>(Lf/i/a/a/b1/v/m;Lf/i/a/a/b1/v/k;[B[Lf/i/a/a/b1/v/l;I)V

    .line 133
    :goto_1e
    iput-object v1, v0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    return v1

    .line 134
    :cond_2e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, v0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    iget-object v1, v1, Lf/i/a/a/b1/v/j$a;->a:Lf/i/a/a/b1/v/m;

    iget-object v1, v1, Lf/i/a/a/b1/v/m;->f:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, v0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    iget-object v1, v1, Lf/i/a/a/b1/v/j$a;->b:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 137
    iget-object v1, v0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    iget-object v1, v1, Lf/i/a/a/b1/v/j$a;->a:Lf/i/a/a/b1/v/m;

    iget v5, v1, Lf/i/a/a/b1/v/m;->c:I

    const/4 v6, -0x1

    iget v7, v1, Lf/i/a/a/b1/v/m;->a:I

    iget-wide v10, v1, Lf/i/a/a/b1/v/m;->b:J

    long-to-int v8, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v3, "audio/vorbis"

    invoke-static/range {v2 .. v12}, Lf/i/a/a/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v1, v2, Lf/i/a/a/b1/v/h$b;->a:Lf/i/a/a/b0;

    const/4 v1, 0x1

    return v1

    .line 138
    :cond_2f
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "framing bit after modes not set as expected"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/i/a/a/b1/v/h;->f(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/v/j;->n:Lf/i/a/a/b1/v/j$a;

    .line 3
    iput-object p1, p0, Lf/i/a/a/b1/v/j;->q:Lf/i/a/a/b1/v/m;

    .line 4
    iput-object p1, p0, Lf/i/a/a/b1/v/j;->r:Lf/i/a/a/b1/v/k;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lf/i/a/a/b1/v/j;->o:I

    .line 6
    iput-boolean p1, p0, Lf/i/a/a/b1/v/j;->p:Z

    return-void
.end method
