.class public Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseViewPagerFragment;
.source "HomeTypeFragment.java"


# instance fields
.field public g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerFragment;-><init>()V

    return-void
.end method

.method public static k(Lcom/comeback/data/ui/xiami/bean/Category$DataBean;)Lcom/comeback/data/base/BaseFragment;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UwMXBSkWWF0="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;->q(Lcom/comeback/data/ui/xiami/bean/Category$DataBean;)Lcom/comeback/data/ui/xiami/fragment/RecommendFragment;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;-><init>()V

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

    const-string v1, "UwMXBSkWWF0="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c0148

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getInfo()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->setCategoryId(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BQ=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Lcom/comeback/data/ui/xiami/fragment/VideoFragment;->o(Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;)Lcom/comeback/data/ui/xiami/fragment/VideoFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BA=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v2}, Lcom/comeback/data/ui/xiami/fragment/ImageFragment;->o(Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;)Lcom/comeback/data/ui/xiami/fragment/ImageFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Aw=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-static {v2}, Lcom/comeback/data/ui/xiami/fragment/NovelFragment;->o(Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;)Lcom/comeback/data/ui/xiami/fragment/NovelFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->g:Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;

    .line 5
    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->getChildTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
