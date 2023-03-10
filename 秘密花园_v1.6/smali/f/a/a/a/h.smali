.class public final Lf/a/a/a/h;
.super Lf/a/a/a/i;
.source "OrientationHelperEx.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lf/a/a/a/i;-><init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;Lf/a/a/a/g;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->isEnableMarginOverLap()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->isEnableMarginOverLap()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->isEnableMarginOverLap()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/i;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method
