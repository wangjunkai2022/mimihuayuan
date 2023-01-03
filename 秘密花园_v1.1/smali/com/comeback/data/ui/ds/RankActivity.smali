.class public Lcom/comeback/data/ui/ds/RankActivity;
.super Lcom/comeback/data/base/BaseViewPagerActivity;
.source "RankActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method public static n(Lcom/comeback/data/ui/ds/RankActivity;Lcom/comeback/data/ui/ds/bean/RankBean;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RankBean;->getResult()Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;->getMost_clicks()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->h(Ljava/util/List;)Lcom/comeback/data/ui/ds/fragment/ComicListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RankBean;->getResult()Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;->getMost_consumes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->h(Ljava/util/List;)Lcom/comeback/data/ui/ds/fragment/ComicListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RankBean;->getResult()Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;->getMost_favorites()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->h(Ljava/util/List;)Lcom/comeback/data/ui/ds/fragment/ComicListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RankBean;->getResult()Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/RankBean$ResultBean;->getMost_search()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->h(Ljava/util/List;)Lcom/comeback/data/ui/ds/fragment/ComicListFragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 9
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/RankActivity;->m()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/base/BaseViewPagerActivity;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/ds/RankActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0046

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/i/j/b;->a()Lf/e/a/j/i/j/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/i/j/a;->e()Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/ds/RankActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/ds/RankActivity$a;-><init>(Lcom/comeback/data/ui/ds/RankActivity;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public l()Ljava/util/ArrayList;
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

.method public m()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "09jZgtvn35Xv"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0Pfmjf/z35Xv"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "0fbVjPz835Xv"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "0fL/g9/R35Xv"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method
