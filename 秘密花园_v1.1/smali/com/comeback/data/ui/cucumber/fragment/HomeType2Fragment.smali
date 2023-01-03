.class public Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HomeType2Fragment.java"


# instance fields
.field public j:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    .line 6
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 8
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->d(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;)Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UwMXBQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;->j:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;->j:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getParentModule()I

    move-result v0

    invoke-interface {p1, v0}, Lf/e/a/j/g/h/a;->k(I)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
