.class public Lcom/comeback/data/ui/jav/fragment/VideoListFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "VideoListFragment.java"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static n(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public static o(Ljava/lang/String;Z)Lcom/comeback/data/ui/jav/fragment/VideoListFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "QhAP"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "XhE1DQ8WVg=="

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    new-instance p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QhAP"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "XhE1DQ8WVg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->j:Z

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->j:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/jav/adapter/VideoAdapter;-><init>(Landroid/content/Context;Z)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/comeback/data/ui/jav/adapter/ActorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/jav/adapter/ActorAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->j:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ERICAw5O"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lf/e/a/j/i0/c;->a()Lf/e/a/j/i0/a;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->h0:Ljava/lang/String;

    sget-object v3, Lf/e/a/k/b;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lf/e/a/j/i0/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->k:Ll/d;

    .line 3
    new-instance v1, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;-><init>(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;I)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->k:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
