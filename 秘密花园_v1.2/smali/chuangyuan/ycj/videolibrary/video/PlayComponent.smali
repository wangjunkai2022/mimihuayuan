.class public Lchuangyuan/ycj/videolibrary/video/PlayComponent;
.super Ljava/lang/Object;
.source "PlayComponent.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;


# instance fields
.field public final exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method


# virtual methods
.method public land()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->land()V

    return-void
.end method

.method public onCreatePlayers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startVideo()V

    return-void
.end method

.method public onDetachedFromWindow(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayer()Lf/i/a/a/t0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getVideoPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->reset()V

    goto :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 6
    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;->onDestroy()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public playVideoUri()V
    .locals 2

    .line 1
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->serEnableHintGPRS(Z)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playerNoAlertDialog()V

    return-void
.end method

.method public replayPlayers()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->clearResumePosition()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    .line 3
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayer()Lf/i/a/a/t0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startVideo()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayer()Lf/i/a/a/t0;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/t0;->k(IJ)V

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayer()Lf/i/a/a/t0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->f(Z)V

    :goto_0
    return-void
.end method

.method public startPlayers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-void
.end method

.method public switchUri(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getMediaSourceBuilder()Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getVideoUri()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getVideoUri()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setSwitchPlayer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
