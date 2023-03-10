.class public abstract Lf/a/a/a/l/b;
.super Lf/a/a/a/l/j;
.source "BaseLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/l/b$a;
    }
.end annotation


# instance fields
.field public k:Landroid/graphics/Rect;

.field public l:Landroid/view/View;

.field public m:F

.field public n:I

.field public o:Lf/a/a/a/l/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/j;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    iput v0, p0, Lf/a/a/a/l/b;->m:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf/a/a/a/l/b;->n:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/l/b;->y()Z

    move-result p1

    if-eqz p1, :cond_a

    const/high16 p1, -0x80000000

    const p2, 0x7fffffff

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p5, p2, :cond_0

    if-eq p5, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 4
    :cond_1
    iget-object v0, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p5, p2, :cond_2

    if-eq p5, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    invoke-interface {p6}, Lf/a/a/a/c;->getOrientation()I

    move-result p1

    if-ne p1, p4, :cond_3

    .line 6
    iget-object p1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    neg-int p2, p5

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    neg-int p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 8
    :cond_4
    :goto_2
    move-object p1, p6

    check-cast p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result p2

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result p5

    .line 10
    invoke-interface {p1}, Lf/a/a/a/c;->getOrientation()I

    move-result v0

    if-ne v0, p4, :cond_5

    iget-object v0, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    neg-int v1, p5

    div-int/lit8 v1, v1, 0x4

    div-int/lit8 v2, p5, 0x4

    add-int/2addr v2, p5

    .line 11
    invoke-virtual {v0, p3, v1, p2, v2}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x4

    div-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p2

    .line 12
    invoke-virtual {v0, v1, p3, v2, p5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 13
    :goto_3
    iget-object p2, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-nez p2, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->f()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->addHiddenView(Landroid/view/View;Z)V

    .line 17
    :cond_6
    invoke-interface {p1}, Lf/a/a/a/c;->getOrientation()I

    move-result p2

    if-ne p2, p4, :cond_7

    .line 18
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-interface {p1}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result p4

    iget p5, p0, Lf/a/a/a/l/j;->g:I

    add-int/2addr p4, p5

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 19
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result p4

    invoke-interface {p1}, Lf/a/a/a/c;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    iget p1, p0, Lf/a/a/a/l/j;->h:I

    sub-int/2addr p4, p1

    iput p4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 20
    :cond_7
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-interface {p1}, Lf/a/a/a/c;->getPaddingTop()I

    move-result p4

    iget p5, p0, Lf/a/a/a/l/j;->i:I

    add-int/2addr p4, p5

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 21
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result p4

    invoke-interface {p1}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p4, p1

    iget p1, p0, Lf/a/a/a/l/j;->j:I

    sub-int/2addr p4, p1

    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    :goto_4
    iget-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    .line 23
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object p5, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 25
    invoke-virtual {p1, p2, p4}, Landroid/view/View;->measure(II)V

    .line 26
    iget-object p2, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p5, p2, Landroid/graphics/Rect;->top:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/view/View;->layout(IIII)V

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    iget-object p2, p0, Lf/a/a/a/l/b;->o:Lf/a/a/a/l/b$a;

    if-eqz p2, :cond_8

    .line 29
    invoke-interface {p2, p1, p0}, Lf/a/a/a/l/b$a;->a(Landroid/view/View;Lf/a/a/a/l/b;)V

    .line 30
    :cond_8
    iget-object p1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 31
    :cond_9
    iget-object p1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 33
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/View;->layout(IIII)V

    .line 34
    :cond_a
    iget-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 35
    check-cast p6, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 36
    invoke-virtual {p6, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    :cond_b
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/l/b;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    check-cast p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 5
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lf/a/a/a/l/b;->l:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/l/b;->n:I

    return-void
.end method

.method public final r(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(Lf/a/a/a/c;ZZZ)I
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 3
    iget-object p1, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    check-cast p1, Lf/a/a/a/k;

    .line 4
    iget-object p1, p1, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/a/a;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lf/a/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    move-object p1, v1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    instance-of v0, p1, Lf/a/a/a/l/j;

    if-eqz v0, :cond_4

    .line 10
    move-object v1, p1

    check-cast v1, Lf/a/a/a/l/j;

    :cond_4
    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    if-nez p4, :cond_7

    if-eqz p2, :cond_6

    .line 11
    iget p1, p0, Lf/a/a/a/l/j;->i:I

    iget p2, p0, Lf/a/a/a/l/j;->e:I

    goto :goto_2

    :cond_6
    iget p1, p0, Lf/a/a/a/l/j;->g:I

    iget p2, p0, Lf/a/a/a/l/j;->c:I

    :goto_2
    add-int/2addr p1, p2

    goto :goto_8

    :cond_7
    if-nez v1, :cond_9

    if-eqz p2, :cond_8

    .line 12
    iget p1, p0, Lf/a/a/a/l/j;->i:I

    iget p4, p0, Lf/a/a/a/l/j;->e:I

    goto :goto_3

    :cond_8
    iget p1, p0, Lf/a/a/a/l/j;->g:I

    iget p4, p0, Lf/a/a/a/l/j;->c:I

    :goto_3
    add-int/2addr p1, p4

    goto :goto_6

    :cond_9
    if-eqz p2, :cond_b

    if-eqz p3, :cond_a

    .line 13
    iget p1, v1, Lf/a/a/a/l/j;->j:I

    iget p4, p0, Lf/a/a/a/l/j;->i:I

    goto :goto_4

    .line 14
    :cond_a
    iget p1, v1, Lf/a/a/a/l/j;->i:I

    iget p4, p0, Lf/a/a/a/l/j;->j:I

    :goto_4
    invoke-virtual {p0, p1, p4}, Lf/a/a/a/l/b;->r(II)I

    move-result p1

    goto :goto_6

    :cond_b
    if-eqz p3, :cond_c

    iget p1, v1, Lf/a/a/a/l/j;->h:I

    iget p4, p0, Lf/a/a/a/l/j;->g:I

    goto :goto_5

    .line 15
    :cond_c
    iget p1, v1, Lf/a/a/a/l/j;->g:I

    iget p4, p0, Lf/a/a/a/l/j;->h:I

    :goto_5
    invoke-virtual {p0, p1, p4}, Lf/a/a/a/l/b;->r(II)I

    move-result p1

    :goto_6
    if-eqz p2, :cond_e

    if-eqz p3, :cond_d

    .line 16
    iget p2, p0, Lf/a/a/a/l/j;->e:I

    goto :goto_7

    :cond_d
    iget p2, p0, Lf/a/a/a/l/j;->f:I

    goto :goto_7

    :cond_e
    if-eqz p3, :cond_f

    iget p2, p0, Lf/a/a/a/l/j;->c:I

    goto :goto_7

    :cond_f
    iget p2, p0, Lf/a/a/a/l/j;->d:I

    :goto_7
    add-int/2addr p2, v0

    goto :goto_2

    :goto_8
    return p1
.end method

.method public t(Lf/a/a/a/l/h;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iput-boolean v2, p1, Lf/a/a/a/l/h;->c:Z

    .line 4
    :cond_2
    iget-boolean v0, p1, Lf/a/a/a/l/h;->d:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    iput-boolean v2, p1, Lf/a/a/a/l/h;->d:Z

    return-void
.end method

.method public u(Landroid/view/View;IIIILf/a/a/a/c;)V
    .locals 6
    .param p6    # Lf/a/a/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p6

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k(Landroid/view/View;IIII)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/l/b;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/a/a/a/l/b;->k:Landroid/graphics/Rect;

    iget p6, p0, Lf/a/a/a/l/j;->c:I

    sub-int/2addr p2, p6

    iget p6, p0, Lf/a/a/a/l/j;->e:I

    sub-int/2addr p3, p6

    iget p6, p0, Lf/a/a/a/l/j;->d:I

    add-int/2addr p4, p6

    iget p6, p0, Lf/a/a/a/l/j;->f:I

    add-int/2addr p5, p6

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->union(IIII)V

    :cond_0
    return-void
.end method

.method public abstract v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
.end method

.method public final w(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/c;Lf/a/a/a/l/h;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p4, Lf/a/a/a/l/h;->b:Z

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    check-cast p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p3, p2, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;)V

    return-object p1
.end method

.method public x(Lf/a/a/a/c;)V
    .locals 0

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/b;->o:Lf/a/a/a/l/b$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
