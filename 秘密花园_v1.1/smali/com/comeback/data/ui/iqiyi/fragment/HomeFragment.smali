.class public Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "HomeFragment.java"


# instance fields
.field public i:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 8
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0115

    return v0
.end method

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
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    new-instance v0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$b;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$b;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$c;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$c;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;->i:Lcom/comeback/data/ui/iqiyi/adapter/ShortVideoAdapter;

    return-object v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/s/e/d;->a()Lf/e/a/j/s/e/a;

    move-result-object v0

    invoke-static {p1}, Lf/e/a/j/s/e/b;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lf/e/a/j/s/e/a;->f(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment$a;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/HomeFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

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
