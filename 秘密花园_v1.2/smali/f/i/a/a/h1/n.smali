.class public abstract Lf/i/a/a/h1/n;
.super Lf/i/a/a/u0;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field public final b:I

.field public final c:Lf/i/a/a/h1/m0;

.field public final d:Z


# direct methods
.method public constructor <init>(ZLf/i/a/a/h1/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/u0;-><init>()V

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/h1/n;->d:Z

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/n;->c:Lf/i/a/a/h1/m0;

    .line 4
    invoke-interface {p2}, Lf/i/a/a/h1/m0;->d()I

    move-result p1

    iput p1, p0, Lf/i/a/a/h1/n;->b:I

    return-void
.end method

.method public static u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public abstract A(I)Lf/i/a/a/u0;
.end method

.method public a(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lf/i/a/a/h1/n;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/n;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/n;->c:Lf/i/a/a/h1/m0;

    invoke-interface {v0}, Lf/i/a/a/h1/m0;->e()I

    move-result v2

    .line 4
    :cond_2
    invoke-virtual {p0, v2}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v2, p1}, Lf/i/a/a/h1/n;->y(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 6
    :cond_3
    invoke-virtual {p0, v2}, Lf/i/a/a/h1/n;->x(I)I

    move-result v0

    .line 7
    invoke-virtual {p0, v2}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf/i/a/a/u0;->a(Z)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->r(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lf/i/a/a/u0;->b(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->w(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    return v1
.end method

.method public c(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lf/i/a/a/h1/n;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/i/a/a/h1/n;->d:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lf/i/a/a/h1/n;->c:Lf/i/a/a/h1/m0;

    invoke-interface {v0}, Lf/i/a/a/h1/m0;->g()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lf/i/a/a/h1/n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/u0;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p0, v0, p1}, Lf/i/a/a/h1/n;->z(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->x(I)I

    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/i/a/a/u0;->c(Z)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public e(IIZ)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/n;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->t(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->x(I)I

    move-result v3

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lf/i/a/a/u0;->e(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 5
    :cond_3
    invoke-virtual {p0, v0, p3}, Lf/i/a/a/h1/n;->y(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/h1/n;->y(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->x(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lf/i/a/a/u0;->a(Z)I

    move-result p1

    add-int/2addr p1, p2

    return p1

    :cond_5
    if-ne p2, v2, :cond_6

    .line 10
    invoke-virtual {p0, p3}, Lf/i/a/a/h1/n;->a(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->x(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->w(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Lf/i/a/a/u0;->g(ILf/i/a/a/u0$b;Z)Lf/i/a/a/u0$b;

    .line 5
    iget p1, p2, Lf/i/a/a/u0$b;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Lf/i/a/a/u0$b;->c:I

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    .line 7
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 8
    iput-object p1, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lf/i/a/a/h1/n;->r(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lf/i/a/a/h1/n;->x(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v1}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lf/i/a/a/u0;->h(Ljava/lang/Object;Lf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 6
    iget v0, p2, Lf/i/a/a/u0$b;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Lf/i/a/a/u0$b;->c:I

    .line 7
    iput-object p1, p2, Lf/i/a/a/u0$b;->b:Ljava/lang/Object;

    return-object p2
.end method

.method public l(IIZ)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/n;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->t(I)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->x(I)I

    move-result v3

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lf/i/a/a/u0;->l(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 5
    :cond_3
    invoke-virtual {p0, v0, p3}, Lf/i/a/a/h1/n;->z(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0, p1, p3}, Lf/i/a/a/h1/n;->z(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->x(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lf/i/a/a/u0;->c(Z)I

    move-result p1

    add-int/2addr p1, p2

    return p1

    :cond_5
    if-ne p2, v2, :cond_6

    .line 10
    invoke-virtual {p0, p3}, Lf/i/a/a/h1/n;->c(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->s(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->w(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lf/i/a/a/u0;->m(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->v(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/h1/n;->t(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->x(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->w(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/h1/n;->A(I)Lf/i/a/a/u0;

    move-result-object v3

    sub-int v4, p1, v1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .line 5
    invoke-virtual/range {v3 .. v8}, Lf/i/a/a/u0;->o(ILf/i/a/a/u0$c;ZJ)Lf/i/a/a/u0$c;

    .line 6
    iget p1, p2, Lf/i/a/a/u0$c;->f:I

    add-int/2addr p1, v2

    iput p1, p2, Lf/i/a/a/u0$c;->f:I

    .line 7
    iget p1, p2, Lf/i/a/a/u0$c;->g:I

    add-int/2addr p1, v2

    iput p1, p2, Lf/i/a/a/u0$c;->g:I

    return-object p2
.end method

.method public abstract r(Ljava/lang/Object;)I
.end method

.method public abstract s(I)I
.end method

.method public abstract t(I)I
.end method

.method public abstract v(I)Ljava/lang/Object;
.end method

.method public abstract w(I)I
.end method

.method public abstract x(I)I
.end method

.method public final y(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lf/i/a/a/h1/n;->c:Lf/i/a/a/h1/m0;

    invoke-interface {p2, p1}, Lf/i/a/a/h1/m0;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lf/i/a/a/h1/n;->b:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final z(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lf/i/a/a/h1/n;->c:Lf/i/a/a/h1/m0;

    invoke-interface {p2, p1}, Lf/i/a/a/h1/m0;->f(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
