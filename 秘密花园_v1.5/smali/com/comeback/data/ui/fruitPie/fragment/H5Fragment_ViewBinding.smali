.class public Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;
.super Ljava/lang/Object;
.source "H5Fragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFLlEGHE0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900fc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivHead:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivCover:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFJ0ETEAURTA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvAuthor:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlUTHU0="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b4

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvDate:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkQWBGIOHR1STA=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tencent/smtt/sdk/WebView;

    const v2, 0x7f09035c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView1:Lcom/tencent/smtt/sdk/WebView;

    const-string v0, "UQsGCA9THkQWBGIOHR1RTA=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tencent/smtt/sdk/WebView;

    const v2, 0x7f09035d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    iput-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView2:Lcom/tencent/smtt/sdk/WebView;

    const-string v0, "UQsGCA9THlUfNlgGAU1DClkGQwkOB1FcF0YTFxQLGkw="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900cb

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THlUfNlgGAU0="

    .line 11
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->flPlay:Landroid/widget/FrameLayout;

    .line 12
    iput-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090126

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$b;-><init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivHead:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->ivCover:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvAuthor:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->tvDate:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView1:Lcom/tencent/smtt/sdk/WebView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->webView2:Lcom/tencent/smtt/sdk/WebView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->flPlay:Landroid/widget/FrameLayout;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;->d:Landroid/view/View;

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
