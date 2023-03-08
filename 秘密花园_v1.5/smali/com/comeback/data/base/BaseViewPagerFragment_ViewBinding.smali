.class public Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BaseViewPagerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/base/BaseViewPagerFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/base/BaseViewPagerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;->b:Lcom/comeback/data/base/BaseViewPagerFragment;

    const-string v0, "UQsGCA9THl4lD1EQKAsEDkVF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THl4nB1YrGRMMHkNF"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090258

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/comeback/data/base/BaseViewPagerFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;->b:Lcom/comeback/data/base/BaseViewPagerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;->b:Lcom/comeback/data/base/BaseViewPagerFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/base/BaseViewPagerFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/base/BaseViewPagerFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
