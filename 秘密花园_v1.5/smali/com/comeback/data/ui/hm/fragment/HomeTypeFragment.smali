.class public Lcom/comeback/data/ui/hm/fragment/HomeTypeFragment;
.super Lcom/comeback/data/base/BaseViewPagerFragment;
.source "HomeTypeFragment.java"


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

    const v0, 0x7f0c0115

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseViewPagerFragment;->f()V

    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 4
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
    sget-object v1, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "0ufVgNDl"

    const-string v3, ""

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "3v3wgtfY"

    .line 4
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "0ufLgdba"

    .line 5
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "0vLvgNHJ"

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "0vTNgvff"

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "0f7qgcjD3IP8jpvT"

    .line 10
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "0OzngdLI"

    .line 11
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "3uHegdPx"

    .line 12
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->q(ZLjava/lang/String;)Lcom/comeback/data/ui/hm/fragment/ListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0ufVgNDl"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "0ufLjejb"

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const-string v6, "3v3wgtfY"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "0ufLgdba"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "0vLvgNHJ"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "0vTNgvff"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    return-object v0

    :cond_0
    new-array v0, v8, [Ljava/lang/String;

    .line 3
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const-string v6, "0f7qgcjD3IP8jpvT"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "0OzngdLI"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "3uHegdPx"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method
