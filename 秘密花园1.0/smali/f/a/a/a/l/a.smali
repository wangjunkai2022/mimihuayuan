.class public abstract Lf/a/a/a/l/a;
.super Lf/a/a/a/l/b;
.source "AbstractFullFillLayoutHelper.java"


# instance fields
.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/a/a/a/l/a;->p:Z

    .line 3
    iput-boolean v0, p0, Lf/a/a/a/l/a;->q:Z

    .line 4
    iput-boolean v0, p0, Lf/a/a/a/l/a;->r:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lf/a/a/a/l/b;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/a/a/a/l/a;->r:Z

    return-void
.end method

.method public d(IZZLf/a/a/a/c;)I
    .locals 0

    .line 1
    invoke-interface {p4}, Lf/a/a/a/c;->getOrientation()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 2
    iget p1, p0, Lf/a/a/a/l/j;->j:I

    iget p2, p0, Lf/a/a/a/l/j;->f:I

    add-int/2addr p1, p2

    return p1

    .line 3
    :cond_1
    iget p1, p0, Lf/a/a/a/l/j;->i:I

    neg-int p1, p1

    iget p2, p0, Lf/a/a/a/l/j;->e:I

    sub-int/2addr p1, p2

    return p1

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iget p1, p0, Lf/a/a/a/l/j;->h:I

    iget p2, p0, Lf/a/a/a/l/j;->d:I

    add-int/2addr p1, p2

    return p1

    .line 5
    :cond_3
    iget p1, p0, Lf/a/a/a/l/j;->g:I

    neg-int p1, p1

    iget p2, p0, Lf/a/a/a/l/j;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public g(IIILf/a/a/a/c;Z)Z
    .locals 4

    .line 1
    iget-object p4, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Lf/a/a/a/j;->b(Ljava/lang/Comparable;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_b

    .line 3
    iget-boolean p5, p0, Lf/a/a/a/l/a;->p:Z

    if-eqz p5, :cond_0

    .line 4
    iget-object p5, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 5
    iget-object p5, p5, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 6
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-ne p1, p5, :cond_0

    return v0

    .line 7
    :cond_0
    iget-boolean p5, p0, Lf/a/a/a/l/a;->q:Z

    if-eqz p5, :cond_1

    .line 8
    iget-object p5, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 9
    iget-object p5, p5, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 10
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-ne p1, p5, :cond_1

    return v0

    .line 11
    :cond_1
    iget-object p1, p4, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean p5, p0, Lf/a/a/a/l/a;->p:Z

    add-int/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 13
    iget-object p4, p4, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 14
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-boolean p5, p0, Lf/a/a/a/l/a;->q:Z

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "lower must not be null"

    if-eqz p1, :cond_a

    const-string v1, "upper must not be null"

    if-eqz p4, :cond_9

    .line 15
    invoke-interface {p1, p4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "lower must be less than or equal to upper"

    if-gtz v2, :cond_8

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    .line 17
    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p5

    if-gtz p5, :cond_5

    .line 18
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-interface {p4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return v0
.end method
