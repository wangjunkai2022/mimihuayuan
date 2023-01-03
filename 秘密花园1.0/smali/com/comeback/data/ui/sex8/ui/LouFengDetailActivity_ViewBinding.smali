.class public Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LouFengDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    const-string v0, "UQsGCA9THloFLlEGHE0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900fa

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->ivHead:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901fc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkcFJ0YCGU0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvArea:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMl0KHU0="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvTime:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJVsSFh5E"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902aa

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvCount:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNkYOGw9E"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPrice:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMVEEEAsXTA=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090335

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvWechat:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFN0VA"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvQq:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNlwIFg9E"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ed

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPhone:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlETGQMPTA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902af

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvDetail:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcSBHgGAQUWHxA="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkAQFFsLFDwKDkBF"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f090218

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p1, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->ivHead:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvArea:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvTime:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPrice:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvWechat:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvQq:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPhone:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvDetail:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
