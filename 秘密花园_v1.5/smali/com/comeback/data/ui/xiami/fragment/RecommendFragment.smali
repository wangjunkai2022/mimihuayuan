.class public Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "RecommendFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;Lcom/comeback/data/ui/xiami/bean/HomeBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/HomeBean;->getData()Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean;->getVideo()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean$VideoBean;

    .line 6
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean$VideoBean;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 8
    new-instance v1, Lf/a/a/a/l/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v2, 0xf

    .line 9
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->D(I)V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lf/a/a/a/l/g;->s:Z

    .line 11
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean$VideoBean;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/xiami/adapter/VideoVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static q(Lcom/comeback/data/ui/xiami/bean/Category$DataBean;)Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UwMXBSkWWF0="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;-><init>()V

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

    const-string v1, "UwMXBSkWWF0="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/q0/f/d;->a()Lf/e/a/j/q0/f/b;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/q0/f/b;->e()Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/xiami/fragment/RecommendFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xiami/fragment/RecommendFragment$a;-><init>(Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
