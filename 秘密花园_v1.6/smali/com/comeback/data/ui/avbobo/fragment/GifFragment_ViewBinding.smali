.class public Lcom/comeback/data/ui/avbobo/fragment/GifFragment_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;
.source "GifFragment_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/GifFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment_ViewBinding;->c:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;

    const-string v0, "UQsGCA9THkcSBAVA"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkcSBAZA"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkcSBAdA"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkcSBABA"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090250

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment_ViewBinding;->c:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment_ViewBinding;->c:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab3:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->tab4:Lcom/google/android/material/tabs/TabLayout;

    .line 7
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;->a()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
