.class public Lcom/comeback/data/ui/fengliu/InfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fengliu/InfoActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/InfoActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/InfoActivity_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/InfoActivity;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNUAGDA9E"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvState:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ0YCGU0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvArea:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ1MCXw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090299

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvAge:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJFEGDR4aTA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvBeauty:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNkYOGw9E"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fe

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvPrice:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNVEVDg8RTA=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09030f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvServer:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFN0VA"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090301

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvQq:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMVEEEAsXTA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090340

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvWechat:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNlwIFg9E"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvPhone:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ1ADCg8QGBA="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090298

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvAddress:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/InfoActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string p1, "UQsGCA9THkEFNFEEFwcODlkGRA=="

    .line 16
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09020c

    invoke-static {p2, v1, p1, v0}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/InfoActivity_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/InfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/InfoActivity_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/InfoActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvState:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvArea:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvAge:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvBeauty:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvPrice:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvServer:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvQq:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvWechat:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvPhone:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvAddress:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->tvIntro:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/InfoActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
