.class public Lcom/alibaba/android/vlayout/VirtualLayoutManager;
.super Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;
.source "VirtualLayoutManager.java"

# interfaces
.implements Lf/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$g;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;,
        Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field public static u:Lf/a/a/a/a;


# instance fields
.field public a:Lf/a/a/a/i;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lf/a/a/a/b;

.field public h:Lf/a/a/a/l/e;

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lf/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lf/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

.field public l:I

.field public m:Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lf/a/a/a/j<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:Lf/a/a/a/a;

.field public p:Lf/a/a/a/e;

.field public q:Landroid/graphics/Rect;

.field public r:Z

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/a/l/d;

    invoke-direct {v0}, Lf/a/a/a/l/d;-><init>()V

    sput-object v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->u:Lf/a/a/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;-><init>(Landroid/content/Context;IZ)V

    .line 2
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    .line 3
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d:Z

    .line 4
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e:Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->f:I

    .line 6
    sget-object p1, Lf/a/a/a/l/e;->e:Lf/a/a/a/l/e;

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->h:Lf/a/a/a/l/e;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    .line 9
    new-instance p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    invoke-direct {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    .line 10
    iput v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    .line 11
    new-instance p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

    invoke-direct {p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m:Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

    .line 12
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    .line 13
    sget-object p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->u:Lf/a/a/a/a;

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->o:Lf/a/a/a/a;

    .line 14
    new-instance p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$c;

    invoke-direct {p1, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$c;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->p:Lf/a/a/a/e;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    .line 16
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 17
    iput v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    .line 18
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    .line 19
    invoke-static {p0, v0}, Lf/a/a/a/i;->a(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lf/a/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 20
    invoke-static {p0, v1}, Lf/a/a/a/i;->a(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lf/a/a/a/i;

    .line 21
    new-instance p1, Lf/a/a/a/k;

    invoke-direct {p1}, Lf/a/a/a/k;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/a/a/a;

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {p1, v0}, Lf/a/a/a/b;->c(Ljava/util/List;)V

    .line 29
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public b(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;I)V

    return-void
.end method

.method public c(Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    .line 2
    iget-object p1, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget-object p1, p1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->l:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    return p1
.end method

.method public computeAlignOffset(IZZ)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v0, p1}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 4
    iget-object v1, v1, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3, p0}, Lf/a/a/a/a;->d(IZZLf/a/a/a/c;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeAlignOffset(Landroid/view/View;ZZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(IZZ)I

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->showView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->addHiddenView(Landroid/view/View;Z)V

    return-void
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->h(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;

    invoke-interface {v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 5
    invoke-static {v1, v2, v3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$d;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->h(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;

    invoke-interface {v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 4
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$d;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public e(I)Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v0, p1}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final f()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->p:Lf/a/a/a/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$c;

    if-eqz v2, :cond_1

    .line 3
    new-instance v1, Lf/a/a/a/d;

    invoke-direct {v1, v0}, Lf/a/a/a/d;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(II)V

    .line 5
    new-instance v2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$g;

    invoke-direct {v2, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$g;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->attachViewHolder(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 7
    :cond_1
    throw v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(IIZ)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p1

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 8
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$InflateLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 5
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->hideView(Landroid/view/View;)V

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public isEnableMarginOverLap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->e:Z

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;IIII)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v4, p2, v1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v5, p3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v6, p4, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v7, p5, p2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findFirstVisibleItemPosition()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findLastVisibleItemPosition()I

    move-result v8

    .line 5
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v8

    move v6, p3

    move-object v7, p0

    .line 6
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lf/a/a/a/a;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIILf/a/a/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;Lf/a/a/a/l/h;)V
    .locals 9

    .line 1
    iget v0, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    .line 2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m:Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

    .line 3
    iput-object p3, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    .line 4
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->o:Lf/a/a/a/a;

    .line 6
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m:Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

    move-object v3, v1

    check-cast v3, Lf/a/a/a/l/b;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p0

    .line 7
    invoke-virtual/range {v3 .. v8}, Lf/a/a/a/l/b;->v(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;Lf/a/a/a/l/h;Lf/a/a/a/c;)V

    .line 8
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m:Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;

    .line 9
    iput-object v2, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$f;->a:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    .line 10
    iget p1, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->f:I

    if-ne p1, v0, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p4, Lf/a/a/a/l/h;->b:Z

    goto/16 :goto_6

    .line 13
    :cond_2
    iget p2, p3, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->g:I

    sub-int/2addr p1, p2

    .line 14
    iget-boolean p2, p4, Lf/a/a/a/l/h;->c:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    iget p2, p4, Lf/a/a/a/l/h;->a:I

    .line 15
    :goto_1
    new-instance p4, Lf/a/a/a/j;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p4, v1, p1}, Lf/a/a/a/j;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 16
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p1, v0

    const/4 v1, -0x1

    :cond_5
    :goto_2
    if-gt p3, p1, :cond_a

    add-int v1, p3, p1

    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 18
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 19
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lf/a/a/a/j;

    if-nez v4, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    iget-object v5, p4, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 21
    invoke-virtual {v4, v5}, Lf/a/a/a/j;->b(Ljava/lang/Comparable;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 22
    iget-object v5, p4, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 23
    invoke-virtual {v4, v5}, Lf/a/a/a/j;->b(Ljava/lang/Comparable;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p4, v4}, Lf/a/a/a/j;->a(Lf/a/a/a/j;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    iget-object v3, v4, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 25
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 26
    iget-object v5, p4, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 27
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v3, v5, :cond_8

    add-int/lit8 p1, v1, -0x1

    goto :goto_2

    .line 28
    :cond_8
    iget-object v3, v4, Lf/a/a/a/j;->b:Ljava/lang/Comparable;

    .line 29
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 30
    iget-object v4, p4, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 31
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_5

    add-int/lit8 p3, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    move-object v2, v3

    :cond_a
    :goto_4
    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    if-ltz v0, :cond_d

    .line 32
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_c

    .line 33
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lf/a/a/a/j;

    invoke-virtual {p3, p4}, Lf/a/a/a/j;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_c

    return-void

    .line 34
    :cond_c
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    :cond_d
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n:Ljava/util/List;

    new-instance p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$b;

    invoke-direct {p2, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$b;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_6
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    check-cast v0, Lf/a/a/a/k;

    .line 3
    iget-object v0, v0, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    .line 6
    invoke-virtual {v1, p1, p2, p0}, Lf/a/a/a/a;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lf/a/a/a/c;)V

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l:I

    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p2, v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p2, v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, v1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 7
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public moveView(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    .line 2
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/a/a/a;

    .line 5
    instance-of v4, v3, Lf/a/a/a/l/f;

    if-eqz v4, :cond_1

    .line 6
    move-object v4, v3

    check-cast v4, Lf/a/a/a/l/f;

    iget-object v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->h:Lf/a/a/a/l/e;

    .line 7
    iput-object v5, v4, Lf/a/a/a/l/f;->p:Lf/a/a/a/l/e;

    .line 8
    :cond_1
    instance-of v4, v3, Lf/a/a/a/l/b;

    .line 9
    move-object v4, v3

    check-cast v4, Lf/a/a/a/l/b;

    .line 10
    iget v5, v4, Lf/a/a/a/l/b;->n:I

    const/4 v6, -0x1

    if-lez v5, :cond_2

    add-int/2addr v5, v2

    add-int/2addr v5, v6

    .line 11
    invoke-virtual {v3, v2, v5}, Lf/a/a/a/a;->k(II)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v3, v6, v6}, Lf/a/a/a/a;->k(II)V

    .line 13
    :goto_2
    iget v3, v4, Lf/a/a/a/l/b;->n:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v1, p1}, Lf/a/a/a/b;->c(Ljava/util/List;)V

    .line 15
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    .line 16
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 20
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/a;

    .line 24
    check-cast v1, Lf/a/a/a/l/b;

    .line 25
    iget-object v2, v1, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 27
    iput-object v2, v1, Lf/a/a/a/l/b;->l:Landroid/view/View;

    .line 28
    :cond_7
    invoke-virtual {v1, p0}, Lf/a/a/a/l/b;->x(Lf/a/a/a/c;)V

    goto :goto_5

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 30
    :cond_9
    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 32
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_1
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_1
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    iput v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    .line 3
    iget v3, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    iput v3, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->b:I

    .line 4
    iget-boolean v3, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->c:Z

    iput-boolean v3, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->c:Z

    .line 5
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v1, v2}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    invoke-virtual {v1, p1, v2, p0}, Lf/a/a/a/a;->c(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;Lf/a/a/a/c;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    iget v1, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    iget v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_1
    iput v1, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    iget v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->b:I

    iput v2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    const/4 v2, -0x1

    .line 10
    iput v2, v1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->k:Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;

    iget v0, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->a:I

    iput v0, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->a:I

    .line 12
    iget p2, p2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$a;->b:I

    iput p2, p1, Lcom/alibaba/android/vlayout/VirtualLayoutManager$d;->b:I

    .line 13
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/a/a/a/a;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_4
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/a/a/a/a;

    .line 3
    check-cast p2, Lf/a/a/a/l/b;

    .line 4
    iget-object v1, p2, Lf/a/a/a/l/b;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 6
    iput-object v0, p2, Lf/a/a/a/l/b;->l:Landroid/view/View;

    .line 7
    :cond_0
    invoke-virtual {p2, p0}, Lf/a/a/a/l/b;->x(Lf/a/a/a/c;)V

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/a/a;

    .line 2
    invoke-virtual {v0, p0}, Lf/a/a/a/a;->h(Lf/a/a/a/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    const-string v0, "VLM onLayoutChildren"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 4
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const v0, 0x7fffffff

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 8
    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    if-eqz p1, :cond_4

    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    if-eqz p1, :cond_4

    .line 9
    iput-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    .line 14
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d:Z

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 16
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_3

    .line 17
    iget p2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    goto :goto_0

    .line 18
    :cond_2
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    .line 19
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    .line 20
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/alibaba/android/vlayout/VirtualLayoutManager$a;

    invoke-direct {p2, p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$a;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 23
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    throw v1
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7ffffff

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->d:Z

    if-eqz v2, :cond_2

    .line 4
    iget v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->f:I

    if-lez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 7
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    const v2, 0x7ffffff

    .line 8
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    .line 10
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    if-eq v0, v5, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 13
    iput-boolean v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 14
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    const/4 v2, 0x0

    goto :goto_4

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 16
    iget v5, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v6

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v0, v4, v3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->computeAlignOffset(Landroid/view/View;ZZ)I

    move-result v5

    add-int/2addr v5, v6

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v7

    if-ne v6, v7, :cond_8

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->s:I

    if-eq v5, v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    .line 20
    :cond_8
    :goto_2
    iput-boolean v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->r:Z

    .line 21
    iput-boolean v4, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->t:Z

    :goto_3
    move v2, v1

    .line 22
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getOrientation()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v4, :cond_a

    .line 23
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    goto :goto_5

    .line 24
    :cond_a
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    :goto_5
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findFirstVisibleItemPosition()I

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->findLastVisibleItemPosition()I

    .line 4
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    return-void
.end method

.method public recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 10

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-le p3, p2, :cond_4

    add-int/lit8 v1, p3, -0x1

    .line 1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    move v9, p2

    :goto_0
    if-ge p2, p3, :cond_8

    .line 5
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 7
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v3, v4}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    move v5, v2

    move v6, v1

    move-object v7, p0

    .line 8
    invoke-virtual/range {v3 .. v8}, Lf/a/a/a/a;->g(IIILf/a/a/a/c;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    .line 12
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 13
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 14
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_3
    if-le p2, p3, :cond_8

    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 16
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_6

    .line 17
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    invoke-virtual {v3, v4}, Lf/a/a/a/b;->b(I)Lf/a/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v8, 0x0

    move v5, v2

    move v6, v1

    move-object v7, p0

    .line 18
    invoke-virtual/range {v3 .. v8}, Lf/a/a/a/a;->g(IIILf/a/a/a/c;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    :cond_5
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_7
    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public scrollInternalBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    const-string v0, "VLM scroll"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->c:Z

    if-nez v1, :cond_1

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollInternalBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    :cond_0
    :goto_0
    move v0, p1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->c:Z

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->ensureLayoutStateExpose()V

    if-lez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 8
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 9
    invoke-virtual {p0, v1, v3, v2, p3}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->updateLayoutStateExpose(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 10
    iget-object v2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    iget v2, v2, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;->i:I

    .line 11
    iget-object v4, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;

    invoke-virtual {p0, p2, v4, p3, v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$c;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v4

    if-gez v2, :cond_4

    .line 12
    invoke-virtual {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return v0

    :cond_4
    if-le v3, v2, :cond_0

    mul-int p1, v1, v2

    goto :goto_0

    :goto_2
    invoke-virtual {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 14
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    .line 15
    :goto_5
    invoke-virtual {p0, p2, p3, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    throw p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lf/a/a/a/i;->a(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;I)Lf/a/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->a:Lf/a/a/a/i;

    .line 2
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->setOrientation(I)V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "VirtualLayoutManager does not support reverse layout in current version."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "VirtualLayoutManager does not support stack from end."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->showView(Landroid/view/View;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->mCurrentPendingSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateSpecWithExtra(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 2
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    if-gez v1, :cond_3

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 4
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    .line 5
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method
