.class public Lchuangyuan/ycj/videolibrary/widget/LockControlView;
.super Landroid/widget/FrameLayout;
.source "LockControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;
.implements Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;


# instance fields
.field public exoControllerLeft:Landroid/view/View;

.field public exoControllerRight:Landroid/view/View;

.field public exoPlayLockLayout:Landroid/view/View;

.field public exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

.field public final hideAction:Ljava/lang/Runnable;

.field public isProgress:Z

.field public lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILchuangyuan/ycj/videolibrary/widget/BaseView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lchuangyuan/ycj/videolibrary/widget/BaseView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->isProgress:Z

    .line 3
    new-instance p3, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;

    invoke-direct {p3, p0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)V

    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->hideAction:Ljava/lang/Runnable;

    .line 4
    iput-object p4, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    .line 5
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_play_lock:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayLockLayout:Landroid/view/View;

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayLockLayout:Landroid/view/View;

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_lock_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    .line 8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayLockLayout:Landroid/view/View;

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_lock_btn_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 9
    invoke-virtual {p4}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_right:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerRight:Landroid/view/View;

    .line 10
    invoke-virtual {p4}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_left:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerLeft:Landroid/view/View;

    .line 11
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lf/i/a/a/k1/d;->setAnimatorListener(Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;)V

    .line 14
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayLockLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Lchuangyuan/ycj/videolibrary/widget/BaseView;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    return-object p0
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/widget/LockControlView;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method


# virtual methods
.method public isLock()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->q()V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {p1}, Lf/i/a/a/k1/e;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->hideAction:Ljava/lang/Runnable;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Lf/i/a/a/k1/e;->getControllerShowTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {p1}, Lf/i/a/a/k1/e;->h()V

    .line 9
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->removeCallback()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->removeCallback()V

    return-void
.end method

.method public removeCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLockCheck(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setOpenLock(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->isProgress:Z

    return-void
.end method

.method public show(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->showLockState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->updateLockCheckBox(Z)V

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerRight:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnimX(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 6
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerLeft:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 7
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnimX(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->updateLockCheckBox(Z)V

    .line 9
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerLeft:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p1, v0}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnimX(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 11
    :cond_3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoControllerRight:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 12
    invoke-static {p1, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnim(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_4
    :goto_0
    return-void
.end method

.method public showLockState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayLockLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->i()V

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    .line 6
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 8
    :goto_0
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->isProgress:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateLockCheckBox(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTranslationX()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {p1, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnimX(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnimX(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnimX(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {p1, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnimX(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateProgress(JJJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->mBaseView:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->lockCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->isProgress:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/k1/a;->setPosition(J)V

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    invoke-virtual {p1, p3, p4}, Lf/i/a/a/k1/a;->setBufferedPosition(J)V

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->exoPlayerLockProgress:Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    invoke-virtual {p1, p5, p6}, Lf/i/a/a/k1/a;->setDuration(J)V

    :cond_2
    return-void
.end method
