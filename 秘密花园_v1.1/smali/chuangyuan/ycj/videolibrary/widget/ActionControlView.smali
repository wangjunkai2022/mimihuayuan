.class public Lchuangyuan/ycj/videolibrary/widget/ActionControlView;
.super Landroid/widget/FrameLayout;
.source "ActionControlView.java"


# instance fields
.field public exoPlayErrorLayout:Landroid/view/View;

.field public playBtnHintLayout:Landroid/view/View;

.field public playReplayLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_play_replay:I

    .line 3
    sget v0, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_play_error:I

    .line 4
    sget v1, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_play_btn_hint:I

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    :try_start_0
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_replay_layout_id:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 7
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_error_layout_id:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 8
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_hint_layout_id:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    throw p1

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 11
    invoke-static {p1, v0, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    .line 12
    invoke-static {p1, p3, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    .line 13
    invoke-static {p1, v1, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    .line 14
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 18
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getExoPlayErrorLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPlayBtnHintLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPlayReplayLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    return-object v0
.end method

.method public hideAllView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showBtnContinueHint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playBtnHintLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showErrorState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->exoPlayErrorLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showReplay(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->playReplayLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
