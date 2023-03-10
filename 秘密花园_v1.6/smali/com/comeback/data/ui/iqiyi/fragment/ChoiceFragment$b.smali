.class public Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$b;
.super Lm/j;
.source "ChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/iqiyi/bean/Special;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$b;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$b;->e:Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/comeback/data/ui/iqiyi/bean/Special;

    .line 6
    invoke-virtual {v4}, Lcom/comeback/data/ui/iqiyi/bean/Special;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 8
    iget-object v2, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 11
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/comeback/data/ui/iqiyi/bean/Special;

    invoke-virtual {v7}, Lcom/comeback/data/ui/iqiyi/bean/Special;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {v3, v4, v5, v1}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object p1, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
