.class public Lcom/comeback/data/ui/iqiyi/UserCenterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserCenterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/iqiyi/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/UserCenterActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity_ViewBinding;->b:Lcom/comeback/data/ui/iqiyi/UserCenterActivity;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f09034c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THloFLlEGHA8RTA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900fb

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->ivHeader:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902dc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcSBHgGAQUWHxA="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity_ViewBinding;->b:Lcom/comeback/data/ui/iqiyi/UserCenterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity_ViewBinding;->b:Lcom/comeback/data/ui/iqiyi/UserCenterActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->ivHeader:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tvName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/iqiyi/UserCenterActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
