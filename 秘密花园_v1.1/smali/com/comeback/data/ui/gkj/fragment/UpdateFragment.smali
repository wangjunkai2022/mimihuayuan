.class public Lcom/comeback/data/ui/gkj/fragment/UpdateFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "UpdateFragment.java"


# instance fields
.field public mViewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
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

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c010f

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 3
    new-instance v5, Lf/e/a/j/m/n/a;

    invoke-direct {v5}, Lf/e/a/j/m/n/a;-><init>()V

    const-wide/16 v7, 0x3e8

    .line 4
    div-long v7, v1, v7

    .line 5
    iput-wide v7, v5, Lf/e/a/j/m/n/a;->a:J

    if-nez v4, :cond_0

    const-string v6, "eQcU"

    .line 6
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iput-object v6, v5, Lf/e/a/j/m/n/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-ne v4, v6, :cond_1

    const-string v6, "0frLgvzW"

    .line 8
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    iput-object v6, v5, Lf/e/a/j/m/n/a;->b:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "cg=="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iput-object v6, v5, Lf/e/a/j/m/n/a;->b:Ljava/lang/String;

    .line 12
    :goto_1
    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/e/a/j/m/n/a;

    .line 17
    iget-object v7, v5, Lf/e/a/j/m/n/a;->b:Ljava/lang/String;

    .line 18
    aput-object v7, v1, v4

    .line 19
    iget-wide v7, v5, Lf/e/a/j/m/n/a;->a:J

    .line 20
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/comeback/data/ui/gkj/fragment/WeekTypeFragment;->o(Ljava/lang/String;)Lcom/comeback/data/ui/gkj/fragment/WeekTypeFragment;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    const/16 v5, 0x8

    if-gt v4, v5, :cond_4

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 23
    :cond_4
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/fragment/UpdateFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 24
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/fragment/UpdateFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v5, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    invoke-direct {v5, v7, v1, v2}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 25
    iget-object v1, p0, Lcom/comeback/data/ui/gkj/fragment/UpdateFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
