.class public final Lf/i/a/a/b1/s/d$b;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/s/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/b1/s/d;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/s/d;Lf/i/a/a/b1/s/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILf/i/a/a/b1/d;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v2, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v4, :cond_1e

    const/16 v5, 0xa1

    const/16 v6, 0xa3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_5

    const/16 v5, 0x4255

    if-eq v0, v5, :cond_4

    const/16 v5, 0x47e2

    if-eq v0, v5, :cond_3

    const/16 v5, 0x53ab

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63a2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7672

    if-ne v0, v5, :cond_0

    .line 2
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Lf/i/a/a/b1/s/d$c;->t:[B

    .line 3
    invoke-virtual {v3, v4, v8, v1, v8}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 4
    :cond_0
    new-instance v1, Lf/i/a/a/h0;

    const-string v3, "Unexpected id: "

    invoke-static {v3, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Lf/i/a/a/b1/s/d$c;->i:[B

    .line 6
    invoke-virtual {v3, v4, v8, v1, v8}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 7
    :cond_2
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->i:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->i:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    rsub-int/lit8 v5, v1, 0x4

    .line 9
    invoke-virtual {v3, v0, v5, v1, v8}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 10
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->i:Lf/i/a/a/m1/u;

    invoke-virtual {v0, v8}, Lf/i/a/a/m1/u;->A(I)V

    .line 11
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->i:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v4, Lf/i/a/a/b1/s/d;->v:I

    goto/16 :goto_d

    .line 12
    :cond_3
    new-array v0, v1, [B

    .line 13
    invoke-virtual {v3, v0, v8, v1, v8}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 14
    iget-object v1, v4, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    new-instance v3, Lf/i/a/a/b1/p$a;

    invoke-direct {v3, v7, v0, v8, v8}, Lf/i/a/a/b1/p$a;-><init>(I[BII)V

    iput-object v3, v1, Lf/i/a/a/b1/s/d$c;->h:Lf/i/a/a/b1/p$a;

    goto/16 :goto_d

    .line 15
    :cond_4
    iget-object v0, v4, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    new-array v4, v1, [B

    iput-object v4, v0, Lf/i/a/a/b1/s/d$c;->g:[B

    .line 16
    invoke-virtual {v3, v4, v8, v1, v8}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    goto/16 :goto_d

    .line 17
    :cond_5
    iget v5, v4, Lf/i/a/a/b1/s/d;->E:I

    const/16 v9, 0x8

    if-nez v5, :cond_6

    .line 18
    iget-object v5, v4, Lf/i/a/a/b1/s/d;->b:Lf/i/a/a/b1/s/f;

    invoke-virtual {v5, v3, v8, v7, v9}, Lf/i/a/a/b1/s/f;->c(Lf/i/a/a/b1/d;ZZI)J

    move-result-wide v10

    long-to-int v5, v10

    iput v5, v4, Lf/i/a/a/b1/s/d;->K:I

    .line 19
    iget-object v5, v4, Lf/i/a/a/b1/s/d;->b:Lf/i/a/a/b1/s/f;

    .line 20
    iget v5, v5, Lf/i/a/a/b1/s/f;->c:I

    .line 21
    iput v5, v4, Lf/i/a/a/b1/s/d;->L:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide v10, v4, Lf/i/a/a/b1/s/d;->G:J

    .line 23
    iput v7, v4, Lf/i/a/a/b1/s/d;->E:I

    .line 24
    iget-object v5, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->v()V

    .line 25
    :cond_6
    iget-object v5, v4, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    iget v10, v4, Lf/i/a/a/b1/s/d;->K:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/s/d$c;

    if-nez v5, :cond_7

    .line 26
    iget v0, v4, Lf/i/a/a/b1/s/d;->L:I

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Lf/i/a/a/b1/d;->h(I)V

    .line 27
    iput v8, v4, Lf/i/a/a/b1/s/d;->E:I

    goto/16 :goto_d

    .line 28
    :cond_7
    iget v10, v4, Lf/i/a/a/b1/s/d;->E:I

    if-ne v10, v7, :cond_1b

    const/4 v10, 0x3

    .line 29
    invoke-virtual {v4, v3, v10}, Lf/i/a/a/b1/s/d;->h(Lf/i/a/a/b1/d;I)V

    .line 30
    iget-object v11, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v11, v11, Lf/i/a/a/m1/u;->a:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v7

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 31
    iput v7, v4, Lf/i/a/a/b1/s/d;->I:I

    .line 32
    iget-object v6, v4, Lf/i/a/a/b1/s/d;->J:[I

    invoke-static {v6, v7}, Lf/i/a/a/b1/s/d;->g([II)[I

    move-result-object v6

    iput-object v6, v4, Lf/i/a/a/b1/s/d;->J:[I

    .line 33
    iget v11, v4, Lf/i/a/a/b1/s/d;->L:I

    sub-int/2addr v1, v11

    sub-int/2addr v1, v10

    aput v1, v6, v8

    goto/16 :goto_6

    :cond_8
    if-ne v0, v6, :cond_1a

    const/4 v6, 0x4

    .line 34
    invoke-virtual {v4, v3, v6}, Lf/i/a/a/b1/s/d;->h(Lf/i/a/a/b1/d;I)V

    .line 35
    iget-object v14, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v14, v14, Lf/i/a/a/m1/u;->a:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v7

    iput v14, v4, Lf/i/a/a/b1/s/d;->I:I

    .line 36
    iget-object v15, v4, Lf/i/a/a/b1/s/d;->J:[I

    .line 37
    invoke-static {v15, v14}, Lf/i/a/a/b1/s/d;->g([II)[I

    move-result-object v14

    iput-object v14, v4, Lf/i/a/a/b1/s/d;->J:[I

    if-ne v11, v12, :cond_9

    .line 38
    iget v10, v4, Lf/i/a/a/b1/s/d;->L:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v6

    iget v6, v4, Lf/i/a/a/b1/s/d;->I:I

    div-int/2addr v1, v6

    .line 39
    invoke-static {v14, v8, v6, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_9
    if-ne v11, v7, :cond_c

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 40
    :goto_0
    iget v12, v4, Lf/i/a/a/b1/s/d;->I:I

    add-int/lit8 v14, v12, -0x1

    if-ge v10, v14, :cond_b

    .line 41
    iget-object v12, v4, Lf/i/a/a/b1/s/d;->J:[I

    aput v8, v12, v10

    :cond_a
    add-int/2addr v6, v7

    .line 42
    invoke-virtual {v4, v3, v6}, Lf/i/a/a/b1/s/d;->h(Lf/i/a/a/b1/d;I)V

    .line 43
    iget-object v12, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v12, v12, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v14, v6, -0x1

    aget-byte v12, v12, v14

    and-int/2addr v12, v13

    .line 44
    iget-object v14, v4, Lf/i/a/a/b1/s/d;->J:[I

    aget v15, v14, v10

    add-int/2addr v15, v12

    aput v15, v14, v10

    if-eq v12, v13, :cond_a

    .line 45
    aget v12, v14, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 46
    :cond_b
    iget-object v8, v4, Lf/i/a/a/b1/s/d;->J:[I

    sub-int/2addr v12, v7

    iget v10, v4, Lf/i/a/a/b1/s/d;->L:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v6

    sub-int/2addr v1, v11

    aput v1, v8, v12

    goto/16 :goto_6

    :cond_c
    if-ne v11, v10, :cond_19

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 47
    :goto_1
    iget v12, v4, Lf/i/a/a/b1/s/d;->I:I

    add-int/lit8 v14, v12, -0x1

    if-ge v10, v14, :cond_14

    .line 48
    iget-object v12, v4, Lf/i/a/a/b1/s/d;->J:[I

    aput v8, v12, v10

    add-int/lit8 v6, v6, 0x1

    .line 49
    invoke-virtual {v4, v3, v6}, Lf/i/a/a/b1/s/d;->h(Lf/i/a/a/b1/d;I)V

    .line 50
    iget-object v8, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v8, v8, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v12, v6, -0x1

    aget-byte v8, v8, v12

    if-eqz v8, :cond_13

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_f

    rsub-int/lit8 v16, v8, 0x7

    shl-int v7, v7, v16

    .line 51
    iget-object v14, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v14, v14, Lf/i/a/a/m1/u;->a:[B

    aget-byte v14, v14, v12

    and-int/2addr v14, v7

    if-eqz v14, :cond_e

    add-int/2addr v6, v8

    .line 52
    invoke-virtual {v4, v3, v6}, Lf/i/a/a/b1/s/d;->h(Lf/i/a/a/b1/d;I)V

    .line 53
    iget-object v14, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v14, v14, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, v14, v12

    and-int/2addr v12, v13

    not-int v7, v7

    and-int/2addr v7, v12

    int-to-long v13, v7

    move v7, v15

    move-wide v14, v13

    :goto_3
    if-ge v7, v6, :cond_d

    shl-long v12, v14, v9

    .line 54
    iget-object v14, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v14, v14, Lf/i/a/a/m1/u;->a:[B

    add-int/lit8 v15, v7, 0x1

    aget-byte v7, v14, v7

    const/16 v14, 0xff

    and-int/2addr v7, v14

    move/from16 v17, v10

    int-to-long v9, v7

    or-long/2addr v9, v12

    move v7, v15

    move-wide v14, v9

    move/from16 v10, v17

    const/16 v9, 0x8

    goto :goto_3

    :cond_d
    move/from16 v17, v10

    if-lez v17, :cond_10

    mul-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x6

    const-wide/16 v9, 0x1

    shl-long v7, v9, v8

    sub-long/2addr v7, v9

    sub-long/2addr v14, v7

    goto :goto_4

    :cond_e
    move/from16 v17, v10

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/16 v13, 0xff

    goto :goto_2

    :cond_f
    move/from16 v17, v10

    const-wide/16 v14, 0x0

    :cond_10
    :goto_4
    const-wide/32 v7, -0x80000000

    cmp-long v9, v14, v7

    if-ltz v9, :cond_12

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v14, v7

    if-gtz v9, :cond_12

    long-to-int v7, v14

    .line 55
    iget-object v8, v4, Lf/i/a/a/b1/s/d;->J:[I

    if-nez v17, :cond_11

    goto :goto_5

    :cond_11
    add-int/lit8 v10, v17, -0x1

    aget v9, v8, v10

    add-int/2addr v7, v9

    :goto_5
    aput v7, v8, v17

    .line 56
    iget-object v7, v4, Lf/i/a/a/b1/s/d;->J:[I

    aget v7, v7, v17

    add-int/2addr v11, v7

    add-int/lit8 v10, v17, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/16 v13, 0xff

    goto/16 :goto_1

    .line 57
    :cond_12
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_13
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_14
    iget-object v7, v4, Lf/i/a/a/b1/s/d;->J:[I

    const/4 v8, 0x1

    sub-int/2addr v12, v8

    iget v9, v4, Lf/i/a/a/b1/s/d;->L:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v11

    aput v1, v7, v12

    const/4 v7, 0x1

    .line 60
    :goto_6
    iget-object v1, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    aget-byte v1, v1, v7

    const/16 v7, 0xff

    and-int/2addr v1, v7

    or-int/2addr v1, v6

    .line 61
    iget-wide v6, v4, Lf/i/a/a/b1/s/d;->A:J

    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Lf/i/a/a/b1/s/d;->l(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v4, Lf/i/a/a/b1/s/d;->F:J

    .line 62
    iget-object v1, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v1, v1, Lf/i/a/a/m1/u;->a:[B

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    const/16 v7, 0x8

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    .line 63
    :goto_7
    iget v7, v5, Lf/i/a/a/b1/s/d$c;->d:I

    if-eq v7, v6, :cond_17

    const/16 v7, 0xa3

    if-ne v0, v7, :cond_16

    iget-object v7, v4, Lf/i/a/a/b1/s/d;->g:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    aget-byte v6, v7, v6

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_16

    goto :goto_8

    :cond_16
    const/4 v6, 0x0

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v6, 0x1

    :goto_9
    if-eqz v1, :cond_18

    const/high16 v1, -0x80000000

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v1, v6

    .line 64
    iput v1, v4, Lf/i/a/a/b1/s/d;->M:I

    const/4 v1, 0x2

    .line 65
    iput v1, v4, Lf/i/a/a/b1/s/d;->E:I

    const/4 v1, 0x0

    .line 66
    iput v1, v4, Lf/i/a/a/b1/s/d;->H:I

    goto :goto_b

    .line 67
    :cond_19
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unexpected lacing value: "

    invoke-static {v1, v11}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1a
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1d

    .line 69
    :goto_c
    iget v0, v4, Lf/i/a/a/b1/s/d;->H:I

    iget v1, v4, Lf/i/a/a/b1/s/d;->I:I

    if-ge v0, v1, :cond_1c

    .line 70
    iget-object v1, v4, Lf/i/a/a/b1/s/d;->J:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Lf/i/a/a/b1/s/d;->m(Lf/i/a/a/b1/d;Lf/i/a/a/b1/s/d$c;I)V

    .line 71
    iget-wide v0, v4, Lf/i/a/a/b1/s/d;->F:J

    iget v6, v4, Lf/i/a/a/b1/s/d;->H:I

    iget v7, v5, Lf/i/a/a/b1/s/d$c;->e:I

    mul-int v6, v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 72
    invoke-virtual {v4, v5, v0, v1}, Lf/i/a/a/b1/s/d;->b(Lf/i/a/a/b1/s/d$c;J)V

    .line 73
    iget v0, v4, Lf/i/a/a/b1/s/d;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lf/i/a/a/b1/s/d;->H:I

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    .line 74
    iput v0, v4, Lf/i/a/a/b1/s/d;->E:I

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    .line 75
    iget-object v1, v4, Lf/i/a/a/b1/s/d;->J:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Lf/i/a/a/b1/s/d;->m(Lf/i/a/a/b1/d;Lf/i/a/a/b1/s/d$c;I)V

    :goto_d
    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 76
    throw v0
.end method

.method public b(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v0, :cond_2

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->K:F

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->J:F

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->I:F

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->H:F

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->G:F

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->F:F

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->E:F

    goto :goto_0

    .line 9
    :pswitch_7
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->D:F

    goto :goto_0

    .line 10
    :pswitch_8
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->C:F

    goto :goto_0

    .line 11
    :pswitch_9
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->B:F

    goto :goto_0

    .line 12
    :pswitch_a
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->s:F

    goto :goto_0

    .line 13
    :pswitch_b
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->r:F

    goto :goto_0

    .line 14
    :pswitch_c
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-float p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->q:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 15
    iput-wide p1, v0, Lf/i/a/a/b1/s/d;->r:J

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    double-to-int p2, p2

    iput p2, p1, Lf/i/a/a/b1/s/d$c;->N:I

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 17
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public c(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v0, :cond_1c

    const/16 v1, 0x5031

    const-string v2, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iput-wide p2, v0, Lf/i/a/a/b1/s/d;->q:J

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->e:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v5, p1, Lf/i/a/a/b1/s/d$c;->p:I

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v6, p1, Lf/i/a/a/b1/s/d$c;->p:I

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v7, p1, Lf/i/a/a/b1/s/d$c;->p:I

    goto/16 :goto_0

    .line 7
    :cond_3
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v1, p1, Lf/i/a/a/b1/s/d$c;->p:I

    goto/16 :goto_0

    .line 8
    :sswitch_3
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->M:I

    goto/16 :goto_0

    .line 9
    :sswitch_4
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-wide p2, p1, Lf/i/a/a/b1/s/d$c;->P:J

    goto/16 :goto_0

    .line 10
    :sswitch_5
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-wide p2, p1, Lf/i/a/a/b1/s/d$c;->O:J

    goto/16 :goto_0

    .line 11
    :sswitch_6
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    cmp-long v0, p2, v3

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p1, Lf/i/a/a/b1/s/d$c;->R:Z

    goto/16 :goto_0

    .line 12
    :sswitch_7
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->n:I

    goto/16 :goto_0

    .line 13
    :sswitch_8
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->o:I

    goto/16 :goto_0

    .line 14
    :sswitch_9
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->m:I

    goto/16 :goto_0

    :sswitch_a
    long-to-int p1, p2

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v5, :cond_6

    const/16 p2, 0xf

    if-eq p1, p2, :cond_5

    goto/16 :goto_0

    .line 15
    :cond_5
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v5, p1, Lf/i/a/a/b1/s/d$c;->u:I

    goto/16 :goto_0

    .line 16
    :cond_6
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v7, p1, Lf/i/a/a/b1/s/d$c;->u:I

    goto/16 :goto_0

    .line 17
    :cond_7
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v6, p1, Lf/i/a/a/b1/s/d$c;->u:I

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v1, p1, Lf/i/a/a/b1/s/d$c;->u:I

    goto/16 :goto_0

    .line 19
    :sswitch_b
    iget-wide v1, v0, Lf/i/a/a/b1/s/d;->p:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Lf/i/a/a/b1/s/d;->w:J

    goto/16 :goto_0

    :sswitch_c
    cmp-long p1, p2, v3

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 20
    :cond_9
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 21
    :cond_a
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 22
    :cond_b
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-ltz p1, :cond_c

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_c

    goto/16 :goto_0

    .line 23
    :cond_c
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 24
    :cond_d
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :sswitch_11
    iput-boolean v7, v0, Lf/i/a/a/b1/s/d;->X:Z

    goto/16 :goto_0

    .line 26
    :sswitch_12
    iget-boolean p1, v0, Lf/i/a/a/b1/s/d;->D:Z

    if-nez p1, :cond_1a

    .line 27
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    invoke-virtual {p1, p2, p3}, Lf/i/a/a/m1/p;->a(J)V

    .line 28
    iput-boolean v7, v0, Lf/i/a/a/b1/s/d;->D:Z

    goto/16 :goto_0

    .line 29
    :sswitch_13
    invoke-virtual {v0, p2, p3}, Lf/i/a/a/b1/s/d;->l(J)J

    move-result-wide p1

    iput-wide p1, v0, Lf/i/a/a/b1/s/d;->A:J

    goto/16 :goto_0

    .line 30
    :sswitch_14
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->c:I

    goto/16 :goto_0

    .line 31
    :sswitch_15
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->l:I

    goto/16 :goto_0

    .line 32
    :sswitch_16
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    invoke-virtual {v0, p2, p3}, Lf/i/a/a/b1/s/d;->l(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lf/i/a/a/m1/p;->a(J)V

    goto/16 :goto_0

    .line 33
    :sswitch_17
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->k:I

    goto/16 :goto_0

    .line 34
    :sswitch_18
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->L:I

    goto/16 :goto_0

    .line 35
    :sswitch_19
    invoke-virtual {v0, p2, p3}, Lf/i/a/a/b1/s/d;->l(J)J

    move-result-wide p1

    iput-wide p1, v0, Lf/i/a/a/b1/s/d;->G:J

    goto/16 :goto_0

    .line 36
    :sswitch_1a
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    cmp-long v0, p2, v3

    if-nez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    iput-boolean v1, p1, Lf/i/a/a/b1/s/d$c;->S:Z

    goto/16 :goto_0

    .line 37
    :sswitch_1b
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->d:I

    goto/16 :goto_0

    .line 38
    :pswitch_0
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->A:I

    goto/16 :goto_0

    .line 39
    :pswitch_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    long-to-int p3, p2

    iput p3, p1, Lf/i/a/a/b1/s/d$c;->z:I

    goto/16 :goto_0

    .line 40
    :pswitch_2
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-boolean v7, p1, Lf/i/a/a/b1/s/d$c;->v:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_11

    const/16 p2, 0x9

    if-eq p3, p2, :cond_10

    const/4 p1, 0x4

    if-eq p3, p1, :cond_f

    const/4 p1, 0x5

    if-eq p3, p1, :cond_f

    if-eq p3, v2, :cond_f

    if-eq p3, v1, :cond_f

    goto/16 :goto_0

    .line 41
    :cond_f
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v6, p1, Lf/i/a/a/b1/s/d$c;->w:I

    goto :goto_0

    .line 42
    :cond_10
    iput v2, p1, Lf/i/a/a/b1/s/d$c;->w:I

    goto :goto_0

    .line 43
    :cond_11
    iput v7, p1, Lf/i/a/a/b1/s/d$c;->w:I

    goto :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_14

    const/16 p2, 0x10

    if-eq p1, p2, :cond_13

    const/16 p2, 0x12

    if-eq p1, p2, :cond_12

    if-eq p1, v2, :cond_14

    if-eq p1, v1, :cond_14

    goto :goto_0

    .line 44
    :cond_12
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v1, p1, Lf/i/a/a/b1/s/d$c;->x:I

    goto :goto_0

    .line 45
    :cond_13
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v2, p1, Lf/i/a/a/b1/s/d$c;->x:I

    goto :goto_0

    .line 46
    :cond_14
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v5, p1, Lf/i/a/a/b1/s/d$c;->x:I

    goto :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_16

    if-eq p1, v6, :cond_15

    goto :goto_0

    .line 47
    :cond_15
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v7, p1, Lf/i/a/a/b1/s/d$c;->y:I

    goto :goto_0

    .line 48
    :cond_16
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput v6, p1, Lf/i/a/a/b1/s/d$c;->y:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 49
    :cond_18
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 50
    :cond_1b
    new-instance p1, Lf/i/a/a/h0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    const/4 p1, 0x0

    .line 51
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1b
        0x88 -> :sswitch_1a
        0x9b -> :sswitch_19
        0x9f -> :sswitch_18
        0xb0 -> :sswitch_17
        0xb3 -> :sswitch_16
        0xba -> :sswitch_15
        0xd7 -> :sswitch_14
        0xe7 -> :sswitch_13
        0xf1 -> :sswitch_12
        0xfb -> :sswitch_11
        0x4254 -> :sswitch_10
        0x4285 -> :sswitch_f
        0x42f7 -> :sswitch_e
        0x47e1 -> :sswitch_d
        0x47e8 -> :sswitch_c
        0x53ac -> :sswitch_b
        0x53b8 -> :sswitch_a
        0x54b0 -> :sswitch_9
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/16 v2, 0xa0

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v2, 0xae

    if-eq p1, v2, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean p1, v0, Lf/i/a/a/b1/s/d;->u:Z

    if-nez p1, :cond_c

    .line 3
    iget-boolean p1, v0, Lf/i/a/a/b1/s/d;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Lf/i/a/a/b1/s/d;->y:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    .line 4
    iput-boolean v4, v0, Lf/i/a/a/b1/s/d;->x:Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->Y:Lf/i/a/a/b1/h;

    new-instance p2, Lf/i/a/a/b1/n$b;

    iget-wide p3, v0, Lf/i/a/a/b1/s/d;->s:J

    const-wide/16 v1, 0x0

    .line 6
    invoke-direct {p2, p3, p4, v1, v2}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 7
    invoke-interface {p1, p2}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 8
    iput-boolean v4, v0, Lf/i/a/a/b1/s/d;->u:Z

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lf/i/a/a/m1/p;

    invoke-direct {p1}, Lf/i/a/a/m1/p;-><init>()V

    iput-object p1, v0, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    .line 10
    new-instance p1, Lf/i/a/a/m1/p;

    invoke-direct {p1}, Lf/i/a/a/m1/p;-><init>()V

    iput-object p1, v0, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    goto :goto_1

    .line 11
    :cond_3
    iget-wide v4, v0, Lf/i/a/a/b1/s/d;->p:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    cmp-long p1, v4, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_0
    iput-wide p2, v0, Lf/i/a/a/b1/s/d;->p:J

    .line 14
    iput-wide p4, v0, Lf/i/a/a/b1/s/d;->o:J

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-boolean v4, p1, Lf/i/a/a/b1/s/d$c;->v:Z

    goto :goto_1

    .line 16
    :cond_7
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-boolean v4, p1, Lf/i/a/a/b1/s/d$c;->f:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 17
    iput p1, v0, Lf/i/a/a/b1/s/d;->v:I

    .line 18
    iput-wide v2, v0, Lf/i/a/a/b1/s/d;->w:J

    goto :goto_1

    .line 19
    :cond_9
    iput-boolean v3, v0, Lf/i/a/a/b1/s/d;->D:Z

    goto :goto_1

    .line 20
    :cond_a
    new-instance p1, Lf/i/a/a/b1/s/d$c;

    invoke-direct {p1, v1}, Lf/i/a/a/b1/s/d$c;-><init>(Lf/i/a/a/b1/s/d$a;)V

    iput-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    goto :goto_1

    .line 21
    :cond_b
    iput-boolean v3, v0, Lf/i/a/a/b1/s/d;->X:Z

    :cond_c
    :goto_1
    return-void

    .line 22
    :cond_d
    throw v1
.end method

.method public e(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v0, :cond_6

    const/16 v1, 0x86

    if-eq p1, v1, :cond_4

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_2

    const/16 v1, 0x536e

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    .line 3
    iput-object p2, p1, Lf/i/a/a/b1/s/d$c;->T:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-object p2, p1, Lf/i/a/a/b1/s/d$c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Lf/i/a/a/h0;

    const-string v0, "DocType "

    const-string v1, " not supported"

    invoke-static {v0, p2, v1}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    iget-object p1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iput-object p2, p1, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
