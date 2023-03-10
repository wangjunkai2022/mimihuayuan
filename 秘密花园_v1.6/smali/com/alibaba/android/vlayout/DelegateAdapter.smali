.class public Lcom/alibaba/android/vlayout/DelegateAdapter;
.super Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;
.source "DelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;,
        Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/VirtualLayoutAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public final d:Z

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:I

.field public final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:[J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;-><init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->c:I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->e:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    .line 5
    iput p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->h:Landroid/util/SparseArray;

    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 7
    iput-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->i:[J

    .line 8
    iput-boolean p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->d:Z

    return-void
.end method


# virtual methods
.method public a(ILcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V
    .locals 0
    .param p2    # Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->c(ILjava/util/List;)V

    return-void
.end method

.method public b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->c(ILjava/util/List;)V

    return-void
.end method

.method public c(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 8
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->h(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    .line 2
    iput v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->c:I

    .line 3
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 7
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public e(I)Landroid/util/Pair;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    if-gt v2, v0, :cond_4

    add-int v3, v2, v0

    .line 2
    div-int/lit8 v3, v3, 0x2

    .line 3
    iget-object v4, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v5, v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    .line 5
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v7, v7, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    if-le v7, p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_2
    if-ge v6, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 6
    :cond_3
    check-cast v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v3, v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    if-gt v3, p1, :cond_1

    if-lt v6, p1, :cond_1

    move-object v1, v4

    :cond_4
    return-object v1
.end method

.method public f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    .line 6
    iget-object v3, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    .line 7
    iget-object v3, v3, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->g:Lf/a/a/a/b;

    check-cast v3, Lf/a/a/a/k;

    .line 8
    iget-object v3, v3, Lf/a/a/a/k;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_5

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 12
    iget-object v5, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 13
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 15
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 16
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 17
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 18
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v4, v4, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->f(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 19
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 21
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->h(Ljava/util/List;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    return v0
.end method

.method public getItemId(I)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v4, v4, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    sub-int/2addr p1, v4

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget p1, p1, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    int-to-long v0, p1

    add-long/2addr v0, v3

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    mul-long v5, v5, v0

    const-wide/16 v0, 0x2

    .line 4
    div-long/2addr v5, v0

    add-long/2addr v5, v3

    return-wide v5
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v2, v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_1

    return p1

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->d:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->e:Landroid/util/SparseArray;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return p1

    .line 5
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v0, v0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    int-to-long v1, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    mul-long v5, v5, v1

    const-wide/16 v0, 0x2

    .line 6
    div-long/2addr v5, v0

    add-long/2addr v5, v3

    long-to-int p1, v5

    return p1
.end method

.method public h(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->d()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    .line 5
    new-instance v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v6, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    iget-object v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v7, :cond_0

    iget v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->c:I

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    :goto_1
    invoke-direct {v5, p0, v6, v7}, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;-><init>(Lcom/alibaba/android/vlayout/DelegateAdapter;II)V

    .line 6
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->c()Lf/a/a/a/a;

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lf/a/a/a/a;->j(I)V

    .line 10
    iget v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    move-object v8, v6

    check-cast v8, Lf/a/a/a/l/b;

    .line 11
    iget v8, v8, Lf/a/a/a/l/b;->n:I

    add-int/2addr v7, v8

    .line 12
    iput v7, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->g:I

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 15
    iget-object v6, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->h:Landroid/util/SparseArray;

    iget v5, v5, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->b:I

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v5, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    invoke-super {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->a:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->n(Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v2, v2, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 4
    iget-object p3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;

    iget v0, v0, Lcom/alibaba/android/vlayout/DelegateAdapter$AdapterDataObserver;->a:I

    sub-int v0, p2, v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    int-to-long v2, p2

    .line 4
    iget-object p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->i:[J

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 5
    array-length v4, p2

    if-ge v4, v0, :cond_3

    :cond_2
    new-array p2, v0, [J

    :cond_3
    const-wide/16 v4, 0x8

    mul-long v4, v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-double v4, v4

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    mul-int v5, v4, v4

    add-int/2addr v5, v4

    .line 7
    div-int/2addr v5, v0

    int-to-long v5, v5

    sub-long/2addr v2, v5

    long-to-int v0, v2

    sub-int/2addr v4, v0

    int-to-long v2, v4

    const/4 v4, 0x0

    .line 8
    aput-wide v2, p2, v4

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 9
    aput-wide v2, p2, v0

    .line 10
    iget-object p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->i:[J

    aget-wide v2, p2, v0

    long-to-int v0, v2

    .line 11
    aget-wide v2, p2, v4

    long-to-int p2, v2

    .line 12
    iget-object v2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    if-nez v0, :cond_4

    return-object v1

    .line 14
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->e(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 0

    return-void
.end method
