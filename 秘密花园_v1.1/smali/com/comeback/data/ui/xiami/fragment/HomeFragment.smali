.class public Lcom/comeback/data/ui/xiami/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseViewPagerFragment;
.source "HomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseViewPagerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c013d

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3
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
    sget-object v1, Lcom/comeback/data/ui/xiami/MainActivity;->d:Lcom/comeback/data/ui/xiami/bean/Category;

    invoke-virtual {v1}, Lcom/comeback/data/ui/xiami/bean/Category;->getData()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    .line 4
    invoke-static {v2}, Lcom/comeback/data/ui/xiami/fragment/HomeTypeFragment;->j(Lcom/comeback/data/ui/xiami/bean/Category$DataBean;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/comeback/data/ui/xiami/MainActivity;->d:Lcom/comeback/data/ui/xiami/bean/Category;

    invoke-virtual {v0}, Lcom/comeback/data/ui/xiami/bean/Category;->getData()Ljava/util/List;

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

    check-cast v3, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;

    .line 5
    invoke-virtual {v3}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
