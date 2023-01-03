.class public abstract Lcom/alibaba/android/vlayout/RecyclablePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "RecyclablePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/viewpager/widget/PagerAdapter;"
    }
.end annotation


# virtual methods
.method public abstract a(I)I
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/RecyclablePagerAdapter;->a(I)I

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
