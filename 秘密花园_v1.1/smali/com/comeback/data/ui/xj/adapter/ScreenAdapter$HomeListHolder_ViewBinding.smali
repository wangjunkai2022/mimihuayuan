.class public Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ScreenAdapter$HomeListHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;

    const-string v0, "UQsGCA9THloFMF0DHQUgBEEHEUM="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f0900e8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVideoCover:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THloFI0wEFB8QAkEHRA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivExclusive:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THloFMF0XXw=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900e9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVip:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFMF0DHQUnHkUWCgsFVA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090285

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoDurtion:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFPllA"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ea

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THloFBVgCGRhE"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090119

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivclear:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFMF0DHQU3AkMOBkM="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090286

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder_ViewBinding;->b:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVideoCover:Lcom/comeback/data/widget/RatioImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivExclusive:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVip:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoDurtion:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivclear:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoTitle:Landroid/widget/TextView;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
