.class public Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ShortRecommendFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->onPause(Z)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 4
    new-instance v0, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$b;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$c;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$c;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/cucumber/adapter/ShortVideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/g/h/a;->q()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/ShortRecommendFragment;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->onDestroy()V

    return-void
.end method
