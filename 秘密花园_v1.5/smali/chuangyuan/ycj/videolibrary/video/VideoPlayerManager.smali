.class public Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;,
        Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Holder;
    }
.end annotation


# static fields
.field public static final TYPE_PLAY_GESTURE:I = 0x1

.field public static final TYPE_PLAY_USER:I


# instance fields
.field public isClick:Z

.field public mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick:Z

    return-void
.end method

.method public synthetic constructor <init>(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;
    .locals 1

    .line 1
    sget-object v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Holder;->holder:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    return-object v0
.end method


# virtual methods
.method public enableHintGPRS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick:Z

    return v0
.end method

.method public getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayer()Lf/i/a/a/t0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onDestroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    :cond_0
    return-void
.end method

.method public onPause(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onListPause(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onStop()V

    :cond_0
    return-void
.end method

.method public releaseVideoPlayer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public serEnableHintGPRS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick:Z

    return-void
.end method

.method public setClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick:Z

    return-void
.end method

.method public setCurrentVideoPlayer(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 2
    .param p1    # Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->releaseVideoPlayer()V

    .line 3
    :cond_1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->mVideoPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public switchTargetView(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Z)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->resets()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->switchTargetView(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    :cond_2
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 4
    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setStartOrPause(Z)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->reset()V

    .line 6
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 7
    invoke-interface {p2, v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    .line 8
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->reset()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public switchTargetViewNew(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->switchTargetView(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    :cond_0
    return-void
.end method

.method public switchTargetViewResult(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;JZ)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p2, p3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPosition(J)V

    .line 3
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->switchTargetView(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resetList()V

    .line 5
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->resets()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resetList()V

    .line 7
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playerNoAlertDialog()V

    :cond_1
    :goto_0
    return-void
.end method
