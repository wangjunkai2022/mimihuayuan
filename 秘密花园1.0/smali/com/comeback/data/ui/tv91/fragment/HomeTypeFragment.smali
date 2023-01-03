.class public Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "HomeTypeFragment.java"


# instance fields
.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static m(Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;Lcom/comeback/data/ui/tv91/bean/VideoList;)V
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

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList;->getMessage()Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean;->getMovies()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public static n(I)Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;-><init>()V

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

    const-string v1, "XgY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;->i:I

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

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
    new-instance v0, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/n0/i/b;->a()Lf/e/a/j/n0/i/a;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;->i:I

    invoke-static {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->buildChannelListParams(II)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lf/e/a/j/n0/i/a;->b(Ljava/util/Map;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment$a;-><init>(Lcom/comeback/data/ui/tv91/fragment/HomeTypeFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
