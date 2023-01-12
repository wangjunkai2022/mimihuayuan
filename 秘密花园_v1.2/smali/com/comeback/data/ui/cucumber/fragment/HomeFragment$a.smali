.class public Lcom/comeback/data/ui/cucumber/fragment/HomeFragment$a;
.super Lm/j;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment$a;->e:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment$a;->e:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->g:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Lcom/comeback/data/ui/cucumber/fragment/ChoiceFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/cucumber/fragment/ChoiceFragment;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    .line 8
    invoke-static {v3}, Lcom/comeback/data/ui/cucumber/fragment/HomeType1Fragment;->o(Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;)Lcom/comeback/data/base/BaseFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x8

    if-gt v1, v3, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 12
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "0NDdjev6"

    .line 14
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_2

    add-int/lit8 v5, v6, 0x1

    .line 16
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;->getData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;

    invoke-virtual {v6}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move v6, v5

    goto :goto_1

    .line 17
    :cond_2
    invoke-direct {v3, v0, v4, v2}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method
