.class public Lcom/comeback/data/ui/km/VideoPlayActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "VideoPlayActivity.java"


# instance fields
.field public b:Lcom/comeback/data/ui/km/bean/Video;

.field public c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public llHead:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailAvatarCiv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailCancelTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailColletionImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailHeadRl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailLikeAvatarRootLl:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailLikeImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoDetailShareImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcom/comeback/data/ui/km/bean/Video;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/km/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/km/bean/Video;

    iput-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c007e

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km/bean/Video;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailCancelTv:Landroid/widget/TextView;

    const v3, 0x7f0e00a7

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailShareImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailColletionImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x437a0000    # 250.0f

    .line 8
    invoke-static {v1}, Lc/a/a/b/g/h;->M(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailCancelTv:Landroid/widget/TextView;

    const v3, 0x7f0e00a8

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailShareImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailColletionImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    sget v1, Lcom/comeback/data/App;->c:I

    .line 15
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailHeadRl:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 17
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 18
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->llHead:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41c80000    # 25.0f

    .line 19
    invoke-static {v3}, Lc/a/a/b/g/h;->M(F)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 20
    iget-object v4, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->llHead:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeAvatarRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    invoke-static {v3}, Lc/a/a/b/g/h;->M(F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 23
    iget-object v3, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeAvatarRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 27
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->j1(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 29
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    const v1, 0x7f0e001b

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d/a/j;->n(Ljava/lang/Integer;)Lf/d/a/i;

    move-result-object v0

    new-instance v1, Lf/d/a/o/p/c/k;

    invoke-direct {v1}, Lf/d/a/o/p/c/k;-><init>()V

    .line 31
    invoke-static {v1}, Lf/d/a/s/e;->B(Lf/d/a/o/l;)Lf/d/a/s/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailAvatarCiv:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, v1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    .line 33
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/km/bean/Video;

    const-string v3, "WhQ8DQ8="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {v4}, Lcom/comeback/data/ui/km/bean/Video;->getMv_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lf/e/a/k/g;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 36
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    new-instance v1, Lf/e/a/j/x/d;

    invoke-direct {v1, p0}, Lf/e/a/j/x/d;-><init>(Lcom/comeback/data/ui/km/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic l(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->videoDetailLikeImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const-string p1, "0fbVjPz837vjg774"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->b:Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1, v0}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onDestroy()V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoPlayActivity;->c:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    return-void
.end method
