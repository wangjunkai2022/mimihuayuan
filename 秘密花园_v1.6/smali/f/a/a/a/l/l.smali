.class public Lf/a/a/a/l/l;
.super Lf/a/a/a/l/c;
.source "SingleLayoutHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/c;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lf/a/a/a/l/l;->j(I)V

    return-void
.end method


# virtual methods
.method public i(II)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lf/a/a/a/l/b;->n:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf/a/a/a/l/b;->n:I

    :goto_0
    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
    .locals 8

    .line 1
    iget-object p2, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget p2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {p0, p2}, Lf/a/a/a/a;->f(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    invoke-virtual {p2, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x1

    if-nez v1, :cond_1

    .line 4
    iput-boolean p1, p4, Lf/a/a/a/l/h;->b:Z

    return-void

    .line 5
    :cond_1
    move-object v6, p5

    check-cast v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {v6, p3, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;)V

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 7
    invoke-interface {v6}, Lf/a/a/a/c;->getOrientation()I

    move-result p5

    const/4 v0, 0x0

    if-ne p5, p1, :cond_2

    const/4 p5, 0x1

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    .line 8
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v2

    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 9
    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lf/a/a/a/l/j;->l()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lf/a/a/a/l/j;->m()I

    move-result v3

    sub-int/2addr v2, v3

    .line 10
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v3

    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 11
    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lf/a/a/a/l/j;->n()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lf/a/a/a/l/j;->o()I

    move-result v4

    sub-int/2addr v3, v4

    .line 12
    iget v4, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_4

    if-eqz p5, :cond_3

    int-to-float v3, v2

    .line 13
    iget v4, p0, Lf/a/a/a/l/b;->m:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_1

    :cond_3
    int-to-float v2, v3

    .line 14
    iget v4, p0, Lf/a/a/a/l/b;->m:F

    mul-float v2, v2, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    :cond_4
    :goto_1
    if-eqz p5, :cond_a

    .line 15
    iget v4, p0, Lf/a/a/a/l/b;->m:F

    .line 16
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-nez p5, :cond_6

    iget v7, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 17
    :goto_3
    invoke-virtual {v6, v2, v4, v7}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v4

    .line 18
    iget v7, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    .line 19
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v5, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_4

    :cond_7
    move p2, v3

    goto :goto_4

    :cond_8
    int-to-float v7, v2

    iget p2, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    div-float/2addr v7, p2

    add-float/2addr v7, v5

    float-to-int p2, v7

    :goto_4
    if-eqz p5, :cond_9

    iget v5, p0, Lf/a/a/a/l/b;->m:F

    .line 20
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 21
    :goto_5
    invoke-virtual {v6, v3, p2, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result p1

    .line 22
    invoke-interface {v6, v1, v4, p1}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_a

    .line 23
    :cond_a
    iget v4, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    .line 24
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_6

    :cond_b
    move v4, v2

    goto :goto_6

    :cond_c
    int-to-float v4, v3

    iget v7, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    mul-float v4, v4, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_6
    if-nez p5, :cond_d

    iget v5, p0, Lf/a/a/a/l/b;->m:F

    .line 25
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    .line 26
    :goto_7
    invoke-virtual {v6, v2, v4, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v4

    .line 27
    iget v5, p0, Lf/a/a/a/l/b;->m:F

    .line 28
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_e

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_8

    :cond_e
    move p2, v3

    :goto_8
    if-eqz p5, :cond_f

    iget v5, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    const/4 p1, 0x0

    .line 29
    :goto_9
    invoke-virtual {v6, v3, p2, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result p1

    .line 30
    invoke-interface {v6, v1, v4, p1}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    .line 31
    :goto_a
    iget-object p1, v6, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 32
    invoke-virtual {p1, v1}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result p2

    iput p2, p4, Lf/a/a/a/l/h;->a:I

    const/4 p2, -0x1

    if-eqz p5, :cond_12

    .line 33
    invoke-virtual {p1, v1}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v2, p1

    if-gez v2, :cond_10

    goto :goto_b

    :cond_10
    move v0, v2

    .line 34
    :goto_b
    iget p1, p0, Lf/a/a/a/l/j;->g:I

    iget v2, p0, Lf/a/a/a/l/j;->c:I

    add-int/2addr p1, v2

    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 35
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result p1

    iget v3, p0, Lf/a/a/a/l/j;->h:I

    sub-int/2addr p1, v3

    iget v3, p0, Lf/a/a/a/l/j;->d:I

    sub-int/2addr p1, v3

    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v3

    sub-int/2addr p1, v3

    sub-int/2addr p1, v0

    .line 36
    iget-object p3, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v0, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v0, p2, :cond_11

    .line 37
    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 38
    iget p3, p0, Lf/a/a/a/l/j;->j:I

    sub-int/2addr p2, p3

    iget p3, p0, Lf/a/a/a/l/j;->f:I

    sub-int/2addr p2, p3

    .line 39
    iget p3, p4, Lf/a/a/a/l/h;->a:I

    sub-int p3, p2, p3

    goto :goto_c

    .line 40
    :cond_11
    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 41
    iget p3, p0, Lf/a/a/a/l/j;->i:I

    add-int/2addr p2, p3

    iget p3, p0, Lf/a/a/a/l/j;->e:I

    add-int/2addr p3, p2

    .line 42
    iget p2, p4, Lf/a/a/a/l/h;->a:I

    add-int/2addr p2, p3

    :goto_c
    move v4, p1

    move v5, p2

    move v3, p3

    goto :goto_e

    .line 43
    :cond_12
    invoke-virtual {p1, v1}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v3, p1

    if-gez v3, :cond_13

    goto :goto_d

    :cond_13
    move v0, v3

    .line 44
    :goto_d
    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lf/a/a/a/l/j;->i:I

    add-int/2addr p1, v2

    iget v2, p0, Lf/a/a/a/l/j;->e:I

    add-int/2addr p1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 45
    invoke-virtual {v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v2

    iget v3, p0, Lf/a/a/a/l/j;->j:I

    neg-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lf/a/a/a/l/j;->f:I

    sub-int/2addr v2, v3

    invoke-interface {v6}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 46
    iget-object p3, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v0, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v0, p2, :cond_14

    .line 47
    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 48
    iget p3, p0, Lf/a/a/a/l/j;->h:I

    sub-int/2addr p2, p3

    iget p3, p0, Lf/a/a/a/l/j;->d:I

    sub-int/2addr p2, p3

    .line 49
    iget p3, p4, Lf/a/a/a/l/h;->a:I

    sub-int p3, p2, p3

    move v3, p1

    move v4, p2

    move v5, v2

    move v2, p3

    goto :goto_e

    .line 50
    :cond_14
    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 51
    iget p3, p0, Lf/a/a/a/l/j;->g:I

    add-int/2addr p2, p3

    iget p3, p0, Lf/a/a/a/l/j;->c:I

    add-int/2addr p2, p3

    .line 52
    iget p3, p4, Lf/a/a/a/l/h;->a:I

    add-int/2addr p3, p2

    move v3, p1

    move v4, p3

    move v5, v2

    move v2, p2

    :goto_e
    if-eqz p5, :cond_15

    .line 53
    iget p1, p4, Lf/a/a/a/l/h;->a:I

    invoke-virtual {p0}, Lf/a/a/a/l/j;->n()I

    move-result p2

    invoke-virtual {p0}, Lf/a/a/a/l/j;->o()I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    iput p3, p4, Lf/a/a/a/l/h;->a:I

    goto :goto_f

    .line 54
    :cond_15
    iget p1, p4, Lf/a/a/a/l/h;->a:I

    invoke-virtual {p0}, Lf/a/a/a/l/j;->l()I

    move-result p2

    invoke-virtual {p0}, Lf/a/a/a/l/j;->m()I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    iput p3, p4, Lf/a/a/a/l/h;->a:I

    :goto_f
    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    return-void
.end method
