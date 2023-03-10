.class public abstract Lchuangyuan/ycj/videolibrary/widget/BaseView;
.super Landroid/widget/FrameLayout;
.source "BaseView.java"


# static fields
.field public static final ANIM_DURATION:I = 0x258

.field public static final TAG:Ljava/lang/String;

.field public static tags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static tags2:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final activity:Landroid/app/Activity;

.field public alertDialog:Landroidx/appcompat/app/AlertDialog;

.field public belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

.field public controllerHideOnTouch:Z

.field public final controllerView:Lf/i/a/a/k1/d;

.field public exoBarrageLayout:Landroid/view/View;

.field public exoBottomPreviewImage:Landroid/widget/ImageView;

.field public exoControlsBack:Landroid/widget/ImageView;

.field public exoLoadingLayout:Landroid/view/View;

.field public exoPlayPreviewLayout:Landroid/view/View;

.field public exoPlayWatermark:Landroid/widget/ImageView;

.field public exoPreviewImage:Landroid/widget/ImageView;

.field public exoPreviewPlayBtn:Landroid/view/View;

.field public getPaddingLeft:I

.field public icBackImage:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public isLand:Z

.field public isListPlayer:Z

.field public isShowBack:Z

.field public isShowVideoSwitch:Z

.field public isVerticalFullScreen:Z

.field public isWGh:Z

.field public final mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

.field public mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

.field public final mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

.field public final mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

.field public mOnEndGestureListener:Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

.field public final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public nameSwitch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public final onTouchListener:Landroid/view/View$OnTouchListener;

.field public final playerView:Lf/i/a/a/k1/c;

.field public setSystemUiVisibility:I

.field public switchIndex:I

.field public videoLoadingShowText:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSystemUiVisibility:I

    .line 5
    sget v1, Lchuangyuan/ycj/videolibrary/R$drawable;->ic_exo_back:I

    iput v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->icBackImage:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowBack:Z

    iput-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerHideOnTouch:Z

    .line 7
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;

    invoke-direct {v1, p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;-><init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 8
    new-instance v1, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;

    invoke-direct {v1, p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;-><init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 9
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    new-instance v2, Lf/i/a/a/k1/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lf/i/a/a/k1/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    .line 12
    invoke-virtual {v2}, Lf/i/a/a/k1/c;->getControllerView()Lf/i/a/a/k1/d;

    move-result-object v2

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    .line 13
    new-instance v2, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    .line 14
    new-instance v2, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    .line 15
    new-instance v2, Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3, p0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILchuangyuan/ycj/videolibrary/widget/BaseView;)V

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    .line 16
    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {p0, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_play_load:I

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 19
    :try_start_0
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_back_image:I

    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->icBackImage:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->icBackImage:I

    .line 20
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_user_watermark:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 21
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_list:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isListPlayer:Z

    .line 22
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_default_artwork:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 23
    sget v3, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_load_layout_id:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 24
    sget v3, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_preview_layout_id:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 25
    sget v4, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_player_custom_layout_id:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 26
    sget v4, Lchuangyuan/ycj/videolibrary/R$styleable;->VideoPlayerView_controller_layout_id:I

    sget v5, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_playback_control_view:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-nez v3, :cond_1

    .line 27
    sget v5, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_playback_list_view:I

    if-eq v4, v5, :cond_0

    sget v5, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_playback_top_view:I

    if-ne v4, v5, :cond_1

    .line 28
    :cond_0
    sget v3, Lchuangyuan/ycj/videolibrary/R$layout;->exo_default_preview_layout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    throw p1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz v0, :cond_3

    .line 31
    invoke-static {p1, v0, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBarrageLayout:Landroid/view/View;

    .line 32
    :cond_3
    invoke-static {p1, p3, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 33
    invoke-static {p1, v3, p2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayPreviewLayout:Landroid/view/View;

    .line 34
    :cond_4
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->intiView()V

    .line 35
    invoke-virtual {p0, v1, v2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->initWatermark(II)V

    return-void
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerHideOnTouch:Z

    return p0
.end method

.method public static synthetic access$200(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    return p0
.end method

.method public static synthetic access$300(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mOnEndGestureListener:Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    return-object p0
.end method

.method private intiView()V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    sget v2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controls_back:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 5
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->icBackImage:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Lf/i/a/a/k1/c;->getContentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lchuangyuan/ycj/videolibrary/R$color;->exo_player_background_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 12
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 13
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 14
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 15
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayPreviewLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 17
    :cond_0
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-static {v3, v4}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_barrage:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 21
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBarrageLayout:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 23
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBarrageLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBarrageLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 25
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_player_watermark:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayWatermark:Landroid/widget/ImageView;

    .line 26
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_loading_show_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->videoLoadingShowText:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_image_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBottomPreviewImage:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewImage:Landroid/widget/ImageView;

    const v1, 0x106000d

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBottomPreviewImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewImage:Landroid/widget/ImageView;

    .line 32
    :goto_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setSystemUiVisibility:I

    .line 33
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_play:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewPlayBtn:Landroid/view/View;

    return-void
.end method

.method private scaleVerticalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    iget-boolean v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    const-wide/16 v3, 0x258

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 9
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 10
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 11
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 17
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 18
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v0, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;

    invoke-direct {v0, p0, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView$3;-><init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 24
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->land()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getErrorLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->getExoPlayErrorLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getGestureAudioLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->getExoAudioLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGestureBrightnessLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->getExoBrightnessLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGestureProgressLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mGestureControlView:Lchuangyuan/ycj/videolibrary/widget/GestureControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/GestureControlView;->getDialogProLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLoadLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method public getLockControlView()Lchuangyuan/ycj/videolibrary/widget/LockControlView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    return-object v0
.end method

.method public getNameSwitch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->nameSwitch:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->nameSwitch:Ljava/util/ArrayList;

    :cond_0
    return-object v0
.end method

.method public getPlayHintLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->getPlayBtnHintLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackControlView()Lf/i/a/a/k1/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    return-object v0
.end method

.method public getPlayerView()Lf/i/a/a/k1/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    return-object v0
.end method

.method public getPreviewImage()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReplayLayout()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->getPlayReplayLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->switchIndex:I

    return v0
.end method

.method public getSwitchText()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->getSwitchText()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTimeBar()Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->getTimeBar()Lf/i/a/a/k1/g;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;

    return-object v0
.end method

.method public initWatermark(II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayWatermark:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->setPreviewImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public isLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    return v0
.end method

.method public isListPlayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isListPlayer:Z

    return v0
.end method

.method public isLoadingLayoutShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowBack:Z

    return v0
.end method

.method public isShowVideoSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowVideoSwitch:Z

    return v0
.end method

.method public isVerticalFullScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isVerticalFullScreen:Z

    return v0
.end method

.method public isWGh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isWGh:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->onDestroy()V

    .line 7
    :cond_2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 9
    sget-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 10
    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    .line 11
    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 12
    :cond_3
    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->nameSwitch:Ljava/util/ArrayList;

    return-void
.end method

.method public resets()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/k1/e;->getPlayer()Lf/i/a/a/l0;

    move-result-object v2

    invoke-interface {v2}, Lf/i/a/a/l0;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->tags2:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object v2

    invoke-virtual {v2}, Lf/i/a/a/k1/e;->getPlayer()Lf/i/a/a/l0;

    move-result-object v2

    invoke-interface {v2}, Lf/i/a/a/l0;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->removeCallback()V

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->hideAllView()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->r()V

    .line 11
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->l()V

    .line 12
    iget-object v1, v0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v2, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v1, Lf/i/a/a/s;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 13
    invoke-interface {v2, v1}, Lf/i/a/a/l0;->f(Z)V

    .line 14
    iget-object v2, v0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object v2, v0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    iget-object v2, v0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 17
    iget-object v2, v0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 18
    invoke-virtual {v0}, Lf/i/a/a/k1/d;->k()Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 20
    throw v0
.end method

.method public scaleLayout()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isVerticalFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->scaleVerticalLayout()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->land()V

    :cond_3
    return-void
.end method

.method public setExoPlayWatermarkImg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayWatermark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setExoPlayerListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    return-void
.end method

.method public setFullscreenStyle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setFullscreenStyle(I)V

    return-void
.end method

.method public setLand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    return-void
.end method

.method public setNameSwitch(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->nameSwitch:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnEndGestureListener(Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mOnEndGestureListener:Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    return-void
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOpenLock(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->setOpenLock(Z)V

    return-void
.end method

.method public setOpenProgress2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->setProgress(Z)V

    return-void
.end method

.method public setPlayerGestureOnTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerHideOnTouch:Z

    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setShowBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowBack:Z

    return-void
.end method

.method public setShowVideoSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowVideoSwitch:Z

    return-void
.end method

.method public setSwitchName(Ljava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->nameSwitch:Ljava/util/ArrayList;

    .line 2
    iput p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->switchIndex:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setVerticalFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isVerticalFullScreen:Z

    return-void
.end method

.method public setWGh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isWGh:Z

    return-void
.end method

.method public showBackView(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isShowBack:Z

    const/16 v2, 0x8

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isListPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isLand:Z

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 7
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    :cond_2
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showBottomView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBottomPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoBottomPreviewImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public showBtnContinueHint(I)V
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showReplay(I)V

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showErrorState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showPreViewLayout(I)V

    .line 4
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLoadState(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    .line 6
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->showBtnContinueHint(I)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lchuangyuan/ycj/videolibrary/R$string;->exo_play_reminder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lchuangyuan/ycj/videolibrary/R$string;->exo_play_wifi_hint_no:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lchuangyuan/ycj/videolibrary/widget/BaseView$1;

    invoke-direct {v3, p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView$1;-><init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lchuangyuan/ycj/videolibrary/widget/BaseView$2;

    invoke-direct {v3, p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView$2;-><init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showErrorState(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    invoke-virtual {v0}, Lf/i/a/a/k1/e;->d()V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showReplay(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v1, v2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    .line 4
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 5
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLoadState(I)V

    .line 6
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showPreViewLayout(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->showErrorState(I)V

    return-void
.end method

.method public showListBack(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->isListPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v1}, Lf/i/a/a/k1/d;->getExoControllerTop()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPaddingLeft:I

    .line 4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v1}, Lf/i/a/a/k1/d;->getExoControllerTop()Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v2, v3}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v1}, Lf/i/a/a/k1/d;->getExoControllerTop()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->getPaddingLeft:I

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    :cond_1
    return-void
.end method

.method public showLoadState(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showErrorState(I)V

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showReplay(I)V

    .line 3
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showLockState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->showLockState(I)V

    return-void
.end method

.method public showPreViewLayout(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayPreviewLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoPlayPreviewLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_play:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->playerView:Lf/i/a/a/k1/c;

    sget v1, Lchuangyuan/ycj/videolibrary/R$id;->exo_preview_play:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showReplay(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->controllerView:Lf/i/a/a/k1/d;

    invoke-virtual {v0}, Lf/i/a/a/k1/d;->i()V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showErrorState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBtnContinueHint(I)V

    .line 4
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showPreViewLayout(I)V

    .line 5
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 6
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLoadState(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBottomView(I)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    .line 9
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mActionControlView:Lchuangyuan/ycj/videolibrary/widget/ActionControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/ActionControlView;->showReplay(I)V

    return-void
.end method
