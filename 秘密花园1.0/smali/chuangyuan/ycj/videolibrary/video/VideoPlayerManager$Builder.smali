.class public Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public controllerHideOnTouch:Z

.field public drmSessionManager:Lf/i/a/a/z0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

.field public mExoPlayerControlView:Lf/i/a/a/k1/d;

.field public mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

.field public mapImage:Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;

.field public mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

.field public onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

.field public onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

.field public playerType:I

.field public resumePosition:J

.field public resumeWindow:I

.field public showVideoSwitch:Z

.field public final videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field public final videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 1
    .param p2    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->playerType:I

    .line 4
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->controllerHideOnTouch:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumeWindow:I

    .line 6
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 8
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->playerType:I

    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0, p2, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;-><init>(ILchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/k1/d;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/i/a/a/k1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->playerType:I

    .line 13
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->controllerHideOnTouch:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumeWindow:I

    .line 15
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    .line 16
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mExoPlayerControlView:Lf/i/a/a/k1/d;

    return-void
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;)Lf/i/a/a/k1/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mExoPlayerControlView:Lf/i/a/a/k1/d;

    return-object p0
.end method

.method private initMediaSourceBuilder()V
    .locals 6

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "chuangyuan.ycj.videolibrary.whole.WholeMediaSource"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    invoke-direct {v0, v1, v2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addMediaUri(Landroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->addMediaUri(Landroid/net/Uri;)V

    return-object p0
.end method

.method public addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUpdateProgressListener(Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mExoPlayerControlView:Lf/i/a/a/k1/d;

    .line 5
    iget-object v0, v0, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
    .locals 4

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-direct {v1, v2, v3, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    .line 4
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->showVideoSwitch:Z

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setShowVideoSwitch(Z)V

    .line 5
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/GestureModule;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;-><init>(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    .line 6
    iget v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->playerType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->setOnGestureBrightnessListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;)V

    .line 8
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->setOnGestureProgressListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;)V

    .line 9
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->setOnGestureVolumeListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;)V

    .line 10
    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addBasePlayerListener(Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;)V

    .line 11
    :cond_0
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mapImage:Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;

    if-eqz v2, :cond_1

    .line 12
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v3}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPreviewImage()Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v2, v3}, Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;->onCoverMap(Landroid/widget/ImageView;)V

    .line 13
    :cond_1
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v2, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setOnEndGestureListener(Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;)V

    .line 14
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-boolean v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->controllerHideOnTouch:Z

    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setPlayerGestureOnTouch(Z)V

    .line 15
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-direct {v1, v0, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;)V

    .line 17
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder$1;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder$1;-><init>(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;)V

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addBasePlayerListener(Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;)V

    .line 18
    :goto_0
    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->createFullPlayer()V

    .line 19
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->drmSessionManager:Lf/i/a/a/z0/g;

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setDrmSessionManager(Lf/i/a/a/z0/g;)V

    .line 20
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;

    .line 21
    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;

    .line 23
    invoke-virtual {v1, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)V

    goto :goto_2

    .line 24
    :cond_4
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumeWindow:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 25
    iget-wide v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumePosition:J

    invoke-virtual {v1, v0, v2, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPosition(IJ)V

    goto :goto_3

    .line 26
    :cond_5
    iget-wide v2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumePosition:J

    invoke-virtual {v1, v2, v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPosition(J)V

    :goto_3
    return-object v1
.end method

.method public setClippingMediaUri(Lf/i/a/a/h1/e0;JJ)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 6
    .param p1    # Lf/i/a/a/h1/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setClippingMediaUri(Lf/i/a/a/h1/e0;JJ)V

    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setCustomCacheKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public setDataSource(Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    return-object p0
.end method

.method public setDataSource(Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    return-object p0
.end method

.method public setDrmSessionManager(Lf/i/a/a/z0/g;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;)",
            "Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->drmSessionManager:Lf/i/a/a/z0/g;

    return-object p0
.end method

.method public setExoPlayWatermarkImg(I)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setExoPlayWatermarkImg(I)V

    return-object p0
.end method

.method public setLoopingMediaSource(ILandroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setLoopingMediaSource(ILf/i/a/a/h1/e0;)V

    return-object p0
.end method

.method public setOnCoverMapImage(Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mapImage:Lchuangyuan/ycj/videolibrary/listener/OnCoverMapImageListener;

    return-object p0
.end method

.method public setOnGestureBrightnessListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    return-object p0
.end method

.method public setOnGestureProgressListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    return-object p0
.end method

.method public setOnGestureVolumeListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

    return-object p0
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPlaySwitchUri(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(IILandroid/net/Uri;Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p5, p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setSwitchName(Ljava/util/List;I)V

    :cond_0
    return-object p0
.end method

.method public setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p2, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaSwitchUri(Ljava/util/List;I)V

    .line 4
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2, p3, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setSwitchName(Ljava/util/List;I)V

    return-object p0
.end method

.method public setPlaySwitchUri(I[Ljava/lang/String;[Ljava/lang/String;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaySwitchUri2(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lchuangyuan/ycj/videolibrary/listener/ItemVideo;",
            ">(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p5, p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setSwitchName(Ljava/util/List;I)V

    .line 4
    :cond_0
    iget-object p5, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p5, p1, p2, p3, p4}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaSwitchUri(IILandroid/net/Uri;Ljava/util/List;)V

    return-object p0
.end method

.method public setPlayUri(ILandroid/net/Uri;Landroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-object p0
.end method

.method public setPlayUri(ILjava/lang/String;Ljava/lang/String;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayUri(ILandroid/net/Uri;Landroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayUri(Landroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Landroid/net/Uri;)V

    return-object p0
.end method

.method public setPlayUri(Ljava/lang/String;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->setPlayUri(Landroid/net/Uri;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayUri(Ljava/util/List;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lchuangyuan/ycj/videolibrary/listener/ItemVideo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->initMediaSourceBuilder()V

    .line 8
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Ljava/util/List;)V

    return-object p0
.end method

.method public setPlayerGestureOnTouch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->controllerHideOnTouch:Z

    return-object p0
.end method

.method public setPosition(IJ)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0

    .line 2
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumeWindow:I

    .line 3
    iput-wide p2, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumePosition:J

    return-object p0
.end method

.method public setPosition(J)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->resumePosition:J

    return-object p0
.end method

.method public setShowVideoSwitch(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->showVideoSwitch:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method

.method public setVerticalFullScreen(Z)Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->mVideoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setVerticalFullScreen(Z)V

    return-object p0
.end method
