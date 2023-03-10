.class public Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "DelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/DelegateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDataObserver"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/alibaba/android/vlayout/DelegateAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/DelegateAdapter;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    .line 3
    iput p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    .line 4
    iput p3, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->f(I)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 4
    iget-object v1, v1, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 6
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 7
    iget-object v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 8
    iget-object v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    check-cast v3, Lf/a/a/a/k;

    .line 9
    iget-object v3, v3, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/a/a/a;

    .line 12
    move-object v4, v3

    check-cast v4, Lf/a/a/a/l/b;

    .line 13
    iget v4, v4, Lf/a/a/a/l/b;->n:I

    .line 14
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    .line 15
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lf/a/a/a/a;->j(I)V

    .line 16
    iget-object v3, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v4, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, v4

    .line 17
    iput v1, v3, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    add-int/2addr v0, v6

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 19
    iget-object v1, v1, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 22
    iget-object v1, v1, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 24
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget-object v4, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 25
    iget v5, v4, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    .line 26
    iput v5, v3, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    .line 27
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, v5

    .line 28
    iput v1, v4, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    .line 30
    iget-object v0, v0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n(Ljava/util/List;)V

    :cond_3
    return v6
.end method

.method public onChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    add-int/2addr p1, v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->c:Lcom/alibaba/android/vlayout/DelegateAdapter;

    iget v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
