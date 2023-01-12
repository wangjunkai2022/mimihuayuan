.class public Lcom/comeback/data/ui/commom/LocalPlayActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "LocalPlayActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/commom/LocalPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QhAP"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "WQMOAQ=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QhAP"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->b:Ljava/lang/String;

    const-string v0, "WQMOAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00ca

    return v0
.end method

.method public e()V
    .locals 3

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    const/4 v1, 0x1

    const v2, 0x7f090353

    invoke-direct {v0, p0, v1, v2}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(Landroid/app/Activity;II)V

    .line 4
    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setTitle(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object v1, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

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
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/commom/LocalPlayActivity;->d:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    return-void
.end method
