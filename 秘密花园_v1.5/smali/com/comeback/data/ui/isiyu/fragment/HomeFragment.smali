.class public Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "HomeFragment.java"


# instance fields
.field public mViewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static h(Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;Ljava/util/ArrayList;)V
    .locals 7

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/isiyu/bean/HomeType;

    .line 3
    invoke-virtual {v2}, Lcom/comeback/data/ui/isiyu/bean/HomeType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comeback/data/ui/isiyu/fragment/HomeTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/isiyu/fragment/HomeTypeFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v2, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/comeback/data/ui/isiyu/bean/HomeType;

    add-int/lit8 v6, v4, 0x1

    .line 10
    invoke-virtual {v5}, Lcom/comeback/data/ui/isiyu/bean/HomeType;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_1

    .line 11
    :cond_2
    invoke-direct {v2, p0, v3, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 12
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c011b

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/u/e/e;->a()Lf/e/a/j/u/e/b;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/u/e/b;->e()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment$a;-><init>(Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
