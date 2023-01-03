.class public final Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
.super Lchuangyuan/ycj/videolibrary/widget/BaseView;
.source "VideoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public animatorListener:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

.field public final exoPlayerViewListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public visibilityListener:Lf/i/a/a/k1/d$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->visibilityListener:Lf/i/a/a/k1/d$e;

    .line 5
    new-instance p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->animatorListener:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

    .line 6
    new-instance p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;-><init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->exoPlayerViewListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 8
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->intiClickView()V

    return-void
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->exitFullView()V

    return-void
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onCreatePlayer()V

    return-void
.end method

.method public static synthetic access$200(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->exoPlayerViewListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    return-object p0
.end method

.method private exitFullView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->doOnConfigurationChanged(Z)V

    return-void
.end method

.method private intiClickView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_replay_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_replay_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_error_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_error_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_btn_hint_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_btn_hint_btn_id:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getSwitchText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isListPlayer()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->visibilityListener:Lf/i/a/a/k1/d$e;

    invoke-virtual {v0, v1}, Lf/i/a/a/k1/e;->setControllerVisibilityListener(Lf/i/a/a/k1/d$e;)V

    .line 13
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->animatorListener:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

    invoke-virtual {v0, v1}, Lf/i/a/a/k1/d;->setAnimatorListener(Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;)V

    return-void
.end method

.method private onCreatePlayer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showErrorState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showReplay(I)V

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->onCreatePlayers()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lchuangyuan/ycj/videolibrary/R$string;->net_network_no_hint:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public doOnConfigurationChanged(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isWGh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v1

    invoke-virtual {v1}, Lf/i/a/a/k1/e;->getVideoSurfaceView()Lf/i/a/a/f1/a;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-interface {v1, v2}, Lf/i/a/a/f1/a;->d(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->hideActionBar(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1606

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowVideoSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getSwitchText()Landroid/widget/TextView;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->switchIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->setLockCheck(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showListBack(I)V

    .line 12
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isWGh()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v1

    invoke-virtual {v1}, Lf/i/a/a/k1/e;->getVideoSurfaceView()Lf/i/a/a/f1/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/i/a/a/f1/a;->d(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSystemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->showActionBar(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getSwitchText()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showListBack(I)V

    .line 19
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 20
    :goto_0
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 21
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setLand(Z)V

    .line 22
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->scaleLayout()V

    .line 23
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->q()V

    :cond_4
    return-void
.end method

.method public getComponentListener()Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->exoPlayerViewListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    return-object v0
.end method

.method public bridge synthetic getErrorLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getErrorLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGestureAudioLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getGestureAudioLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGestureBrightnessLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getGestureBrightnessLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGestureProgressLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getGestureProgressLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLoadLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getLoadLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLockControlView()Lchuangyuan/ycj/videolibrary/widget/LockControlView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getLockControlView()Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayHintLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlayHintLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlaybackControlView()Lf/i/a/a/k1/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayerView()Lf/i/a/a/k1/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreviewImage()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPreviewImage()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReplayLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getReplayLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSwitchText()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getSwitchText()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeBar()Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getTimeBar()Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isLand()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isListPlayer()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isListPlayer()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoadingLayoutShow()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLoadingLayoutShow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowBack()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowBack()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVerticalFullScreen()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isVerticalFullScreen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isListPlayer()Z

    move-result v1

    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->onDetachedFromWindow(Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    instance-of v0, p1, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;

    .line 4
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setNameSwitch(Ljava/util/ArrayList;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->isLand()Z

    move-result v0

    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setLand(Z)V

    .line 7
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->getSetSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSystemUiVisibility:I

    .line 8
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->getSwitchIndex()I

    move-result p1

    iput p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->switchIndex:I

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;

    invoke-direct {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result v2

    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setLand(Z)V

    .line 4
    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setSetSystemUiVisibility(I)V

    .line 5
    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->switchIndex:I

    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setSwitchIndex(I)V

    .line 6
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getNameSwitch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setNameSwitch(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x1606

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resets()V
    .locals 0

    .line 1
    invoke-super {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->resets()V

    return-void
.end method

.method public bridge synthetic setExoPlayWatermarkImg(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setExoPlayWatermarkImg(I)V

    return-void
.end method

.method public bridge synthetic setExoPlayerListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setExoPlayerListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;)V

    return-void
.end method

.method public bridge synthetic setFullscreenStyle(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setFullscreenStyle(I)V

    return-void
.end method

.method public bridge synthetic setOnEndGestureListener(Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setOnEndGestureListener(Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;)V

    return-void
.end method

.method public bridge synthetic setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setOpenLock(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setOpenLock(Z)V

    return-void
.end method

.method public bridge synthetic setOpenProgress2(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setOpenProgress2(Z)V

    return-void
.end method

.method public bridge synthetic setPlayerGestureOnTouch(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setPlayerGestureOnTouch(Z)V

    return-void
.end method

.method public bridge synthetic setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setPreviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setShowBack(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setShowBack(Z)V

    return-void
.end method

.method public bridge synthetic setShowVideoSwitch(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setShowVideoSwitch(Z)V

    return-void
.end method

.method public bridge synthetic setSwitchName(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSwitchName(Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setVerticalFullScreen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setVerticalFullScreen(Z)V

    return-void
.end method

.method public bridge synthetic setWGh(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setWGh(Z)V

    return-void
.end method

.method public showFullscreenTempView(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->sexo_video_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->getIcFullscreenSelector()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(I)V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
