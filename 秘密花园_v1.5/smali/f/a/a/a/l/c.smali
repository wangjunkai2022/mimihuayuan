.class public Lf/a/a/a/l/c;
.super Lf/a/a/a/l/a;
.source "ColumnLayoutHelper.java"


# instance fields
.field public s:[Landroid/view/View;

.field public t:[Landroid/view/View;

.field public u:Landroid/graphics/Rect;

.field public v:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/a;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/a/a/a/l/c;->u:Landroid/graphics/Rect;

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lf/a/a/a/l/c;->v:[F

    return-void
.end method


# virtual methods
.method public c(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;Lf/a/a/a/c;)V
    .locals 0

    .line 1
    iget-boolean p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->c:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 3
    iget-object p1, p1, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 6
    iget-object p1, p1, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    :goto_0
    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    .line 1
    iget-object v2, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v2, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {v7, v2}, Lf/a/a/a/a;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    move-object v5, v8

    check-cast v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 5
    iget-object v9, v5, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 6
    iget v6, v7, Lf/a/a/a/l/b;->n:I

    .line 7
    iget-object v10, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    if-eqz v10, :cond_2

    array-length v10, v10

    if-eq v10, v6, :cond_3

    .line 8
    :cond_2
    new-array v10, v6, [Landroid/view/View;

    iput-object v10, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    .line 9
    :cond_3
    iget-object v10, v7, Lf/a/a/a/l/c;->s:[Landroid/view/View;

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    array-length v12, v10

    if-eq v12, v6, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_5
    :goto_1
    new-array v6, v6, [Landroid/view/View;

    iput-object v6, v7, Lf/a/a/a/l/c;->s:[Landroid/view/View;

    .line 12
    :goto_2
    iget-object v6, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    .line 13
    iget-object v10, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v10, v10, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    if-ne v10, v3, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_7

    .line 14
    iget-object v12, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 15
    iget-object v12, v12, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    goto :goto_4

    .line 16
    :cond_7
    iget-object v12, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 17
    iget-object v12, v12, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 18
    :goto_4
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 19
    iget-object v12, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v12, v12, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    const/4 v12, 0x0

    .line 20
    :goto_5
    array-length v13, v6

    const/4 v14, -0x1

    if-ge v12, v13, :cond_b

    .line 21
    iget-object v13, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v13, v13, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 22
    invoke-virtual {v7, v13}, Lf/a/a/a/a;->f(I)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v13, p1

    .line 23
    invoke-virtual {v7, v13, v0, v8, v1}, Lf/a/a/a/l/b;->w(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/c;Lf/a/a/a/l/h;)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_9

    goto :goto_6

    .line 24
    :cond_9
    aput-object v15, v6, v12

    .line 25
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    if-nez v16, :cond_a

    .line 26
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v11, v14, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :cond_b
    :goto_6
    if-lez v12, :cond_c

    if-nez v10, :cond_c

    add-int/lit8 v3, v12, -0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_c

    .line 28
    aget-object v11, v6, v10

    .line 29
    aget-object v13, v6, v3

    aput-object v13, v6, v10

    .line 30
    aput-object v11, v6, v3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_25

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v2, v12, :cond_f

    .line 31
    iget-object v11, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    aget-object v11, v11, v2

    .line 32
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 33
    instance-of v13, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v13, :cond_e

    .line 34
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 35
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v13

    add-int/lit8 v13, v12, -0x1

    if-eq v2, v13, :cond_d

    .line 36
    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    iput v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_9

    .line 38
    :cond_d
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v13

    .line 39
    :goto_9
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 40
    :cond_f
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v2, v6

    .line 41
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->l()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->m()I

    move-result v6

    sub-int/2addr v2, v6

    sub-int v3, v2, v3

    const v6, 0x7fffffff

    .line 42
    iget v11, v7, Lf/a/a/a/l/b;->m:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    if-nez v11, :cond_10

    int-to-float v2, v2

    .line 43
    iget v11, v7, Lf/a/a/a/l/b;->m:F

    div-float/2addr v2, v11

    add-float/2addr v2, v13

    float-to-int v2, v2

    goto :goto_a

    :cond_10
    const/4 v2, -0x1

    :goto_a
    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_b
    const/high16 v18, 0x3f800000    # 1.0f

    if-ge v11, v12, :cond_14

    .line 44
    iget-object v14, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    aget-object v14, v14, v11

    .line 45
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 46
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v19

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v20

    sub-int v13, v19, v20

    move-object/from16 v19, v9

    if-lez v2, :cond_11

    const/4 v0, 0x1

    move v9, v2

    goto :goto_c

    :cond_11
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v0, 0x1

    .line 47
    :goto_c
    invoke-virtual {v5, v13, v9, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v9

    .line 48
    iget-object v0, v7, Lf/a/a/a/l/c;->v:[F

    if-eqz v0, :cond_13

    array-length v13, v0

    if-ge v11, v13, :cond_13

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v7, Lf/a/a/a/l/c;->v:[F

    aget v13, v0, v11

    const/16 v20, 0x0

    cmpl-float v13, v13, v20

    if-ltz v13, :cond_13

    .line 49
    aget v0, v0, v11

    mul-float v0, v0, v18

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v0, v13

    int-to-float v13, v3

    mul-float v0, v0, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v0, v13

    float-to-int v0, v0

    .line 50
    iget v13, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_12

    int-to-float v9, v0

    .line 51
    iget v4, v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    div-float/2addr v9, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v9, v4

    float-to-int v4, v9

    const/high16 v13, 0x40000000    # 2.0f

    .line 52
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_d

    :cond_12
    const/high16 v13, 0x40000000    # 2.0f

    .line 53
    :goto_d
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-interface {v8, v14, v4, v9}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    add-int v17, v17, v0

    .line 54
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_e

    .line 55
    :cond_13
    iget-object v0, v7, Lf/a/a/a/l/c;->s:[Landroid/view/View;

    add-int/lit8 v4, v15, 0x1

    aput-object v14, v0, v15

    move v15, v4

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p3

    move-object/from16 v9, v19

    const/4 v4, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, -0x1

    goto/16 :goto_b

    :cond_14
    move-object/from16 v19, v9

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v15, :cond_17

    .line 56
    iget-object v4, v7, Lf/a/a/a/l/c;->s:[Landroid/view/View;

    aget-object v4, v4, v0

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    sub-int v11, v3, v17

    int-to-float v11, v11

    mul-float v11, v11, v18

    int-to-float v13, v15

    div-float/2addr v11, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    .line 58
    iget v14, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_15

    int-to-float v14, v11

    .line 59
    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    div-float/2addr v14, v9

    add-float/2addr v14, v13

    float-to-int v9, v14

    const/high16 v14, 0x40000000    # 2.0f

    .line 60
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    :goto_10
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_12

    .line 61
    :cond_15
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v14

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v20

    sub-int v14, v14, v20

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v20

    sub-int v14, v14, v20

    if-lez v2, :cond_16

    move v9, v2

    goto :goto_11

    :cond_16
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_11
    const/4 v13, 0x1

    .line 62
    invoke-virtual {v5, v14, v9, v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v9

    goto :goto_10

    .line 63
    :goto_12
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 64
    invoke-interface {v8, v4, v11, v9}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v12, :cond_19

    .line 66
    iget-object v2, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v6, :cond_18

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 69
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 70
    invoke-interface {v8, v2, v3, v9}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_14

    :cond_18
    const/high16 v4, 0x40000000    # 2.0f

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_19
    add-int/2addr v6, v10

    .line 71
    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->n()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->o()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Lf/a/a/a/l/h;->a:I

    .line 72
    iget-object v0, v7, Lf/a/a/a/l/c;->u:Landroid/graphics/Rect;

    .line 73
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 74
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v1

    iget v2, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v1, v2

    iget v2, v7, Lf/a/a/a/l/j;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 75
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v1

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Lf/a/a/a/l/j;->h:I

    sub-int/2addr v1, v2

    iget v2, v7, Lf/a/a/a/l/j;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v1, p3

    .line 76
    iget-object v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 77
    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 78
    iget-boolean v2, v7, Lf/a/a/a/l/a;->r:Z

    if-eqz v2, :cond_1a

    goto :goto_15

    :cond_1a
    iget-boolean v2, v7, Lf/a/a/a/l/a;->q:Z

    if-eqz v2, :cond_1b

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_1b
    iget v2, v7, Lf/a/a/a/l/j;->j:I

    iget v3, v7, Lf/a/a/a/l/j;->f:I

    add-int/2addr v2, v3

    :goto_16
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    .line 79
    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1d

    .line 80
    :cond_1c
    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 81
    iget-boolean v2, v7, Lf/a/a/a/l/a;->r:Z

    if-eqz v2, :cond_1d

    goto :goto_17

    :cond_1d
    iget-boolean v2, v7, Lf/a/a/a/l/a;->p:Z

    if-eqz v2, :cond_1e

    :goto_17
    const/4 v2, 0x0

    goto :goto_18

    :cond_1e
    iget v2, v7, Lf/a/a/a/l/j;->i:I

    iget v3, v7, Lf/a/a/a/l/j;->e:I

    add-int/2addr v2, v3

    :goto_18
    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    .line 82
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d

    :cond_1f
    move-object/from16 v1, p3

    .line 83
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v2

    iget v3, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/j;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 84
    invoke-virtual {v5}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/j;->j:I

    sub-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/j;->f:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget-object v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 86
    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 87
    iget-boolean v2, v7, Lf/a/a/a/l/a;->r:Z

    if-eqz v2, :cond_20

    goto :goto_19

    :cond_20
    iget-boolean v2, v7, Lf/a/a/a/l/a;->q:Z

    if-eqz v2, :cond_21

    :goto_19
    const/4 v2, 0x0

    goto :goto_1a

    :cond_21
    iget v2, v7, Lf/a/a/a/l/j;->h:I

    iget v3, v7, Lf/a/a/a/l/j;->d:I

    add-int/2addr v2, v3

    :goto_1a
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v6

    .line 88
    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1d

    .line 89
    :cond_22
    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 90
    iget-boolean v2, v7, Lf/a/a/a/l/a;->r:Z

    if-eqz v2, :cond_23

    goto :goto_1b

    :cond_23
    iget-boolean v2, v7, Lf/a/a/a/l/a;->p:Z

    if-eqz v2, :cond_24

    :goto_1b
    const/4 v2, 0x0

    goto :goto_1c

    :cond_24
    iget v2, v7, Lf/a/a/a/l/j;->g:I

    iget v3, v7, Lf/a/a/a/l/j;->c:I

    add-int/2addr v2, v3

    :goto_1c
    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    .line 91
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 92
    :goto_1d
    iget-object v0, v7, Lf/a/a/a/l/c;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v12, :cond_25

    .line 93
    iget-object v0, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    aget-object v1, v0, v9

    .line 94
    iget-object v0, v7, Lf/a/a/a/l/c;->u:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v10, v19

    .line 95
    invoke-virtual {v10, v1}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v0

    add-int v11, v0, v2

    move-object/from16 v0, p0

    move v4, v11

    move-object/from16 v6, p5

    .line 96
    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    add-int/lit8 v9, v9, 0x1

    move v2, v11

    goto :goto_1e

    .line 97
    :cond_25
    iget-object v0, v7, Lf/a/a/a/l/c;->t:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iget-object v0, v7, Lf/a/a/a/l/c;->s:[Landroid/view/View;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
