.class public Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "HotRankFragment.java"


# instance fields
.field public g:Ljava/lang/String;

.field public radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewpager:Lcom/comeback/data/widget/CustomViewPager;
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


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QxsTAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c0105

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->g:Ljava/lang/String;

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->g:Ljava/lang/String;

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->g:Ljava/lang/String;

    const-string v2, "BA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/comeback/data/ui/cucumber/fragment/VideoRankItemFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v4, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "0fXGgs3v"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, "0vPLgs3v"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "0f7rgs3v"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    invoke-direct {v4, v5, v6, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/g/g/b;

    invoke-direct {v1, p0}, Lf/e/a/j/g/g/b;-><init>(Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 1

    const p1, 0x7f0901cf

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const p1, 0x7f0901d5

    if-eq p2, p1, :cond_1

    const p1, 0x7f0901dd

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HotRankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
