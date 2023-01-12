.class public Lchuangyuan/ycj/videolibrary/widget/GestureControlView;
.super Landroid/widget/FrameLayout;
.source "GestureControlView.java"


# instance fields
.field public dialogProLayout:Landroid/view/View;

.field public exoAudioLayout:Landroid/view/View;

.field public exoBrightnessLayout:Landroid/view/View;

.field public videoAudioImg:Landroidx/appcompat/widget/AppCompatImageView;

.field public videoAudioPro:Landroid/widget/ProgressBar;

.field public videoBrightnessImg:Landroidx/appcompat/widget/AppCompatImageView;

.field public videoBrightnessPro:Landroid/widget/ProgressBar;

.field public videoDialogProText:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 5
    sget v0, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_video_progress_dialog:I

    .line 6
    sget v1, Lchuangyuan/ycj/videolibrary/R$layout;->simple_video_audio_brightness_dialog:I

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lchuangyuan/ycj/videolibrary/R$styleable;->GestureControlView:[I

    invoke-virtual {p1, p2, v2, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    :try_start_0
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->GestureControlView_player_gesture_audio_layout_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 9
    sget p3, Lchuangyuan/ycj/videolibrary/R$styleable;->GestureControlView_player_gesture_progress_layout_id:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 10
    sget p3, Lchuangyuan/ycj/videolibrary/R$styleable;->GestureControlView_player_gesture_bright_layout_id:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v1

    move v1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    throw p2

    :cond_0
    move p1, v1

    .line 13
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->intiGestureView(III)V

    return-void
.end method


# virtual methods
.method public getDialogProLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    return-object v0
.end method

.method public getExoAudioLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    return-object v0
.end method

.method public getExoBrightnessLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    return-object v0
.end method

.method public intiGestureView(III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 9
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 10
    sget v0, Lchuangyuan/ycj/videolibrary/R$layout;->simple_video_audio_brightness_dialog:I

    if-ne p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    sget v0, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_audio_brightness_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoAudioImg:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    sget v0, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_audio_brightness_pro:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoAudioPro:Landroid/widget/ProgressBar;

    .line 13
    :cond_0
    sget p1, Lchuangyuan/ycj/videolibrary/R$layout;->simple_video_audio_brightness_dialog:I

    if-ne p2, p1, :cond_1

    .line 14
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_audio_brightness_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoBrightnessImg:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_audio_brightness_pro:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoBrightnessPro:Landroid/widget/ProgressBar;

    .line 16
    :cond_1
    sget p1, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_video_progress_dialog:I

    if-ne p3, p1, :cond_2

    .line 17
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_dialog_pro_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoDialogProText:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_2
    return-void
.end method

.method public setBrightnessPosition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoBrightnessPro:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoBrightnessImg:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lchuangyuan/ycj/videolibrary/R$drawable;->ic_brightness_6_white_48px:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoBrightnessPro:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public setTimePosition(Landroid/text/SpannableString;)V
    .locals 2
    .param p1    # Landroid/text/SpannableString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoDialogProText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVolumePosition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoAudioPro:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoAudioPro:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->videoAudioImg:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p2, :cond_1

    sget p2, Lchuangyuan/ycj/videolibrary/R$drawable;->ic_volume_off_white_48px:I

    goto :goto_0

    :cond_1
    sget p2, Lchuangyuan/ycj/videolibrary/R$drawable;->ic_volume_up_white_48px:I

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public showGesture(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoAudioLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->exoBrightnessLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->dialogProLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
