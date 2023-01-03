.class public final Lf/i/a/a/b1/u/g;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;
.implements Lf/i/a/a/b1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/u/g$a;
    }
.end annotation


# static fields
.field public static final v:I


# instance fields
.field public final a:I

.field public final b:Lf/i/a/a/m1/u;

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Lf/i/a/a/m1/u;

.field public final e:Lf/i/a/a/m1/u;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/b1/u/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Lf/i/a/a/m1/u;

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Lf/i/a/a/b1/h;

.field public q:[Lf/i/a/a/b1/u/g$a;

.field public r:[[J

.field public s:I

.field public t:J

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "qt  "

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/u/g;->v:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/b1/u/g;->a:I

    .line 3
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    .line 4
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    .line 5
    new-instance p1, Lf/i/a/a/m1/u;

    sget-object v0, Lf/i/a/a/m1/s;->a:[B

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/u/g;->b:Lf/i/a/a/m1/u;

    .line 6
    new-instance p1, Lf/i/a/a/m1/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/u/g;->c:Lf/i/a/a/m1/u;

    .line 7
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lf/i/a/a/b1/u/g;->l:I

    return-void
.end method

.method public static l(Lf/i/a/a/b1/u/m;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/b1/u/m;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/b1/u/m;->b(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Lf/i/a/a/b1/u/m;->c:[J

    aget-wide p1, p0, v0

    .line 4
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 29
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
    :cond_0
    iget v3, v0, Lf/i/a/a/b1/u/g;->g:I

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/4 v8, -0x1

    const/4 v10, 0x1

    if-eqz v3, :cond_1f

    const/4 v11, 0x2

    const-wide/32 v12, 0x40000

    if-eq v3, v10, :cond_16

    if-ne v3, v11, :cond_15

    .line 2
    iget-wide v14, v1, Lf/i/a/a/b1/d;->d:J

    .line 3
    iget v3, v0, Lf/i/a/a/b1/u/g;->l:I

    if-ne v3, v8, :cond_c

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v24, v20

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    .line 4
    :goto_0
    iget-object v11, v0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    array-length v9, v11

    if-ge v3, v9, :cond_8

    .line 5
    aget-object v9, v11, v3

    .line 6
    iget v11, v9, Lf/i/a/a/b1/u/g$a;->d:I

    .line 7
    iget-object v9, v9, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget v10, v9, Lf/i/a/a/b1/u/m;->b:I

    if-ne v11, v10, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v9, v9, Lf/i/a/a/b1/u/m;->c:[J

    aget-wide v26, v9, v11

    .line 9
    iget-object v9, v0, Lf/i/a/a/b1/u/g;->r:[[J

    aget-object v9, v9, v3

    aget-wide v10, v9, v11

    sub-long v26, v26, v14

    cmp-long v9, v26, v4

    if-ltz v9, :cond_3

    cmp-long v9, v26, v12

    if-ltz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_4

    if-nez v7, :cond_5

    :cond_4
    if-ne v9, v7, :cond_6

    cmp-long v28, v26, v24

    if-gez v28, :cond_6

    :cond_5
    move/from16 v23, v3

    move v7, v9

    move-wide/from16 v20, v10

    move-wide/from16 v24, v26

    :cond_6
    cmp-long v26, v10, v18

    if-gez v26, :cond_7

    move/from16 v22, v3

    move v6, v9

    move-wide/from16 v18, v10

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_8
    cmp-long v3, v18, v16

    if-eqz v3, :cond_a

    if-eqz v6, :cond_a

    const-wide/32 v6, 0xa00000

    add-long v18, v18, v6

    cmp-long v3, v20, v18

    if-gez v3, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v3, v22

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 v3, v23

    .line 10
    :goto_5
    iput v3, v0, Lf/i/a/a/b1/u/g;->l:I

    if-ne v3, v8, :cond_b

    goto/16 :goto_b

    .line 11
    :cond_b
    iget-object v6, v0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    aget-object v3, v6, v3

    iget-object v3, v3, Lf/i/a/a/b1/u/g$a;->a:Lf/i/a/a/b1/u/j;

    iget-object v3, v3, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget-object v3, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v6, "audio/ac4"

    .line 12
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lf/i/a/a/b1/u/g;->o:Z

    .line 13
    :cond_c
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    iget v6, v0, Lf/i/a/a/b1/u/g;->l:I

    aget-object v3, v3, v6

    .line 14
    iget-object v6, v3, Lf/i/a/a/b1/u/g$a;->c:Lf/i/a/a/b1/p;

    .line 15
    iget v7, v3, Lf/i/a/a/b1/u/g$a;->d:I

    .line 16
    iget-object v9, v3, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget-object v10, v9, Lf/i/a/a/b1/u/m;->c:[J

    aget-wide v12, v10, v7

    .line 17
    iget-object v9, v9, Lf/i/a/a/b1/u/m;->d:[I

    aget v9, v9, v7

    sub-long v10, v12, v14

    .line 18
    iget v14, v0, Lf/i/a/a/b1/u/g;->m:I

    int-to-long v14, v14

    add-long/2addr v10, v14

    cmp-long v14, v10, v4

    if-ltz v14, :cond_14

    const-wide/32 v4, 0x40000

    cmp-long v14, v10, v4

    if-ltz v14, :cond_d

    goto/16 :goto_a

    .line 19
    :cond_d
    iget-object v2, v3, Lf/i/a/a/b1/u/g$a;->a:Lf/i/a/a/b1/u/j;

    iget v2, v2, Lf/i/a/a/b1/u/j;->g:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const-wide/16 v4, 0x8

    add-long/2addr v10, v4

    add-int/lit8 v9, v9, -0x8

    :cond_e
    long-to-int v2, v10

    .line 20
    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    .line 21
    iget-object v2, v3, Lf/i/a/a/b1/u/g$a;->a:Lf/i/a/a/b1/u/j;

    iget v2, v2, Lf/i/a/a/b1/u/j;->j:I

    if-eqz v2, :cond_12

    .line 22
    iget-object v4, v0, Lf/i/a/a/b1/u/g;->c:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x0

    .line 23
    aput-byte v5, v4, v5

    const/4 v10, 0x1

    .line 24
    aput-byte v5, v4, v10

    const/4 v10, 0x2

    .line 25
    aput-byte v5, v4, v10

    rsub-int/lit8 v10, v2, 0x4

    .line 26
    :goto_6
    iget v11, v0, Lf/i/a/a/b1/u/g;->m:I

    if-ge v11, v9, :cond_11

    .line 27
    iget v11, v0, Lf/i/a/a/b1/u/g;->n:I

    if-nez v11, :cond_10

    .line 28
    invoke-virtual {v1, v4, v10, v2, v5}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 29
    iget-object v11, v0, Lf/i/a/a/b1/u/g;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v11, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 30
    iget-object v11, v0, Lf/i/a/a/b1/u/g;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v11}, Lf/i/a/a/m1/u;->d()I

    move-result v11

    if-ltz v11, :cond_f

    .line 31
    iput v11, v0, Lf/i/a/a/b1/u/g;->n:I

    .line 32
    iget-object v11, v0, Lf/i/a/a/b1/u/g;->b:Lf/i/a/a/m1/u;

    invoke-virtual {v11, v5}, Lf/i/a/a/m1/u;->A(I)V

    .line 33
    iget-object v5, v0, Lf/i/a/a/b1/u/g;->b:Lf/i/a/a/m1/u;

    const/4 v11, 0x4

    invoke-interface {v6, v5, v11}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    .line 34
    iget v5, v0, Lf/i/a/a/b1/u/g;->m:I

    add-int/2addr v5, v11

    iput v5, v0, Lf/i/a/a/b1/u/g;->m:I

    add-int/2addr v9, v10

    goto :goto_7

    .line 35
    :cond_f
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_10
    invoke-interface {v6, v1, v11, v5}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result v11

    .line 37
    iget v5, v0, Lf/i/a/a/b1/u/g;->m:I

    add-int/2addr v5, v11

    iput v5, v0, Lf/i/a/a/b1/u/g;->m:I

    .line 38
    iget v5, v0, Lf/i/a/a/b1/u/g;->n:I

    sub-int/2addr v5, v11

    iput v5, v0, Lf/i/a/a/b1/u/g;->n:I

    :goto_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    move/from16 v20, v9

    goto :goto_9

    .line 39
    :cond_12
    iget-boolean v2, v0, Lf/i/a/a/b1/u/g;->o:Z

    if-eqz v2, :cond_13

    .line 40
    iget-object v2, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    invoke-static {v9, v2}, Lf/i/a/a/w0/h;->a(ILf/i/a/a/m1/u;)V

    .line 41
    iget-object v2, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    .line 42
    iget v4, v2, Lf/i/a/a/m1/u;->c:I

    .line 43
    invoke-interface {v6, v2, v4}, Lf/i/a/a/b1/p;->a(Lf/i/a/a/m1/u;I)V

    add-int/2addr v9, v4

    .line 44
    iget v2, v0, Lf/i/a/a/b1/u/g;->m:I

    add-int/2addr v2, v4

    iput v2, v0, Lf/i/a/a/b1/u/g;->m:I

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v0, Lf/i/a/a/b1/u/g;->o:Z

    .line 46
    :goto_8
    iget v4, v0, Lf/i/a/a/b1/u/g;->m:I

    if-ge v4, v9, :cond_11

    sub-int v4, v9, v4

    .line 47
    invoke-interface {v6, v1, v4, v2}, Lf/i/a/a/b1/p;->b(Lf/i/a/a/b1/d;IZ)I

    move-result v4

    .line 48
    iget v2, v0, Lf/i/a/a/b1/u/g;->m:I

    add-int/2addr v2, v4

    iput v2, v0, Lf/i/a/a/b1/u/g;->m:I

    .line 49
    iget v2, v0, Lf/i/a/a/b1/u/g;->n:I

    sub-int/2addr v2, v4

    iput v2, v0, Lf/i/a/a/b1/u/g;->n:I

    :cond_13
    const/4 v2, 0x0

    goto :goto_8

    .line 50
    :goto_9
    iget-object v1, v3, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget-object v2, v1, Lf/i/a/a/b1/u/m;->f:[J

    aget-wide v17, v2, v7

    iget-object v1, v1, Lf/i/a/a/b1/u/m;->g:[I

    aget v19, v1, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v6

    invoke-interface/range {v16 .. v22}, Lf/i/a/a/b1/p;->c(JIIILf/i/a/a/b1/p$a;)V

    .line 51
    iget v1, v3, Lf/i/a/a/b1/u/g$a;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lf/i/a/a/b1/u/g$a;->d:I

    .line 52
    iput v8, v0, Lf/i/a/a/b1/u/g;->l:I

    const/4 v1, 0x0

    .line 53
    iput v1, v0, Lf/i/a/a/b1/u/g;->m:I

    .line 54
    iput v1, v0, Lf/i/a/a/b1/u/g;->n:I

    const/4 v8, 0x0

    goto :goto_b

    .line 55
    :cond_14
    :goto_a
    iput-wide v12, v2, Lf/i/a/a/b1/m;->a:J

    const/4 v8, 0x1

    :goto_b
    return v8

    .line 56
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 57
    :cond_16
    iget-wide v3, v0, Lf/i/a/a/b1/u/g;->i:J

    iget v5, v0, Lf/i/a/a/b1/u/g;->j:I

    int-to-long v7, v5

    sub-long/2addr v3, v7

    .line 58
    iget-wide v7, v1, Lf/i/a/a/b1/d;->d:J

    add-long/2addr v7, v3

    .line 59
    iget-object v9, v0, Lf/i/a/a/b1/u/g;->k:Lf/i/a/a/m1/u;

    if-eqz v9, :cond_1b

    .line 60
    iget-object v9, v9, Lf/i/a/a/m1/u;->a:[B

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 61
    invoke-virtual {v1, v9, v5, v4, v3}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 62
    iget v3, v0, Lf/i/a/a/b1/u/g;->h:I

    sget v4, Lf/i/a/a/b1/u/a;->b:I

    if-ne v3, v4, :cond_1a

    .line 63
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->k:Lf/i/a/a/m1/u;

    .line 64
    invoke-virtual {v3, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 65
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->d()I

    move-result v4

    .line 66
    sget v5, Lf/i/a/a/b1/u/g;->v:I

    if-ne v4, v5, :cond_17

    goto :goto_c

    :cond_17
    const/4 v4, 0x4

    .line 67
    invoke-virtual {v3, v4}, Lf/i/a/a/m1/u;->B(I)V

    .line 68
    :cond_18
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->a()I

    move-result v4

    if-lez v4, :cond_19

    .line 69
    invoke-virtual {v3}, Lf/i/a/a/m1/u;->d()I

    move-result v4

    sget v5, Lf/i/a/a/b1/u/g;->v:I

    if-ne v4, v5, :cond_18

    :goto_c
    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    .line 70
    :goto_d
    iput-boolean v3, v0, Lf/i/a/a/b1/u/g;->u:Z

    goto :goto_e

    .line 71
    :cond_1a
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 72
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/b1/u/a$a;

    new-instance v4, Lf/i/a/a/b1/u/a$b;

    iget v5, v0, Lf/i/a/a/b1/u/g;->h:I

    iget-object v6, v0, Lf/i/a/a/b1/u/g;->k:Lf/i/a/a/m1/u;

    invoke-direct {v4, v5, v6}, Lf/i/a/a/b1/u/a$b;-><init>(ILf/i/a/a/m1/u;)V

    .line 73
    iget-object v3, v3, Lf/i/a/a/b1/u/a$a;->h1:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    const-wide/32 v5, 0x40000

    cmp-long v9, v3, v5

    if-gez v9, :cond_1d

    long-to-int v4, v3

    .line 74
    invoke-virtual {v1, v4}, Lf/i/a/a/b1/d;->h(I)V

    :cond_1c
    :goto_e
    const/4 v3, 0x0

    goto :goto_f

    .line 75
    :cond_1d
    iput-wide v7, v2, Lf/i/a/a/b1/m;->a:J

    const/4 v3, 0x1

    .line 76
    :goto_f
    invoke-virtual {v0, v7, v8}, Lf/i/a/a/b1/u/g;->m(J)V

    if-eqz v3, :cond_1e

    .line 77
    iget v3, v0, Lf/i/a/a/b1/u/g;->g:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/4 v9, 0x1

    goto :goto_10

    :cond_1e
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1f
    const/4 v3, 0x1

    .line 78
    iget v7, v0, Lf/i/a/a/b1/u/g;->j:I

    if-nez v7, :cond_21

    .line 79
    iget-object v7, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v6, v3}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    move-result v7

    if-nez v7, :cond_20

    goto/16 :goto_1b

    .line 80
    :cond_20
    iput v6, v0, Lf/i/a/a/b1/u/g;->j:I

    .line 81
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v3, v9}, Lf/i/a/a/m1/u;->A(I)V

    .line 82
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v3}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v9

    iput-wide v9, v0, Lf/i/a/a/b1/u/g;->i:J

    .line 83
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v3}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    iput v3, v0, Lf/i/a/a/b1/u/g;->h:I

    .line 84
    :cond_21
    iget-wide v9, v0, Lf/i/a/a/b1/u/g;->i:J

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-nez v3, :cond_22

    .line 85
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v1, v3, v6, v6, v4}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    .line 87
    iget v3, v0, Lf/i/a/a/b1/u/g;->j:I

    add-int/2addr v3, v6

    iput v3, v0, Lf/i/a/a/b1/u/g;->j:I

    .line 88
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    invoke-virtual {v3}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v3

    iput-wide v3, v0, Lf/i/a/a/b1/u/g;->i:J

    goto :goto_11

    :cond_22
    cmp-long v3, v9, v4

    if-nez v3, :cond_24

    .line 89
    iget-wide v3, v1, Lf/i/a/a/b1/d;->c:J

    const-wide/16 v9, -0x1

    cmp-long v5, v3, v9

    if-nez v5, :cond_23

    .line 90
    iget-object v5, v0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 91
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/b1/u/a$a;

    iget-wide v3, v3, Lf/i/a/a/b1/u/a$a;->g1:J

    :cond_23
    cmp-long v5, v3, v9

    if-eqz v5, :cond_24

    .line 92
    iget-wide v9, v1, Lf/i/a/a/b1/d;->d:J

    sub-long/2addr v3, v9

    .line 93
    iget v5, v0, Lf/i/a/a/b1/u/g;->j:I

    int-to-long v9, v5

    add-long/2addr v3, v9

    iput-wide v3, v0, Lf/i/a/a/b1/u/g;->i:J

    .line 94
    :cond_24
    :goto_11
    iget-wide v3, v0, Lf/i/a/a/b1/u/g;->i:J

    iget v5, v0, Lf/i/a/a/b1/u/g;->j:I

    int-to-long v9, v5

    cmp-long v5, v3, v9

    if-ltz v5, :cond_30

    .line 95
    iget v3, v0, Lf/i/a/a/b1/u/g;->h:I

    .line 96
    sget v4, Lf/i/a/a/b1/u/a;->R:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->T:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->U:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->V:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->W:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->d0:I

    if-eq v3, v4, :cond_26

    sget v4, Lf/i/a/a/b1/u/a;->O0:I

    if-ne v3, v4, :cond_25

    goto :goto_12

    :cond_25
    const/4 v3, 0x0

    goto :goto_13

    :cond_26
    :goto_12
    const/4 v3, 0x1

    :goto_13
    if-eqz v3, :cond_2a

    .line 97
    iget-wide v3, v1, Lf/i/a/a/b1/d;->d:J

    .line 98
    iget-wide v9, v0, Lf/i/a/a/b1/u/g;->i:J

    add-long/2addr v3, v9

    iget v5, v0, Lf/i/a/a/b1/u/g;->j:I

    int-to-long v9, v5

    sub-long/2addr v3, v9

    .line 99
    iget-object v5, v0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    new-instance v7, Lf/i/a/a/b1/u/a$a;

    iget v9, v0, Lf/i/a/a/b1/u/g;->h:I

    invoke-direct {v7, v9, v3, v4}, Lf/i/a/a/b1/u/a$a;-><init>(IJ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 100
    iget-wide v9, v0, Lf/i/a/a/b1/u/g;->i:J

    iget v5, v0, Lf/i/a/a/b1/u/g;->j:I

    int-to-long v11, v5

    cmp-long v5, v9, v11

    if-nez v5, :cond_27

    .line 101
    invoke-virtual {v0, v3, v4}, Lf/i/a/a/b1/u/g;->m(J)V

    goto :goto_15

    .line 102
    :cond_27
    iget v3, v0, Lf/i/a/a/b1/u/g;->h:I

    sget v4, Lf/i/a/a/b1/u/a;->O0:I

    if-ne v3, v4, :cond_29

    .line 103
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v3, v6}, Lf/i/a/a/m1/u;->w(I)V

    .line 104
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    const/4 v4, 0x0

    .line 105
    invoke-virtual {v1, v3, v4, v6, v4}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 106
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lf/i/a/a/m1/u;->B(I)V

    .line 107
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v3}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    sget v6, Lf/i/a/a/b1/u/a;->g0:I

    if-ne v3, v6, :cond_28

    .line 108
    iput v4, v1, Lf/i/a/a/b1/d;->f:I

    goto :goto_14

    .line 109
    :cond_28
    invoke-virtual {v1, v5}, Lf/i/a/a/b1/d;->h(I)V

    .line 110
    :cond_29
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/b1/u/g;->k()V

    :goto_15
    const/4 v3, 0x1

    goto/16 :goto_1a

    .line 111
    :cond_2a
    iget v3, v0, Lf/i/a/a/b1/u/g;->h:I

    .line 112
    sget v4, Lf/i/a/a/b1/u/a;->f0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->S:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->g0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->h0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->z0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->A0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->B0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->e0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->C0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->D0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->E0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->F0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->G0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->c0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->b:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->N0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->P0:I

    if-eq v3, v4, :cond_2c

    sget v4, Lf/i/a/a/b1/u/a;->Q0:I

    if-ne v3, v4, :cond_2b

    goto :goto_16

    :cond_2b
    const/4 v4, 0x0

    goto :goto_17

    :cond_2c
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-eqz v4, :cond_2f

    .line 113
    iget v3, v0, Lf/i/a/a/b1/u/g;->j:I

    if-ne v3, v6, :cond_2d

    const/4 v4, 0x1

    goto :goto_18

    :cond_2d
    const/4 v4, 0x0

    :goto_18
    invoke-static {v4}, Lc/a/a/b/g/h;->v(Z)V

    .line 114
    iget-wide v3, v0, Lf/i/a/a/b1/u/g;->i:J

    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v3, v9

    if-gtz v5, :cond_2e

    const/4 v4, 0x1

    goto :goto_19

    :cond_2e
    const/4 v4, 0x0

    :goto_19
    invoke-static {v4}, Lc/a/a/b/g/h;->v(Z)V

    .line 115
    new-instance v3, Lf/i/a/a/m1/u;

    iget-wide v4, v0, Lf/i/a/a/b1/u/g;->i:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object v3, v0, Lf/i/a/a/b1/u/g;->k:Lf/i/a/a/m1/u;

    .line 116
    iget-object v4, v0, Lf/i/a/a/b1/u/g;->e:Lf/i/a/a/m1/u;

    iget-object v4, v4, Lf/i/a/a/m1/u;->a:[B

    iget-object v3, v3, Lf/i/a/a/m1/u;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 117
    iput v3, v0, Lf/i/a/a/b1/u/g;->g:I

    goto :goto_1a

    :cond_2f
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    iput-object v4, v0, Lf/i/a/a/b1/u/g;->k:Lf/i/a/a/m1/u;

    .line 119
    iput v3, v0, Lf/i/a/a/b1/u/g;->g:I

    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    if-nez v9, :cond_0

    return v8

    .line 120
    :cond_30
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/u/g;->p:Lf/i/a/a/b1/h;

    return-void
.end method

.method public f(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/i/a/a/b1/u/g;->j:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lf/i/a/a/b1/u/g;->l:I

    .line 4
    iput v0, p0, Lf/i/a/a/b1/u/g;->m:I

    .line 5
    iput v0, p0, Lf/i/a/a/b1/u/g;->n:I

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/b1/u/g;->o:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {p0}, Lf/i/a/a/b1/u/g;->k()V

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    if-eqz p1, :cond_2

    .line 9
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    .line 10
    iget-object v3, v2, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    .line 11
    invoke-virtual {v3, p3, p4}, Lf/i/a/a/b1/u/m;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 12
    invoke-virtual {v3, p3, p4}, Lf/i/a/a/b1/u/m;->b(J)I

    move-result v4

    .line 13
    :cond_1
    iput v4, v2, Lf/i/a/a/b1/u/g$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(J)Lf/i/a/a/b1/n$a;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    array-length v4, v3

    if-nez v4, :cond_0

    .line 2
    new-instance v1, Lf/i/a/a/b1/n$a;

    sget-object v2, Lf/i/a/a/b1/o;->c:Lf/i/a/a/b1/o;

    invoke-direct {v1, v2}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object v1

    :cond_0
    const-wide/16 v4, -0x1

    .line 3
    iget v6, v0, Lf/i/a/a/b1/u/g;->s:I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    .line 4
    aget-object v3, v3, v6

    iget-object v3, v3, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    .line 5
    invoke-virtual {v3, v1, v2}, Lf/i/a/a/b1/u/m;->a(J)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 6
    invoke-virtual {v3, v1, v2}, Lf/i/a/a/b1/u/m;->b(J)I

    move-result v6

    :cond_1
    if-ne v6, v9, :cond_2

    .line 7
    new-instance v1, Lf/i/a/a/b1/n$a;

    sget-object v2, Lf/i/a/a/b1/o;->c:Lf/i/a/a/b1/o;

    invoke-direct {v1, v2}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object v1

    .line 8
    :cond_2
    iget-object v10, v3, Lf/i/a/a/b1/u/m;->f:[J

    aget-wide v11, v10, v6

    .line 9
    iget-object v10, v3, Lf/i/a/a/b1/u/m;->c:[J

    aget-wide v13, v10, v6

    cmp-long v10, v11, v1

    if-gez v10, :cond_3

    .line 10
    iget v10, v3, Lf/i/a/a/b1/u/m;->b:I

    add-int/2addr v10, v9

    if-ge v6, v10, :cond_3

    .line 11
    invoke-virtual {v3, v1, v2}, Lf/i/a/a/b1/u/m;->b(J)I

    move-result v1

    if-eq v1, v9, :cond_3

    if-eq v1, v6, :cond_3

    .line 12
    iget-object v2, v3, Lf/i/a/a/b1/u/m;->f:[J

    aget-wide v4, v2, v1

    .line 13
    iget-object v2, v3, Lf/i/a/a/b1/u/m;->c:[J

    aget-wide v1, v2, v1

    move-wide v15, v1

    move-wide v1, v4

    move-wide v4, v15

    goto :goto_0

    :cond_3
    move-wide v1, v7

    :goto_0
    move-wide v5, v4

    move-wide v3, v1

    move-wide v1, v11

    goto :goto_1

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    move-wide v5, v4

    move-wide v3, v7

    :goto_1
    const/4 v9, 0x0

    .line 14
    :goto_2
    iget-object v10, v0, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    array-length v11, v10

    if-ge v9, v11, :cond_7

    .line 15
    iget v11, v0, Lf/i/a/a/b1/u/g;->s:I

    if-eq v9, v11, :cond_6

    .line 16
    aget-object v10, v10, v9

    iget-object v10, v10, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    .line 17
    invoke-static {v10, v1, v2, v13, v14}, Lf/i/a/a/b1/u/g;->l(Lf/i/a/a/b1/u/m;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v7

    if-eqz v13, :cond_5

    .line 18
    invoke-static {v10, v3, v4, v5, v6}, Lf/i/a/a/b1/u/g;->l(Lf/i/a/a/b1/u/m;JJ)J

    move-result-wide v5

    :cond_5
    move-wide v13, v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 19
    :cond_7
    new-instance v9, Lf/i/a/a/b1/o;

    invoke-direct {v9, v1, v2, v13, v14}, Lf/i/a/a/b1/o;-><init>(JJ)V

    cmp-long v1, v3, v7

    if-nez v1, :cond_8

    .line 20
    new-instance v1, Lf/i/a/a/b1/n$a;

    invoke-direct {v1, v9}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;)V

    return-object v1

    .line 21
    :cond_8
    new-instance v1, Lf/i/a/a/b1/o;

    invoke-direct {v1, v3, v4, v5, v6}, Lf/i/a/a/b1/o;-><init>(JJ)V

    .line 22
    new-instance v2, Lf/i/a/a/b1/n$a;

    invoke-direct {v2, v9, v1}, Lf/i/a/a/b1/n$a;-><init>(Lf/i/a/a/b1/o;Lf/i/a/a/b1/o;)V

    return-object v2
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lf/i/a/a/b1/u/i;->a(Lf/i/a/a/b1/d;Z)Z

    move-result p1

    return p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/i/a/a/b1/u/g;->t:J

    return-wide v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/i/a/a/b1/u/g;->g:I

    .line 2
    iput v0, p0, Lf/i/a/a/b1/u/g;->j:I

    return-void
.end method

.method public final m(J)V
    .locals 69
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object v3, v2

    move-wide/from16 v0, p1

    .line 1
    :cond_0
    :goto_0
    iget-object v4, v2, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, v2, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/a$a;

    iget-wide v6, v4, Lf/i/a/a/b1/u/a$a;->g1:J

    cmp-long v4, v6, v0

    if-nez v4, :cond_4e

    .line 2
    iget-object v4, v2, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/b1/u/a$a;

    .line 3
    iget v6, v4, Lf/i/a/a/b1/u/a;->a:I

    sget v7, Lf/i/a/a/b1/u/a;->R:I

    if-ne v6, v7, :cond_4d

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Lf/i/a/a/b1/j;

    invoke-direct {v7}, Lf/i/a/a/b1/j;-><init>()V

    .line 6
    sget v8, Lf/i/a/a/b1/u/a;->N0:I

    invoke-virtual {v4, v8}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7
    iget-boolean v10, v2, Lf/i/a/a/b1/u/g;->u:Z

    invoke-static {v8, v10}, Lf/i/a/a/b1/u/b;->f(Lf/i/a/a/b1/u/a$b;Z)Lf/i/a/a/d1/a;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v7, v8}, Lf/i/a/a/b1/j;->c(Lf/i/a/a/d1/a;)Z

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 9
    :cond_2
    :goto_1
    sget v10, Lf/i/a/a/b1/u/a;->O0:I

    invoke-virtual {v4, v10}, Lf/i/a/a/b1/u/a$a;->d(I)Lf/i/a/a/b1/u/a$a;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 10
    invoke-static {v10}, Lf/i/a/a/b1/u/b;->c(Lf/i/a/a/b1/u/a$a;)Lf/i/a/a/d1/a;

    move-result-object v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 11
    :goto_2
    iget v11, v2, Lf/i/a/a/b1/u/g;->a:I

    const/4 v12, 0x1

    and-int/2addr v11, v12

    const/4 v13, 0x0

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 12
    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v14

    const/4 v14, 0x0

    .line 13
    :goto_4
    iget-object v9, v4, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-wide/16 v21, 0x0

    if-ge v14, v9, :cond_42

    .line 14
    iget-object v9, v4, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf/i/a/a/b1/u/a$a;

    .line 15
    iget v5, v9, Lf/i/a/a/b1/u/a;->a:I

    sget v12, Lf/i/a/a/b1/u/a;->T:I

    if-eq v5, v12, :cond_5

    move v12, v14

    move-object/from16 v24, v15

    goto :goto_5

    .line 16
    :cond_5
    sget v5, Lf/i/a/a/b1/u/a;->S:I

    .line 17
    invoke-virtual {v4, v5}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v5

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    iget-boolean v2, v2, Lf/i/a/a/b1/u/g;->u:Z

    move v12, v14

    move-object v14, v9

    move-object/from16 v24, v15

    move-object v15, v5

    move/from16 v19, v11

    move/from16 v20, v2

    .line 18
    invoke-static/range {v14 .. v20}, Lf/i/a/a/b1/u/b;->e(Lf/i/a/a/b1/u/a$a;Lf/i/a/a/b1/u/a$b;JLf/i/a/a/z0/e;ZZ)Lf/i/a/a/b1/u/j;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_5
    move v14, v12

    move-object/from16 v15, v24

    goto/16 :goto_35

    .line 19
    :cond_6
    sget v5, Lf/i/a/a/b1/u/a;->U:I

    .line 20
    invoke-virtual {v9, v5}, Lf/i/a/a/b1/u/a$a;->d(I)Lf/i/a/a/b1/u/a$a;

    move-result-object v5

    sget v9, Lf/i/a/a/b1/u/a;->V:I

    .line 21
    invoke-virtual {v5, v9}, Lf/i/a/a/b1/u/a$a;->d(I)Lf/i/a/a/b1/u/a$a;

    move-result-object v5

    sget v9, Lf/i/a/a/b1/u/a;->W:I

    .line 22
    invoke-virtual {v5, v9}, Lf/i/a/a/b1/u/a$a;->d(I)Lf/i/a/a/b1/u/a$a;

    move-result-object v5

    .line 23
    sget v9, Lf/i/a/a/b1/u/a;->D0:I

    invoke-virtual {v5, v9}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 24
    new-instance v14, Lf/i/a/a/b1/u/b$b;

    invoke-direct {v14, v9}, Lf/i/a/a/b1/u/b$b;-><init>(Lf/i/a/a/b1/u/a$b;)V

    goto :goto_6

    .line 25
    :cond_7
    sget v9, Lf/i/a/a/b1/u/a;->E0:I

    invoke-virtual {v5, v9}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v9

    if-eqz v9, :cond_41

    .line 26
    new-instance v14, Lf/i/a/a/b1/u/b$c;

    invoke-direct {v14, v9}, Lf/i/a/a/b1/u/b$c;-><init>(Lf/i/a/a/b1/u/a$b;)V

    .line 27
    :goto_6
    invoke-interface {v14}, Lf/i/a/a/b1/u/b$a;->b()I

    move-result v9

    if-nez v9, :cond_8

    .line 28
    new-instance v5, Lf/i/a/a/b1/u/m;

    new-array v9, v13, [J

    new-array v14, v13, [I

    const/16 v29, 0x0

    new-array v15, v13, [J

    move-wide/from16 v16, v0

    new-array v0, v13, [I

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    move-object/from16 v28, v14

    move-object/from16 v30, v15

    move-object/from16 v31, v0

    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/u/m;-><init>(Lf/i/a/a/b1/u/j;[J[II[J[IJ)V

    move v14, v12

    move-wide/from16 v0, v16

    move-object/from16 v15, v24

    goto/16 :goto_34

    :cond_8
    move-wide/from16 v16, v0

    .line 29
    sget v0, Lf/i/a/a/b1/u/a;->F0:I

    invoke-virtual {v5, v0}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 30
    sget v0, Lf/i/a/a/b1/u/a;->G0:I

    invoke-virtual {v5, v0}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 31
    :goto_7
    iget-object v0, v0, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 32
    sget v15, Lf/i/a/a/b1/u/a;->C0:I

    invoke-virtual {v5, v15}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v15

    iget-object v15, v15, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    .line 33
    sget v13, Lf/i/a/a/b1/u/a;->z0:I

    invoke-virtual {v5, v13}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v13

    iget-object v13, v13, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    move-object/from16 v19, v4

    .line 34
    sget v4, Lf/i/a/a/b1/u/a;->A0:I

    invoke-virtual {v5, v4}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 35
    iget-object v4, v4, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    move/from16 v20, v11

    goto :goto_8

    :cond_a
    move/from16 v20, v11

    const/4 v4, 0x0

    .line 36
    :goto_8
    sget v11, Lf/i/a/a/b1/u/a;->B0:I

    invoke-virtual {v5, v11}, Lf/i/a/a/b1/u/a$a;->e(I)Lf/i/a/a/b1/u/a$b;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 37
    iget-object v5, v5, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    const/16 v11, 0xc

    .line 38
    invoke-virtual {v0, v11}, Lf/i/a/a/m1/u;->A(I)V

    move/from16 v34, v12

    .line 39
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->s()I

    move-result v12

    .line 40
    invoke-virtual {v15, v11}, Lf/i/a/a/m1/u;->A(I)V

    .line 41
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->s()I

    move-result v25

    .line 42
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->d()I

    move-result v11

    move-object/from16 v35, v6

    const/4 v6, 0x1

    if-ne v11, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    const-string v11, "first_chunk must be 1"

    invoke-static {v6, v11}, Lc/a/a/b/g/h;->w(ZLjava/lang/Object;)V

    const/16 v6, 0xc

    .line 43
    invoke-virtual {v13, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 44
    invoke-virtual {v13}, Lf/i/a/a/m1/u;->s()I

    move-result v11

    const/16 v23, -0x1

    add-int/lit8 v11, v11, -0x1

    .line 45
    invoke-virtual {v13}, Lf/i/a/a/m1/u;->s()I

    move-result v26

    move-object/from16 v36, v8

    .line 46
    invoke-virtual {v13}, Lf/i/a/a/m1/u;->s()I

    move-result v8

    if-eqz v5, :cond_d

    .line 47
    invoke-virtual {v5, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 48
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->s()I

    move-result v27

    goto :goto_b

    :cond_d
    const/16 v27, 0x0

    :goto_b
    if-eqz v4, :cond_f

    .line 49
    invoke-virtual {v4, v6}, Lf/i/a/a/m1/u;->A(I)V

    .line 50
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->s()I

    move-result v6

    if-lez v6, :cond_e

    .line 51
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->s()I

    move-result v28

    const/16 v23, -0x1

    add-int/lit8 v28, v28, -0x1

    goto :goto_d

    :cond_e
    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    :goto_c
    const/16 v28, -0x1

    .line 52
    :goto_d
    invoke-interface {v14}, Lf/i/a/a/b1/u/b$a;->a()Z

    move-result v29

    if-eqz v29, :cond_10

    move-object/from16 v37, v10

    iget-object v10, v2, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget-object v10, v10, Lf/i/a/a/b0;->i:Ljava/lang/String;

    move-object/from16 v38, v3

    const-string v3, "audio/raw"

    .line 53
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v11, :cond_11

    if-nez v27, :cond_11

    if-nez v6, :cond_11

    const/4 v3, 0x1

    goto :goto_e

    :cond_10
    move-object/from16 v38, v3

    move-object/from16 v37, v10

    :cond_11
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_22

    .line 54
    new-array v3, v9, [J

    .line 55
    new-array v10, v9, [I

    move/from16 v30, v6

    .line 56
    new-array v6, v9, [J

    move/from16 v31, v11

    .line 57
    new-array v11, v9, [I

    move-object/from16 v39, v7

    move-object/from16 v44, v13

    move-wide/from16 v45, v21

    move-wide/from16 v47, v45

    move-wide/from16 v49, v47

    move/from16 v41, v25

    move/from16 v42, v26

    move/from16 v43, v27

    move/from16 v13, v28

    const/4 v7, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v40, -0x1

    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v7, v9, :cond_1f

    move/from16 v51, v9

    move/from16 v9, v25

    const/16 v25, 0x1

    :goto_10
    if-nez v28, :cond_16

    move/from16 v52, v8

    add-int/lit8 v8, v40, 0x1

    if-ne v8, v12, :cond_12

    const/16 v25, 0x0

    goto :goto_13

    :cond_12
    if-eqz v1, :cond_13

    .line 58
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v49

    goto :goto_11

    .line 59
    :cond_13
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v49

    :goto_11
    if-ne v8, v9, :cond_15

    .line 60
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->s()I

    move-result v32

    const/4 v9, 0x4

    .line 61
    invoke-virtual {v15, v9}, Lf/i/a/a/m1/u;->B(I)V

    add-int/lit8 v41, v41, -0x1

    if-lez v41, :cond_14

    .line 62
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->s()I

    move-result v9

    const/16 v23, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    :cond_14
    const/4 v9, -0x1

    :cond_15
    :goto_12
    const/16 v25, 0x1

    :goto_13
    move/from16 v40, v8

    if-eqz v25, :cond_17

    move/from16 v28, v32

    move-wide/from16 v47, v49

    move/from16 v8, v52

    goto :goto_10

    :cond_16
    move/from16 v52, v8

    :cond_17
    move/from16 v8, v25

    move/from16 v25, v9

    if-nez v8, :cond_18

    .line 63
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 64
    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    .line 65
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 66
    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    move v9, v7

    move/from16 v8, v27

    goto/16 :goto_16

    :cond_18
    if-eqz v5, :cond_1a

    :goto_14
    if-nez v33, :cond_19

    if-lez v43, :cond_19

    .line 67
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->s()I

    move-result v33

    .line 68
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->d()I

    move-result v27

    add-int/lit8 v43, v43, -0x1

    goto :goto_14

    :cond_19
    add-int/lit8 v33, v33, -0x1

    :cond_1a
    move/from16 v8, v27

    .line 69
    aput-wide v47, v3, v7

    .line 70
    invoke-interface {v14}, Lf/i/a/a/b1/u/b$a;->c()I

    move-result v9

    aput v9, v10, v7

    .line 71
    aget v9, v10, v7

    if-le v9, v2, :cond_1b

    .line 72
    aget v2, v10, v7

    :cond_1b
    move/from16 v27, v2

    move-object v9, v3

    int-to-long v2, v8

    add-long v2, v45, v2

    .line 73
    aput-wide v2, v6, v7

    if-nez v4, :cond_1c

    const/4 v2, 0x1

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    .line 74
    :goto_15
    aput v2, v11, v7

    if-ne v7, v13, :cond_1d

    const/4 v2, 0x1

    .line 75
    aput v2, v11, v7

    add-int/lit8 v30, v30, -0x1

    if-lez v30, :cond_1d

    .line 76
    invoke-virtual {v4}, Lf/i/a/a/m1/u;->s()I

    move-result v3

    sub-int/2addr v3, v2

    move v13, v3

    :cond_1d
    move/from16 v2, v52

    move-object/from16 v52, v4

    int-to-long v3, v2

    add-long v45, v45, v3

    const/4 v3, -0x1

    add-int/lit8 v42, v42, -0x1

    if-nez v42, :cond_1e

    if-lez v31, :cond_1e

    .line 77
    invoke-virtual/range {v44 .. v44}, Lf/i/a/a/m1/u;->s()I

    move-result v2

    .line 78
    invoke-virtual/range {v44 .. v44}, Lf/i/a/a/m1/u;->d()I

    move-result v3

    add-int/lit8 v31, v31, -0x1

    move/from16 v42, v2

    move v2, v3

    .line 79
    :cond_1e
    aget v3, v10, v7

    int-to-long v3, v3

    add-long v47, v47, v3

    add-int/lit8 v28, v28, -0x1

    add-int/lit8 v7, v7, 0x1

    move-object v3, v9

    move/from16 v9, v51

    move-object/from16 v4, v52

    move/from16 v68, v8

    move v8, v2

    move/from16 v2, v27

    move/from16 v27, v68

    goto/16 :goto_f

    :cond_1f
    move/from16 v51, v9

    move-object v9, v3

    move/from16 v8, v27

    move/from16 v9, v51

    :goto_16
    int-to-long v0, v8

    add-long v45, v45, v0

    :goto_17
    if-lez v43, :cond_21

    .line 80
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->s()I

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_18

    .line 81
    :cond_20
    invoke-virtual {v5}, Lf/i/a/a/m1/u;->d()I

    add-int/lit8 v43, v43, -0x1

    goto :goto_17

    :cond_21
    :goto_18
    move v14, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v10

    move-object/from16 v31, v11

    move-object/from16 v4, v26

    move-wide/from16 v0, v45

    goto/16 :goto_20

    :cond_22
    move-object/from16 v26, v2

    move-object/from16 v39, v7

    move/from16 v51, v9

    .line 82
    new-array v2, v12, [J

    .line 83
    new-array v3, v12, [I

    move-wide/from16 v9, v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_19
    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-ne v6, v12, :cond_23

    const/4 v7, 0x0

    goto :goto_1c

    :cond_23
    if-eqz v1, :cond_24

    .line 84
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->t()J

    move-result-wide v9

    goto :goto_1a

    .line 85
    :cond_24
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v9

    :goto_1a
    if-ne v6, v4, :cond_26

    .line 86
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->s()I

    move-result v5

    const/4 v4, 0x4

    .line 87
    invoke-virtual {v15, v4}, Lf/i/a/a/m1/u;->B(I)V

    add-int/lit8 v25, v25, -0x1

    if-lez v25, :cond_25

    .line 88
    invoke-virtual {v15}, Lf/i/a/a/m1/u;->s()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    goto :goto_1b

    :cond_25
    const/4 v4, -0x1

    :cond_26
    :goto_1b
    const/4 v7, 0x1

    :goto_1c
    if-eqz v7, :cond_27

    .line 89
    aput-wide v9, v2, v6

    .line 90
    aput v5, v3, v6

    goto :goto_19

    :cond_27
    move-object/from16 v4, v26

    .line 91
    iget-object v0, v4, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget v1, v0, Lf/i/a/a/b0;->x:I

    iget v0, v0, Lf/i/a/a/b0;->v:I

    .line 92
    invoke-static {v1, v0}, Lf/i/a/a/m1/h0;->H(II)I

    move-result v0

    int-to-long v5, v8

    const/16 v1, 0x2000

    .line 93
    div-int/2addr v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge v7, v12, :cond_28

    .line 94
    aget v9, v3, v7

    .line 95
    invoke-static {v9, v1}, Lf/i/a/a/m1/h0;->i(II)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 96
    :cond_28
    new-array v7, v8, [J

    .line 97
    new-array v9, v8, [I

    .line 98
    new-array v10, v8, [J

    .line 99
    new-array v8, v8, [I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1e
    if-ge v11, v12, :cond_2a

    .line 100
    aget v23, v3, v11

    .line 101
    aget-wide v25, v2, v11

    move-wide/from16 v26, v25

    move-object/from16 v25, v2

    move/from16 v2, v23

    :goto_1f
    if-lez v2, :cond_29

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 103
    aput-wide v26, v7, v15

    mul-int v28, v0, v23

    .line 104
    aput v28, v9, v15

    move/from16 v28, v0

    .line 105
    aget v0, v9, v15

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v30, v1

    int-to-long v0, v13

    mul-long v0, v0, v5

    .line 106
    aput-wide v0, v10, v15

    const/4 v0, 0x1

    .line 107
    aput v0, v8, v15

    .line 108
    aget v0, v9, v15

    int-to-long v0, v0

    add-long v26, v26, v0

    add-int v13, v13, v23

    sub-int v2, v2, v23

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    goto :goto_1f

    :cond_29
    move/from16 v28, v0

    move/from16 v30, v1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v25

    goto :goto_1e

    :cond_2a
    int-to-long v0, v13

    mul-long v45, v5, v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v28, v9

    move-object v6, v10

    move-wide/from16 v0, v45

    move/from16 v9, v51

    :goto_20
    const-wide/32 v42, 0xf4240

    .line 109
    iget-wide v2, v4, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v40, v0

    move-wide/from16 v44, v2

    invoke-static/range {v40 .. v45}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v32

    .line 110
    iget-object v2, v4, Lf/i/a/a/b1/u/j;->h:[J

    if-eqz v2, :cond_3f

    invoke-virtual/range {v39 .. v39}, Lf/i/a/a/b1/j;->a()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_31

    .line 111
    :cond_2b
    iget-object v2, v4, Lf/i/a/a/b1/u/j;->h:[J

    array-length v3, v2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    iget v3, v4, Lf/i/a/a/b1/u/j;->b:I

    if-ne v3, v5, :cond_2e

    array-length v3, v6

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2e

    .line 112
    iget-object v3, v4, Lf/i/a/a/b1/u/j;->i:[J

    const/4 v5, 0x0

    aget-wide v10, v3, v5

    .line 113
    aget-wide v40, v2, v5

    iget-wide v2, v4, Lf/i/a/a/b1/u/j;->c:J

    iget-wide v12, v4, Lf/i/a/a/b1/u/j;->d:J

    move-wide/from16 v42, v2

    move-wide/from16 v44, v12

    invoke-static/range {v40 .. v45}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v2

    add-long/2addr v2, v10

    .line 114
    array-length v12, v6

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    const/4 v13, 0x4

    .line 115
    invoke-static {v13, v5, v12}, Lf/i/a/a/m1/h0;->o(III)I

    move-result v15

    .line 116
    array-length v7, v6

    sub-int/2addr v7, v13

    .line 117
    invoke-static {v7, v5, v12}, Lf/i/a/a/m1/h0;->o(III)I

    move-result v7

    .line 118
    aget-wide v12, v6, v5

    cmp-long v5, v12, v10

    if-gtz v5, :cond_2c

    aget-wide v12, v6, v15

    cmp-long v5, v10, v12

    if-gez v5, :cond_2c

    aget-wide v7, v6, v7

    cmp-long v5, v7, v2

    if-gez v5, :cond_2c

    cmp-long v5, v2, v0

    if-gtz v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_21

    :cond_2c
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_2e

    sub-long v40, v0, v2

    const/4 v2, 0x0

    .line 119
    aget-wide v7, v6, v2

    sub-long v42, v10, v7

    iget-object v2, v4, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget v2, v2, Lf/i/a/a/b0;->w:I

    int-to-long v2, v2

    iget-wide v7, v4, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v44, v2

    move-wide/from16 v46, v7

    invoke-static/range {v42 .. v47}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v2

    .line 120
    iget-object v5, v4, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    iget v5, v5, Lf/i/a/a/b0;->w:I

    int-to-long v7, v5

    iget-wide v10, v4, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v42, v7

    move-wide/from16 v44, v10

    invoke-static/range {v40 .. v45}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v7

    cmp-long v5, v2, v21

    if-nez v5, :cond_2d

    cmp-long v5, v7, v21

    if-eqz v5, :cond_2e

    :cond_2d
    const-wide/32 v10, 0x7fffffff

    cmp-long v5, v2, v10

    if-gtz v5, :cond_2e

    cmp-long v5, v7, v10

    if-gtz v5, :cond_2e

    long-to-int v0, v2

    move-object/from16 v2, v39

    .line 121
    iput v0, v2, Lf/i/a/a/b1/j;->a:I

    long-to-int v0, v7

    .line 122
    iput v0, v2, Lf/i/a/a/b1/j;->b:I

    .line 123
    iget-wide v0, v4, Lf/i/a/a/b1/u/j;->c:J

    const-wide/32 v7, 0xf4240

    invoke-static {v6, v7, v8, v0, v1}, Lf/i/a/a/m1/h0;->j0([JJJ)V

    .line 124
    iget-object v0, v4, Lf/i/a/a/b1/u/j;->h:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    const-wide/32 v9, 0xf4240

    iget-wide v11, v4, Lf/i/a/a/b1/u/j;->d:J

    .line 125
    invoke-static/range {v7 .. v12}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v32

    .line 126
    new-instance v0, Lf/i/a/a/b1/u/m;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move/from16 v29, v14

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/u/m;-><init>(Lf/i/a/a/b1/u/j;[J[II[J[IJ)V

    goto :goto_23

    :cond_2e
    move-object/from16 v2, v39

    .line 127
    iget-object v3, v4, Lf/i/a/a/b1/u/j;->h:[J

    array-length v5, v3

    const/4 v7, 0x1

    if-ne v5, v7, :cond_30

    const/4 v5, 0x0

    aget-wide v7, v3, v5

    cmp-long v3, v7, v21

    if-nez v3, :cond_30

    .line 128
    iget-object v3, v4, Lf/i/a/a/b1/u/j;->i:[J

    aget-wide v7, v3, v5

    const/4 v3, 0x0

    .line 129
    :goto_22
    array-length v5, v6

    if-ge v3, v5, :cond_2f

    .line 130
    aget-wide v9, v6, v3

    sub-long v39, v9, v7

    const-wide/32 v41, 0xf4240

    iget-wide v9, v4, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v43, v9

    .line 131
    invoke-static/range {v39 .. v44}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v9

    aput-wide v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2f
    sub-long v39, v0, v7

    const-wide/32 v41, 0xf4240

    .line 132
    iget-wide v0, v4, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v43, v0

    .line 133
    invoke-static/range {v39 .. v44}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v32

    .line 134
    new-instance v0, Lf/i/a/a/b1/u/m;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move/from16 v29, v14

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/u/m;-><init>(Lf/i/a/a/b1/u/j;[J[II[J[IJ)V

    :goto_23
    move-object v5, v0

    goto/16 :goto_32

    .line 135
    :cond_30
    iget v0, v4, Lf/i/a/a/b1/u/j;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    goto :goto_24

    :cond_31
    const/4 v0, 0x0

    .line 136
    :goto_24
    iget-object v1, v4, Lf/i/a/a/b1/u/j;->h:[J

    array-length v3, v1

    new-array v3, v3, [I

    .line 137
    array-length v1, v1

    new-array v1, v1, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 138
    :goto_25
    iget-object v11, v4, Lf/i/a/a/b1/u/j;->h:[J

    array-length v12, v11

    if-ge v5, v12, :cond_35

    .line 139
    iget-object v12, v4, Lf/i/a/a/b1/u/j;->i:[J

    move v15, v14

    aget-wide v13, v12, v5

    const-wide/16 v25, -0x1

    cmp-long v12, v13, v25

    if-eqz v12, :cond_34

    .line 140
    aget-wide v39, v11, v5

    iget-wide v11, v4, Lf/i/a/a/b1/u/j;->c:J

    move/from16 v23, v9

    move/from16 v25, v10

    iget-wide v9, v4, Lf/i/a/a/b1/u/j;->d:J

    move-wide/from16 v41, v11

    move-wide/from16 v43, v9

    .line 141
    invoke-static/range {v39 .. v44}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 142
    invoke-static {v6, v13, v14, v11, v11}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result v12

    aput v12, v3, v5

    add-long/2addr v13, v9

    const/4 v9, 0x0

    .line 143
    invoke-static {v6, v13, v14, v0, v9}, Lf/i/a/a/m1/h0;->c([JJZZ)I

    move-result v10

    aput v10, v1, v5

    .line 144
    :goto_26
    aget v9, v3, v5

    aget v10, v1, v5

    if-ge v9, v10, :cond_32

    aget v9, v3, v5

    aget v9, v31, v9

    and-int/2addr v9, v11

    if-nez v9, :cond_32

    .line 145
    aget v9, v3, v5

    add-int/2addr v9, v11

    aput v9, v3, v5

    const/4 v11, 0x1

    goto :goto_26

    .line 146
    :cond_32
    aget v9, v1, v5

    aget v10, v3, v5

    sub-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 147
    aget v8, v3, v5

    move/from16 v10, v25

    if-eq v10, v8, :cond_33

    const/4 v8, 0x1

    goto :goto_27

    :cond_33
    const/4 v8, 0x0

    :goto_27
    or-int/2addr v7, v8

    .line 148
    aget v8, v1, v5

    move v10, v8

    move v8, v9

    goto :goto_28

    :cond_34
    move/from16 v23, v9

    :goto_28
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    move/from16 v9, v23

    goto :goto_25

    :cond_35
    move v15, v14

    if-eq v8, v9, :cond_36

    const/4 v0, 0x1

    goto :goto_29

    :cond_36
    const/4 v0, 0x0

    :goto_29
    or-int/2addr v0, v7

    if-eqz v0, :cond_37

    .line 149
    new-array v5, v8, [J

    goto :goto_2a

    :cond_37
    move-object/from16 v5, v27

    :goto_2a
    if-eqz v0, :cond_38

    .line 150
    new-array v7, v8, [I

    goto :goto_2b

    :cond_38
    move-object/from16 v7, v28

    :goto_2b
    if-eqz v0, :cond_39

    const/4 v15, 0x0

    :cond_39
    if-eqz v0, :cond_3a

    .line 151
    new-array v9, v8, [I

    goto :goto_2c

    :cond_3a
    move-object/from16 v9, v31

    .line 152
    :goto_2c
    new-array v8, v8, [J

    move-object v10, v9

    move-wide/from16 v25, v21

    move/from16 v14, v34

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v22, v2

    move-object/from16 v21, v6

    move-object v9, v8

    move v2, v0

    move-object v6, v5

    move-object v8, v7

    move-object/from16 v0, v27

    move-object/from16 v7, v31

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, v28

    .line 153
    :goto_2d
    iget-object v13, v5, Lf/i/a/a/b1/u/j;->h:[J

    array-length v13, v13

    if-ge v11, v13, :cond_3e

    .line 154
    iget-object v13, v5, Lf/i/a/a/b1/u/j;->i:[J

    aget-wide v27, v13, v11

    .line 155
    aget v13, v4, v11

    .line 156
    aget v23, v3, v11

    if-eqz v2, :cond_3b

    move/from16 v29, v2

    sub-int v2, v23, v13

    .line 157
    invoke-static {v0, v13, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    invoke-static {v1, v13, v8, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-static {v7, v13, v10, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v31, v25

    move-wide/from16 v33, v27

    move/from16 v2, v29

    :goto_2e
    move/from16 v68, v23

    move-object/from16 v23, v0

    move/from16 v0, v68

    goto :goto_30

    :cond_3b
    move/from16 v29, v2

    :goto_2f
    move-wide/from16 v31, v25

    move-wide/from16 v33, v27

    goto :goto_2e

    :goto_30
    if-ge v13, v0, :cond_3d

    const-wide/32 v27, 0xf4240

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    .line 160
    iget-wide v3, v5, Lf/i/a/a/b1/u/j;->d:J

    move-wide/from16 v25, v31

    move-wide/from16 v29, v3

    invoke-static/range {v25 .. v30}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v3

    .line 161
    aget-wide v25, v21, v13

    sub-long v41, v25, v33

    const-wide/32 v43, 0xf4240

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    iget-wide v6, v5, Lf/i/a/a/b1/u/j;->c:J

    move-wide/from16 v45, v6

    .line 162
    invoke-static/range {v41 .. v46}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 163
    aput-wide v3, v9, v12

    if-eqz v2, :cond_3c

    .line 164
    aget v3, v8, v12

    if-le v3, v15, :cond_3c

    .line 165
    aget v3, v1, v13

    move v15, v3

    :cond_3c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-wide/from16 v25, v31

    move-wide/from16 v27, v33

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    move-object/from16 v68, v23

    move/from16 v23, v0

    move-object/from16 v0, v68

    goto :goto_2f

    :cond_3d
    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 166
    iget-object v0, v5, Lf/i/a/a/b1/u/j;->h:[J

    aget-wide v3, v0, v11

    add-long v3, v31, v3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v23

    move-wide/from16 v25, v3

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    goto/16 :goto_2d

    :cond_3e
    const-wide/32 v27, 0xf4240

    .line 167
    iget-wide v0, v5, Lf/i/a/a/b1/u/j;->d:J

    move-wide/from16 v29, v0

    .line 168
    invoke-static/range {v25 .. v30}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v11

    .line 169
    new-instance v0, Lf/i/a/a/b1/u/m;

    move-object v4, v0

    move-object v7, v8

    move v8, v15

    invoke-direct/range {v4 .. v12}, Lf/i/a/a/b1/u/m;-><init>(Lf/i/a/a/b1/u/j;[J[II[J[IJ)V

    move-object v5, v0

    move-wide/from16 v0, v16

    move-object/from16 v4, v19

    move/from16 v11, v20

    move-object/from16 v7, v22

    move-object/from16 v15, v24

    goto :goto_33

    :cond_3f
    :goto_31
    move v15, v14

    move-object/from16 v2, v39

    .line 170
    iget-wide v0, v4, Lf/i/a/a/b1/u/j;->c:J

    const-wide/32 v7, 0xf4240

    invoke-static {v6, v7, v8, v0, v1}, Lf/i/a/a/m1/h0;->j0([JJJ)V

    .line 171
    new-instance v5, Lf/i/a/a/b1/u/m;

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move/from16 v29, v15

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v33}, Lf/i/a/a/b1/u/m;-><init>(Lf/i/a/a/b1/u/j;[J[II[J[IJ)V

    :goto_32
    move-object v7, v2

    move-wide/from16 v0, v16

    move-object/from16 v4, v19

    move/from16 v11, v20

    move-object/from16 v15, v24

    move/from16 v14, v34

    :goto_33
    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v10, v37

    move-object/from16 v3, v38

    .line 172
    :goto_34
    iget v2, v5, Lf/i/a/a/b1/u/m;->b:I

    if-nez v2, :cond_40

    :goto_35
    const/4 v2, 0x1

    goto :goto_36

    .line 173
    :cond_40
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :goto_36
    add-int/2addr v14, v2

    move-object v2, v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 174
    :cond_41
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move-wide/from16 v16, v0

    move-object/from16 v38, v3

    move-object/from16 v35, v6

    move-object v2, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v24, v15

    .line 175
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v3

    const/4 v1, 0x0

    const/4 v5, -0x1

    :goto_37
    if-ge v1, v0, :cond_47

    move-object/from16 v14, v24

    .line 176
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/b1/u/m;

    .line 177
    iget-object v9, v8, Lf/i/a/a/b1/u/m;->a:Lf/i/a/a/b1/u/j;

    .line 178
    iget-wide v10, v9, Lf/i/a/a/b1/u/j;->e:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_43

    goto :goto_38

    :cond_43
    iget-wide v10, v8, Lf/i/a/a/b1/u/m;->h:J

    .line 179
    :goto_38
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 180
    new-instance v12, Lf/i/a/a/b1/u/g$a;

    move-object/from16 v13, v38

    iget-object v15, v13, Lf/i/a/a/b1/u/g;->p:Lf/i/a/a/b1/h;

    iget v3, v9, Lf/i/a/a/b1/u/j;->b:I

    .line 181
    invoke-interface {v15, v1, v3}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v3

    invoke-direct {v12, v9, v8, v3}, Lf/i/a/a/b1/u/g$a;-><init>(Lf/i/a/a/b1/u/j;Lf/i/a/a/b1/u/m;Lf/i/a/a/b1/p;)V

    .line 182
    iget v3, v8, Lf/i/a/a/b1/u/m;->e:I

    add-int/lit8 v48, v3, 0x1e

    .line 183
    iget-object v3, v9, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    .line 184
    new-instance v4, Lf/i/a/a/b0;

    move-object/from16 v38, v4

    iget-object v15, v3, Lf/i/a/a/b0;->a:Ljava/lang/String;

    move-object/from16 v39, v15

    iget-object v15, v3, Lf/i/a/a/b0;->b:Ljava/lang/String;

    move-object/from16 v40, v15

    iget v15, v3, Lf/i/a/a/b0;->c:I

    move/from16 v41, v15

    iget v15, v3, Lf/i/a/a/b0;->d:I

    move/from16 v42, v15

    iget v15, v3, Lf/i/a/a/b0;->e:I

    move/from16 v43, v15

    iget-object v15, v3, Lf/i/a/a/b0;->f:Ljava/lang/String;

    move-object/from16 v44, v15

    iget-object v15, v3, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    move-object/from16 v45, v15

    iget-object v15, v3, Lf/i/a/a/b0;->h:Ljava/lang/String;

    move-object/from16 v46, v15

    iget-object v15, v3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    move-object/from16 v47, v15

    iget-object v15, v3, Lf/i/a/a/b0;->k:Ljava/util/List;

    move-object/from16 v49, v15

    iget-object v15, v3, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    move-object/from16 v50, v15

    move-wide/from16 v24, v6

    iget-wide v6, v3, Lf/i/a/a/b0;->m:J

    move-wide/from16 v51, v6

    iget v6, v3, Lf/i/a/a/b0;->n:I

    move/from16 v53, v6

    iget v6, v3, Lf/i/a/a/b0;->o:I

    move/from16 v54, v6

    iget v6, v3, Lf/i/a/a/b0;->p:F

    move/from16 v55, v6

    iget v6, v3, Lf/i/a/a/b0;->q:I

    move/from16 v56, v6

    iget v6, v3, Lf/i/a/a/b0;->r:F

    move/from16 v57, v6

    iget-object v6, v3, Lf/i/a/a/b0;->t:[B

    move-object/from16 v58, v6

    iget v6, v3, Lf/i/a/a/b0;->s:I

    move/from16 v59, v6

    iget-object v6, v3, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    move-object/from16 v60, v6

    iget v6, v3, Lf/i/a/a/b0;->v:I

    move/from16 v61, v6

    iget v6, v3, Lf/i/a/a/b0;->w:I

    move/from16 v62, v6

    iget v6, v3, Lf/i/a/a/b0;->x:I

    move/from16 v63, v6

    iget v6, v3, Lf/i/a/a/b0;->y:I

    move/from16 v64, v6

    iget v6, v3, Lf/i/a/a/b0;->z:I

    move/from16 v65, v6

    iget-object v6, v3, Lf/i/a/a/b0;->A:Ljava/lang/String;

    move-object/from16 v66, v6

    iget v3, v3, Lf/i/a/a/b0;->B:I

    move/from16 v67, v3

    invoke-direct/range {v38 .. v67}, Lf/i/a/a/b0;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lf/i/a/a/d1/a;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lf/i/a/a/z0/e;JIIFIF[BILf/i/a/a/n1/i;IIIIILjava/lang/String;I)V

    .line 185
    iget v3, v9, Lf/i/a/a/b1/u/j;->b:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_44

    cmp-long v3, v10, v21

    if-lez v3, :cond_44

    iget v3, v8, Lf/i/a/a/b1/u/m;->b:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_44

    int-to-float v3, v3

    long-to-float v6, v10

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    div-float/2addr v3, v6

    .line 186
    invoke-virtual {v4, v3}, Lf/i/a/a/b0;->b(F)Lf/i/a/a/b0;

    move-result-object v4

    .line 187
    :cond_44
    iget v3, v9, Lf/i/a/a/b1/u/j;->b:I

    move-object/from16 v8, v36

    move-object/from16 v10, v37

    .line 188
    invoke-static {v3, v4, v8, v10, v2}, Lf/i/a/a/b1/u/f;->a(ILf/i/a/a/b0;Lf/i/a/a/d1/a;Lf/i/a/a/d1/a;Lf/i/a/a/b1/j;)Lf/i/a/a/b0;

    move-result-object v3

    .line 189
    iget-object v4, v12, Lf/i/a/a/b1/u/g$a;->c:Lf/i/a/a/b1/p;

    invoke-interface {v4, v3}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 190
    iget v3, v9, Lf/i/a/a/b1/u/j;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_45

    const/4 v3, -0x1

    if-ne v5, v3, :cond_46

    .line 191
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    goto :goto_39

    :cond_45
    const/4 v3, -0x1

    :cond_46
    :goto_39
    move-object/from16 v4, v35

    .line 192
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v38, v13

    move-wide/from16 v6, v24

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v24, v14

    goto/16 :goto_37

    :cond_47
    move-object/from16 v4, v35

    move-object/from16 v13, v38

    const/4 v3, -0x1

    .line 193
    iput v5, v13, Lf/i/a/a/b1/u/g;->s:I

    .line 194
    iput-wide v6, v13, Lf/i/a/a/b1/u/g;->t:J

    const/4 v0, 0x0

    new-array v1, v0, [Lf/i/a/a/b1/u/g$a;

    .line 195
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/b1/u/g$a;

    iput-object v0, v13, Lf/i/a/a/b1/u/g;->q:[Lf/i/a/a/b1/u/g$a;

    .line 196
    array-length v1, v0

    new-array v1, v1, [[J

    .line 197
    array-length v2, v0

    new-array v2, v2, [I

    .line 198
    array-length v4, v0

    new-array v4, v4, [J

    .line 199
    array-length v5, v0

    new-array v5, v5, [Z

    const/4 v6, 0x0

    .line 200
    :goto_3a
    array-length v7, v0

    if-ge v6, v7, :cond_48

    .line 201
    aget-object v7, v0, v6

    iget-object v7, v7, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget v7, v7, Lf/i/a/a/b1/u/m;->b:I

    new-array v7, v7, [J

    aput-object v7, v1, v6

    .line 202
    aget-object v7, v0, v6

    iget-object v7, v7, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget-object v7, v7, Lf/i/a/a/b1/u/m;->f:[J

    const/4 v8, 0x0

    aget-wide v9, v7, v8

    aput-wide v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_48
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 203
    :goto_3b
    array-length v7, v0

    if-ge v6, v7, :cond_4c

    const-wide v9, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/16 v23, -0x1

    .line 204
    :goto_3c
    array-length v11, v0

    if-ge v7, v11, :cond_4a

    .line 205
    aget-boolean v11, v5, v7

    if-nez v11, :cond_49

    aget-wide v11, v4, v7

    cmp-long v14, v11, v9

    if-gtz v14, :cond_49

    .line 206
    aget-wide v9, v4, v7

    move/from16 v23, v7

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 207
    :cond_4a
    aget v7, v2, v23

    .line 208
    aget-object v9, v1, v23

    aput-wide v21, v9, v7

    .line 209
    aget-object v9, v0, v23

    iget-object v9, v9, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget-object v9, v9, Lf/i/a/a/b1/u/m;->d:[I

    aget v9, v9, v7

    int-to-long v9, v9

    add-long v21, v21, v9

    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 210
    aput v7, v2, v23

    .line 211
    aget-object v10, v1, v23

    array-length v10, v10

    if-ge v7, v10, :cond_4b

    .line 212
    aget-object v10, v0, v23

    iget-object v10, v10, Lf/i/a/a/b1/u/g$a;->b:Lf/i/a/a/b1/u/m;

    iget-object v10, v10, Lf/i/a/a/b1/u/m;->f:[J

    aget-wide v11, v10, v7

    aput-wide v11, v4, v23

    goto :goto_3b

    .line 213
    :cond_4b
    aput-boolean v9, v5, v23

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 214
    :cond_4c
    iput-object v1, v13, Lf/i/a/a/b1/u/g;->r:[[J

    .line 215
    iget-object v0, v13, Lf/i/a/a/b1/u/g;->p:Lf/i/a/a/b1/h;

    invoke-interface {v0}, Lf/i/a/a/b1/h;->d()V

    .line 216
    iget-object v0, v13, Lf/i/a/a/b1/u/g;->p:Lf/i/a/a/b1/h;

    invoke-interface {v0, v13}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 217
    iget-object v0, v13, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    .line 218
    iput v0, v13, Lf/i/a/a/b1/u/g;->g:I

    move-object v2, v13

    move-object v3, v2

    move-wide/from16 v0, v16

    goto/16 :goto_0

    .line 219
    :cond_4d
    iget-object v5, v2, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    iget-object v5, v2, Lf/i/a/a/b1/u/g;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/b1/u/a$a;

    .line 221
    iget-object v5, v5, Lf/i/a/a/b1/u/a$a;->i1:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    :cond_4e
    iget v0, v2, Lf/i/a/a/b1/u/g;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    .line 223
    invoke-virtual {v3}, Lf/i/a/a/b1/u/g;->k()V

    :cond_4f
    return-void
.end method
