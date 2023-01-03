.class public abstract Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "RecyclingPagerAdapter.java"


# instance fields
.field public final a:Lf/e/a/j/g0/n/a;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lf/e/a/j/g0/n/a;

    invoke-direct {v0}, Lf/e/a/j/g0/n/a;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a:Lf/e/a/j/g0/n/a;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 4
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v1, v0, Lf/e/a/j/g0/n/a;->c:I

    .line 6
    aget-object v1, v2, v3

    iput-object v1, v0, Lf/e/a/j/g0/n/a;->b:Landroid/util/SparseArray;

    .line 7
    iput-object v2, v0, Lf/e/a/j/g0/n/a;->d:[Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a:Lf/e/a/j/g0/n/a;

    .line 5
    iget v1, v0, Lf/e/a/j/g0/n/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iget-object p1, v0, Lf/e/a/j/g0/n/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lf/e/a/j/g0/n/a;->d:[Landroid/util/SparseArray;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a:Lf/e/a/j/g0/n/a;

    .line 3
    iget v3, v2, Lf/e/a/j/g0/n/a;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v0, v2, Lf/e/a/j/g0/n/a;->b:Landroid/util/SparseArray;

    invoke-static {v0, p2}, Lf/e/a/j/g0/n/a;->a(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v2, v2, Lf/e/a/j/g0/n/a;->d:[Landroid/util/SparseArray;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    aget-object v0, v2, v0

    invoke-static {v0, p2}, Lf/e/a/j/g0/n/a;->a(Landroid/util/SparseArray;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    .line 7
    :goto_1
    move-object v2, p0

    check-cast v2, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, v2, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->d:Landroid/view/LayoutInflater;

    const v3, 0x7f0c01ff

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 10
    new-instance v3, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    invoke-direct {v3, v0, v2}, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;-><init>(Landroid/view/View;Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    :goto_2
    iget-boolean v4, v2, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b()I

    move-result v4

    rem-int/2addr p2, v4

    .line 13
    :cond_4
    iget-boolean v4, v2, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b()I

    move-result v4

    rem-int/2addr p2, v4

    :cond_5
    if-ltz p2, :cond_7

    .line 14
    iget-object v4, v2, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v1, v2, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :cond_7
    :goto_3
    check-cast v1, Lf/e/a/g/a;

    .line 17
    iput-object v1, v3, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->b:Lf/e/a/g/a;

    .line 18
    invoke-interface {v1}, Lf/e/a/g/a;->getCover()Ljava/lang/String;

    move-result-object p2

    iget-object v1, v3, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->mIvImg:Landroid/widget/ImageView;

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 21
    invoke-static {v2}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v2

    new-instance v3, Lf/e/a/j/g0/m/f/a;

    invoke-direct {v3, p2}, Lf/e/a/j/g0/m/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p2

    const v2, 0x7f0800a3

    .line 22
    invoke-virtual {p2, v2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p2

    check-cast p2, Lf/d/a/i;

    .line 23
    sget-object v2, Lf/d/a/o/n/k;->a:Lf/d/a/o/n/k;

    .line 24
    invoke-virtual {p2, v2}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object p2

    check-cast p2, Lf/d/a/i;

    const/high16 v2, -0x80000000

    .line 25
    invoke-virtual {p2, v2, v2}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p2

    check-cast p2, Lf/d/a/i;

    sget-object v2, Lf/d/a/o/b;->b:Lf/d/a/o/b;

    .line 26
    invoke-virtual {p2, v2}, Lf/d/a/s/a;->i(Lf/d/a/o/b;)Lf/d/a/s/a;

    move-result-object p2

    check-cast p2, Lf/d/a/i;

    .line 27
    invoke-virtual {p2, v1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    .line 28
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->a:Lf/e/a/j/g0/n/a;

    .line 2
    iget-object v1, v0, Lf/e/a/j/g0/n/a;->a:[Landroid/view/View;

    .line 3
    iget-object v2, v0, Lf/e/a/j/g0/n/a;->e:[I

    .line 4
    iget v3, v0, Lf/e/a/j/g0/n/a;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 5
    :goto_0
    iget-object v6, v0, Lf/e/a/j/g0/n/a;->b:Landroid/util/SparseArray;

    .line 6
    array-length v7, v1

    sub-int/2addr v7, v5

    :goto_1
    const/4 v8, -0x1

    if-ltz v7, :cond_4

    .line 7
    aget-object v9, v1, v7

    if-eqz v9, :cond_3

    .line 8
    aget v10, v2, v7

    const/4 v11, 0x0

    .line 9
    aput-object v11, v1, v7

    .line 10
    aput v8, v2, v7

    if-ltz v10, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v3, :cond_2

    .line 11
    iget-object v6, v0, Lf/e/a/j/g0/n/a;->d:[Landroid/util/SparseArray;

    aget-object v6, v6, v10

    .line 12
    :cond_2
    invoke-virtual {v6, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v9, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object v1, v0, Lf/e/a/j/g0/n/a;->a:[Landroid/view/View;

    array-length v1, v1

    .line 15
    iget v2, v0, Lf/e/a/j/g0/n/a;->c:I

    .line 16
    iget-object v0, v0, Lf/e/a/j/g0/n/a;->d:[Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    .line 17
    aget-object v5, v0, v3

    .line 18
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int v7, v6, v1

    add-int/2addr v6, v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_5

    add-int/lit8 v10, v6, -0x1

    .line 19
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 20
    :cond_6
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
