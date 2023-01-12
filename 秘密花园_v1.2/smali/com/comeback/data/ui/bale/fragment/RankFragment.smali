.class public Lcom/comeback/data/ui/bale/fragment/RankFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "RankFragment.java"


# instance fields
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
.method public b()I
    .locals 1

    const v0, 0x7f0c00f9

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

    const-string v1, "QQsGExg="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/bale/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TQMNFw=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/bale/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Uw0UCgccWFcA"

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/bale/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VA0OCQ4dTUA="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/bale/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "0fDOgv/N36bD"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0ODajN7t36bD"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "09rojNbO36bD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const-string v2, "383njMXJ36bD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/ui/bale/fragment/RankFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/bale/fragment/RankFragment$a;-><init>(Lcom/comeback/data/ui/bale/fragment/RankFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/d/d/a;

    invoke-direct {v1, p0}, Lf/e/a/j/d/d/a;-><init>(Lcom/comeback/data/ui/bale/fragment/RankFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 1

    const/4 p1, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    iget-object p2, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :sswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :sswitch_2
    iget-object p2, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 4
    :sswitch_3
    iget-object p2, p0, Lcom/comeback/data/ui/bale/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901ce -> :sswitch_3
        0x7f0901d0 -> :sswitch_2
        0x7f0901d8 -> :sswitch_1
        0x7f0901d9 -> :sswitch_0
    .end sparse-switch
.end method
