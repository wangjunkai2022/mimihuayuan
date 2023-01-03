.class public Lcom/comeback/data/ui/gkj/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseViewPagerFragment;
.source "HomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerFragment;-><init>()V

    return-void
.end method

.method public static j(Lcom/comeback/data/ui/gkj/fragment/HomeFragment;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;

    .line 6
    invoke-virtual {v4}, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;->getNavName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 7
    invoke-virtual {v4}, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;->q(I)Lcom/comeback/data/ui/gkj/fragment/HomeTypeFragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, -0x1

    add-int/2addr p1, v3

    const/16 v4, 0x8

    if-gt p1, v4, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v4, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v0, Lf/e/a/j/m/o/a;

    invoke-direct {v0, p0}, Lf/e/a/j/m/o/a;-><init>(Lcom/comeback/data/ui/gkj/fragment/HomeFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 13
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 14
    iget-object p0, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c010e

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/m/p/e;->b()Lf/e/a/j/m/p/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lf/e/a/j/m/p/c;->f(I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/gkj/fragment/HomeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gkj/fragment/HomeFragment$a;-><init>(Lcom/comeback/data/ui/gkj/fragment/HomeFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
