.class public Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;
.super Lf/i/a/a/l0$a;
.source "ExoUserPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public isRemove:Z

.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-direct {p0}, Lf/i/a/a/l0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lf/i/a/a/j0;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lf/i/a/a/w;)V
    .locals 2

    .line 1
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1000()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1200(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    .line 3
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isBehindLiveWindow(Lf/i/a/a/w;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->clearResumePosition()V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startVideo()V

    goto :goto_2

    .line 6
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showErrorStateView(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 9
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lf/i/a/a/t0;->O()V

    .line 11
    iget-object v1, v1, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    .line 12
    iget-object v1, v1, Lf/i/a/a/y;->s:Lf/i/a/a/w;

    .line 13
    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;->onPlayerError(Lf/i/a/a/w;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 2
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/t0;->m()Z

    move-result v2

    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;->isPlaying(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1000()Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1000()Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1102(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->clearResumePosition()V

    .line 7
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 8
    invoke-interface {p2, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showReplayView(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 10
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;->onPlayEnd()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/16 v2, 0x8

    .line 12
    invoke-interface {v0, v2, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showPreview(IZ)V

    .line 13
    invoke-interface {v0, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showLoadStateView(I)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_8

    .line 14
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1000()Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$202(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z

    .line 16
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 17
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;->onPlayStart(J)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 19
    invoke-interface {p2, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showLoadStateView(I)V

    goto :goto_5

    .line 20
    :cond_6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 21
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;->onLoadingChanged()V

    goto :goto_6

    .line 22
    :cond_7
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$1000()Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 24
    invoke-interface {p2, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showErrorStateView(I)V

    goto :goto_7

    :cond_8
    :goto_8
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lf/i/a/a/u0;Ljava/lang/Object;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$300(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$302(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->isRemove:Z

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object p1

    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object p2

    invoke-virtual {p2}, Lf/i/a/a/o;->a()I

    move-result p2

    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$500(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lf/i/a/a/t0;->k(IJ)V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lf/i/a/a/h1/p0;Lf/i/a/a/j1/k;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getWindowCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_5

    .line 2
    iget-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->isRemove:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->isRemove:Z

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$700(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object p1

    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$600(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)I

    move-result p2

    invoke-virtual {p1, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->removeMedia(I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$800(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$800(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;

    .line 7
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/t0;->z()I

    move-result v2

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getWindowCount()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;->onCurrentIndex(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$700(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getIndexType()I

    move-result p1

    if-gez p1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$700(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getIndexType()I

    move-result p1

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;

    move-result-object v1

    invoke-virtual {v1}, Lf/i/a/a/t0;->z()I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$700(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getIndexType()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 10
    :cond_4
    :goto_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 11
    invoke-interface {v0, p2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setOpenSeek(Z)V

    goto :goto_2

    :cond_5
    return-void
.end method
