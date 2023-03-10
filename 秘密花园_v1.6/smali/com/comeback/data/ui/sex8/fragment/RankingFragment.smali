.class public Lcom/comeback/data/ui/sex8/fragment/RankingFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "RankingFragment.java"


# instance fields
.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public rgTab:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;-><init>(Lcom/comeback/data/ui/sex8/fragment/RankingFragment;)V

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c013a

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    const-string v1, "RQcACwYeWF0X"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/sex8/fragment/RankListFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/sex8/fragment/RankListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    const-string v1, "Xw0X"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/sex8/fragment/RankListFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/sex8/fragment/RankListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    const-string v1, "WQcU"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/sex8/fragment/RankListFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/sex8/fragment/RankListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/sex8/fragment/RankHostFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->D(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->rgTab:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
