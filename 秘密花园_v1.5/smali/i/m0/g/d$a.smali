.class public final Li/m0/g/d$a;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lj/j;

.field public c:[Li/m0/g/c;

.field public d:I

.field public e:I

.field public f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Lj/a0;III)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    move p3, p2

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Li/m0/g/d$a;->g:I

    iput p3, p0, Li/m0/g/d$a;->h:I

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Li/m0/g/d$a;->a:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object p1

    iput-object p1, p0, Li/m0/g/d$a;->b:Lj/j;

    const/16 p1, 0x8

    new-array p1, p1, [Li/m0/g/c;

    .line 4
    iput-object p1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Li/m0/g/d$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v2, v3}, Lc/a/a/b/g/h;->P([Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li/m0/g/d$a;->d:I

    .line 3
    iput v2, p0, Li/m0/g/d$a;->e:I

    .line 4
    iput v2, p0, Li/m0/g/d$a;->f:I

    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget v0, p0, Li/m0/g/d$a;->d:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method public final c(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 1
    iget-object v1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Li/m0/g/d$a;->d:I

    if-lt v1, v2, :cond_1

    if-lez p1, :cond_1

    .line 3
    iget-object v2, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 4
    iget v2, v2, Li/m0/g/c;->a:I

    sub-int/2addr p1, v2

    .line 5
    iget v3, p0, Li/m0/g/d$a;->f:I

    sub-int/2addr v3, v2

    iput v3, p0, Li/m0/g/d$a;->f:I

    .line 6
    iget v2, p0, Li/m0/g/d$a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Li/m0/g/d$a;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    iget-object p1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    iget v1, p0, Li/m0/g/d$a;->d:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 9
    iget v3, p0, Li/m0/g/d$a;->e:I

    .line 10
    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Li/m0/g/d$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Li/m0/g/d$a;->d:I

    :cond_2
    return v0
.end method

.method public final d(I)Lj/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    sget-object v0, Li/m0/g/d;->c:Li/m0/g/d;

    .line 2
    sget-object v0, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Li/m0/g/d;->c:Li/m0/g/d;

    .line 5
    sget-object v0, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 6
    aget-object p1, v0, p1

    iget-object p1, p1, Li/m0/g/c;->b:Lj/k;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Li/m0/g/d;->c:Li/m0/g/d;

    .line 8
    sget-object v0, Li/m0/g/d;->a:[Li/m0/g/c;

    .line 9
    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Li/m0/g/d$a;->b(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 10
    iget-object v1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 11
    aget-object p1, v1, v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Li/m0/g/c;->b:Lj/k;

    :goto_1
    return-object p1

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header index too large "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(ILi/m0/g/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li/m0/g/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p2, Li/m0/g/c;->a:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 3
    iget-object v2, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    .line 4
    iget v3, p0, Li/m0/g/d$a;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p1

    .line 5
    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v2, Li/m0/g/c;->a:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget v2, p0, Li/m0/g/d$a;->h:I

    if-le v0, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Li/m0/g/d$a;->a()V

    return-void

    .line 8
    :cond_2
    iget v3, p0, Li/m0/g/d$a;->f:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 9
    invoke-virtual {p0, v3}, Li/m0/g/d$a;->c(I)I

    move-result v2

    if-ne p1, v1, :cond_4

    .line 10
    iget p1, p0, Li/m0/g/d$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    array-length v3, v2

    if-le p1, v3, :cond_3

    .line 11
    array-length p1, v2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Li/m0/g/c;

    const/4 v3, 0x0

    .line 12
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    array-length v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Li/m0/g/d$a;->d:I

    .line 14
    iput-object p1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    .line 15
    :cond_3
    iget p1, p0, Li/m0/g/d$a;->d:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Li/m0/g/d$a;->d:I

    .line 16
    iget-object v1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    aput-object p2, v1, p1

    .line 17
    iget p1, p0, Li/m0/g/d$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li/m0/g/d$a;->e:I

    goto :goto_1

    .line 18
    :cond_4
    iget v1, p0, Li/m0/g/d$a;->d:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 19
    iget-object p1, p0, Li/m0/g/d$a;->c:[Li/m0/g/c;

    aput-object p2, p1, v1

    .line 20
    :goto_1
    iget p1, p0, Li/m0/g/d$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Li/m0/g/d$a;->f:I

    return-void
.end method

.method public final f()Lj/k;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/d$a;->b:Lj/j;

    invoke-interface {v0}, Lj/j;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Li/m0/b;->a(BI)I

    move-result v0

    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7f

    .line 2
    invoke-virtual {p0, v0, v3}, Li/m0/g/d$a;->g(II)I

    move-result v0

    int-to-long v5, v0

    if-eqz v2, :cond_b

    .line 3
    new-instance v0, Lj/g;

    invoke-direct {v0}, Lj/g;-><init>()V

    .line 4
    sget-object v2, Li/m0/g/o;->d:Li/m0/g/o;

    iget-object v2, p0, Li/m0/g/d$a;->b:Lj/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 5
    sget-object v7, Li/m0/g/o;->c:Li/m0/g/o$a;

    const-wide/16 v8, 0x0

    move-wide v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_1
    cmp-long v11, v9, v5

    if-gez v11, :cond_5

    .line 6
    invoke-interface {v2}, Lj/j;->readByte()B

    move-result v11

    and-int/2addr v11, v1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v11

    add-int/lit8 v7, v7, 0x8

    :goto_2
    const/16 v11, 0x8

    if-lt v7, v11, :cond_4

    add-int/lit8 v11, v7, -0x8

    ushr-int v12, v4, v11

    and-int/2addr v12, v1

    .line 7
    iget-object v8, v8, Li/m0/g/o$a;->a:[Li/m0/g/o$a;

    if-eqz v8, :cond_3

    .line 8
    aget-object v8, v8, v12

    if-eqz v8, :cond_2

    .line 9
    iget-object v12, v8, Li/m0/g/o$a;->a:[Li/m0/g/o$a;

    if-nez v12, :cond_1

    .line 10
    iget v11, v8, Li/m0/g/o$a;->b:I

    .line 11
    invoke-virtual {v0, v11}, Lj/g;->Q(I)Lj/g;

    .line 12
    iget v8, v8, Li/m0/g/o$a;->c:I

    sub-int/2addr v7, v8

    .line 13
    sget-object v8, Li/m0/g/o;->c:Li/m0/g/o$a;

    goto :goto_2

    :cond_1
    move v7, v11

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    :cond_4
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_1

    :cond_5
    :goto_3
    if-lez v7, :cond_9

    rsub-int/lit8 v2, v7, 0x8

    shl-int v2, v4, v2

    and-int/2addr v2, v1

    .line 15
    iget-object v5, v8, Li/m0/g/o$a;->a:[Li/m0/g/o$a;

    if-eqz v5, :cond_8

    .line 16
    aget-object v2, v5, v2

    if-eqz v2, :cond_7

    .line 17
    iget-object v5, v2, Li/m0/g/o$a;->a:[Li/m0/g/o$a;

    if-nez v5, :cond_9

    .line 18
    iget v5, v2, Li/m0/g/o$a;->c:I

    if-le v5, v7, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iget v5, v2, Li/m0/g/o$a;->b:I

    .line 20
    invoke-virtual {v0, v5}, Lj/g;->Q(I)Lj/g;

    .line 21
    iget v2, v2, Li/m0/g/o$a;->c:I

    sub-int/2addr v7, v2

    .line 22
    sget-object v8, Li/m0/g/o;->c:Li/m0/g/o$a;

    goto :goto_3

    .line 23
    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    .line 24
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lj/g;->F()Lj/k;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v0, "source"

    .line 25
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    .line 26
    :cond_b
    iget-object v0, p0, Li/m0/g/d$a;->b:Lj/j;

    invoke-interface {v0, v5, v6}, Lj/j;->b(J)Lj/k;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final g(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Li/m0/g/d$a;->b:Lj/j;

    invoke-interface {v0}, Lj/j;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Li/m0/b;->a(BI)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
