.class public abstract Lcom/comeback/data/base/BaseHeaderAdapter;
.super Lcom/comeback/data/base/BaseAbstractAdapter;
.source "BaseHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/comeback/data/base/BaseAbstractAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseHeaderAdapter;->b(Ljava/util/List;I)V

    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3
    iget v0, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    add-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget v1, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/comeback/data/base/BaseViewHolder;I)V
    .locals 1
    .param p1    # Lcom/comeback/data/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    if-ge p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/comeback/data/base/BaseHeaderAdapter;->f(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/comeback/data/base/BaseViewHolder;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/comeback/data/base/BaseHeaderAdapter;->d(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/comeback/data/base/BaseViewHolder;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract g(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/base/BaseHeaderAdapter;->d:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/comeback/data/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/base/BaseHeaderAdapter;->e(Lcom/comeback/data/base/BaseViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/base/BaseHeaderAdapter;->h(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/base/BaseHeaderAdapter;->g(Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder;

    move-result-object p1

    :goto_0
    return-object p1
.end method
