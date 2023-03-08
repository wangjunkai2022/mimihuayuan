.class public Lcom/comeback/data/ui/xj/fragment/ShortFragment_ViewBinding;
.super Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;
.source "ShortFragment_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/xj/fragment/ShortFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/fragment/ShortFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;-><init>(Lcom/comeback/data/base/BaseViewPagerFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/fragment/ShortFragment_ViewBinding;->c:Lcom/comeback/data/ui/xj/fragment/ShortFragment;

    const-string v0, "UQsGCA9THkcSBHgGAQUWHxA="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090258

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/xj/fragment/ShortFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/fragment/ShortFragment_ViewBinding;->c:Lcom/comeback/data/ui/xj/fragment/ShortFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/xj/fragment/ShortFragment_ViewBinding;->c:Lcom/comeback/data/ui/xj/fragment/ShortFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/xj/fragment/ShortFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    invoke-super {p0}, Lcom/comeback/data/base/BaseViewPagerFragment_ViewBinding;->a()V

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
