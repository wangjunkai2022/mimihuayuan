.class public Lf/a/a/a/l/m;
.super Lf/a/a/a/l/f;
.source "StickyLayoutHelper.java"


# instance fields
.field public q:I

.field public r:Z

.field public s:I

.field public t:Landroid/view/View;

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/f;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/a/a/a/l/m;->q:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/a/a/a/l/m;->r:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lf/a/a/a/l/m;->s:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 6
    iput-boolean v1, p0, Lf/a/a/a/l/m;->u:Z

    .line 7
    iput-boolean v0, p0, Lf/a/a/a/l/m;->r:Z

    .line 8
    invoke-virtual {p0, v0}, Lf/a/a/a/l/m;->j(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v8, p6

    .line 1
    invoke-super/range {p0 .. p6}, Lf/a/a/a/l/b;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V

    .line 2
    iget v2, v7, Lf/a/a/a/l/m;->q:I

    if-gez v2, :cond_0

    return-void

    .line 3
    :cond_0
    move-object v9, v8

    check-cast v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 4
    iget-object v3, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 5
    iget-boolean v4, v7, Lf/a/a/a/l/m;->u:Z

    const/4 v10, 0x0

    const/4 v5, 0x1

    if-nez v4, :cond_8

    if-lt v2, v0, :cond_8

    if-gt v2, v1, :cond_8

    .line 6
    iget-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 7
    iget-boolean v2, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v2, :cond_4

    .line 8
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_0
    if-ltz v2, :cond_8

    .line 9
    invoke-interface {v8, v2}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    invoke-interface {v8, v4}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v11

    .line 11
    iget v12, v7, Lf/a/a/a/l/m;->q:I

    if-ge v11, v12, :cond_3

    .line 12
    invoke-virtual {v3, v4}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v2

    .line 13
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v4

    .line 14
    instance-of v11, v4, Lf/a/a/a/l/k;

    if-nez v11, :cond_2

    .line 15
    instance-of v11, v4, Lf/a/a/a/l/j;

    if-eqz v11, :cond_1

    .line 16
    check-cast v4, Lf/a/a/a/l/j;

    .line 17
    iget v11, v4, Lf/a/a/a/l/j;->j:I

    add-int/2addr v2, v11

    .line 18
    iget v4, v4, Lf/a/a/a/l/j;->f:I

    add-int/2addr v2, v4

    .line 19
    :cond_1
    iget v4, v7, Lf/a/a/a/l/m;->s:I

    iget-object v11, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v11, v11, Lf/a/a/a/l/e;->b:I

    add-int/2addr v4, v11

    if-lt v2, v4, :cond_8

    .line 20
    iput-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    goto :goto_2

    .line 21
    :cond_2
    check-cast v4, Lf/a/a/a/l/k;

    .line 22
    iget-object v0, v4, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 23
    iget-object v0, v0, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 24
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    throw v10

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 26
    :goto_1
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 27
    invoke-interface {v8, v2}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 28
    invoke-interface {v8, v4}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v11

    .line 29
    iget v12, v7, Lf/a/a/a/l/m;->q:I

    if-le v11, v12, :cond_7

    .line 30
    invoke-virtual {v3, v4}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v2

    .line 31
    invoke-virtual {v9, v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v4

    .line 32
    instance-of v11, v4, Lf/a/a/a/l/k;

    if-nez v11, :cond_6

    .line 33
    instance-of v11, v4, Lf/a/a/a/l/j;

    if-eqz v11, :cond_5

    .line 34
    check-cast v4, Lf/a/a/a/l/j;

    .line 35
    iget v11, v4, Lf/a/a/a/l/j;->i:I

    sub-int/2addr v2, v11

    .line 36
    iget v4, v4, Lf/a/a/a/l/j;->e:I

    sub-int/2addr v2, v4

    .line 37
    :cond_5
    iget v4, v7, Lf/a/a/a/l/m;->s:I

    iget-object v11, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v11, v11, Lf/a/a/a/l/e;->d:I

    add-int/2addr v4, v11

    if-lt v2, v4, :cond_8

    .line 38
    iput-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    goto :goto_2

    .line 39
    :cond_6
    check-cast v4, Lf/a/a/a/l/k;

    .line 40
    iget-object v0, v4, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 41
    iget-object v0, v0, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 42
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    throw v10

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_8
    :goto_2
    iget-boolean v2, v7, Lf/a/a/a/l/m;->u:Z

    if-nez v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 45
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 46
    iget-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-eqz v2, :cond_59

    .line 47
    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 48
    :cond_a
    iget-boolean v2, v7, Lf/a/a/a/l/m;->u:Z

    if-nez v2, :cond_2d

    iget-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-eqz v2, :cond_2d

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_b

    .line 50
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 51
    :cond_b
    iget-boolean v2, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v2, :cond_c

    iget v2, v7, Lf/a/a/a/l/m;->q:I

    if-ge v1, v2, :cond_d

    :cond_c
    iget-boolean v1, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v1, :cond_2b

    iget v1, v7, Lf/a/a/a/l/m;->q:I

    if-gt v0, v1, :cond_2b

    .line 52
    :cond_d
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v0}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v0

    .line 53
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_e

    const/4 v1, 0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    .line 54
    :goto_3
    iget-object v2, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    if-eqz v1, :cond_f

    iget v2, v2, Lf/a/a/a/l/e;->b:I

    goto :goto_4

    :cond_f
    iget v2, v2, Lf/a/a/a/l/e;->a:I

    .line 55
    :goto_4
    iget-object v11, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    if-eqz v1, :cond_10

    iget v11, v11, Lf/a/a/a/l/e;->d:I

    goto :goto_5

    :cond_10
    iget v11, v11, Lf/a/a/a/l/e;->c:I

    :goto_5
    if-eqz v1, :cond_22

    .line 56
    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 57
    invoke-virtual {v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v1

    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v12

    sub-int/2addr v1, v12

    .line 58
    iget-object v12, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v12}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v12

    sub-int v12, v1, v12

    goto :goto_6

    .line 59
    :cond_11
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v12

    .line 60
    iget-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v1}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v12

    .line 61
    :goto_6
    iget-boolean v13, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v13, :cond_15

    .line 62
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v5

    move-object v14, v10

    :goto_7
    if-ltz v13, :cond_19

    .line 63
    invoke-interface {v8, v13}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 64
    invoke-interface {v8, v14}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v15

    .line 65
    iget v4, v7, Lf/a/a/a/l/m;->q:I

    if-ge v15, v4, :cond_14

    .line 66
    invoke-virtual {v3, v14}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v4

    .line 67
    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v15

    .line 68
    instance-of v6, v15, Lf/a/a/a/l/k;

    if-nez v6, :cond_13

    .line 69
    instance-of v6, v15, Lf/a/a/a/l/j;

    if-eqz v6, :cond_12

    .line 70
    check-cast v15, Lf/a/a/a/l/j;

    .line 71
    iget v6, v15, Lf/a/a/a/l/j;->j:I

    add-int/2addr v4, v6

    .line 72
    iget v6, v15, Lf/a/a/a/l/j;->f:I

    add-int/2addr v4, v6

    :cond_12
    add-int v6, v4, v0

    .line 73
    iput-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    move/from16 v16, v6

    move v6, v4

    move v4, v13

    move/from16 v13, v16

    goto :goto_9

    .line 74
    :cond_13
    check-cast v15, Lf/a/a/a/l/k;

    .line 75
    iget-object v0, v15, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 76
    iget-object v0, v0, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 77
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    throw v10

    :cond_14
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_15
    move-object v14, v10

    const/4 v4, 0x0

    .line 79
    :goto_8
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_19

    .line 80
    invoke-interface {v8, v4}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 81
    invoke-interface {v8, v14}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 82
    iget v13, v7, Lf/a/a/a/l/m;->q:I

    if-le v6, v13, :cond_18

    .line 83
    invoke-virtual {v3, v14}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v13

    .line 84
    invoke-virtual {v9, v6}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v6

    .line 85
    instance-of v15, v6, Lf/a/a/a/l/k;

    if-nez v15, :cond_17

    .line 86
    instance-of v15, v6, Lf/a/a/a/l/j;

    if-eqz v15, :cond_16

    .line 87
    check-cast v6, Lf/a/a/a/l/j;

    .line 88
    iget v15, v6, Lf/a/a/a/l/j;->i:I

    sub-int/2addr v13, v15

    .line 89
    iget v6, v6, Lf/a/a/a/l/j;->e:I

    sub-int/2addr v13, v6

    :cond_16
    sub-int v6, v13, v0

    add-int/2addr v4, v5

    .line 90
    iput-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    goto :goto_9

    .line 91
    :cond_17
    check-cast v6, Lf/a/a/a/l/k;

    .line 92
    iget-object v0, v6, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 93
    iget-object v0, v0, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 94
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    throw v10

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_19
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_9
    if-eqz v14, :cond_1a

    if-gez v4, :cond_1b

    :cond_1a
    const/4 v5, 0x0

    .line 96
    iput-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    .line 97
    :cond_1b
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-boolean v5, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v5, :cond_1c

    goto :goto_a

    .line 98
    :cond_1c
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v5

    iget v14, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v5, v14

    add-int/2addr v5, v2

    if-ge v6, v5, :cond_1e

    const/4 v14, 0x0

    .line 99
    iput-boolean v14, v7, Lf/a/a/a/l/m;->u:Z

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v14, 0x0

    .line 100
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v5

    iget v15, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v5, v15

    sub-int/2addr v5, v11

    if-le v13, v5, :cond_1e

    .line 101
    iput-boolean v14, v7, Lf/a/a/a/l/m;->u:Z

    .line 102
    :cond_1e
    :goto_b
    iget-boolean v5, v7, Lf/a/a/a/l/m;->u:Z

    if-nez v5, :cond_21

    .line 103
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v5

    if-nez v5, :cond_20

    iget-boolean v5, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v5, :cond_1f

    goto :goto_c

    .line 104
    :cond_1f
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v3, v5

    add-int v6, v3, v2

    add-int v13, v6, v0

    goto :goto_d

    .line 105
    :cond_20
    :goto_c
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v2

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v2, v3

    sub-int v13, v2, v11

    sub-int v6, v13, v0

    :cond_21
    :goto_d
    move v11, v4

    move v3, v6

    move v2, v12

    move v5, v13

    move v4, v1

    goto/16 :goto_12

    :cond_22
    const/4 v14, 0x0

    .line 106
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v1

    .line 107
    iget-object v4, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v4}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    .line 108
    iget-boolean v6, v7, Lf/a/a/a/l/m;->u:Z

    if-eqz v6, :cond_27

    .line 109
    iget-boolean v2, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v2, :cond_24

    .line 110
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_e
    if-ltz v2, :cond_26

    .line 111
    invoke-interface {v8, v2}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 112
    invoke-interface {v8, v5}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 113
    iget v11, v7, Lf/a/a/a/l/m;->q:I

    if-ge v6, v11, :cond_23

    .line 114
    invoke-virtual {v3, v5}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    move v14, v0

    goto :goto_10

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_24
    const/4 v5, 0x0

    .line 115
    :goto_f
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v2

    if-ge v5, v2, :cond_26

    .line 116
    invoke-interface {v8, v5}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-interface {v8, v2}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 118
    iget v11, v7, Lf/a/a/a/l/m;->q:I

    if-le v6, v11, :cond_25

    .line 119
    invoke-virtual {v3, v2}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v6

    sub-int v0, v6, v0

    move v14, v6

    move v6, v0

    goto :goto_10

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_26
    const/4 v6, 0x0

    :goto_10
    move v3, v1

    move v5, v4

    move v2, v6

    move v4, v14

    const/4 v11, -0x1

    goto :goto_12

    .line 120
    :cond_27
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v5

    if-nez v5, :cond_29

    iget-boolean v5, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v5, :cond_28

    goto :goto_11

    .line 121
    :cond_28
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    move v2, v3

    move v5, v4

    const/4 v11, -0x1

    move v4, v0

    move v3, v1

    goto :goto_12

    .line 122
    :cond_29
    :goto_11
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v2

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v11

    sub-int v0, v2, v0

    move v3, v1

    move v5, v4

    const/4 v11, -0x1

    move v4, v2

    move v2, v0

    .line 123
    :goto_12
    iget-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    .line 124
    iget-boolean v0, v7, Lf/a/a/a/l/m;->u:Z

    if-eqz v0, :cond_2a

    if-ltz v11, :cond_59

    .line 125
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v9, v0, v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a(Landroid/view/View;I)V

    .line 126
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    goto/16 :goto_2b

    .line 127
    :cond_2a
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-interface {v8, v0}, Lf/a/a/a/c;->showView(Landroid/view/View;)V

    .line 128
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 129
    :cond_2b
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 130
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 131
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 132
    iget-object v1, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2c

    .line 133
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 134
    iget-object v1, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 135
    :cond_2c
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    goto/16 :goto_2b

    :cond_2d
    const/4 v14, 0x0

    .line 136
    iget-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-nez v2, :cond_2e

    .line 137
    iget v2, v7, Lf/a/a/a/l/m;->q:I

    invoke-interface {v8, v2}, Lf/a/a/a/c;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 138
    :cond_2e
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_2f

    const/4 v4, 0x1

    goto :goto_13

    :cond_2f
    const/4 v4, 0x0

    .line 139
    :goto_13
    iget-object v6, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    if-eqz v4, :cond_30

    iget v6, v6, Lf/a/a/a/l/e;->b:I

    goto :goto_14

    :cond_30
    iget v6, v6, Lf/a/a/a/l/e;->a:I

    .line 140
    :goto_14
    iget-object v11, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    if-eqz v4, :cond_31

    iget v11, v11, Lf/a/a/a/l/e;->d:I

    goto :goto_15

    :cond_31
    iget v11, v11, Lf/a/a/a/l/e;->c:I

    .line 141
    :goto_15
    iget-boolean v12, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v12, :cond_32

    iget v12, v7, Lf/a/a/a/l/m;->q:I

    if-ge v1, v12, :cond_33

    :cond_32
    iget-boolean v1, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v1, :cond_39

    iget v1, v7, Lf/a/a/a/l/m;->q:I

    if-gt v0, v1, :cond_39

    :cond_33
    if-nez v2, :cond_36

    .line 142
    iget v0, v7, Lf/a/a/a/l/m;->s:I

    iget-boolean v1, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v1, :cond_34

    move v1, v6

    goto :goto_16

    :cond_34
    move v1, v11

    :goto_16
    add-int/2addr v0, v1

    if-lez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_17

    :cond_35
    const/4 v0, 0x0

    .line 143
    :goto_17
    iget v1, v7, Lf/a/a/a/l/m;->q:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 144
    invoke-virtual {v7, v1, v8}, Lf/a/a/a/l/m;->z(Landroid/view/View;Lf/a/a/a/c;)V

    goto :goto_19

    .line 145
    :cond_36
    iget-boolean v0, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v0, :cond_37

    invoke-virtual {v3, v2}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v1

    iget v12, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v1, v12

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_37

    .line 146
    iput-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    goto :goto_18

    .line 147
    :cond_37
    iget-boolean v0, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v0, :cond_38

    invoke-virtual {v3, v2}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v1

    iget v12, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v11

    if-gt v0, v1, :cond_38

    .line 148
    iput-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    :goto_18
    const/4 v0, 0x1

    goto :goto_19

    .line 149
    :cond_38
    iput-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    :cond_39
    const/4 v0, 0x0

    .line 150
    :goto_19
    iget-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-eqz v1, :cond_58

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 152
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto/16 :goto_2b

    .line 153
    :cond_3a
    iget-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v1}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v1

    if-eqz v4, :cond_4d

    .line 154
    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 155
    invoke-virtual {v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v2

    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 156
    iget-object v4, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v4}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    goto :goto_1a

    .line 157
    :cond_3b
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v4

    .line 158
    iget-object v2, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v2}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v4

    :goto_1a
    if-eqz v0, :cond_48

    .line 159
    iget-boolean v12, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v12, :cond_3f

    .line 160
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v5

    move-object v13, v10

    :goto_1b
    if-ltz v12, :cond_43

    .line 161
    invoke-interface {v8, v12}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 162
    invoke-interface {v8, v13}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v15

    .line 163
    iget v14, v7, Lf/a/a/a/l/m;->q:I

    if-ge v15, v14, :cond_3e

    .line 164
    invoke-virtual {v3, v13}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v14

    .line 165
    invoke-virtual {v9, v15}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v15

    .line 166
    instance-of v10, v15, Lf/a/a/a/l/k;

    if-nez v10, :cond_3d

    .line 167
    instance-of v10, v15, Lf/a/a/a/l/j;

    if-eqz v10, :cond_3c

    .line 168
    check-cast v15, Lf/a/a/a/l/j;

    .line 169
    iget v10, v15, Lf/a/a/a/l/j;->j:I

    add-int/2addr v14, v10

    .line 170
    iget v10, v15, Lf/a/a/a/l/j;->f:I

    add-int/2addr v14, v10

    :cond_3c
    add-int v10, v14, v1

    add-int/2addr v5, v12

    move v12, v10

    move v10, v14

    goto :goto_1d

    .line 171
    :cond_3d
    check-cast v15, Lf/a/a/a/l/k;

    .line 172
    iget-object v0, v15, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 173
    iget-object v0, v0, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 174
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const/4 v0, 0x0

    .line 175
    throw v0

    :cond_3e
    add-int/lit8 v12, v12, -0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    goto :goto_1b

    :cond_3f
    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 176
    :goto_1c
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_43

    .line 177
    invoke-interface {v8, v5}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 178
    invoke-interface {v8, v13}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v10

    .line 179
    iget v12, v7, Lf/a/a/a/l/m;->q:I

    if-le v10, v12, :cond_42

    .line 180
    invoke-virtual {v3, v13}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v12

    .line 181
    invoke-virtual {v9, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e(I)Lf/a/a/a/a;

    move-result-object v10

    .line 182
    instance-of v14, v10, Lf/a/a/a/l/k;

    if-nez v14, :cond_41

    .line 183
    instance-of v14, v10, Lf/a/a/a/l/j;

    if-eqz v14, :cond_40

    .line 184
    check-cast v10, Lf/a/a/a/l/j;

    .line 185
    iget v14, v10, Lf/a/a/a/l/j;->i:I

    sub-int/2addr v12, v14

    .line 186
    iget v10, v10, Lf/a/a/a/l/j;->e:I

    sub-int/2addr v12, v10

    :cond_40
    sub-int v10, v12, v1

    goto :goto_1d

    .line 187
    :cond_41
    check-cast v10, Lf/a/a/a/l/k;

    .line 188
    iget-object v0, v10, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 189
    iget-object v0, v0, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 190
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const/4 v0, 0x0

    .line 191
    throw v0

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_43
    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1d
    if-eqz v13, :cond_44

    if-gez v5, :cond_45

    :cond_44
    const/4 v0, 0x0

    .line 192
    :cond_45
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v13

    if-nez v13, :cond_47

    iget-boolean v13, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v13, :cond_46

    goto :goto_1e

    .line 193
    :cond_46
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v13

    iget v14, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v13, v14

    add-int/2addr v13, v6

    if-ge v10, v13, :cond_49

    goto :goto_1f

    .line 194
    :cond_47
    :goto_1e
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v13

    iget v14, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v11

    if-le v12, v13, :cond_49

    :goto_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_48
    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_49
    :goto_20
    if-nez v0, :cond_4c

    .line 195
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v10

    if-nez v10, :cond_4b

    iget-boolean v10, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v10, :cond_4a

    goto :goto_21

    .line 196
    :cond_4a
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v3

    iget v10, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v3, v10

    add-int/2addr v3, v6

    add-int/2addr v1, v3

    move v10, v0

    move v11, v5

    move v5, v1

    goto :goto_22

    .line 197
    :cond_4b
    :goto_21
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v3

    iget v6, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v3, v6

    sub-int v12, v3, v11

    sub-int v10, v12, v1

    :cond_4c
    move v11, v5

    move v3, v10

    move v5, v12

    move v10, v0

    :goto_22
    move/from16 v16, v4

    move v4, v2

    goto/16 :goto_27

    .line 198
    :cond_4d
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v2

    .line 199
    iget-object v4, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v3, v4}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    if-eqz v0, :cond_53

    .line 200
    iget-boolean v6, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v6, :cond_50

    .line 201
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_23
    if-ltz v6, :cond_4f

    .line 202
    invoke-interface {v8, v6}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 203
    invoke-interface {v8, v5}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v10

    .line 204
    iget v11, v7, Lf/a/a/a/l/m;->q:I

    if-ge v10, v11, :cond_4e

    .line 205
    invoke-virtual {v3, v5}, Lf/a/a/a/i;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    move v6, v1

    goto :goto_24

    :cond_4e
    add-int/lit8 v6, v6, -0x1

    goto :goto_23

    :cond_4f
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_24
    move v1, v6

    move v6, v3

    goto :goto_26

    :cond_50
    const/4 v5, 0x0

    .line 206
    :goto_25
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 207
    invoke-interface {v8, v5}, Lf/a/a/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 208
    invoke-interface {v8, v6}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v10

    .line 209
    iget v11, v7, Lf/a/a/a/l/m;->q:I

    if-le v10, v11, :cond_51

    .line 210
    invoke-virtual {v3, v6}, Lf/a/a/a/i;->e(Landroid/view/View;)I

    move-result v6

    sub-int v1, v6, v1

    move/from16 v16, v6

    move v6, v1

    move/from16 v1, v16

    goto :goto_26

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_52
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_26
    move v10, v0

    move v3, v2

    move v5, v4

    move v2, v6

    const/4 v11, -0x1

    move v4, v1

    goto :goto_29

    .line 211
    :cond_53
    invoke-interface/range {p6 .. p6}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v5

    if-nez v5, :cond_55

    iget-boolean v5, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v5, :cond_54

    goto :goto_28

    .line 212
    :cond_54
    invoke-virtual {v3}, Lf/a/a/a/i;->i()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    add-int/2addr v1, v3

    move v10, v0

    move v5, v4

    const/4 v11, -0x1

    move v4, v1

    move/from16 v16, v3

    move v3, v2

    :goto_27
    move/from16 v2, v16

    goto :goto_29

    .line 213
    :cond_55
    :goto_28
    invoke-virtual {v3}, Lf/a/a/a/i;->g()I

    move-result v3

    iget v5, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v11

    sub-int v1, v3, v1

    move v10, v0

    move v5, v4

    const/4 v11, -0x1

    move v4, v3

    move v3, v2

    move v2, v1

    .line 214
    :goto_29
    iget-object v1, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    if-eqz v10, :cond_56

    if-ltz v11, :cond_57

    .line 215
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v9, v0, v11}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    goto :goto_2a

    .line 217
    :cond_56
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d(Landroid/view/View;)V

    :cond_57
    :goto_2a
    move v0, v10

    .line 218
    :cond_58
    iput-boolean v0, v7, Lf/a/a/a/l/m;->u:Z

    :cond_59
    :goto_2b
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lf/a/a/a/l/b;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V

    .line 2
    iget-object p2, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    check-cast p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 3
    iget-object v1, p3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    invoke-static {p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->isViewHolderUpdated(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 7
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 9
    iput-object v2, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 10
    :cond_3
    iput-boolean v0, p0, Lf/a/a/a/l/m;->u:Z

    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/a/l/m;->q:I

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
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    .line 1
    iget-object v0, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {v7, v0}, Lf/a/a/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    iget v3, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    :goto_0
    move-object v10, v0

    const/4 v11, 0x1

    if-nez v10, :cond_2

    .line 6
    iput-boolean v11, v9, Lf/a/a/a/l/h;->b:Z

    return-void

    .line 7
    :cond_2
    invoke-virtual {v7, v10, v6}, Lf/a/a/a/l/m;->z(Landroid/view/View;Lf/a/a/a/c;)V

    .line 8
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 9
    :goto_1
    move-object v13, v6

    check-cast v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 10
    iget-object v0, v13, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 11
    invoke-virtual {v0, v10}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v2

    iput v2, v9, Lf/a/a/a/l/h;->a:I

    .line 12
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 13
    iput-boolean v11, v7, Lf/a/a/a/l/m;->u:Z

    .line 14
    iget-object v2, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->e:I

    .line 15
    iget v4, v9, Lf/a/a/a/l/h;->a:I

    sub-int/2addr v3, v4

    .line 16
    iget v2, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->j:I

    add-int/2addr v3, v2

    .line 17
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v11, :cond_e

    .line 18
    invoke-virtual {v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v13}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v7, Lf/a/a/a/l/j;->h:I

    sub-int/2addr v2, v5

    .line 20
    invoke-virtual {v0, v10}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    goto :goto_2

    .line 21
    :cond_4
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v2

    iget v5, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v5, v2

    .line 22
    invoke-virtual {v0, v10}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    .line 23
    :goto_2
    iget-object v14, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v15, v14, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v15, v4, :cond_5

    .line 24
    iget v14, v14, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 25
    iget v15, v7, Lf/a/a/a/l/j;->j:I

    sub-int v15, v14, v15

    .line 26
    iget v11, v9, Lf/a/a/a/l/h;->a:I

    sub-int/2addr v14, v11

    goto :goto_3

    .line 27
    :cond_5
    iget-boolean v11, v7, Lf/a/a/a/l/m;->r:Z

    if-eqz v11, :cond_6

    .line 28
    iget v11, v14, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 29
    iget v14, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v14, v11

    .line 30
    iget v15, v9, Lf/a/a/a/l/h;->a:I

    add-int/2addr v15, v11

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v0}, Lf/a/a/a/i;->g()I

    move-result v11

    iget v14, v7, Lf/a/a/a/l/j;->j:I

    sub-int/2addr v11, v14

    iget v14, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v11, v14

    iget-object v14, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v14, v14, Lf/a/a/a/l/e;->d:I

    sub-int v15, v11, v14

    .line 32
    iget v11, v9, Lf/a/a/a/l/h;->a:I

    sub-int v14, v15, v11

    .line 33
    :goto_3
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v11

    if-nez v11, :cond_a

    iget-boolean v11, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v11, :cond_7

    goto :goto_4

    .line 34
    :cond_7
    iget v11, v7, Lf/a/a/a/l/m;->s:I

    iget-object v1, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v1, v1, Lf/a/a/a/l/e;->b:I

    add-int/2addr v11, v1

    if-ge v3, v11, :cond_8

    .line 35
    iget-object v1, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    if-eq v1, v4, :cond_9

    .line 36
    :cond_8
    iget v1, v7, Lf/a/a/a/l/j;->i:I

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v1, v3

    iget-object v3, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v3, v3, Lf/a/a/a/l/e;->b:I

    add-int/2addr v1, v3

    if-ge v14, v1, :cond_d

    :cond_9
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v7, Lf/a/a/a/l/m;->u:Z

    .line 38
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 39
    invoke-virtual {v0}, Lf/a/a/a/i;->i()I

    move-result v0

    iget v1, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v0, v1

    iget v1, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v0, v1

    iget-object v1, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v1, v1, Lf/a/a/a/l/e;->b:I

    add-int/2addr v0, v1

    .line 40
    iget v1, v9, Lf/a/a/a/l/h;->a:I

    add-int/2addr v1, v0

    move v3, v0

    move v4, v2

    move v2, v5

    move v5, v1

    goto/16 :goto_8

    .line 41
    :cond_a
    :goto_4
    iget v1, v7, Lf/a/a/a/l/m;->s:I

    iget-object v4, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v4, v4, Lf/a/a/a/l/e;->d:I

    add-int/2addr v1, v4

    if-ge v3, v1, :cond_b

    .line 42
    iget-object v1, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v1, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c

    .line 43
    :cond_b
    iget v1, v7, Lf/a/a/a/l/j;->j:I

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v1, v3

    iget-object v3, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v3, v3, Lf/a/a/a/l/e;->d:I

    add-int/2addr v1, v3

    if-le v15, v1, :cond_d

    :cond_c
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v7, Lf/a/a/a/l/m;->u:Z

    .line 45
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 46
    invoke-virtual {v0}, Lf/a/a/a/i;->g()I

    move-result v0

    iget v1, v7, Lf/a/a/a/l/j;->j:I

    sub-int/2addr v0, v1

    iget v1, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v0, v1

    iget-object v1, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v1, v1, Lf/a/a/a/l/e;->d:I

    sub-int/2addr v0, v1

    .line 47
    iget v1, v9, Lf/a/a/a/l/h;->a:I

    sub-int v1, v0, v1

    move v3, v1

    move v4, v2

    move v2, v5

    move v5, v0

    goto/16 :goto_8

    :cond_d
    move v4, v2

    move v2, v5

    move v3, v14

    move v5, v15

    goto/16 :goto_8

    .line 48
    :cond_e
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v1

    .line 49
    invoke-virtual {v0, v10}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget v5, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v2, v5

    .line 50
    iget-object v5, v8, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v11, v5, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v11, v4, :cond_f

    .line 51
    iget v4, v5, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 52
    iget v5, v7, Lf/a/a/a/l/j;->h:I

    sub-int v5, v4, v5

    .line 53
    iget v11, v9, Lf/a/a/a/l/h;->a:I

    sub-int/2addr v4, v11

    goto :goto_5

    .line 54
    :cond_f
    iget v4, v5, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    .line 55
    iget v5, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v5, v4

    .line 56
    iget v11, v9, Lf/a/a/a/l/h;->a:I

    add-int/2addr v4, v11

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 57
    :goto_5
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v11

    if-nez v11, :cond_11

    iget-boolean v11, v7, Lf/a/a/a/l/m;->r:Z

    if-nez v11, :cond_10

    goto :goto_6

    .line 58
    :cond_10
    iget v11, v7, Lf/a/a/a/l/m;->s:I

    iget-object v14, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v14, v14, Lf/a/a/a/l/e;->a:I

    add-int/2addr v11, v14

    if-ge v3, v11, :cond_12

    const/4 v3, 0x0

    .line 59
    iput-boolean v3, v7, Lf/a/a/a/l/m;->u:Z

    .line 60
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 61
    invoke-virtual {v0}, Lf/a/a/a/i;->i()I

    move-result v0

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    add-int/2addr v0, v3

    iget-object v3, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v3, v3, Lf/a/a/a/l/e;->a:I

    add-int/2addr v0, v3

    .line 62
    iget v3, v9, Lf/a/a/a/l/h;->a:I

    move v5, v2

    move v4, v3

    move v2, v0

    goto :goto_7

    .line 63
    :cond_11
    :goto_6
    iget v11, v7, Lf/a/a/a/l/m;->s:I

    iget-object v14, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v14, v14, Lf/a/a/a/l/e;->c:I

    add-int/2addr v11, v14

    if-ge v3, v11, :cond_12

    const/4 v3, 0x0

    .line 64
    iput-boolean v3, v7, Lf/a/a/a/l/m;->u:Z

    .line 65
    iput-object v10, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 66
    invoke-virtual {v0}, Lf/a/a/a/i;->g()I

    move-result v0

    iget v3, v7, Lf/a/a/a/l/m;->s:I

    sub-int/2addr v0, v3

    iget-object v3, v7, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    iget v3, v3, Lf/a/a/a/l/e;->c:I

    sub-int/2addr v0, v3

    .line 67
    iget v3, v9, Lf/a/a/a/l/h;->a:I

    sub-int v3, v0, v3

    move v4, v0

    move v5, v2

    move v2, v3

    :goto_7
    move v3, v1

    goto :goto_8

    :cond_12
    move v3, v1

    move/from16 v16, v5

    move v5, v2

    move v2, v4

    move/from16 v4, v16

    :goto_8
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v6, p5

    .line 68
    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    .line 69
    iget v0, v9, Lf/a/a/a/l/h;->a:I

    if-eqz v12, :cond_13

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->n()I

    move-result v1

    goto :goto_9

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->l()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    iput v0, v9, Lf/a/a/a/l/h;->a:I

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, v7, Lf/a/a/a/l/m;->u:Z

    .line 72
    :cond_14
    iget-boolean v0, v7, Lf/a/a/a/l/m;->u:Z

    if-eqz v0, :cond_15

    .line 73
    invoke-virtual {v13, v8, v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;)V

    .line 74
    invoke-virtual {v7, v9, v10}, Lf/a/a/a/l/b;->t(Lf/a/a/a/l/h;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, v7, Lf/a/a/a/l/m;->t:Landroid/view/View;

    :cond_15
    return-void
.end method

.method public x(Lf/a/a/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    .line 5
    iget-object v1, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lf/a/a/a/l/m;->t:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z(Landroid/view/View;Lf/a/a/a/c;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 2
    invoke-interface {p2}, Lf/a/a/a/c;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    move-object v4, p2

    check-cast v4, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v5

    invoke-interface {p2}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {p2}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lf/a/a/a/l/j;->l()I

    move-result v6

    sub-int/2addr v5, v6

    .line 4
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v6

    invoke-interface {p2}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {p2}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lf/a/a/a/l/j;->n()I

    move-result v7

    sub-int/2addr v6, v7

    .line 5
    iget v7, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v1

    .line 7
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, v7, v11

    if-lez v2, :cond_1

    int-to-float v0, v5

    div-float/2addr v0, v7

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 8
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 9
    :cond_1
    iget v2, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lf/a/a/a/l/b;->m:F

    cmpl-float v7, v2, v11

    if-lez v7, :cond_2

    int-to-float v0, v5

    div-float/2addr v0, v2

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    .line 10
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 11
    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v6, v0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v0

    .line 12
    :goto_1
    invoke-interface {p2, p1, v1, v0}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_3

    .line 13
    :cond_3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v6, v1, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v1

    .line 14
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    cmpl-float v2, v7, v11

    if-lez v2, :cond_4

    int-to-float v0, v6

    mul-float v0, v0, v7

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    .line 15
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 16
    :cond_4
    iget v2, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lf/a/a/a/l/b;->m:F

    cmpl-float v7, v2, v11

    if-lez v7, :cond_5

    int-to-float v0, v6

    mul-float v0, v0, v2

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    .line 17
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 18
    :cond_5
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v5, v0, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g(IIZ)I

    move-result v0

    .line 19
    :goto_2
    invoke-interface {p2, p1, v0, v1}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    :goto_3
    return-void
.end method
