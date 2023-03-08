.class public final Lf/i/a/a/h1/u0/m;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lf/i/a/a/h1/k0;


# instance fields
.field public final a:I

.field public final b:Lf/i/a/a/h1/u0/n;

.field public c:I


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    .line 3
    iput p2, p0, Lf/i/a/a/h1/u0/m;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lf/i/a/a/h1/u0/m;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/m;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    invoke-virtual {v0}, Lf/i/a/a/h1/u0/n;->B()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lf/i/a/a/h1/u0/p;

    iget-object v1, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    .line 4
    iget-object v1, v1, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 5
    iget v2, p0, Lf/i/a/a/h1/u0/m;->a:I

    .line 6
    iget-object v1, v1, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 7
    iget-object v1, v1, Lf/i/a/a/h1/o0;->b:[Lf/i/a/a/b0;

    aget-object v1, v1, v2

    .line 8
    iget-object v1, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lf/i/a/a/h1/u0/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 6

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/m;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    iget v3, p0, Lf/i/a/a/h1/u0/m;->a:I

    .line 3
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->G:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v2, :cond_2

    .line 4
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->F:Lf/i/a/a/h1/p0;

    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->E:Lf/i/a/a/h1/p0;

    .line 5
    iget-object v0, v0, Lf/i/a/a/h1/p0;->b:[Lf/i/a/a/h1/o0;

    aget-object v0, v0, v3

    .line 6
    invoke-virtual {v1, v0}, Lf/i/a/a/h1/p0;->a(Lf/i/a/a/h1/o0;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    const/4 v4, -0x2

    goto :goto_2

    :cond_1
    const/4 v0, -0x3

    const/4 v4, -0x3

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->J:[Z

    aget-boolean v2, v0, v4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    aput-boolean v1, v0, v4

    .line 9
    :goto_2
    iput v4, p0, Lf/i/a/a/h1/u0/m;->c:I

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/m;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/m;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/m;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    iget v3, p0, Lf/i/a/a/h1/u0/m;->c:I

    .line 3
    iget-boolean v4, v0, Lf/i/a/a/h1/u0/n;->P:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lf/i/a/a/h1/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public i(Lf/i/a/a/c0;Lf/i/a/a/y0/e;Z)I
    .locals 12

    .line 1
    iget v0, p0, Lf/i/a/a/h1/u0/m;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p2, p1}, Lf/i/a/a/y0/a;->e(I)V

    const/4 p1, -0x4

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/m;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    iget v2, p0, Lf/i/a/a/h1/u0/m;->c:I

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_4

    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/i/a/a/h1/u0/k;

    .line 8
    iget v4, v4, Lf/i/a/a/h1/u0/k;->j:I

    .line 9
    iget-object v6, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    .line 10
    iget-object v8, v0, Lf/i/a/a/h1/u0/n;->J:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_2

    iget-object v8, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lf/i/a/a/h1/j0;->p()I

    move-result v8

    if-ne v8, v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-static {v4, v3, v1}, Lf/i/a/a/m1/h0;->f0(Ljava/util/List;II)V

    .line 12
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/k;

    .line 13
    iget-object v11, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 14
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->C:Lf/i/a/a/b0;

    invoke-virtual {v11, v4}, Lf/i/a/a/b0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 15
    iget-object v4, v0, Lf/i/a/a/h1/u0/n;->h:Lf/i/a/a/h1/f0$a;

    iget v5, v0, Lf/i/a/a/h1/u0/n;->a:I

    iget v7, v1, Lf/i/a/a/h1/s0/d;->d:I

    iget-object v8, v1, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lf/i/a/a/h1/s0/d;->f:J

    move-object v6, v11

    invoke-virtual/range {v4 .. v10}, Lf/i/a/a/h1/f0$a;->b(ILf/i/a/a/b0;ILjava/lang/Object;J)V

    .line 16
    :cond_5
    iput-object v11, v0, Lf/i/a/a/h1/u0/n;->C:Lf/i/a/a/b0;

    .line 17
    :cond_6
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v4, v1, v2

    iget-boolean v8, v0, Lf/i/a/a/h1/u0/n;->P:Z

    iget-wide v9, v0, Lf/i/a/a/h1/u0/n;->L:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 18
    invoke-virtual/range {v4 .. v10}, Lf/i/a/a/h1/j0;->s(Lf/i/a/a/c0;Lf/i/a/a/y0/e;ZZJ)I

    move-result p2

    const/4 p3, -0x5

    if-ne p2, p3, :cond_b

    .line 19
    iget-object p3, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    .line 20
    iget v1, v0, Lf/i/a/a/h1/u0/n;->x:I

    if-ne v2, v1, :cond_9

    .line 21
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lf/i/a/a/h1/j0;->p()I

    move-result v1

    .line 22
    :goto_3
    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    iget-object v2, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/h1/u0/k;

    iget v2, v2, Lf/i/a/a/h1/u0/k;->j:I

    if-eq v2, v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 23
    :cond_7
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->j:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/h1/u0/k;

    iget-object v1, v1, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lf/i/a/a/h1/u0/n;->B:Lf/i/a/a/b0;

    .line 26
    :goto_4
    invoke-virtual {p3, v1}, Lf/i/a/a/b0;->d(Lf/i/a/a/b0;)Lf/i/a/a/b0;

    move-result-object p3

    .line 27
    :cond_9
    iget-object v1, p3, Lf/i/a/a/b0;->l:Lf/i/a/a/z0/e;

    if-eqz v1, :cond_a

    .line 28
    iget-object v0, v0, Lf/i/a/a/h1/u0/n;->p:Ljava/util/Map;

    iget-object v1, v1, Lf/i/a/a/z0/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/z0/e;

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p3, v0}, Lf/i/a/a/b0;->a(Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object p3

    .line 30
    :cond_a
    iput-object p3, p1, Lf/i/a/a/c0;->a:Lf/i/a/a/b0;

    :cond_b
    move v1, p2

    :cond_c
    :goto_5
    return v1
.end method

.method public q(J)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/h1/u0/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/i/a/a/h1/u0/m;->b:Lf/i/a/a/h1/u0/n;

    iget v2, p0, Lf/i/a/a/h1/u0/m;->c:I

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/h1/u0/n;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, v0, Lf/i/a/a/h1/u0/n;->q:[Lf/i/a/a/h1/j0;

    aget-object v2, v3, v2

    .line 4
    iget-boolean v0, v0, Lf/i/a/a/h1/u0/n;->P:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->l()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {v2}, Lf/i/a/a/h1/j0;->f()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {v2, p1, p2, v0, v0}, Lf/i/a/a/h1/j0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p1

    :cond_3
    :goto_1
    return v1
.end method
