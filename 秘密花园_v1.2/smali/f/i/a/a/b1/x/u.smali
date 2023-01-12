.class public final Lf/i/a/a/b1/x/u;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/x/u$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/m1/e0;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lf/i/a/a/b1/x/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Lf/i/a/a/b1/x/t;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lf/i/a/a/b1/x/s;

.field public j:Lf/i/a/a/b1/h;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lf/i/a/a/m1/e0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lf/i/a/a/m1/e0;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    .line 4
    new-instance v0, Lf/i/a/a/m1/u;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v0, p0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/x/u;->b:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lf/i/a/a/b1/x/t;

    invoke-direct {v0}, Lf/i/a/a/b1/x/t;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/x/u;->d:Lf/i/a/a/b1/x/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

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

    move-object/from16 v2, p2

    .line 1
    iget-wide v9, v1, Lf/i/a/a/b1/d;->c:J

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v15, v9, v11

    if-eqz v15, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x1ba

    if-eqz v3, :cond_b

    .line 2
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->d:Lf/i/a/a/b1/x/t;

    .line 3
    iget-boolean v6, v3, Lf/i/a/a/b1/x/t;->c:Z

    if-nez v6, :cond_b

    .line 4
    iget-boolean v6, v3, Lf/i/a/a/b1/x/t;->e:Z

    const-wide/16 v8, 0x4e20

    if-nez v6, :cond_4

    .line 5
    iget-wide v10, v1, Lf/i/a/a/b1/d;->c:J

    .line 6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    int-to-long v8, v6

    sub-long/2addr v10, v8

    .line 7
    iget-wide v8, v1, Lf/i/a/a/b1/d;->d:J

    cmp-long v12, v8, v10

    if-eqz v12, :cond_1

    .line 8
    iput-wide v10, v2, Lf/i/a/a/b1/m;->a:J

    goto :goto_3

    .line 9
    :cond_1
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 10
    iput v13, v1, Lf/i/a/a/b1/d;->f:I

    .line 11
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 12
    invoke-virtual {v1, v2, v13, v6, v13}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 13
    iget-object v1, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    .line 14
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 15
    iget v6, v1, Lf/i/a/a/m1/u;->c:I

    add-int/lit8 v6, v6, -0x4

    :goto_1
    if-lt v6, v2, :cond_3

    .line 16
    iget-object v8, v1, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v3, v8, v6}, Lf/i/a/a/b1/x/t;->b([BI)I

    move-result v8

    if-ne v8, v7, :cond_2

    add-int/lit8 v8, v6, 0x4

    .line 17
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->A(I)V

    .line 18
    invoke-static {v1}, Lf/i/a/a/b1/x/t;->c(Lf/i/a/a/m1/u;)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2

    move-wide v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 19
    :cond_3
    :goto_2
    iput-wide v4, v3, Lf/i/a/a/b1/x/t;->g:J

    .line 20
    iput-boolean v14, v3, Lf/i/a/a/b1/x/t;->e:Z

    goto/16 :goto_6

    .line 21
    :cond_4
    iget-wide v10, v3, Lf/i/a/a/b1/x/t;->g:J

    cmp-long v6, v10, v4

    if-nez v6, :cond_5

    .line 22
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/t;->a(Lf/i/a/a/b1/d;)I

    goto/16 :goto_6

    .line 23
    :cond_5
    iget-boolean v6, v3, Lf/i/a/a/b1/x/t;->d:Z

    if-nez v6, :cond_9

    .line 24
    iget-wide v10, v1, Lf/i/a/a/b1/d;->c:J

    .line 25
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    .line 26
    iget-wide v8, v1, Lf/i/a/a/b1/d;->d:J

    int-to-long v10, v13

    cmp-long v12, v8, v10

    if-eqz v12, :cond_6

    .line 27
    iput-wide v10, v2, Lf/i/a/a/b1/m;->a:J

    :goto_3
    const/4 v13, 0x1

    goto :goto_6

    .line 28
    :cond_6
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 29
    iput v13, v1, Lf/i/a/a/b1/d;->f:I

    .line 30
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 31
    invoke-virtual {v1, v2, v13, v6, v13}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 32
    iget-object v1, v3, Lf/i/a/a/b1/x/t;->b:Lf/i/a/a/m1/u;

    .line 33
    iget v2, v1, Lf/i/a/a/m1/u;->b:I

    .line 34
    iget v6, v1, Lf/i/a/a/m1/u;->c:I

    :goto_4
    add-int/lit8 v8, v6, -0x3

    if-ge v2, v8, :cond_8

    .line 35
    iget-object v8, v1, Lf/i/a/a/m1/u;->a:[B

    invoke-virtual {v3, v8, v2}, Lf/i/a/a/b1/x/t;->b([BI)I

    move-result v8

    if-ne v8, v7, :cond_7

    add-int/lit8 v8, v2, 0x4

    .line 36
    invoke-virtual {v1, v8}, Lf/i/a/a/m1/u;->A(I)V

    .line 37
    invoke-static {v1}, Lf/i/a/a/b1/x/t;->c(Lf/i/a/a/m1/u;)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_7

    move-wide v4, v8

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 38
    :cond_8
    :goto_5
    iput-wide v4, v3, Lf/i/a/a/b1/x/t;->f:J

    .line 39
    iput-boolean v14, v3, Lf/i/a/a/b1/x/t;->d:Z

    goto :goto_6

    .line 40
    :cond_9
    iget-wide v6, v3, Lf/i/a/a/b1/x/t;->f:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_a

    .line 41
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/t;->a(Lf/i/a/a/b1/d;)I

    goto :goto_6

    .line 42
    :cond_a
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {v2, v6, v7}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v4

    .line 43
    iget-object v2, v3, Lf/i/a/a/b1/x/t;->a:Lf/i/a/a/m1/e0;

    iget-wide v6, v3, Lf/i/a/a/b1/x/t;->g:J

    invoke-virtual {v2, v6, v7}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 44
    iput-wide v6, v3, Lf/i/a/a/b1/x/t;->h:J

    .line 45
    invoke-virtual {v3, v1}, Lf/i/a/a/b1/x/t;->a(Lf/i/a/a/b1/d;)I

    :goto_6
    return v13

    .line 46
    :cond_b
    iget-boolean v3, v0, Lf/i/a/a/b1/x/u;->k:Z

    const-wide/16 v11, 0x0

    if-nez v3, :cond_d

    .line 47
    iput-boolean v14, v0, Lf/i/a/a/b1/x/u;->k:Z

    .line 48
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->d:Lf/i/a/a/b1/x/t;

    .line 49
    iget-wide v7, v3, Lf/i/a/a/b1/x/t;->h:J

    cmp-long v6, v7, v4

    if-eqz v6, :cond_c

    .line 50
    new-instance v5, Lf/i/a/a/b1/x/s;

    .line 51
    iget-object v4, v3, Lf/i/a/a/b1/x/t;->a:Lf/i/a/a/m1/e0;

    move-object v3, v5

    move-object v14, v5

    move-wide v5, v7

    move-wide v7, v9

    .line 52
    invoke-direct/range {v3 .. v8}, Lf/i/a/a/b1/x/s;-><init>(Lf/i/a/a/m1/e0;JJ)V

    iput-object v14, v0, Lf/i/a/a/b1/x/u;->i:Lf/i/a/a/b1/x/s;

    .line 53
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->j:Lf/i/a/a/b1/h;

    .line 54
    iget-object v4, v14, Lf/i/a/a/b1/a;->a:Lf/i/a/a/b1/a$a;

    .line 55
    invoke-interface {v3, v4}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    goto :goto_7

    .line 56
    :cond_c
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->j:Lf/i/a/a/b1/h;

    new-instance v4, Lf/i/a/a/b1/n$b;

    .line 57
    invoke-direct {v4, v7, v8, v11, v12}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 58
    invoke-interface {v3, v4}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 59
    :cond_d
    :goto_7
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->i:Lf/i/a/a/b1/x/s;

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    .line 60
    iget-object v3, v3, Lf/i/a/a/b1/a;->c:Lf/i/a/a/b1/a$d;

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_f

    .line 61
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->i:Lf/i/a/a/b1/x/s;

    invoke-virtual {v3, v1, v2, v4}, Lf/i/a/a/b1/a;->a(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;Lf/i/a/a/b1/a$c;)I

    move-result v1

    return v1

    .line 62
    :cond_f
    iput v13, v1, Lf/i/a/a/b1/d;->f:I

    if-eqz v15, :cond_10

    .line 63
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/b1/d;->c()J

    move-result-wide v2

    sub-long/2addr v9, v2

    goto :goto_9

    :cond_10
    const-wide/16 v9, -0x1

    :goto_9
    const/4 v2, -0x1

    const-wide/16 v5, -0x1

    cmp-long v3, v9, v5

    if-eqz v3, :cond_11

    const-wide/16 v5, 0x4

    cmp-long v3, v9, v5

    if-gez v3, :cond_11

    return v2

    .line 64
    :cond_11
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v13, v5, v6}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    .line 65
    :cond_12
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v3, v13}, Lf/i/a/a/m1/u;->A(I)V

    .line 66
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v3}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    const/16 v6, 0x1b9

    if-ne v3, v6, :cond_13

    return v2

    :cond_13
    const/16 v2, 0x1ba

    if-ne v3, v2, :cond_14

    .line 67
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    const/16 v3, 0xa

    .line 68
    invoke-virtual {v1, v2, v13, v3, v13}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 69
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->A(I)V

    .line 70
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 71
    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    return v13

    :cond_14
    const/16 v2, 0x1bb

    const/4 v6, 0x2

    const/4 v7, 0x6

    if-ne v3, v2, :cond_15

    .line 72
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 73
    invoke-virtual {v1, v2, v13, v6, v13}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 74
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v13}, Lf/i/a/a/m1/u;->A(I)V

    .line 75
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v2

    add-int/2addr v2, v7

    .line 76
    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    return v13

    :cond_15
    and-int/lit16 v2, v3, -0x100

    const/16 v8, 0x8

    shr-int/2addr v2, v8

    const/4 v9, 0x1

    if-eq v2, v9, :cond_16

    .line 77
    invoke-virtual {v1, v9}, Lf/i/a/a/b1/d;->h(I)V

    return v13

    :cond_16
    and-int/lit16 v2, v3, 0xff

    .line 78
    iget-object v3, v0, Lf/i/a/a/b1/x/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/b1/x/u$a;

    .line 79
    iget-boolean v9, v0, Lf/i/a/a/b1/x/u;->e:Z

    if-nez v9, :cond_1c

    if-nez v3, :cond_1a

    const/16 v9, 0xbd

    if-ne v2, v9, :cond_17

    .line 80
    new-instance v9, Lf/i/a/a/b1/x/b;

    .line 81
    invoke-direct {v9, v4}, Lf/i/a/a/b1/x/b;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 82
    iput-boolean v10, v0, Lf/i/a/a/b1/x/u;->f:Z

    .line 83
    iget-wide v14, v1, Lf/i/a/a/b1/d;->d:J

    .line 84
    iput-wide v14, v0, Lf/i/a/a/b1/x/u;->h:J

    :goto_a
    move-object v4, v9

    goto :goto_b

    :cond_17
    const/4 v10, 0x1

    and-int/lit16 v9, v2, 0xe0

    const/16 v14, 0xc0

    if-ne v9, v14, :cond_18

    .line 85
    new-instance v9, Lf/i/a/a/b1/x/p;

    .line 86
    invoke-direct {v9, v4}, Lf/i/a/a/b1/x/p;-><init>(Ljava/lang/String;)V

    .line 87
    iput-boolean v10, v0, Lf/i/a/a/b1/x/u;->f:Z

    .line 88
    iget-wide v14, v1, Lf/i/a/a/b1/d;->d:J

    .line 89
    iput-wide v14, v0, Lf/i/a/a/b1/x/u;->h:J

    goto :goto_a

    :cond_18
    and-int/lit16 v9, v2, 0xf0

    const/16 v14, 0xe0

    if-ne v9, v14, :cond_19

    .line 90
    new-instance v9, Lf/i/a/a/b1/x/k;

    .line 91
    invoke-direct {v9, v4}, Lf/i/a/a/b1/x/k;-><init>(Lf/i/a/a/b1/x/d0;)V

    .line 92
    iput-boolean v10, v0, Lf/i/a/a/b1/x/u;->g:Z

    .line 93
    iget-wide v14, v1, Lf/i/a/a/b1/d;->d:J

    .line 94
    iput-wide v14, v0, Lf/i/a/a/b1/x/u;->h:J

    goto :goto_a

    :cond_19
    :goto_b
    if-eqz v4, :cond_1a

    .line 95
    new-instance v3, Lf/i/a/a/b1/x/c0$d;

    const/16 v9, 0x100

    const/high16 v10, -0x80000000

    .line 96
    invoke-direct {v3, v10, v2, v9}, Lf/i/a/a/b1/x/c0$d;-><init>(III)V

    .line 97
    iget-object v9, v0, Lf/i/a/a/b1/x/u;->j:Lf/i/a/a/b1/h;

    invoke-interface {v4, v9, v3}, Lf/i/a/a/b1/x/j;->f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    .line 98
    new-instance v3, Lf/i/a/a/b1/x/u$a;

    iget-object v9, v0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    invoke-direct {v3, v4, v9}, Lf/i/a/a/b1/x/u$a;-><init>(Lf/i/a/a/b1/x/j;Lf/i/a/a/m1/e0;)V

    .line 99
    iget-object v4, v0, Lf/i/a/a/b1/x/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_1a
    iget-boolean v2, v0, Lf/i/a/a/b1/x/u;->f:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lf/i/a/a/b1/x/u;->g:Z

    if-eqz v2, :cond_1b

    iget-wide v9, v0, Lf/i/a/a/b1/x/u;->h:J

    const-wide/16 v14, 0x2000

    add-long/2addr v9, v14

    goto :goto_c

    :cond_1b
    const-wide/32 v9, 0x100000

    .line 101
    :goto_c
    iget-wide v14, v1, Lf/i/a/a/b1/d;->d:J

    cmp-long v2, v14, v9

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    .line 102
    iput-boolean v2, v0, Lf/i/a/a/b1/x/u;->e:Z

    .line 103
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->j:Lf/i/a/a/b1/h;

    invoke-interface {v2}, Lf/i/a/a/b1/h;->d()V

    .line 104
    :cond_1c
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    .line 105
    invoke-virtual {v1, v2, v13, v6, v13}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 106
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v13}, Lf/i/a/a/m1/u;->A(I)V

    .line 107
    iget-object v2, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v2

    add-int/2addr v2, v7

    if-nez v3, :cond_1d

    .line 108
    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    goto/16 :goto_d

    .line 109
    :cond_1d
    iget-object v4, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v4, v2}, Lf/i/a/a/m1/u;->w(I)V

    .line 110
    iget-object v4, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    .line 111
    invoke-virtual {v1, v4, v13, v2, v13}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 112
    iget-object v1, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v7}, Lf/i/a/a/m1/u;->A(I)V

    .line 113
    iget-object v1, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    .line 114
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    iget-object v2, v2, Lf/i/a/a/m1/t;->a:[B

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v13, v4}, Lf/i/a/a/m1/u;->c([BII)V

    .line 115
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v13}, Lf/i/a/a/m1/t;->j(I)V

    .line 116
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/t;->l(I)V

    .line 117
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2}, Lf/i/a/a/m1/t;->e()Z

    move-result v2

    iput-boolean v2, v3, Lf/i/a/a/b1/x/u$a;->d:Z

    .line 118
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2}, Lf/i/a/a/m1/t;->e()Z

    move-result v2

    iput-boolean v2, v3, Lf/i/a/a/b1/x/u$a;->e:Z

    .line 119
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v7}, Lf/i/a/a/m1/t;->l(I)V

    .line 120
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v8}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    iput v2, v3, Lf/i/a/a/b1/x/u$a;->g:I

    .line 121
    iget-object v6, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    iget-object v6, v6, Lf/i/a/a/m1/t;->a:[B

    invoke-virtual {v1, v6, v13, v2}, Lf/i/a/a/m1/u;->c([BII)V

    .line 122
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v13}, Lf/i/a/a/m1/t;->j(I)V

    .line 123
    iput-wide v11, v3, Lf/i/a/a/b1/x/u$a;->h:J

    .line 124
    iget-boolean v2, v3, Lf/i/a/a/b1/x/u$a;->d:Z

    if-eqz v2, :cond_1f

    .line 125
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v5}, Lf/i/a/a/m1/t;->l(I)V

    .line 126
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    .line 127
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 128
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    shl-int/2addr v8, v10

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 129
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 130
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v8

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 131
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v9}, Lf/i/a/a/m1/t;->l(I)V

    .line 132
    iget-boolean v8, v3, Lf/i/a/a/b1/x/u$a;->f:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v3, Lf/i/a/a/b1/x/u$a;->e:Z

    if-eqz v8, :cond_1e

    .line 133
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v5}, Lf/i/a/a/m1/t;->l(I)V

    .line 134
    iget-object v8, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v8, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v4

    int-to-long v8, v4

    shl-long/2addr v8, v2

    .line 135
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 136
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    shl-int/2addr v2, v10

    int-to-long v11, v2

    or-long/2addr v8, v11

    .line 137
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 138
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v10}, Lf/i/a/a/m1/t;->f(I)I

    move-result v2

    int-to-long v10, v2

    or-long/2addr v8, v10

    .line 139
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    invoke-virtual {v2, v4}, Lf/i/a/a/m1/t;->l(I)V

    .line 140
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->b:Lf/i/a/a/m1/e0;

    invoke-virtual {v2, v8, v9}, Lf/i/a/a/m1/e0;->b(J)J

    .line 141
    iput-boolean v4, v3, Lf/i/a/a/b1/x/u$a;->f:Z

    .line 142
    :cond_1e
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->b:Lf/i/a/a/m1/e0;

    invoke-virtual {v2, v6, v7}, Lf/i/a/a/m1/e0;->b(J)J

    move-result-wide v6

    iput-wide v6, v3, Lf/i/a/a/b1/x/u$a;->h:J

    .line 143
    :cond_1f
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->a:Lf/i/a/a/b1/x/j;

    iget-wide v6, v3, Lf/i/a/a/b1/x/u$a;->h:J

    invoke-interface {v2, v6, v7, v5}, Lf/i/a/a/b1/x/j;->e(JI)V

    .line 144
    iget-object v2, v3, Lf/i/a/a/b1/x/u$a;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v2, v1}, Lf/i/a/a/b1/x/j;->c(Lf/i/a/a/m1/u;)V

    .line 145
    iget-object v1, v3, Lf/i/a/a/b1/x/u$a;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {v1}, Lf/i/a/a/b1/x/j;->d()V

    .line 146
    iget-object v1, v0, Lf/i/a/a/b1/x/u;->c:Lf/i/a/a/m1/u;

    .line 147
    iget-object v2, v1, Lf/i/a/a/m1/u;->a:[B

    array-length v2, v2

    .line 148
    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->z(I)V

    :goto_d
    return v13
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/u;->j:Lf/i/a/a/b1/h;

    return-void
.end method

.method public f(JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    .line 2
    invoke-virtual {p1}, Lf/i/a/a/m1/e0;->c()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    .line 4
    iget-wide p1, p1, Lf/i/a/a/m1/e0;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, p1, p3

    if-eqz v3, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    .line 6
    iput-wide v1, p1, Lf/i/a/a/m1/e0;->c:J

    .line 7
    iget-object p1, p0, Lf/i/a/a/b1/x/u;->a:Lf/i/a/a/m1/e0;

    invoke-virtual {p1, p3, p4}, Lf/i/a/a/m1/e0;->d(J)V

    .line 8
    :cond_2
    iget-object p1, p0, Lf/i/a/a/b1/x/u;->i:Lf/i/a/a/b1/x/s;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p3, p4}, Lf/i/a/a/b1/a;->d(J)V

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-object p2, p0, Lf/i/a/a/b1/x/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 11
    iget-object p2, p0, Lf/i/a/a/b1/x/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/b1/x/u$a;

    .line 12
    iput-boolean v0, p2, Lf/i/a/a/b1/x/u$a;->f:Z

    .line 13
    iget-object p2, p2, Lf/i/a/a/b1/x/u$a;->a:Lf/i/a/a/b1/x/j;

    invoke-interface {p2}, Lf/i/a/a/b1/x/j;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0, v2}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    const/16 v0, 0x1ba

    .line 2
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/4 v6, 0x3

    aget-byte v8, v1, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 3
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xc4

    const/16 v8, 0x44

    if-eq v3, v8, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x6

    .line 4
    aget-byte v3, v1, v3

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_2

    return v2

    .line 5
    :cond_2
    aget-byte v3, v1, v7

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 6
    aget-byte v0, v1, v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 7
    aget-byte v0, v1, v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 8
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 9
    invoke-virtual {p1, v0, v2}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 10
    invoke-virtual {p1, v1, v2, v6, v2}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 11
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v7

    or-int/2addr p1, v0

    aget-byte v0, v1, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v4, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
