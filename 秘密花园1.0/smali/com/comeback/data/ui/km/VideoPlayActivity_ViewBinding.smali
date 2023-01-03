.class public Lcom/comeback/data/ui/km/VideoPlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VideoPlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/km/VideoPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/VideoPlayActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/km/VideoPlayActivity;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OIAUFEFxfJxAT"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090340

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailCancelTv:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OLw0AFnBeFEE="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090344

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OMAwKAVx6HgET"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090346

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailShareImg:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OIAsHH1xHGglaLhUNRA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090341

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailColletionImg:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OLw0AFm1FVA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090345

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OIhIKB1hBMA9CQA=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09033f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailAvatarCiv:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OLw0AFnhFEhJVFSoFDB97DkQ="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090343

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeAvatarRootLl:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THkUaAlEILgMGHBA="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const v2, 0x7f090348

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const-string v0, "UQsGCA9THkUaAlEIPA8XCl4OKwEKF2tfVA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090342

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailHeadRl:Landroid/widget/RelativeLayout;

    const-string v0, "UQsGCA9THl8fLlEGHE0="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09012c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/km/VideoPlayActivity;->llHead:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/km/VideoPlayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/km/VideoPlayActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailCancelTv:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailShareImg:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailColletionImg:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailAvatarCiv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeAvatarRootLl:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailHeadRl:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/km/VideoPlayActivity;->llHead:Landroid/widget/LinearLayout;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
