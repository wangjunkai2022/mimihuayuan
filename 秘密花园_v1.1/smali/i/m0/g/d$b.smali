.class public final Li/m0/g/d$b;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:[Li/m0/g/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Z

.field public final j:Lj/g;


# direct methods
.method public constructor <init>(IZLj/g;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li/m0/g/d$b;->h:I

    iput-boolean p2, p0, Li/m0/g/d$b;->i:Z

    iput-object p3, p0, Li/m0/g/d$b;->j:Lj/g;

    const p2, 0x7fffffff

    .line 2
    iput p2, p0, Li/m0/g/d$b;->a:I

    .line 3
    iput p1, p0, Li/m0/g/d$b;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [Li/m0/g/c;

    .line 4
    iput-object p1, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Li/m0/g/d$b;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v2, v3}, Lc/a/a/b/g/h;->P([Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li/m0/g/d$b;->e:I

    .line 3
    iput v2, p0, Li/m0/g/d$b;->f:I

    .line 4
    iput v2, p0, Li/m0/g/d$b;->g:I

    return-void
.end method

.method public final b(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 1
    iget-object v1, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Li/m0/g/d$b;->e:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    if-lez p1, :cond_2

    .line 3
    iget-object v2, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    iget v4, v4, Li/m0/g/c;->a:I

    sub-int/2addr p1, v4

    .line 4
    iget v4, p0, Li/m0/g/d$b;->g:I

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, v2, Li/m0/g/c;->a:I

    sub-int/2addr v4, v2

    iput v4, p0, Li/m0/g/d$b;->g:I

    .line 5
    iget v2, p0, Li/m0/g/d$b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Li/m0/g/d$b;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    .line 7
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    .line 8
    :cond_2
    iget-object p1, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    iget v1, p0, Li/m0/g/d$b;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 9
    iget v4, p0, Li/m0/g/d$b;->f:I

    .line 10
    invoke-static {p1, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    iget v1, p0, Li/m0/g/d$b;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 12
    iget p1, p0, Li/m0/g/d$b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Li/m0/g/d$b;->e:I

    :cond_3
    return v0
.end method

.method public final c(Li/m0/g/c;)V
    .locals 6

    .line 1
    iget v0, p1, Li/m0/g/c;->a:I

    .line 2
    iget v1, p0, Li/m0/g/d$b;->c:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Li/m0/g/d$b;->a()V

    return-void

    .line 4
    :cond_0
    iget v2, p0, Li/m0/g/d$b;->g:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 5
    invoke-virtual {p0, v2}, Li/m0/g/d$b;->b(I)I

    .line 6
    iget v1, p0, Li/m0/g/d$b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 7
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Li/m0/g/c;

    const/4 v3, 0x0

    .line 8
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Li/m0/g/d$b;->e:I

    .line 10
    iput-object v1, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    .line 11
    :cond_1
    iget v1, p0, Li/m0/g/d$b;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Li/m0/g/d$b;->e:I

    .line 12
    iget-object v2, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    aput-object p1, v2, v1

    .line 13
    iget p1, p0, Li/m0/g/d$b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li/m0/g/d$b;->f:I

    .line 14
    iget p1, p0, Li/m0/g/d$b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Li/m0/g/d$b;->g:I

    return-void
.end method

.method public final d(Lj/k;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    iget-boolean v0, p0, Li/m0/g/d$b;->i:Z

    const/16 v1, 0x7f

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Li/m0/g/o;->d:Li/m0/g/o;

    .line 2
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0xff

    if-ge v5, v0, :cond_0

    .line 3
    invoke-virtual {p1, v5}, Lj/k;->e(I)B

    move-result v9

    .line 4
    invoke-static {v9, v8}, Li/m0/b;->a(BI)I

    move-result v8

    .line 5
    sget-object v9, Li/m0/g/o;->b:[B

    aget-byte v8, v9, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    int-to-long v9, v0

    add-long/2addr v6, v9

    const/4 v0, 0x3

    shr-long v5, v6, v0

    long-to-int v0, v5

    .line 6
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 7
    new-instance v0, Lj/g;

    invoke-direct {v0}, Lj/g;-><init>()V

    .line 8
    sget-object v5, Li/m0/g/o;->d:Li/m0/g/o;

    .line 9
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v5

    move-wide v6, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 10
    invoke-virtual {p1, v2}, Lj/k;->e(I)B

    move-result v4

    .line 11
    invoke-static {v4, v8}, Li/m0/b;->a(BI)I

    move-result v4

    .line 12
    sget-object v9, Li/m0/g/o;->a:[I

    aget v9, v9, v4

    .line 13
    sget-object v10, Li/m0/g/o;->b:[B

    aget-byte v4, v10, v4

    shl-long/2addr v6, v4

    int-to-long v9, v9

    or-long/2addr v6, v9

    add-int/2addr v3, v4

    :goto_2
    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x8

    shr-long v9, v6, v3

    long-to-int v4, v9

    .line 14
    invoke-interface {v0, v4}, Lj/i;->q(I)Lj/i;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    rsub-int/lit8 p1, v3, 0x8

    shl-long v4, v6, p1

    const-wide/16 v6, 0xff

    ushr-long v2, v6, v3

    or-long/2addr v2, v4

    long-to-int p1, v2

    .line 15
    invoke-interface {v0, p1}, Lj/i;->q(I)Lj/i;

    .line 16
    :cond_3
    invoke-virtual {v0}, Lj/g;->F()Lj/k;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v0

    const/16 v2, 0x80

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Li/m0/g/d$b;->f(III)V

    .line 19
    iget-object v0, p0, Li/m0/g/d$b;->j:Lj/g;

    invoke-virtual {v0, p1}, Lj/g;->M(Lj/k;)Lj/g;

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p1}, Lj/k;->b()I

    move-result v0

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Li/m0/g/d$b;->f(III)V

    .line 22
    iget-object v0, p0, Li/m0/g/d$b;->j:Lj/g;

    invoke-virtual {v0, p1}, Lj/g;->M(Lj/k;)Lj/g;

    :goto_3
    return-void

    :cond_5
    const-string p1, "data"

    .line 23
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/m0/g/d$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Li/m0/g/d$b;->a:I

    iget v2, p0, Li/m0/g/d$b;->c:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v4, v3}, Li/m0/g/d$b;->f(III)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Li/m0/g/d$b;->b:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Li/m0/g/d$b;->a:I

    .line 6
    iget v0, p0, Li/m0/g/d$b;->c:I

    invoke-virtual {p0, v0, v4, v3}, Li/m0/g/d$b;->f(III)V

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_10

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/m0/g/c;

    .line 9
    iget-object v4, v3, Li/m0/g/c;->b:Lj/k;

    invoke-virtual {v4}, Lj/k;->h()Lj/k;

    move-result-object v4

    .line 10
    iget-object v5, v3, Li/m0/g/c;->c:Lj/k;

    .line 11
    sget-object v6, Li/m0/g/d;->c:Li/m0/g/d;

    .line 12
    sget-object v6, Li/m0/g/d;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x2

    if-le v9, v6, :cond_2

    goto :goto_1

    :cond_2
    if-lt v8, v6, :cond_4

    .line 15
    sget-object v8, Li/m0/g/d;->c:Li/m0/g/d;

    .line 16
    sget-object v8, Li/m0/g/d;->a:[Li/m0/g/c;

    add-int/lit8 v9, v6, -0x1

    .line 17
    aget-object v8, v8, v9

    iget-object v8, v8, Li/m0/g/c;->c:Lj/k;

    invoke-static {v8, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    .line 18
    :cond_3
    sget-object v8, Li/m0/g/d;->c:Li/m0/g/d;

    .line 19
    sget-object v8, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 20
    aget-object v8, v8, v6

    iget-object v8, v8, Li/m0/g/c;->c:Lj/k;

    invoke-static {v8, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    move v13, v8

    move v8, v6

    move v6, v13

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v6

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_2
    const/4 v9, 0x0

    if-ne v6, v7, :cond_a

    .line 21
    iget v10, p0, Li/m0/g/d$b;->e:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    array-length v11, v11

    :goto_3
    if-ge v10, v11, :cond_a

    .line 22
    iget-object v12, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    aget-object v12, v12, v10

    if-eqz v12, :cond_9

    iget-object v12, v12, Li/m0/g/c;->b:Lj/k;

    invoke-static {v12, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 23
    iget-object v12, p0, Li/m0/g/d$b;->d:[Li/m0/g/c;

    aget-object v12, v12, v10

    if-eqz v12, :cond_7

    iget-object v12, v12, Li/m0/g/c;->c:Lj/k;

    invoke-static {v12, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 24
    iget v6, p0, Li/m0/g/d$b;->e:I

    sub-int/2addr v10, v6

    sget-object v6, Li/m0/g/d;->c:Li/m0/g/d;

    .line 25
    sget-object v6, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 26
    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_5

    :cond_6
    if-ne v8, v7, :cond_8

    .line 27
    iget v8, p0, Li/m0/g/d$b;->e:I

    sub-int v8, v10, v8

    sget-object v12, Li/m0/g/d;->c:Li/m0/g/d;

    .line 28
    sget-object v12, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 29
    array-length v12, v12

    add-int/2addr v8, v12

    goto :goto_4

    .line 30
    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v9

    :cond_8
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 31
    :cond_9
    invoke-static {}, Lh/o/c/g;->e()V

    throw v9

    :cond_a
    :goto_5
    if-eq v6, v7, :cond_b

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 32
    invoke-virtual {p0, v6, v3, v4}, Li/m0/g/d$b;->f(III)V

    goto :goto_6

    :cond_b
    const/16 v6, 0x40

    if-ne v8, v7, :cond_c

    .line 33
    iget-object v7, p0, Li/m0/g/d$b;->j:Lj/g;

    invoke-virtual {v7, v6}, Lj/g;->Q(I)Lj/g;

    .line 34
    invoke-virtual {p0, v4}, Li/m0/g/d$b;->d(Lj/k;)V

    .line 35
    invoke-virtual {p0, v5}, Li/m0/g/d$b;->d(Lj/k;)V

    .line 36
    invoke-virtual {p0, v3}, Li/m0/g/d$b;->c(Li/m0/g/c;)V

    goto :goto_6

    .line 37
    :cond_c
    sget-object v7, Li/m0/g/c;->d:Lj/k;

    if-eqz v4, :cond_f

    if-eqz v7, :cond_e

    .line 38
    invoke-static {v4, v7}, Lj/c0/a;->o(Lj/k;Lj/k;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 39
    sget-object v7, Li/m0/g/c;->i:Lj/k;

    invoke-static {v7, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    const/16 v3, 0xf

    .line 40
    invoke-virtual {p0, v8, v3, v1}, Li/m0/g/d$b;->f(III)V

    .line 41
    invoke-virtual {p0, v5}, Li/m0/g/d$b;->d(Lj/k;)V

    goto :goto_6

    :cond_d
    const/16 v4, 0x3f

    .line 42
    invoke-virtual {p0, v8, v4, v6}, Li/m0/g/d$b;->f(III)V

    .line 43
    invoke-virtual {p0, v5}, Li/m0/g/d$b;->d(Lj/k;)V

    .line 44
    invoke-virtual {p0, v3}, Li/m0/g/d$b;->c(Li/m0/g/c;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    const-string p1, "prefix"

    .line 45
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v9

    .line 46
    :cond_f
    throw v9

    :cond_10
    return-void
.end method

.method public final f(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Li/m0/g/d$b;->j:Lj/g;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lj/g;->Q(I)Lj/g;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/m0/g/d$b;->j:Lj/g;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lj/g;->Q(I)Lj/g;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Li/m0/g/d$b;->j:Lj/g;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lj/g;->Q(I)Lj/g;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Li/m0/g/d$b;->j:Lj/g;

    invoke-virtual {p2, p1}, Lj/g;->Q(I)Lj/g;

    return-void
.end method
