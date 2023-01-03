.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitFull()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->access$000(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->doOnConfigurationChanged(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onDestroy()V

    return-void
.end method

.method public onPrepared()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v1, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onResumeStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isListPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->setPlayerBtnOnTouch(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->onCreatePlayers()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->resets()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->access$200(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showPreview(IZ)V

    return-void
.end method

.method public setBrightnessPosition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0, p1, p2}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->setBrightnessPosition(II)V

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/e;->setControllerHideOnTouch(Z)V

    return-void
.end method

.method public setOpenSeek(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getTimeBar()Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->setOpenSeek(Z)V

    return-void
.end method

.method public setPlayer(Lf/i/a/a/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/c;->setPlayer(Lf/i/a/a/l0;)V

    return-void
.end method

.method public setPlayerBtnOnTouch(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->getPlayButton()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewPlayBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->getPlayButton()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewPlayBtn:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSeekBarOpenSeek(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getTimeBar()Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->setOpenSeek(Z)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setPlayerGestureOnTouch(Z)V

    return-void
.end method

.method public setShowWitch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setShowVideoSwitch(Z)V

    return-void
.end method

.method public setSwitchName(Ljava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1, p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setSwitchName(Ljava/util/List;I)V

    return-void
.end method

.method public setTag(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTimePosition(Landroid/text/SpannableString;)V
    .locals 1
    .param p1    # Landroid/text/SpannableString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->setTimePosition(Landroid/text/SpannableString;)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/e;->setUseController(Z)V

    return-void
.end method

.method public setVolumePosition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0, p1, p2}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->setVolumePosition(II)V

    return-void
.end method

.method public showAlertDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showDialog()V

    return-void
.end method

.method public showErrorStateView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showErrorState(I)V

    return-void
.end method

.method public showGestureView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->showGesture(I)V

    return-void
.end method

.method public showLoadStateView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLoadState(I)V

    return-void
.end method

.method public showNetSpeed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLoadingLayoutShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;

    invoke-direct {v1, p0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public showPreview(IZ)V
    .locals 1

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showPreViewLayout(I)V

    .line 2
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBottomView(I)V

    .line 3
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPreviewImage()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewPlayBtn:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showReplayView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showReplay(I)V

    return-void
.end method

.method public startPlayer(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isListPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 5
    sget-object v2, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v1

    .line 6
    invoke-virtual {p1, v2, v3, v4}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPosition(IJ)V

    .line 7
    sget-object p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toggoleController(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->showFullscreenTempView(I)V

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {p1}, Lf/i/a/a/k1/e;->h()V

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->p()V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->setControllerHideOnTouch(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->q()V

    .line 6
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->setControllerHideOnTouch(Z)V

    :goto_1
    return-void
.end method
