.class public Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "HomeTypeFragment.java"


# instance fields
.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic q(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static t(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UBAMERs="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;-><init>()V

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

    const-string v1, "QxsTASIX"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->j:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UBAMERs="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Lf/e/a/j/b/g/a;->g(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 3
    new-instance v0, Lf/e/a/j/b/f/e;

    invoke-direct {v0, p0}, Lf/e/a/j/b/f/e;-><init>(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->r(I)V

    :goto_0
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RwMRAQUHZlQBCUEXJwMH"

    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "WQcGACccWFcwDl0LHBgGBQ=="

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bg=="

    const-string v2, "WwsODR8="

    invoke-static {v1, v0, p1, v2}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BlA="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lf/e/a/j/b/g/d;->a()Lf/e/a/j/b/g/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lf/e/a/j/b/g/a;->f(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment$a;-><init>(Lcom/comeback/data/ui/avbobo/fragment/HomeTypeFragment;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic s(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;->getLoadDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->q(Landroid/content/Context;Lcom/comeback/data/ui/avbobo/bean/MovieDetail;)V

    return-void
.end method
