.class public Lcom/comeback/data/ui/cucumber/fragment/RankFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RankFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/RankFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    const-string v0, "UQsGCA9THkcSBHgGAQUWHxA="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090258

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THloFJFNA"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f0

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->ivBg:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->ivBg:Landroid/widget/ImageView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
