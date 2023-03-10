.class public Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "ChannelFragment.java"


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static n(Z)Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "VAoCCgUWVQI="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VAoCCgUWVQI="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;->i:Z

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/comeback/data/widget/RecycleGridDivider;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/comeback/data/widget/RecycleGridDivider;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;->i:Z

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;->i:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/i0/a;->k()Lm/e;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/i0/a;->e()Lm/e;

    move-result-object p1

    .line 4
    :goto_0
    new-instance v0, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment$a;-><init>(Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
