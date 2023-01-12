.class public Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "AnchorFragment.java"


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

.field public h:Landroidx/viewpager/widget/ViewPager;

.field public mFlContent:Landroid/widget/FrameLayout;
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

.method public static h(Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;Lcom/comeback/data/ui/maomi/bean/AnchorList;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/AnchorList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;->h(Lcom/comeback/data/ui/maomi/bean/AnchorList$DataBean;)Lcom/comeback/data/ui/maomi/fragment/AnchorCardFragment;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c0252

    iget-object v2, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->mFlContent:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090357

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->h:Landroidx/viewpager/widget/ViewPager;

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->h:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v0, v3}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->h:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/comeback/data/widget/BigScaleTransformer;

    invoke-direct {v0}, Lcom/comeback/data/widget/BigScaleTransformer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 8
    iget-object p0, p0, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 9
    :cond_1
    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c012e

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/d0/m/a;->i()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment$a;-><init>(Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
