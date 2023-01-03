.class public final Lf/i/a/a/b1/t/d;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/t/d$a;
    }
.end annotation


# static fields
.field public static final p:Lf/i/a/a/d1/i/g$a;

.field public static final q:I

.field public static final r:I

.field public static final s:I


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Lf/i/a/a/b1/l;

.field public final e:Lf/i/a/a/b1/j;

.field public final f:Lf/i/a/a/b1/k;

.field public g:Lf/i/a/a/b1/h;

.field public h:Lf/i/a/a/b1/p;

.field public i:I

.field public j:Lf/i/a/a/d1/a;

.field public k:Lf/i/a/a/b1/t/d$a;

.field public l:J

.field public m:J

.field public n:J

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf/i/a/a/b1/t/a;->a:Lf/i/a/a/b1/t/a;

    sput-object v0, Lf/i/a/a/b1/t/d;->p:Lf/i/a/a/d1/i/g$a;

    const-string v0, "Xing"

    .line 2
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/t/d;->q:I

    const-string v0, "Info"

    .line 3
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/t/d;->r:I

    const-string v0, "VBRI"

    .line 4
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/t/d;->s:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/b1/t/d;->a:I

    .line 3
    iput-wide p2, p0, Lf/i/a/a/b1/t/d;->b:J

    .line 4
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    .line 5
    new-instance p1, Lf/i/a/a/b1/l;

    invoke-direct {p1}, Lf/i/a/a/b1/l;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    .line 6
    new-instance p1, Lf/i/a/a/b1/j;

    invoke-direct {p1}, Lf/i/a/a/b1/j;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/t/d;->e:Lf/i/a/a/b1/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lf/i/a/a/b1/t/d;->l:J

    .line 8
    new-instance p1, Lf/i/a/a/b1/k;

    invoke-direct {p1}, Lf/i/a/a/b1/k;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/t/d;->f:Lf/i/a/a/b1/k;

    return-void
.end method

.method public static e(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic g(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/t/d$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    iget-object v1, p0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    invoke-static {v0, v1}, Lf/i/a/a/b1/l;->b(ILf/i/a/a/b1/l;)Z

    .line 5
    new-instance v0, Lf/i/a/a/b1/t/b;

    .line 6
    iget-wide v3, p1, Lf/i/a/a/b1/d;->c:J

    .line 7
    iget-wide v5, p1, Lf/i/a/a/b1/d;->d:J

    .line 8
    iget-object v7, p0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lf/i/a/a/b1/t/b;-><init>(JJLf/i/a/a/b1/l;)V

    return-object v0
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lf/i/a/a/b1/t/d;->i:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v4}, Lf/i/a/a/b1/t/d;->j(Lf/i/a/a/b1/d;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    .line 3
    :cond_0
    :goto_0
    iget-object v2, v0, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    const-wide/32 v5, 0xf4240

    const/4 v9, 0x1

    if-nez v2, :cond_21

    .line 4
    new-instance v2, Lf/i/a/a/m1/u;

    iget-object v10, v0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v10, v10, Lf/i/a/a/b1/l;->c:I

    invoke-direct {v2, v10}, Lf/i/a/a/m1/u;-><init>(I)V

    .line 5
    iget-object v10, v2, Lf/i/a/a/m1/u;->a:[B

    iget-object v11, v0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v11, v11, Lf/i/a/a/b1/l;->c:I

    .line 6
    invoke-virtual {v1, v10, v4, v11, v4}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 7
    iget-object v10, v0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v11, v10, Lf/i/a/a/b1/l;->a:I

    and-int/2addr v11, v9

    const/16 v12, 0x15

    iget v10, v10, Lf/i/a/a/b1/l;->e:I

    const/16 v13, 0x24

    if-eqz v11, :cond_1

    if-eq v10, v9, :cond_3

    const/16 v12, 0x24

    goto :goto_1

    :cond_1
    if-eq v10, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v12, 0xd

    .line 8
    :cond_3
    :goto_1
    iget v10, v2, Lf/i/a/a/m1/u;->c:I

    add-int/lit8 v11, v12, 0x4

    if-lt v10, v11, :cond_4

    .line 9
    invoke-virtual {v2, v12}, Lf/i/a/a/m1/u;->A(I)V

    .line 10
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v10

    .line 11
    sget v11, Lf/i/a/a/b1/t/d;->q:I

    if-eq v10, v11, :cond_6

    sget v11, Lf/i/a/a/b1/t/d;->r:I

    if-ne v10, v11, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget v10, v2, Lf/i/a/a/m1/u;->c:I

    const/16 v11, 0x28

    if-lt v10, v11, :cond_5

    .line 13
    invoke-virtual {v2, v13}, Lf/i/a/a/m1/u;->A(I)V

    .line 14
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v10

    sget v11, Lf/i/a/a/b1/t/d;->s:I

    if-ne v10, v11, :cond_5

    move v10, v11

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 15
    :cond_6
    :goto_2
    sget v11, Lf/i/a/a/b1/t/d;->q:I

    const/4 v15, 0x2

    if-eq v10, v11, :cond_10

    sget v11, Lf/i/a/a/b1/t/d;->r:I

    if-ne v10, v11, :cond_7

    goto/16 :goto_a

    .line 16
    :cond_7
    sget v11, Lf/i/a/a/b1/t/d;->s:I

    if-ne v10, v11, :cond_f

    .line 17
    iget-wide v10, v1, Lf/i/a/a/b1/d;->d:J

    .line 18
    iget-object v12, v0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    const/16 v3, 0xa

    .line 19
    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->B(I)V

    .line 20
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    if-gtz v3, :cond_8

    goto :goto_5

    .line 21
    :cond_8
    iget v7, v12, Lf/i/a/a/b1/l;->d:I

    int-to-long v13, v3

    const/16 v3, 0x7d00

    if-lt v7, v3, :cond_9

    const/16 v3, 0x480

    goto :goto_3

    :cond_9
    const/16 v3, 0x240

    :goto_3
    int-to-long v8, v3

    mul-long v20, v8, v5

    int-to-long v7, v7

    move-wide/from16 v18, v13

    move-wide/from16 v22, v7

    .line 22
    invoke-static/range {v18 .. v23}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v28

    .line 23
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v3

    .line 24
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v7

    .line 25
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v8

    .line 26
    invoke-virtual {v2, v15}, Lf/i/a/a/m1/u;->B(I)V

    .line 27
    iget v9, v12, Lf/i/a/a/b1/l;->c:I

    int-to-long v12, v9

    add-long/2addr v12, v10

    .line 28
    new-array v9, v3, [J

    .line 29
    new-array v14, v3, [J

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_e

    int-to-long v0, v5

    mul-long v0, v0, v28

    move/from16 v20, v7

    int-to-long v6, v3

    .line 30
    div-long/2addr v0, v6

    aput-wide v0, v9, v5

    .line 31
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v14, v5

    const/4 v0, 0x1

    if-eq v8, v0, :cond_d

    if-eq v8, v15, :cond_c

    const/4 v0, 0x3

    if-eq v8, v0, :cond_b

    const/4 v0, 0x4

    if-eq v8, v0, :cond_a

    :goto_5
    const/4 v0, 0x0

    :goto_6
    move-object/from16 v1, p0

    goto :goto_8

    .line 32
    :cond_a
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v0

    goto :goto_7

    .line 33
    :cond_b
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->r()I

    move-result v0

    goto :goto_7

    .line 34
    :cond_c
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->u()I

    move-result v0

    goto :goto_7

    .line 35
    :cond_d
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v0

    :goto_7
    mul-int v0, v0, v20

    int-to-long v0, v0

    add-long/2addr v10, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v20

    goto :goto_4

    .line 36
    :cond_e
    new-instance v0, Lf/i/a/a/b1/t/e;

    move-object/from16 v25, v0

    move-object/from16 v26, v9

    move-object/from16 v27, v14

    move-wide/from16 v30, v10

    invoke-direct/range {v25 .. v31}, Lf/i/a/a/b1/t/e;-><init>([J[JJJ)V

    goto :goto_6

    .line 37
    :goto_8
    iget-object v2, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v2, v2, Lf/i/a/a/b1/l;->c:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lf/i/a/a/b1/d;->h(I)V

    goto :goto_9

    :cond_f
    move-object v3, v1

    move-object v1, v0

    .line 38
    iput v4, v3, Lf/i/a/a/b1/d;->f:I

    const/4 v0, 0x0

    :goto_9
    const/16 v24, 0x0

    goto/16 :goto_f

    :cond_10
    :goto_a
    move-object v3, v1

    move-object v1, v0

    .line 39
    iget-wide v5, v3, Lf/i/a/a/b1/d;->d:J

    .line 40
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    .line 41
    iget v7, v0, Lf/i/a/a/b1/l;->g:I

    .line 42
    iget v8, v0, Lf/i/a/a/b1/l;->d:I

    .line 43
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->d()I

    move-result v9

    and-int/lit8 v11, v9, 0x1

    const/4 v13, 0x1

    if-ne v11, v13, :cond_14

    .line 44
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v11

    if-nez v11, :cond_11

    goto :goto_c

    :cond_11
    int-to-long v13, v11

    move-wide/from16 v20, v5

    int-to-long v4, v7

    const-wide/32 v6, 0xf4240

    mul-long v27, v4, v6

    int-to-long v4, v8

    move-wide/from16 v25, v13

    move-wide/from16 v29, v4

    .line 45
    invoke-static/range {v25 .. v30}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v29

    const/4 v4, 0x6

    and-int/lit8 v5, v9, 0x6

    if-eq v5, v4, :cond_12

    .line 46
    new-instance v2, Lf/i/a/a/b1/t/f;

    iget v0, v0, Lf/i/a/a/b1/l;->c:I

    const-wide/16 v31, -0x1

    const/16 v33, 0x0

    move-object/from16 v25, v2

    move-wide/from16 v26, v20

    move/from16 v28, v0

    .line 47
    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/t/f;-><init>(JIJJ[J)V

    goto :goto_d

    .line 48
    :cond_12
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->s()I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x64

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v6, :cond_13

    .line 49
    invoke-virtual {v2}, Lf/i/a/a/m1/u;->p()I

    move-result v9

    int-to-long v13, v9

    aput-wide v13, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 50
    :cond_13
    new-instance v2, Lf/i/a/a/b1/t/f;

    iget v0, v0, Lf/i/a/a/b1/l;->c:I

    move-object/from16 v25, v2

    move-wide/from16 v26, v20

    move/from16 v28, v0

    move-wide/from16 v31, v4

    move-object/from16 v33, v7

    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/t/f;-><init>(JIJJ[J)V

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_17

    .line 51
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->e:Lf/i/a/a/b1/j;

    invoke-virtual {v0}, Lf/i/a/a/b1/j;->a()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 52
    iput v0, v3, Lf/i/a/a/b1/d;->f:I

    add-int/lit16 v12, v12, 0x8d

    .line 53
    invoke-virtual {v3, v12, v0}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 54
    iget-object v4, v1, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x3

    .line 55
    invoke-virtual {v3, v4, v0, v5, v0}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 56
    iget-object v4, v1, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v4, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 57
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->e:Lf/i/a/a/b1/j;

    iget-object v4, v1, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v4}, Lf/i/a/a/m1/u;->r()I

    move-result v4

    if-eqz v0, :cond_16

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v4, v4, 0xfff

    if-gtz v5, :cond_15

    if-lez v4, :cond_17

    .line 58
    :cond_15
    iput v5, v0, Lf/i/a/a/b1/j;->a:I

    .line 59
    iput v4, v0, Lf/i/a/a/b1/j;->b:I

    goto :goto_e

    :cond_16
    const/16 v24, 0x0

    .line 60
    throw v24

    :cond_17
    :goto_e
    const/16 v24, 0x0

    .line 61
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v0, v0, Lf/i/a/a/b1/l;->c:I

    invoke-virtual {v3, v0}, Lf/i/a/a/b1/d;->h(I)V

    if-eqz v2, :cond_18

    .line 62
    invoke-interface {v2}, Lf/i/a/a/b1/n;->g()Z

    move-result v0

    if-nez v0, :cond_18

    sget v0, Lf/i/a/a/b1/t/d;->r:I

    if-ne v10, v0, :cond_18

    .line 63
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/t/d;->b(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/t/d$a;

    move-result-object v0

    goto :goto_f

    :cond_18
    move-object v0, v2

    .line 64
    :goto_f
    iget-object v2, v1, Lf/i/a/a/b1/t/d;->j:Lf/i/a/a/d1/a;

    .line 65
    iget-wide v4, v3, Lf/i/a/a/b1/d;->d:J

    if-eqz v2, :cond_1b

    .line 66
    iget-object v6, v2, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_1b

    .line 67
    iget-object v8, v2, Lf/i/a/a/d1/a;->a:[Lf/i/a/a/d1/a$b;

    aget-object v8, v8, v7

    .line 68
    instance-of v9, v8, Lf/i/a/a/d1/i/j;

    if-eqz v9, :cond_1a

    .line 69
    check-cast v8, Lf/i/a/a/d1/i/j;

    .line 70
    iget-object v2, v8, Lf/i/a/a/d1/i/j;->e:[I

    array-length v2, v2

    add-int/lit8 v6, v2, 0x1

    .line 71
    new-array v7, v6, [J

    .line 72
    new-array v6, v6, [J

    const/4 v9, 0x0

    .line 73
    aput-wide v4, v7, v9

    const-wide/16 v10, 0x0

    .line 74
    aput-wide v10, v6, v9

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    :goto_11
    if-gt v12, v2, :cond_19

    .line 75
    iget v13, v8, Lf/i/a/a/d1/i/j;->c:I

    iget-object v14, v8, Lf/i/a/a/d1/i/j;->e:[I

    add-int/lit8 v20, v12, -0x1

    aget v14, v14, v20

    add-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v4, v13

    .line 76
    iget v13, v8, Lf/i/a/a/d1/i/j;->d:I

    iget-object v14, v8, Lf/i/a/a/d1/i/j;->f:[I

    aget v14, v14, v20

    add-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v9, v13

    .line 77
    aput-wide v4, v7, v12

    .line 78
    aput-wide v9, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 79
    :cond_19
    new-instance v2, Lf/i/a/a/b1/t/c;

    invoke-direct {v2, v7, v6}, Lf/i/a/a/b1/t/c;-><init>([J[J)V

    goto :goto_12

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1b
    move-object/from16 v2, v24

    :goto_12
    if-eqz v2, :cond_1c

    .line 80
    iput-object v2, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    goto :goto_13

    :cond_1c
    if-eqz v0, :cond_1d

    .line 81
    iput-object v0, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    .line 82
    :cond_1d
    :goto_13
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    if-eqz v0, :cond_1e

    .line 83
    invoke-interface {v0}, Lf/i/a/a/b1/n;->g()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, v1, Lf/i/a/a/b1/t/d;->a:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1f

    .line 84
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/t/d;->b(Lf/i/a/a/b1/d;)Lf/i/a/a/b1/t/d$a;

    move-result-object v0

    iput-object v0, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    .line 85
    :cond_1f
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->g:Lf/i/a/a/b1/h;

    iget-object v2, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    invoke-interface {v0, v2}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 86
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->h:Lf/i/a/a/b1/p;

    const/16 v25, 0x0

    iget-object v2, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget-object v4, v2, Lf/i/a/a/b1/l;->b:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x1000

    iget v5, v2, Lf/i/a/a/b1/l;->e:I

    iget v2, v2, Lf/i/a/a/b1/l;->d:I

    const/16 v32, -0x1

    iget-object v6, v1, Lf/i/a/a/b1/t/d;->e:Lf/i/a/a/b1/j;

    iget v7, v6, Lf/i/a/a/b1/j;->a:I

    iget v6, v6, Lf/i/a/a/b1/j;->b:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    iget v8, v1, Lf/i/a/a/b1/t/d;->a:I

    and-int/2addr v8, v15

    if-eqz v8, :cond_20

    move-object/from16 v39, v24

    goto :goto_14

    :cond_20
    iget-object v13, v1, Lf/i/a/a/b1/t/d;->j:Lf/i/a/a/d1/a;

    move-object/from16 v39, v13

    :goto_14
    move-object/from16 v26, v4

    move/from16 v30, v5

    move/from16 v31, v2

    move/from16 v33, v7

    move/from16 v34, v6

    .line 87
    invoke-static/range {v25 .. v39}, Lf/i/a/a/b0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v2

    .line 88
    invoke-interface {v0, v2}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 89
    iget-wide v4, v3, Lf/i/a/a/b1/d;->d:J

    .line 90
    iput-wide v4, v1, Lf/i/a/a/b1/t/d;->n:J

    goto :goto_15

    :cond_21
    move-object v3, v1

    move-object v1, v0

    .line 91
    iget-wide v4, v1, Lf/i/a/a/b1/t/d;->n:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_22

    .line 92
    iget-wide v6, v3, Lf/i/a/a/b1/d;->d:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_22

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 93
    invoke-virtual {v3, v0}, Lf/i/a/a/b1/d;->h(I)V

    .line 94
    :cond_22
    :goto_15
    iget v0, v1, Lf/i/a/a/b1/t/d;->o:I

    if-nez v0, :cond_27

    const/4 v0, 0x0

    .line 95
    iput v0, v3, Lf/i/a/a/b1/d;->f:I

    .line 96
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/t/d;->h(Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, -0x1

    goto :goto_18

    .line 97
    :cond_23
    iget-object v2, v1, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 98
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v0}, Lf/i/a/a/m1/u;->d()I

    move-result v0

    .line 99
    iget v2, v1, Lf/i/a/a/b1/t/d;->i:I

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Lf/i/a/a/b1/t/d;->e(IJ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 100
    invoke-static {v0}, Lf/i/a/a/b1/l;->a(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_24

    goto :goto_16

    .line 101
    :cond_24
    iget-object v2, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    invoke-static {v0, v2}, Lf/i/a/a/b1/l;->b(ILf/i/a/a/b1/l;)Z

    .line 102
    iget-wide v4, v1, Lf/i/a/a/b1/t/d;->l:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_25

    .line 103
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    .line 104
    iget-wide v4, v3, Lf/i/a/a/b1/d;->d:J

    .line 105
    invoke-interface {v0, v4, v5}, Lf/i/a/a/b1/t/d$a;->b(J)J

    move-result-wide v4

    iput-wide v4, v1, Lf/i/a/a/b1/t/d;->l:J

    .line 106
    iget-wide v4, v1, Lf/i/a/a/b1/t/d;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_25

    .line 107
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lf/i/a/a/b1/t/d$a;->b(J)J

    move-result-wide v4

    .line 108
    iget-wide v6, v1, Lf/i/a/a/b1/t/d;->l:J

    iget-wide v8, v1, Lf/i/a/a/b1/t/d;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, v1, Lf/i/a/a/b1/t/d;->l:J

    .line 109
    :cond_25
    iget-object v0, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v0, v0, Lf/i/a/a/b1/l;->c:I

    iput v0, v1, Lf/i/a/a/b1/t/d;->o:I

    goto :goto_17

    :cond_26
    :goto_16
    const/4 v0, 0x1

    .line 110
    invoke-virtual {v3, v0}, Lf/i/a/a/b1/d;->h(I)V

    const/4 v0, 0x0

    .line 111
    iput v0, v1, Lf/i/a/a/b1/t/d;->i:I

    goto :goto_19

    :cond_27
    :goto_17
    const/4 v0, 0x1

    .line 112
    iget-object v2, v1, Lf/i/a/a/b1/t/d;->h:Lf/i/a/a/b1/p;

    iget v4, v1, Lf/i/a/a/b1/t/d;->o:I

    invoke-interface {v2, v3, v4, v0}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    :goto_18
    const/4 v3, -0x1

    goto :goto_1a

    .line 113
    :cond_28
    iget v2, v1, Lf/i/a/a/b1/t/d;->o:I

    sub-int/2addr v2, v0

    iput v2, v1, Lf/i/a/a/b1/t/d;->o:I

    if-lez v2, :cond_29

    const/4 v0, 0x0

    goto :goto_19

    .line 114
    :cond_29
    iget-wide v2, v1, Lf/i/a/a/b1/t/d;->l:J

    iget-wide v4, v1, Lf/i/a/a/b1/t/d;->m:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object v0, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v6, v0, Lf/i/a/a/b1/l;->d:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long v13, v4, v2

    .line 115
    iget-object v12, v1, Lf/i/a/a/b1/t/d;->h:Lf/i/a/a/b1/p;

    const/4 v15, 0x1

    iget v0, v0, Lf/i/a/a/b1/l;->c:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v0

    invoke-interface/range {v12 .. v18}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 116
    iget-wide v2, v1, Lf/i/a/a/b1/t/d;->m:J

    iget-object v0, v1, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    iget v0, v0, Lf/i/a/a/b1/l;->g:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lf/i/a/a/b1/t/d;->m:J

    const/4 v0, 0x0

    .line 117
    iput v0, v1, Lf/i/a/a/b1/t/d;->o:I

    :goto_19
    const/4 v3, 0x0

    :goto_1a
    return v3
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/t/d;->g:Lf/i/a/a/b1/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/b1/t/d;->h:Lf/i/a/a/b1/p;

    .line 3
    iget-object p1, p0, Lf/i/a/a/b1/t/d;->g:Lf/i/a/a/b1/h;

    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    return-void
.end method

.method public f(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lf/i/a/a/b1/t/d;->i:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p2, p0, Lf/i/a/a/b1/t/d;->l:J

    const-wide/16 p2, 0x0

    .line 3
    iput-wide p2, p0, Lf/i/a/a/b1/t/d;->m:J

    .line 4
    iput p1, p0, Lf/i/a/a/b1/t/d;->o:I

    return-void
.end method

.method public final h(Lf/i/a/a/b1/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/t/d;->k:Lf/i/a/a/b1/t/d$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/i/a/a/b1/t/d$a;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/b1/d;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v2, v3, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/i/a/a/b1/t/d;->j(Lf/i/a/a/b1/d;Z)Z

    move-result p1

    return p1
.end method

.method public final j(Lf/i/a/a/b1/d;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    const/4 v1, 0x0

    .line 1
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    .line 2
    iget-wide v2, p1, Lf/i/a/a/b1/d;->d:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_8

    .line 3
    iget v2, p0, Lf/i/a/a/b1/t/d;->a:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_2

    .line 4
    :cond_2
    sget-object v2, Lf/i/a/a/b1/t/d;->p:Lf/i/a/a/d1/i/g$a;

    .line 5
    :goto_2
    iget-object v4, p0, Lf/i/a/a/b1/t/d;->f:Lf/i/a/a/b1/k;

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    .line 6
    :goto_3
    :try_start_0
    iget-object v7, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    const/16 v8, 0xa

    .line 7
    invoke-virtual {p1, v7, v1, v8, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v7, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 9
    iget-object v7, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v7}, Lf/i/a/a/m1/u;->r()I

    move-result v7

    sget v9, Lf/i/a/a/d1/i/g;->b:I

    if-eq v7, v9, :cond_3

    goto :goto_5

    .line 10
    :cond_3
    iget-object v7, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lf/i/a/a/m1/u;->B(I)V

    .line 11
    iget-object v7, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    invoke-virtual {v7}, Lf/i/a/a/m1/u;->o()I

    move-result v7

    add-int/lit8 v9, v7, 0xa

    if-nez v3, :cond_4

    .line 12
    new-array v3, v9, [B

    .line 13
    iget-object v10, v4, Lf/i/a/a/b1/k;->a:Lf/i/a/a/m1/u;

    iget-object v10, v10, Lf/i/a/a/m1/u;->a:[B

    invoke-static {v10, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-virtual {p1, v3, v8, v7, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 15
    new-instance v7, Lf/i/a/a/d1/i/g;

    invoke-direct {v7, v2}, Lf/i/a/a/d1/i/g;-><init>(Lf/i/a/a/d1/i/g$a;)V

    invoke-virtual {v7, v3, v9}, Lf/i/a/a/d1/i/g;->c([BI)Lf/i/a/a/d1/a;

    move-result-object v3

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p1, v7, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    :goto_4
    add-int/2addr v5, v9

    goto :goto_3

    .line 17
    :catch_0
    :goto_5
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    .line 18
    invoke-virtual {p1, v5, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 19
    iput-object v3, p0, Lf/i/a/a/b1/t/d;->j:Lf/i/a/a/d1/a;

    if-eqz v3, :cond_5

    .line 20
    iget-object v2, p0, Lf/i/a/a/b1/t/d;->e:Lf/i/a/a/b1/j;

    invoke-virtual {v2, v3}, Lf/i/a/a/b1/j;->c(Lf/i/a/a/d1/a;)Z

    .line 21
    :cond_5
    invoke-virtual {p1}, Lf/i/a/a/b1/d;->c()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p2, :cond_6

    .line 22
    invoke-virtual {p1, v3}, Lf/i/a/a/b1/d;->h(I)V

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 23
    :cond_7
    throw v3

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 24
    :goto_7
    invoke-virtual {p0, p1}, Lf/i/a/a/b1/t/d;->h(Lf/i/a/a/b1/d;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-lez v4, :cond_9

    goto :goto_9

    .line 25
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 26
    :cond_a
    iget-object v7, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v7, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 27
    iget-object v7, p0, Lf/i/a/a/b1/t/d;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v7}, Lf/i/a/a/m1/u;->d()I

    move-result v7

    if-eqz v2, :cond_b

    int-to-long v8, v2

    .line 28
    invoke-static {v7, v8, v9}, Lf/i/a/a/b1/t/d;->e(IJ)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 29
    :cond_b
    invoke-static {v7}, Lf/i/a/a/b1/l;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_10

    :cond_c
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v0, :cond_e

    if-eqz p2, :cond_d

    return v1

    .line 30
    :cond_d
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-eqz p2, :cond_f

    .line 31
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    add-int v4, v3, v2

    .line 32
    invoke-virtual {p1, v4, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    goto :goto_8

    .line 33
    :cond_f
    invoke-virtual {p1, v6}, Lf/i/a/a/b1/d;->h(I)V

    :goto_8
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_11

    .line 34
    iget-object v2, p0, Lf/i/a/a/b1/t/d;->d:Lf/i/a/a/b1/l;

    invoke-static {v7, v2}, Lf/i/a/a/b1/l;->b(ILf/i/a/a/b1/l;)Z

    move v2, v7

    goto :goto_b

    :cond_11
    const/4 v7, 0x4

    if-ne v4, v7, :cond_13

    :goto_9
    if-eqz p2, :cond_12

    add-int/2addr v3, v5

    .line 35
    invoke-virtual {p1, v3}, Lf/i/a/a/b1/d;->h(I)V

    goto :goto_a

    .line 36
    :cond_12
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    .line 37
    :goto_a
    iput v2, p0, Lf/i/a/a/b1/t/d;->i:I

    return v6

    :cond_13
    :goto_b
    add-int/lit8 v8, v8, -0x4

    .line 38
    invoke-virtual {p1, v8, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    goto :goto_7
.end method
