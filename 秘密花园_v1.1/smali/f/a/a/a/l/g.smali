.class public Lf/a/a/a/l/g;
.super Lf/a/a/a/l/b;
.source "GridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/l/g$b;,
        Lf/a/a/a/l/g$a;
    }
.end annotation


# static fields
.field public static final B:I


# instance fields
.field public A:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Lf/a/a/a/l/g$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public u:I

.field public v:I

.field public w:[F

.field public x:[Landroid/view/View;

.field public y:[I

.field public z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lf/a/a/a/l/g;->B:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/b;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lf/a/a/a/l/g;->p:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/a/a/a/l/g;->q:I

    .line 4
    iput v0, p0, Lf/a/a/a/l/g;->r:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lf/a/a/a/l/g;->s:Z

    .line 6
    new-instance v2, Lf/a/a/a/l/g$a;

    invoke-direct {v2}, Lf/a/a/a/l/g$a;-><init>()V

    iput-object v2, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    .line 7
    iput v0, p0, Lf/a/a/a/l/g;->u:I

    .line 8
    iput v0, p0, Lf/a/a/a/l/g;->v:I

    new-array v3, v0, [F

    .line 9
    iput-object v3, p0, Lf/a/a/a/l/g;->w:[F

    .line 10
    iput-boolean v0, p0, Lf/a/a/a/l/g;->A:Z

    .line 11
    iget v3, p0, Lf/a/a/a/l/g;->p:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_1

    .line 12
    iput p1, p0, Lf/a/a/a/l/g;->p:I

    .line 13
    iget-object p1, v2, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 14
    invoke-virtual {p0}, Lf/a/a/a/l/g;->z()V

    .line 15
    :goto_0
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    .line 16
    iput-boolean v1, p1, Lf/a/a/a/l/g$b;->b:Z

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lf/a/a/a/l/b;->n:I

    .line 18
    iput v0, p0, Lf/a/a/a/l/g;->u:I

    .line 19
    iput v0, p0, Lf/a/a/a/l/g;->v:I

    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Span count should be at least 1. Provided "

    invoke-static {v1, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(IIIF)I
    .locals 4

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    cmpl-float v0, p4, v2

    if-lez v0, :cond_0

    if-lez p3, :cond_0

    int-to-float p1, p3

    div-float/2addr p1, p4

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget p3, p0, Lf/a/a/a/l/b;->m:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    iget p3, p0, Lf/a/a/a/l/b;->m:F

    cmpl-float p4, p3, v2

    if-lez p4, :cond_1

    int-to-float p1, p2

    div-float/2addr p1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 4
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_1
    if-gez p1, :cond_2

    .line 5
    sget p1, Lf/a/a/a/l/g;->B:I

    return p1

    .line 6
    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method public final B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    check-cast p1, Lf/a/a/a/l/g$a;

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    throw v1

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    check-cast p1, Lf/a/a/a/l/g$a;

    if-eqz p1, :cond_3

    return v0

    .line 6
    :cond_3
    throw v1
.end method

.method public C(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Lf/a/a/a/l/g;->v:I

    return-void
.end method

.method public D(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Lf/a/a/a/l/g;->u:I

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;Lf/a/a/a/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    iget p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    iget v0, p0, Lf/a/a/a/l/g;->p:I

    invoke-virtual {p1, p3, v0}, Lf/a/a/a/l/g$b;->a(II)I

    move-result p1

    .line 3
    iget-boolean p3, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->c:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 4
    :goto_0
    iget p3, p0, Lf/a/a/a/l/g;->p:I

    sub-int/2addr p3, v0

    if-ge p1, p3, :cond_1

    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    .line 5
    iget-object p3, p0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 6
    iget-object p3, p3, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 7
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 8
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    .line 9
    iget-object p3, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    iget v1, p0, Lf/a/a/a/l/g;->p:I

    invoke-virtual {p3, p1, v1}, Lf/a/a/a/l/g$b;->a(II)I

    move-result p1

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p1, :cond_1

    .line 10
    iget p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 11
    iput p1, p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    .line 12
    iget-object p3, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    iget v1, p0, Lf/a/a/a/l/g;->p:I

    invoke-virtual {p3, p1, v1}, Lf/a/a/a/l/g$b;->a(II)I

    move-result p1

    goto :goto_1

    .line 13
    :cond_1
    iput-boolean v0, p0, Lf/a/a/a/l/g;->A:Z

    :cond_2
    return-void
.end method

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

.method public h(Lf/a/a/a/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    .line 2
    iget-object p1, p1, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public i(II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    .line 2
    iput p1, p2, Lf/a/a/a/l/g$b;->c:I

    .line 3
    iget-object p1, p2, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v3, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    invoke-virtual {v7, v3}, Lf/a/a/a/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v3, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 4
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->isEnableMarginOverLap()Z

    move-result v3

    .line 5
    iget-object v4, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v4, v4, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_0
    move-object v10, v9

    check-cast v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 7
    iget-object v11, v10, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 8
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v12

    if-ne v12, v5, :cond_2

    const/4 v5, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_3

    .line 9
    invoke-virtual {v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j()I

    move-result v13

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->l()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->m()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v7, Lf/a/a/a/l/g;->r:I

    .line 10
    iget v14, v7, Lf/a/a/a/l/g;->p:I

    add-int/lit8 v15, v14, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->v:I

    mul-int v15, v15, v5

    sub-int/2addr v13, v15

    int-to-float v5, v13

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v5, v5, v13

    int-to-float v13, v14

    div-float/2addr v5, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v5, v13

    float-to-int v5, v5

    iput v5, v7, Lf/a/a/a/l/g;->q:I

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v10}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i()I

    move-result v5

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->n()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/j;->o()I

    move-result v13

    sub-int/2addr v5, v13

    iput v5, v7, Lf/a/a/a/l/g;->r:I

    .line 12
    iget v13, v7, Lf/a/a/a/l/g;->p:I

    add-int/lit8 v14, v13, -0x1

    iget v15, v7, Lf/a/a/a/l/g;->u:I

    mul-int v14, v14, v15

    sub-int/2addr v5, v14

    int-to-float v5, v5

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v5, v5, v14

    int-to-float v13, v13

    div-float/2addr v5, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v5, v13

    float-to-int v5, v5

    iput v5, v7, Lf/a/a/a/l/g;->q:I

    .line 13
    :goto_2
    iget v5, v7, Lf/a/a/a/l/g;->p:I

    .line 14
    invoke-virtual/range {p0 .. p0}, Lf/a/a/a/l/g;->z()V

    const-string v13, " spans."

    const-string v14, " spans but GridLayoutManager has only "

    const-string v15, " requires "

    move/from16 v16, v5

    const-string v5, "Item at position "

    if-nez v6, :cond_13

    .line 15
    iget-object v8, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v8, v8, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v16

    if-nez v16, :cond_4

    move/from16 v17, v3

    .line 17
    iget-object v3, v7, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    move-object/from16 v18, v11

    iget v11, v7, Lf/a/a/a/l/g;->p:I

    invoke-virtual {v3, v8, v11}, Lf/a/a/a/l/g$b;->a(II)I

    move-result v3

    goto :goto_3

    :cond_4
    move/from16 v17, v3

    move-object/from16 v18, v11

    .line 18
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    .line 19
    :cond_5
    iget-object v8, v7, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    iget v11, v7, Lf/a/a/a/l/g;->p:I

    invoke-virtual {v8, v3, v11}, Lf/a/a/a/l/g$b;->a(II)I

    move-result v3

    .line 20
    :goto_3
    iget-object v8, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v8, v8, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 21
    invoke-virtual {v7, v0, v1, v8}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v8

    add-int/2addr v8, v3

    .line 22
    iget v11, v7, Lf/a/a/a/l/g;->p:I

    move/from16 v19, v12

    add-int/lit8 v12, v11, -0x1

    if-eq v3, v12, :cond_12

    .line 23
    iget-object v3, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    sub-int/2addr v11, v8

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v8

    .line 24
    :goto_4
    iget v8, v7, Lf/a/a/a/l/g;->p:I

    if-ge v12, v8, :cond_10

    if-lez v11, :cond_10

    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v7, v3}, Lf/a/a/a/a;->f(I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_9

    .line 26
    :cond_6
    invoke-virtual {v7, v0, v1, v3}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v8

    move/from16 v23, v4

    .line 27
    iget v4, v7, Lf/a/a/a/l/g;->p:I

    if-gt v8, v4, :cond_f

    .line 28
    iget-object v4, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v9, v4, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 29
    iput v3, v4, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 30
    invoke-virtual {v4, v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v24, v10

    .line 31
    iget-object v10, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iput v9, v10, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    if-nez v4, :cond_7

    goto/16 :goto_a

    :cond_7
    if-nez v16, :cond_a

    .line 32
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 33
    iget-object v9, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 34
    iget-object v9, v9, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 35
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_9

    goto :goto_5

    .line 36
    :cond_8
    iget-object v9, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 37
    iget-object v9, v9, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 38
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_9

    :goto_5
    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    move/from16 v16, v9

    :cond_a
    if-nez v21, :cond_d

    .line 39
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 40
    iget-object v9, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 41
    iget-object v9, v9, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 42
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_c

    goto :goto_7

    .line 43
    :cond_b
    iget-object v9, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 44
    iget-object v9, v9, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 45
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_c

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    :goto_8
    move/from16 v21, v9

    :cond_d
    sub-int/2addr v11, v8

    if-gez v11, :cond_e

    goto :goto_a

    :cond_e
    add-int v20, v20, v8

    .line 46
    iget-object v8, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aput-object v4, v8, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p5

    move/from16 v4, v23

    move-object/from16 v10, v24

    goto/16 :goto_4

    .line 47
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lf/a/a/a/l/g;->p:I

    invoke-static {v1, v2, v13}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    move-object/from16 v24, v10

    :goto_a
    if-lez v12, :cond_11

    add-int/lit8 v3, v12, -0x1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_11

    .line 48
    iget-object v8, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aget-object v9, v8, v4

    .line 49
    aget-object v10, v8, v3

    aput-object v10, v8, v4

    .line 50
    aput-object v9, v8, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_11
    move/from16 v3, v20

    move/from16 v8, v22

    goto :goto_d

    :cond_12
    move/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v22

    goto :goto_c

    :cond_13
    move/from16 v17, v3

    move-object/from16 v24, v10

    move-object/from16 v18, v11

    move/from16 v19, v12

    :goto_c
    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/16 v21, 0x0

    move/from16 v8, v16

    const/4 v3, 0x0

    const/16 v16, 0x0

    .line 51
    :goto_d
    iget v4, v7, Lf/a/a/a/l/g;->p:I

    if-ge v12, v4, :cond_1f

    .line 52
    iget-object v4, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    .line 53
    iget v4, v4, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    if-ltz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-ge v4, v9, :cond_14

    const/4 v4, 0x1

    goto :goto_e

    :cond_14
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1f

    if-lez v8, :cond_1f

    .line 54
    iget-object v4, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v4, v4, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 55
    invoke-virtual {v7, v4}, Lf/a/a/a/a;->f(I)Z

    move-result v9

    if-eqz v9, :cond_15

    goto/16 :goto_13

    .line 56
    :cond_15
    invoke-virtual {v7, v0, v1, v4}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v9

    .line 57
    iget v10, v7, Lf/a/a/a/l/g;->p:I

    if-gt v9, v10, :cond_1e

    sub-int/2addr v8, v9

    if-gez v8, :cond_16

    goto/16 :goto_13

    .line 58
    :cond_16
    iget-object v10, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    invoke-virtual {v10, v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_17

    goto/16 :goto_13

    :cond_17
    if-nez v16, :cond_1a

    .line 59
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 60
    iget-object v11, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 61
    iget-object v11, v11, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 62
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_19

    goto :goto_f

    .line 63
    :cond_18
    iget-object v11, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 64
    iget-object v11, v11, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 65
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_19

    :goto_f
    const/4 v11, 0x1

    goto :goto_10

    :cond_19
    const/4 v11, 0x0

    :goto_10
    move/from16 v16, v11

    :cond_1a
    if-nez v21, :cond_1d

    .line 66
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 67
    iget-object v11, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 68
    iget-object v11, v11, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 69
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_1c

    goto :goto_11

    .line 70
    :cond_1b
    iget-object v11, v7, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 71
    iget-object v11, v11, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 72
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_1c

    :goto_11
    const/4 v4, 0x1

    goto :goto_12

    :cond_1c
    const/4 v4, 0x0

    :goto_12
    move/from16 v21, v4

    :cond_1d
    add-int/2addr v3, v9

    .line 73
    iget-object v4, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aput-object v10, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    .line 74
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lf/a/a/a/l/g;->p:I

    invoke-static {v1, v2, v13}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_13
    if-nez v12, :cond_20

    return-void

    :cond_20
    if-eqz v6, :cond_21

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v4, v12

    const/4 v9, 0x1

    goto :goto_14

    :cond_21
    add-int/lit8 v5, v12, -0x1

    const/4 v4, -0x1

    const/4 v9, -0x1

    .line 75
    :goto_14
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_22

    .line 76
    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_22

    add-int/lit8 v10, v3, -0x1

    const/4 v11, -0x1

    goto :goto_15

    :cond_22
    const/4 v11, 0x1

    const/4 v10, 0x0

    :goto_15
    if-eq v5, v4, :cond_24

    .line 77
    iget-object v13, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aget-object v13, v13, v5

    move-object/from16 v14, p5

    .line 78
    invoke-interface {v14, v13}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v7, v0, v1, v13}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v13

    const/4 v15, -0x1

    if-ne v11, v15, :cond_23

    const/4 v15, 0x1

    if-le v13, v15, :cond_23

    .line 79
    iget-object v15, v7, Lf/a/a/a/l/g;->y:[I

    add-int/lit8 v20, v13, -0x1

    sub-int v20, v10, v20

    aput v20, v15, v5

    goto :goto_16

    .line 80
    :cond_23
    iget-object v15, v7, Lf/a/a/a/l/g;->y:[I

    aput v10, v15, v5

    :goto_16
    mul-int v13, v13, v11

    add-int/2addr v10, v13

    add-int/2addr v5, v9

    goto :goto_15

    :cond_24
    move-object/from16 v14, p5

    if-lez v8, :cond_26

    if-ne v12, v3, :cond_26

    .line 81
    iget-boolean v4, v7, Lf/a/a/a/l/g;->s:Z

    if-eqz v4, :cond_26

    if-eqz v19, :cond_25

    .line 82
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->v:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v12

    iput v3, v7, Lf/a/a/a/l/g;->q:I

    goto :goto_17

    .line 83
    :cond_25
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->u:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v12

    iput v3, v7, Lf/a/a/a/l/g;->q:I

    goto :goto_17

    :cond_26
    if-nez v6, :cond_28

    if-nez v8, :cond_28

    if-ne v12, v3, :cond_28

    .line 84
    iget-boolean v3, v7, Lf/a/a/a/l/g;->s:Z

    if-eqz v3, :cond_28

    if-eqz v19, :cond_27

    .line 85
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->v:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v12

    iput v3, v7, Lf/a/a/a/l/g;->q:I

    goto :goto_17

    .line 86
    :cond_27
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->u:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v12

    iput v3, v7, Lf/a/a/a/l/g;->q:I

    .line 87
    :cond_28
    :goto_17
    iget-object v3, v7, Lf/a/a/a/l/g;->w:[F

    if-eqz v3, :cond_2f

    array-length v3, v3

    if-lez v3, :cond_2f

    if-eqz v19, :cond_29

    .line 88
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->v:I

    goto :goto_18

    .line 89
    :cond_29
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    add-int/lit8 v4, v12, -0x1

    iget v5, v7, Lf/a/a/a/l/g;->u:I

    :goto_18
    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    if-lez v8, :cond_2a

    .line 90
    iget-boolean v4, v7, Lf/a/a/a/l/g;->s:Z

    if-eqz v4, :cond_2a

    move v4, v12

    goto :goto_19

    :cond_2a
    iget v4, v7, Lf/a/a/a/l/g;->p:I

    :goto_19
    const/4 v5, 0x0

    const/4 v8, 0x0

    move v9, v3

    :goto_1a
    if-ge v5, v4, :cond_2c

    .line 91
    iget-object v10, v7, Lf/a/a/a/l/g;->w:[F

    array-length v11, v10

    if-ge v5, v11, :cond_2b

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, v7, Lf/a/a/a/l/g;->w:[F

    aget v11, v10, v5

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_2b

    .line 92
    aget v10, v10, v5

    .line 93
    iget-object v11, v7, Lf/a/a/a/l/g;->z:[I

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v10, v10, v13

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v10, v13

    int-to-float v13, v3

    mul-float v10, v10, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    aput v10, v11, v5

    .line 94
    aget v10, v11, v5

    sub-int/2addr v9, v10

    goto :goto_1b

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    .line 95
    iget-object v10, v7, Lf/a/a/a/l/g;->z:[I

    const/4 v11, -0x1

    aput v11, v10, v5

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2c
    if-lez v8, :cond_2e

    .line 96
    div-int/2addr v9, v8

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v4, :cond_2e

    .line 97
    iget-object v5, v7, Lf/a/a/a/l/g;->z:[I

    aget v8, v5, v3

    if-gez v8, :cond_2d

    .line 98
    aput v9, v5, v3

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2e
    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v3, v12, :cond_36

    .line 99
    iget-object v5, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aget-object v5, v5, v3

    if-eqz v6, :cond_30

    const/4 v9, -0x1

    goto :goto_1f

    :cond_30
    const/4 v9, 0x0

    :goto_1f
    move-object/from16 v10, v24

    .line 100
    invoke-virtual {v10, v2, v5, v9}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;I)V

    .line 101
    invoke-interface {v14, v5}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v0, v1, v9}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v9

    if-eqz v8, :cond_32

    .line 102
    iget-object v11, v7, Lf/a/a/a/l/g;->y:[I

    aget v11, v11, v3

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_20
    if-ge v15, v9, :cond_31

    move/from16 v20, v6

    .line 103
    iget-object v6, v7, Lf/a/a/a/l/g;->z:[I

    add-int v22, v15, v11

    aget v6, v6, v22

    add-int/2addr v13, v6

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v20

    goto :goto_20

    :cond_31
    move/from16 v20, v6

    const/4 v6, 0x0

    .line 104
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_22

    :cond_32
    move/from16 v20, v6

    const/4 v6, 0x0

    .line 105
    iget v11, v7, Lf/a/a/a/l/g;->q:I

    mul-int v11, v11, v9

    add-int/lit8 v9, v9, -0x1

    .line 106
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v19, :cond_33

    iget v9, v7, Lf/a/a/a/l/g;->v:I

    goto :goto_21

    :cond_33
    iget v9, v7, Lf/a/a/a/l/g;->u:I

    :goto_21
    mul-int v6, v6, v9

    add-int/2addr v6, v11

    const/high16 v9, 0x40000000    # 2.0f

    .line 107
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 108
    :goto_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    .line 109
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_34

    .line 110
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v13, v7, Lf/a/a/a/l/g;->r:I

    .line 111
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    .line 112
    invoke-virtual {v7, v11, v13, v15, v9}, Lf/a/a/a/l/g;->A(IIIF)I

    move-result v9

    invoke-interface {v14, v5, v6, v9}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_23

    .line 113
    :cond_34
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v13, v7, Lf/a/a/a/l/g;->r:I

    .line 114
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    iget v9, v9, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->a:F

    invoke-virtual {v7, v11, v13, v15, v9}, Lf/a/a/a/l/g;->A(IIIF)I

    move-result v9

    .line 115
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 116
    invoke-interface {v14, v5, v9, v6}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    :goto_23
    move-object/from16 v9, v18

    .line 117
    invoke-virtual {v9, v5}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v5

    if-le v5, v4, :cond_35

    move v4, v5

    :cond_35
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v9

    move-object/from16 v24, v10

    move/from16 v6, v20

    goto/16 :goto_1e

    :cond_36
    move-object/from16 v9, v18

    .line 118
    iget v3, v7, Lf/a/a/a/l/g;->r:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    invoke-virtual {v7, v4, v3, v6, v5}, Lf/a/a/a/l/g;->A(IIIF)I

    move-result v3

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v12, :cond_3c

    .line 119
    iget-object v6, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aget-object v6, v6, v5

    .line 120
    invoke-virtual {v9, v6}, Lf/a/a/a/i;->c(Landroid/view/View;)I

    move-result v10

    if-eq v10, v4, :cond_3b

    .line 121
    invoke-interface {v14, v6}, Lf/a/a/a/c;->getPosition(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v7, v0, v1, v10}, Lf/a/a/a/l/g;->B(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v10

    if-eqz v8, :cond_38

    .line 122
    iget-object v11, v7, Lf/a/a/a/l/g;->y:[I

    aget v11, v11, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_25
    if-ge v13, v10, :cond_37

    .line 123
    iget-object v0, v7, Lf/a/a/a/l/g;->z:[I

    add-int v18, v13, v11

    aget v0, v0, v18

    add-int/2addr v15, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    goto :goto_25

    :cond_37
    const/4 v0, 0x0

    .line 124
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_27

    :cond_38
    const/4 v0, 0x0

    .line 125
    iget v11, v7, Lf/a/a/a/l/g;->q:I

    mul-int v11, v11, v10

    add-int/lit8 v10, v10, -0x1

    .line 126
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_39

    iget v10, v7, Lf/a/a/a/l/g;->v:I

    goto :goto_26

    :cond_39
    iget v10, v7, Lf/a/a/a/l/g;->u:I

    :goto_26
    mul-int v0, v0, v10

    add-int/2addr v0, v11

    const/high16 v10, 0x40000000    # 2.0f

    .line 127
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 128
    :goto_27
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3a

    .line 129
    invoke-interface {v14, v6, v0, v3}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_28

    .line 130
    :cond_3a
    invoke-interface {v14, v6, v3, v0}, Lf/a/a/a/c;->measureChildWithMargins(Landroid/view/View;II)V

    :cond_3b
    :goto_28
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    goto :goto_24

    :cond_3c
    if-eqz v16, :cond_3d

    .line 131
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move/from16 v1, v17

    move/from16 v10, v19

    invoke-virtual {v7, v14, v10, v0, v1}, Lf/a/a/a/l/b;->s(Lf/a/a/a/c;ZZZ)I

    move-result v0

    goto :goto_29

    :cond_3d
    move/from16 v10, v19

    const/4 v0, 0x0

    :goto_29
    if-eqz v21, :cond_3f

    .line 132
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getReverseLayout()Z

    if-eqz v10, :cond_3e

    .line 133
    iget v1, v7, Lf/a/a/a/l/j;->j:I

    iget v3, v7, Lf/a/a/a/l/j;->f:I

    goto :goto_2a

    :cond_3e
    iget v1, v7, Lf/a/a/a/l/j;->g:I

    iget v3, v7, Lf/a/a/a/l/j;->c:I

    :goto_2a
    add-int/2addr v1, v3

    goto :goto_2b

    :cond_3f
    const/4 v1, 0x0

    :goto_2b
    add-int v3, v4, v0

    add-int/2addr v3, v1

    const/4 v5, -0x1

    move-object/from16 v11, p4

    .line 134
    iput v3, v11, Lf/a/a/a/l/h;->a:I

    .line 135
    iget-object v3, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v3, v5, :cond_40

    const/4 v3, 0x1

    goto :goto_2c

    :cond_40
    const/4 v3, 0x0

    .line 136
    :goto_2c
    iget-boolean v6, v7, Lf/a/a/a/l/g;->A:Z

    if-nez v6, :cond_44

    if-eqz v21, :cond_41

    if-nez v3, :cond_44

    :cond_41
    if-eqz v16, :cond_42

    if-eqz v3, :cond_44

    .line 137
    :cond_42
    iget v3, v11, Lf/a/a/a/l/h;->a:I

    if-eqz v10, :cond_43

    iget v6, v7, Lf/a/a/a/l/g;->u:I

    goto :goto_2d

    :cond_43
    iget v6, v7, Lf/a/a/a/l/g;->v:I

    :goto_2d
    add-int/2addr v3, v6

    iput v3, v11, Lf/a/a/a/l/h;->a:I

    :cond_44
    if-eqz v10, :cond_4a

    .line 138
    iget-object v2, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v3, v5, :cond_47

    .line 139
    iget v0, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    sub-int/2addr v0, v1

    .line 140
    iget-boolean v1, v7, Lf/a/a/a/l/g;->A:Z

    if-nez v1, :cond_46

    if-eqz v21, :cond_45

    goto :goto_2e

    :cond_45
    iget v1, v7, Lf/a/a/a/l/g;->u:I

    goto :goto_2f

    :cond_46
    :goto_2e
    const/4 v1, 0x0

    :goto_2f
    sub-int/2addr v0, v1

    sub-int v1, v0, v4

    goto :goto_32

    .line 141
    :cond_47
    iget v1, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    add-int/2addr v1, v0

    .line 142
    iget-boolean v0, v7, Lf/a/a/a/l/g;->A:Z

    if-nez v0, :cond_49

    if-eqz v16, :cond_48

    goto :goto_30

    :cond_48
    iget v0, v7, Lf/a/a/a/l/g;->u:I

    goto :goto_31

    :cond_49
    :goto_30
    const/4 v0, 0x0

    :goto_31
    add-int/2addr v1, v0

    add-int v0, v4, v1

    :goto_32
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_37

    .line 143
    :cond_4a
    iget-object v2, v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v3, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->h:I

    if-ne v3, v5, :cond_4d

    .line 144
    iget v0, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    sub-int/2addr v0, v1

    .line 145
    iget-boolean v1, v7, Lf/a/a/a/l/g;->A:Z

    if-nez v1, :cond_4c

    if-eqz v21, :cond_4b

    goto :goto_33

    :cond_4b
    iget v1, v7, Lf/a/a/a/l/g;->v:I

    goto :goto_34

    :cond_4c
    :goto_33
    const/4 v1, 0x0

    :goto_34
    sub-int v3, v0, v1

    sub-int v2, v3, v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_37

    .line 146
    :cond_4d
    iget v1, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->d:I

    add-int/2addr v1, v0

    .line 147
    iget-boolean v0, v7, Lf/a/a/a/l/g;->A:Z

    if-nez v0, :cond_4f

    if-eqz v16, :cond_4e

    goto :goto_35

    :cond_4e
    iget v0, v7, Lf/a/a/a/l/g;->v:I

    goto :goto_36

    :cond_4f
    :goto_35
    const/4 v0, 0x0

    :goto_36
    add-int v2, v0, v1

    add-int v3, v2, v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_37
    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v12, :cond_57

    .line 148
    iget-object v4, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    aget-object v15, v4, v13

    .line 149
    iget-object v4, v7, Lf/a/a/a/l/g;->y:[I

    aget v4, v4, v13

    .line 150
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    if-eqz v10, :cond_52

    if-eqz v8, :cond_50

    .line 151
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v2

    iget v3, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/j;->c:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v4, :cond_51

    .line 152
    iget-object v5, v7, Lf/a/a/a/l/g;->z:[I

    aget v5, v5, v3

    iget v6, v7, Lf/a/a/a/l/g;->v:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 153
    :cond_50
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingLeft()I

    move-result v2

    iget v3, v7, Lf/a/a/a/l/j;->g:I

    add-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/j;->c:I

    add-int/2addr v2, v3

    iget v3, v7, Lf/a/a/a/l/g;->q:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    iget v2, v7, Lf/a/a/a/l/g;->v:I

    mul-int v4, v4, v2

    add-int v2, v4, v3

    .line 154
    :cond_51
    invoke-virtual {v9, v15}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_3b

    :cond_52
    if-eqz v8, :cond_53

    .line 155
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v0

    iget v1, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v0, v1

    iget v1, v7, Lf/a/a/a/l/j;->e:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v4, :cond_54

    .line 156
    iget-object v5, v7, Lf/a/a/a/l/g;->z:[I

    aget v5, v5, v1

    iget v6, v7, Lf/a/a/a/l/g;->u:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 157
    :cond_53
    invoke-interface/range {p5 .. p5}, Lf/a/a/a/c;->getPaddingTop()I

    move-result v0

    iget v1, v7, Lf/a/a/a/l/j;->i:I

    add-int/2addr v0, v1

    iget v1, v7, Lf/a/a/a/l/j;->e:I

    add-int/2addr v0, v1

    iget v1, v7, Lf/a/a/a/l/g;->q:I

    mul-int v1, v1, v4

    add-int/2addr v1, v0

    iget v0, v7, Lf/a/a/a/l/g;->u:I

    mul-int v4, v4, v0

    add-int v0, v4, v1

    .line 158
    :cond_54
    invoke-virtual {v9, v15}, Lf/a/a/a/i;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v18, v0

    move/from16 v17, v1

    :goto_3b
    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v20

    move/from16 v5, v17

    move-object/from16 v6, p5

    .line 159
    invoke-virtual/range {v0 .. v6}, Lf/a/a/a/l/b;->u(Landroid/view/View;IIIILf/a/a/a/c;)V

    .line 160
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, v11, Lf/a/a/a/l/h;->c:Z

    .line 162
    :cond_56
    iget-boolean v0, v11, Lf/a/a/a/l/h;->d:Z

    invoke-virtual {v15}, Landroid/view/View;->isFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v11, Lf/a/a/a/l/h;->d:Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_38

    :cond_57
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, v7, Lf/a/a/a/l/g;->A:Z

    .line 164
    iget-object v1, v7, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v1, v7, Lf/a/a/a/l/g;->y:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 166
    iget-object v1, v7, Lf/a/a/a/l/g;->z:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public x(Lf/a/a/a/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/a/l/g;->t:Lf/a/a/a/l/g$b;

    .line 2
    iget-object p1, p1, Lf/a/a/a/l/g$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lf/a/a/a/l/g;->p:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lf/a/a/a/l/g;->p:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lf/a/a/a/l/g;->x:[Landroid/view/View;

    .line 3
    :cond_1
    iget-object v0, p0, Lf/a/a/a/l/g;->y:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v1, p0, Lf/a/a/a/l/g;->p:I

    if-eq v0, v1, :cond_3

    .line 4
    :cond_2
    iget v0, p0, Lf/a/a/a/l/g;->p:I

    new-array v0, v0, [I

    iput-object v0, p0, Lf/a/a/a/l/g;->y:[I

    .line 5
    :cond_3
    iget-object v0, p0, Lf/a/a/a/l/g;->z:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    iget v1, p0, Lf/a/a/a/l/g;->p:I

    if-eq v0, v1, :cond_5

    .line 6
    :cond_4
    iget v0, p0, Lf/a/a/a/l/g;->p:I

    new-array v0, v0, [I

    iput-object v0, p0, Lf/a/a/a/l/g;->z:[I

    :cond_5
    return-void
.end method
