.class public Lf/a/a/a/l/i;
.super Lf/a/a/a/l/b;
.source "LinearLayoutHelper.java"


# instance fields
.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/a/a/a/l/i;->p:I

    .line 3
    iput v0, p0, Lf/a/a/a/l/b;->n:I

    .line 4
    iput v0, p0, Lf/a/a/a/l/i;->p:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lf/a/a/a/l/b;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf/a/a/a/l/i;->p:I

    .line 7
    iput v0, p0, Lf/a/a/a/l/b;->n:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    iput p1, p0, Lf/a/a/a/l/i;->p:I

    return-void
.end method


# virtual methods
.method public d(IZZLf/a/a/a/c;)I
    .locals 1

    .line 1
    invoke-interface {p4}, Lf/a/a/a/c;->getOrientation()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 2
    iget p2, p0, Lf/a/a/a/l/b;->n:I

    sub-int/2addr p2, p4

    if-ne p1, p2, :cond_4

    if-eqz p3, :cond_1

    .line 3
    iget p1, p0, Lf/a/a/a/l/j;->j:I

    iget p2, p0, Lf/a/a/a/l/j;->f:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lf/a/a/a/l/j;->h:I

    iget p2, p0, Lf/a/a/a/l/j;->d:I

    :goto_1
    add-int/2addr p1, p2

    return p1

    :cond_2
    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    .line 4
    iget p1, p0, Lf/a/a/a/l/j;->i:I

    neg-int p1, p1

    iget p2, p0, Lf/a/a/a/l/j;->e:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lf/a/a/a/l/j;->g:I

    neg-int p1, p1

    iget p2, p0, Lf/a/a/a/l/j;->c:I

    :goto_2
    sub-int/2addr p1, p2

    return p1

    :cond_4
    return v0
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move-object/from16 v6, p5

    .line 1
    iget-object v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {v7, v1}, Lf/a/a/a/a;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    move-object/from16 v2, p1

    .line 4
    invoke-virtual {v7, v2, v0, v6, v8}, Lf/a/a/a/l/b;->w(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/c;Lf/a/a/a/l/h;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->isEnableMarginOverLap()Z

    move-result v2

    .line 6
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 7
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 8
    :goto_0
    iget-object v11, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v11, v11, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v11, v5, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_4

    .line 9
    iget-object v12, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 10
    iget-object v12, v12, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 11
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v1, v12, :cond_5

    goto :goto_2

    .line 12
    :cond_4
    iget-object v12, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 13
    iget-object v12, v12, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 14
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v1, v12, :cond_5

    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-eqz v11, :cond_6

    .line 15
    iget-object v13, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 16
    iget-object v13, v13, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 17
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v1, v13, :cond_7

    goto :goto_4

    .line 18
    :cond_6
    iget-object v13, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 19
    iget-object v13, v13, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 20
    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v1, v13, :cond_7

    :goto_4
    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    if-eqz v12, :cond_8

    .line 21
    invoke-virtual {v7, v6, v4, v11, v2}, Lf/a/a/a/l/b;->s(Lf/a/a/a/c;ZZZ)I

    move-result v14

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-eqz v13, :cond_a

    if-eqz v4, :cond_9

    .line 22
    iget v13, v7, Lf/a/a/a/l/j;->j:I

    iget v15, v7, Lf/a/a/a/l/j;->f:I

    goto :goto_7

    :cond_9
    iget v13, v7, Lf/a/a/a/l/j;->g:I

    iget v15, v7, Lf/a/a/a/l/j;->c:I

    :goto_7
    add-int/2addr v13, v15

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    if-nez v12, :cond_10

    if-nez v2, :cond_b

    .line 23
    iget v1, v7, Lf/a/a/a/l/i;->p:I

    goto :goto_b

    :cond_b
    if-eqz v11, :cond_d

    .line 24
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v5

    .line 25
    invoke-interface {v6, v1}, Lf/a/a/a/c;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    if-ltz v1, :cond_f

    if-ltz v11, :cond_f

    .line 27
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_b

    .line 28
    :cond_d
    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 29
    invoke-interface {v6, v1}, Lf/a/a/a/c;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    if-ltz v11, :cond_f

    if-ltz v1, :cond_f

    .line 31
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_b

    :cond_f
    add-int/2addr v1, v11

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    .line 32
    :goto_b
    move-object v11, v6

    check-cast v11, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v15

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 33
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->l()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->m()I

    move-result v16

    sub-int v15, v15, v16

    .line 34
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    xor-int/lit8 v5, v4, 0x1

    invoke-virtual {v11, v15, v10, v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v5

    .line 35
    iget v10, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    .line 36
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    move/from16 v17, v12

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v18, 0x0

    if-nez v16, :cond_11

    cmpl-float v16, v10, v18

    if-lez v16, :cond_11

    int-to-float v3, v15

    div-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 37
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_c

    .line 38
    :cond_11
    iget v10, v7, Lf/a/a/a/l/b;->m:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_12

    iget v10, v7, Lf/a/a/a/l/b;->m:F

    cmpl-float v16, v10, v18

    if-lez v16, :cond_12

    int-to-float v3, v15

    div-float/2addr v3, v10

    float-to-double v3, v3

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v15

    double-to-int v3, v3

    .line 39
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_c

    .line 40
    :cond_12
    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v10

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v10, v12

    .line 41
    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->n()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->o()I

    move-result v12

    sub-int/2addr v10, v12

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 42
    invoke-virtual {v11, v10, v3, v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v3

    :goto_c
    if-nez v2, :cond_13

    .line 43
    invoke-interface {v6, v9, v5, v3}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_d

    .line 44
    :cond_13
    invoke-interface {v6, v9, v5, v3}, Lf/a/a/a/c;->measureChild(Landroid/view/View;II)V

    .line 45
    :goto_d
    iget-object v2, v11, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 46
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v14

    add-int/2addr v3, v13

    add-int/2addr v3, v1

    iput v3, v8, Lf/a/a/a/l/h;->a:I

    .line 47
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_18

    .line 48
    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 49
    invoke-virtual {v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v3

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v7, Lf/a/a/a/l/j;->h:I

    sub-int/2addr v3, v5

    iget v5, v7, Lf/a/a/a/l/j;->d:I

    sub-int/2addr v3, v5

    .line 50
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v5

    sub-int v5, v3, v5

    goto :goto_e

    .line 51
    :cond_14
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v3, v5

    iget v5, v7, Lf/a/a/a/l/j;->c:I

    add-int/2addr v5, v3

    .line 52
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    .line 53
    :goto_e
    iget-object v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v10, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v10, v4, :cond_16

    .line 54
    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    sub-int/2addr v0, v14

    if-eqz v17, :cond_15

    const/4 v10, 0x0

    goto :goto_f

    :cond_15
    move v10, v1

    :goto_f
    sub-int/2addr v0, v10

    .line 55
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v4, v3

    move v2, v5

    move v5, v0

    move v3, v1

    goto :goto_13

    .line 56
    :cond_16
    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    add-int/2addr v0, v14

    if-eqz v17, :cond_17

    const/4 v10, 0x0

    goto :goto_10

    :cond_17
    move v10, v1

    :goto_10
    add-int/2addr v0, v10

    .line 57
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v4, v3

    move v2, v5

    move v3, v0

    move v5, v1

    goto :goto_13

    .line 58
    :cond_18
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v3, v5

    iget v5, v7, Lf/a/a/a/l/j;->e:I

    add-int/2addr v3, v5

    .line 59
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    .line 60
    iget-object v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v10, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v10, v4, :cond_1a

    .line 61
    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    sub-int/2addr v0, v14

    if-eqz v17, :cond_19

    const/4 v10, 0x0

    goto :goto_11

    :cond_19
    move v10, v1

    :goto_11
    sub-int/2addr v0, v10

    .line 62
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v4, v0

    move v2, v1

    goto :goto_13

    .line 63
    :cond_1a
    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    add-int/2addr v0, v14

    if-eqz v17, :cond_1b

    const/4 v10, 0x0

    goto :goto_12

    :cond_1b
    move v10, v1

    :goto_12
    add-int/2addr v0, v10

    .line 64
    invoke-virtual {v2, v9}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v2, v0

    move v4, v1

    :goto_13
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v6, p5

    .line 65
    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    .line 66
    invoke-virtual {v7, v8, v9}, Lf/a/a/a/l/b;->t(Lf/a/a/a/l/h;Landroid/view/View;)V

    return-void
.end method
