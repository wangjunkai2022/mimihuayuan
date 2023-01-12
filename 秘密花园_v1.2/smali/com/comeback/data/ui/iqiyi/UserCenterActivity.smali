.class public Lcom/comeback/data/ui/iqiyi/UserCenterActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "UserCenterActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public ivHeader:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WQMOAQ=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XwcCACIeWFQW"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->b:Ljava/lang/String;

    const-string v0, "WQMOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->c:Ljava/lang/String;

    const-string v0, "XwcCACIeWFQW"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0071

    return v0
.end method

.method public e()V
    .locals 8

    const-string v0, "FFIFVVlBDQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->ivHeader:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->E0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;->o(Ljava/lang/String;Z)Lcom/comeback/data/ui/iqiyi/fragment/UserCenterFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 10
    iget-object v2, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v4, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "09//gfjy"

    .line 11
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v3, "0vT/gsfR"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 12
    invoke-direct {v4, v5, v6, v0}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
