.class public final Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;
.super Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.source "InnerRecycledViewPool.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public b:Landroid/util/SparseIntArray;

.field public c:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 3
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    .line 4
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->c:Landroid/util/SparseIntArray;

    .line 5
    iput-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 5
    :cond_0
    :goto_0
    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_1
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-object v0
.end method

.method public putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->setMaxRecycledViews(II)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-le v2, v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8
    iget-object p1, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_1
    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->a:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public size()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/alibaba/android/vlayout/extend/InnerRecycledViewPool;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
