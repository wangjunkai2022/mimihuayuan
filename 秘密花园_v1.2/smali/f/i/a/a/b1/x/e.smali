.class public final Lf/i/a/a/b1/x/e;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lf/i/a/a/b1/g;


# static fields
.field public static final n:I


# instance fields
.field public final a:I

.field public final b:Lf/i/a/a/b1/x/f;

.field public final c:Lf/i/a/a/m1/u;

.field public final d:Lf/i/a/a/m1/u;

.field public final e:Lf/i/a/a/m1/t;

.field public final f:J

.field public g:Lf/i/a/a/b1/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:J

.field public i:J

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ID3"

    .line 1
    invoke-static {v0}, Lf/i/a/a/m1/h0;->C(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/i/a/a/b1/x/e;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v2, v0}, Lf/i/a/a/b1/x/e;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lf/i/a/a/b1/x/e;->f:J

    .line 4
    iput-wide p1, p0, Lf/i/a/a/b1/x/e;->h:J

    .line 5
    iput p3, p0, Lf/i/a/a/b1/x/e;->a:I

    .line 6
    new-instance p1, Lf/i/a/a/b1/x/f;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 7
    invoke-direct {p1, p3, p2}, Lf/i/a/a/b1/x/f;-><init>(ZLjava/lang/String;)V

    .line 8
    iput-object p1, p0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    .line 9
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/x/e;->c:Lf/i/a/a/m1/u;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lf/i/a/a/b1/x/e;->j:I

    const-wide/16 p1, -0x1

    .line 11
    iput-wide p1, p0, Lf/i/a/a/b1/x/e;->i:J

    .line 12
    new-instance p1, Lf/i/a/a/m1/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    .line 13
    new-instance p2, Lf/i/a/a/m1/t;

    iget-object p1, p1, Lf/i/a/a/m1/u;->a:[B

    invoke-direct {p2, p1}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object p2, p0, Lf/i/a/a/b1/x/e;->e:Lf/i/a/a/m1/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(Lf/i/a/a/b1/d;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    iget-object v2, v2, Lf/i/a/a/m1/u;->a:[B

    const/16 v3, 0xa

    .line 2
    invoke-virtual {p1, v2, v0, v3, v0}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 3
    iget-object v2, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v2, v0}, Lf/i/a/a/m1/u;->A(I)V

    .line 4
    iget-object v2, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->r()I

    move-result v2

    sget v3, Lf/i/a/a/b1/x/e;->n:I

    if-eq v2, v3, :cond_1

    .line 5
    iput v0, p1, Lf/i/a/a/b1/d;->f:I

    .line 6
    invoke-virtual {p1, v1, v0}, Lf/i/a/a/b1/d;->a(IZ)Z

    .line 7
    iget-wide v2, p0, Lf/i/a/a/b1/x/e;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 8
    iput-wide v2, p0, Lf/i/a/a/b1/x/e;->i:J

    :cond_0
    return v1

    .line 9
    :cond_1
    iget-object v2, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lf/i/a/a/m1/u;->B(I)V

    .line 10
    iget-object v2, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v2}, Lf/i/a/a/m1/u;->o()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 11
    invoke-virtual {p1, v2, v0}, Lf/i/a/a/b1/d;->a(IZ)Z

    goto :goto_0
.end method

.method public c(Lf/i/a/a/b1/d;Lf/i/a/a/b1/m;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lf/i/a/a/b1/d;->c:J

    .line 2
    iget v4, v0, Lf/i/a/a/b1/x/e;->a:I

    const/4 v8, 0x1

    and-int/2addr v4, v8

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v10, -0x1

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_a

    .line 3
    iget-boolean v7, v0, Lf/i/a/a/b1/x/e;->k:Z

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iput v10, v0, Lf/i/a/a/b1/x/e;->j:I

    .line 5
    iput v9, v1, Lf/i/a/a/b1/d;->f:I

    .line 6
    iget-wide v11, v1, Lf/i/a/a/b1/d;->d:J

    cmp-long v7, v11, v5

    if-nez v7, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/b1/x/e;->b(Lf/i/a/a/b1/d;)I

    :cond_2
    move-wide v11, v5

    const/4 v7, 0x0

    .line 8
    :cond_3
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    iget-object v13, v13, Lf/i/a/a/m1/u;->a:[B

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v9, v14, v8}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 9
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v13, v9}, Lf/i/a/a/m1/u;->A(I)V

    .line 10
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v13}, Lf/i/a/a/m1/u;->u()I

    move-result v13

    .line 11
    invoke-static {v13}, Lf/i/a/a/b1/x/f;->g(I)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    .line 12
    :cond_4
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    iget-object v13, v13, Lf/i/a/a/m1/u;->a:[B

    const/4 v14, 0x4

    invoke-virtual {v1, v13, v9, v14, v8}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->e:Lf/i/a/a/m1/t;

    const/16 v14, 0xe

    invoke-virtual {v13, v14}, Lf/i/a/a/m1/t;->j(I)V

    .line 14
    iget-object v13, v0, Lf/i/a/a/b1/x/e;->e:Lf/i/a/a/m1/t;

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Lf/i/a/a/m1/t;->f(I)I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_7

    int-to-long v14, v13

    add-long/2addr v11, v14

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x3e8

    if-ne v7, v14, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v13, v13, -0x6

    .line 15
    invoke-virtual {v1, v13, v8}, Lf/i/a/a/b1/d;->a(IZ)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_1

    .line 16
    :cond_7
    iput-boolean v8, v0, Lf/i/a/a/b1/x/e;->k:Z

    .line 17
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Malformed ADTS stream"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_8
    :goto_1
    iput v9, v1, Lf/i/a/a/b1/d;->f:I

    if-lez v7, :cond_9

    int-to-long v13, v7

    .line 19
    div-long/2addr v11, v13

    long-to-int v7, v11

    iput v7, v0, Lf/i/a/a/b1/x/e;->j:I

    goto :goto_2

    .line 20
    :cond_9
    iput v10, v0, Lf/i/a/a/b1/x/e;->j:I

    .line 21
    :goto_2
    iput-boolean v8, v0, Lf/i/a/a/b1/x/e;->k:Z

    .line 22
    :cond_a
    :goto_3
    iget-object v7, v0, Lf/i/a/a/b1/x/e;->c:Lf/i/a/a/m1/u;

    iget-object v7, v7, Lf/i/a/a/m1/u;->a:[B

    const/16 v11, 0x800

    invoke-virtual {v1, v7, v9, v11}, Lf/i/a/a/b1/d;->e([BII)I

    move-result v11

    if-ne v11, v10, :cond_b

    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    .line 23
    :goto_4
    iget-boolean v1, v0, Lf/i/a/a/b1/x/e;->m:Z

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_d

    .line 24
    iget v1, v0, Lf/i/a/a/b1/x/e;->j:I

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_e

    .line 25
    iget-object v4, v0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    .line 26
    iget-wide v9, v4, Lf/i/a/a/b1/x/f;->q:J

    cmp-long v4, v9, v13

    if-nez v4, :cond_e

    if-nez v12, :cond_e

    goto :goto_7

    .line 27
    :cond_e
    iget-object v9, v0, Lf/i/a/a/b1/x/e;->g:Lf/i/a/a/b1/h;

    invoke-static {v9}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 28
    iget-object v1, v0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    .line 29
    iget-wide v5, v1, Lf/i/a/a/b1/x/f;->q:J

    cmp-long v1, v5, v13

    if-eqz v1, :cond_f

    .line 30
    iget v7, v0, Lf/i/a/a/b1/x/e;->j:I

    mul-int/lit8 v1, v7, 0x8

    int-to-long v13, v1

    const-wide/32 v16, 0xf4240

    mul-long v13, v13, v16

    .line 31
    div-long/2addr v13, v5

    long-to-int v6, v13

    .line 32
    new-instance v10, Lf/i/a/a/b1/c;

    iget-wide v4, v0, Lf/i/a/a/b1/x/e;->i:J

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lf/i/a/a/b1/c;-><init>(JJII)V

    .line 33
    invoke-interface {v9, v10}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    goto :goto_6

    .line 34
    :cond_f
    new-instance v1, Lf/i/a/a/b1/n$b;

    const-wide/16 v2, 0x0

    .line 35
    invoke-direct {v1, v13, v14, v2, v3}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 36
    invoke-interface {v9, v1}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    .line 37
    :goto_6
    iput-boolean v8, v0, Lf/i/a/a/b1/x/e;->m:Z

    :goto_7
    if-eqz v12, :cond_10

    const/4 v1, -0x1

    return v1

    .line 38
    :cond_10
    iget-object v1, v0, Lf/i/a/a/b1/x/e;->c:Lf/i/a/a/m1/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/i/a/a/m1/u;->A(I)V

    .line 39
    iget-object v1, v0, Lf/i/a/a/b1/x/e;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v11}, Lf/i/a/a/m1/u;->z(I)V

    .line 40
    iget-boolean v1, v0, Lf/i/a/a/b1/x/e;->l:Z

    if-nez v1, :cond_11

    .line 41
    iget-object v1, v0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    iget-wide v2, v0, Lf/i/a/a/b1/x/e;->h:J

    .line 42
    iput-wide v2, v1, Lf/i/a/a/b1/x/f;->s:J

    .line 43
    iput-boolean v8, v0, Lf/i/a/a/b1/x/e;->l:Z

    .line 44
    :cond_11
    iget-object v1, v0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    iget-object v2, v0, Lf/i/a/a/b1/x/e;->c:Lf/i/a/a/m1/u;

    invoke-virtual {v1, v2}, Lf/i/a/a/b1/x/f;->c(Lf/i/a/a/m1/u;)V

    const/4 v1, 0x0

    return v1
.end method

.method public d(Lf/i/a/a/b1/h;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/x/e;->g:Lf/i/a/a/b1/h;

    .line 2
    iget-object v0, p0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    new-instance v1, Lf/i/a/a/b1/x/c0$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lf/i/a/a/b1/x/c0$d;-><init>(III)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i/a/a/b1/x/f;->f(Lf/i/a/a/b1/h;Lf/i/a/a/b1/x/c0$d;)V

    .line 5
    invoke-interface {p1}, Lf/i/a/a/b1/h;->d()V

    return-void
.end method

.method public f(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/b1/x/e;->l:Z

    .line 2
    iget-object p1, p0, Lf/i/a/a/b1/x/e;->b:Lf/i/a/a/b1/x/f;

    invoke-virtual {p1}, Lf/i/a/a/b1/x/f;->a()V

    .line 3
    iget-wide p1, p0, Lf/i/a/a/b1/x/e;->f:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lf/i/a/a/b1/x/e;->h:J

    return-void
.end method

.method public i(Lf/i/a/a/b1/d;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/b1/x/e;->b(Lf/i/a/a/b1/d;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_1
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    const/4 v6, 0x2

    .line 3
    invoke-virtual {p1, v5, v1, v6, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 4
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v5, v1}, Lf/i/a/a/m1/u;->A(I)V

    .line 5
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    invoke-virtual {v5}, Lf/i/a/a/m1/u;->u()I

    move-result v5

    .line 6
    invoke-static {v5}, Lf/i/a/a/b1/x/f;->g(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    iput v1, p1, Lf/i/a/a/b1/d;->f:I

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-virtual {p1, v3, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 9
    :cond_2
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->d:Lf/i/a/a/m1/u;

    iget-object v5, v5, Lf/i/a/a/m1/u;->a:[B

    .line 10
    invoke-virtual {p1, v5, v1, v6, v1}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 11
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->e:Lf/i/a/a/m1/t;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/t;->j(I)V

    .line 12
    iget-object v5, p0, Lf/i/a/a/b1/x/e;->e:Lf/i/a/a/m1/t;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lf/i/a/a/m1/t;->f(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 13
    invoke-virtual {p1, v6, v1}, Lf/i/a/a/b1/d;->a(IZ)Z

    add-int/2addr v4, v5

    goto :goto_1
.end method
