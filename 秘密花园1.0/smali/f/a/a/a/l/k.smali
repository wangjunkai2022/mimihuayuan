.class public Lf/a/a/a/l/k;
.super Lf/a/a/a/l/b;
.source "RangeGridLayoutHelper.java"


# static fields
.field public static final p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lf/a/a/a/l/k;->p:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;Lf/a/a/a/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    const/4 p1, 0x0

    throw p1
.end method

.method public d(IZZLf/a/a/a/c;)I
    .locals 0

    .line 1
    invoke-interface {p4}, Lf/a/a/a/c;->getOrientation()I

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Lf/a/a/a/l/b;->n:I

    add-int/lit8 p2, p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    throw p3

    :cond_1
    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    throw p3
.end method

.method public h(Lf/a/a/a/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public i(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public p(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/l/j;->g:I

    .line 2
    iput p2, p0, Lf/a/a/a/l/j;->i:I

    .line 3
    iput p3, p0, Lf/a/a/a/l/j;->h:I

    .line 4
    iput p4, p0, Lf/a/a/a/l/j;->j:I

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public q(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/l/j;->c:I

    .line 2
    iput p3, p0, Lf/a/a/a/l/j;->d:I

    .line 3
    iput p2, p0, Lf/a/a/a/l/j;->e:I

    .line 4
    iput p4, p0, Lf/a/a/a/l/j;->f:I

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
    .locals 0

    .line 1
    iget-object p1, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget p1, p1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/a/a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget p1, p1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public x(Lf/a/a/a/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method
