.class public Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;
.super Lcom/comeback/data/base/BaseRefreshFragment;
.source "HomeType1Fragment.java"


# instance fields
.field public i:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic n(Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static o(Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;)Lcom/comeback/data/base/BaseFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->isHasSelection()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/cucumber/fragment/HomeType2Fragment;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
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

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;->i:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    return-void
.end method

.method public h()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/adapter/VideoListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/cucumber/adapter/VideoListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "RwMEASUc"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RwMEATgaQ1Y="

    invoke-static {p1, v0, v1, v2}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlA="

    const-string v3, "RAcPAQgHUFwdMk0XHQ=="

    .line 3
    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;->i:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getChannelType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Wg0HEQcWcFc="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;->i:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getParentModule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Lf/e/a/j/g/h/a;->w(Ljava/util/HashMap;Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;I)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
