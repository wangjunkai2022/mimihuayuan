.class public Lcom/comeback/data/ui/nana/adapter/BannerAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lf/a/a/a/a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/e/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/a/a/a/a;",
            "Ljava/util/List<",
            "Lf/e/a/g/a;",
            ">;",
            "Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->a:Lf/a/a/a/a;

    .line 3
    iput-object p4, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;->a:Lcom/comeback/data/ui/nana/viewpager/PageView;

    iget-object p2, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;->c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    .line 5
    iput-object v0, v1, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;->e:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;

    .line 6
    iget-object v0, v1, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    iget-object v0, v1, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    iget-object v1, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->d:Z

    .line 12
    iget-object p2, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    iget-object p1, p1, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01e3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/nana/adapter/BannerAdapter$a;-><init>(Lcom/comeback/data/ui/nana/adapter/BannerAdapter;Landroid/view/View;)V

    return-object p2
.end method
