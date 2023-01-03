.class public Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "SearchVideoFragment.java"


# instance fields
.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;Lcom/comeback/data/ui/dn/bean/VideoList;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/VideoList;->getData()Lcom/comeback/data/ui/dn/bean/VideoList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/dn/bean/VideoList$DataBean;->getInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
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

.method public e()V
    .locals 0

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public l(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k()Lf/j/a/a/f/i;

    .line 3
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lf/e/a/j/h/c/b;->a()Lf/e/a/j/h/c/a;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RAcREgIQXA=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fw0OAUUFUFcWCWcCGRgAAw=="

    const-string v4, "WwMNAx4SXlY="

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TQpOBwU="

    const-string v4, "QgsH"

    .line 8
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlM="

    const-string v4, "Rw=="

    .line 9
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XAca"

    .line 10
    invoke-static {p1, v1, v2, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v2, p0, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;->i:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v1}, Lf/e/a/j/h/c/a;->e(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment$a;-><init>(Lcom/comeback/data/ui/dn/fragment/SearchVideoFragment;)V

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
