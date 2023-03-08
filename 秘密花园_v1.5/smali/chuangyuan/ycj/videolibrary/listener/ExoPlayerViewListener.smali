.class public interface abstract Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;
.super Ljava/lang/Object;
.source "ExoPlayerViewListener.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;


# virtual methods
.method public abstract exitFull()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract onConfigurationChanged(Z)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onResumeStart()V
.end method

.method public abstract reset()V
.end method

.method public abstract setBrightnessPosition(II)V
.end method

.method public abstract setControllerHideOnTouch(Z)V
.end method

.method public abstract setOpenSeek(Z)V
.end method

.method public abstract setPlayerBtnOnTouch(Z)V
.end method

.method public abstract setSeekBarOpenSeek(Z)V
.end method

.method public abstract setShowWitch(Z)V
.end method

.method public abstract setSwitchName(Ljava/util/List;I)V
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
.end method

.method public abstract setTag(Ljava/lang/Integer;)V
.end method

.method public abstract setTimePosition(Landroid/text/SpannableString;)V
    .param p1    # Landroid/text/SpannableString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUseController(Z)V
.end method

.method public abstract setVolumePosition(II)V
.end method

.method public abstract showAlertDialog()V
.end method

.method public abstract showErrorStateView(I)V
.end method

.method public abstract showGestureView(I)V
.end method

.method public abstract showLoadStateView(I)V
.end method

.method public abstract showNetSpeed(Ljava/lang/String;)V
.end method

.method public abstract showPreview(IZ)V
.end method

.method public abstract showReplayView(I)V
.end method

.method public abstract startPlayer(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
.end method

.method public abstract toggoleController(ZZ)V
.end method
