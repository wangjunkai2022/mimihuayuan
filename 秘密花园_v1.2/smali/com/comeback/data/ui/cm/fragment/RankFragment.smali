.class public Lcom/comeback/data/ui/cm/fragment/RankFragment;
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

    const v0, 0x7f0c00ff

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

    const-string v1, "RwMEAR0aXEQA"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/cm/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "WQcU"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/cm/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TQMN"

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/cm/fragment/RankTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "0fDOgv/N36bD"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0f7jgv3D"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "0ODajN7t36bD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;-><init>(Lcom/comeback/data/ui/cm/fragment/RankFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/e/e/c;

    invoke-direct {v1, p0}, Lf/e/a/j/e/e/c;-><init>(Lcom/comeback/data/ui/cm/fragment/RankFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 1

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :pswitch_2
    iget-object p2, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :pswitch_3
    iget-object p2, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment;->viewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
