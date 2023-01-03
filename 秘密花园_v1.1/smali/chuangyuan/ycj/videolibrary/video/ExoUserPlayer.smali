.class public Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
.super Ljava/lang/Object;
.source "ExoUserPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "chuangyuan.ycj.videolibrary.video.ExoUserPlayer"


# instance fields
.field public activity:Landroid/content/Context;

.field public final basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field public componentListener:Lf/i/a/a/l0$b;

.field public drmSessionManager:Lf/i/a/a/z0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public handPause:Z

.field public isEnd:Z

.field public isLoad:Z

.field public isPause:Z

.field public isSwitch:Z

.field public lastTimeStamp:Ljava/lang/Long;

.field public lastTotalRxBytes:Ljava/lang/Long;

.field public mNetworkBroadcastReceiver:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

.field public final mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

.field public playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

.field public playbackParameters:Lf/i/a/a/j0;

.field public player:Lf/i/a/a/t0;

.field public resumePosition:Ljava/lang/Long;

.field public resumeWindow:I

.field public final task:Ljava/lang/Runnable;

.field public timer:Ljava/util/concurrent/ScheduledExecutorService;

.field public final videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field public videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

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
.method public constructor <init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTotalRxBytes:Ljava/lang/Long;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTimeStamp:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    .line 22
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->task:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    new-instance p1, Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/video/PlayComponent;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    .line 30
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    .line 31
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v0, 0x1

    .line 32
    invoke-interface {p2, v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTotalRxBytes:Ljava/lang/Long;

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTimeStamp:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    .line 5
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->task:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$2;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 9
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    new-instance p1, Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    invoke-direct {p1, p0}, Lchuangyuan/ycj/videolibrary/video/PlayComponent;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    .line 15
    invoke-virtual {p3, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setExoPlayerListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;)V

    .line 16
    invoke-virtual {p3}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getComponentListener()Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addExoPlayerViewListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;)V

    .line 17
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 p3, 0x1

    .line 18
    invoke-interface {p2, p3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p3}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->buildMediaSourceBuilder(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V

    return-void
.end method

.method public static synthetic access$000(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getNetSpeed()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1102(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isEnd:Z

    return p1
.end method

.method public static synthetic access$1200(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->updateResumePosition()V

    return-void
.end method

.method public static synthetic access$200(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    return p0
.end method

.method public static synthetic access$202(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    return p1
.end method

.method public static synthetic access$300(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isSwitch:Z

    return p0
.end method

.method public static synthetic access$302(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isSwitch:Z

    return p1
.end method

.method public static synthetic access$400(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lf/i/a/a/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    return-object p0
.end method

.method public static synthetic access$500(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic access$600(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    return p0
.end method

.method public static synthetic access$700(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    return-object p0
.end method

.method public static synthetic access$800(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$900(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private getNetSpeed()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->getTotalRxBytes(Landroid/content/Context;)J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTimeStamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const-string v0, "1 kb/s"

    return-object v0

    .line 5
    :cond_1
    iget-object v6, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTotalRxBytes:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    div-long/2addr v6, v4

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTimeStamp:Ljava/lang/Long;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTotalRxBytes:Ljava/lang/Long;

    const-wide/16 v0, 0x400

    cmp-long v2, v6, v0

    if-lez v2, :cond_2

    .line 8
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->getM(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MB/s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " kb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private registerReceiverNet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mNetworkBroadcastReceiver:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;)V

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mNetworkBroadcastReceiver:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

    .line 4
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setDefaultLoadModel()V
    .locals 8

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->task:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x12c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private unNetworkBroadcastReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mNetworkBroadcastReceiver:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mNetworkBroadcastReceiver:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;

    return-void
.end method

.method private updateResumePosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/t0;->z()I

    move-result v0

    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    const-wide/16 v0, 0x0

    .line 3
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v2}, Lf/i/a/a/t0;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBasePlayerListener(Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExoPlayerViewListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->addMediaUri(Landroid/net/Uri;)V

    return-void
.end method

.method public addOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearResumePosition()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    return-void
.end method

.method public createFullPlayer()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lf/i/a/a/j1/b$d;

    invoke-direct {v0}, Lf/i/a/a/j1/b$d;-><init>()V

    .line 2
    new-instance v5, Lf/i/a/a/j1/d;

    invoke-direct {v5, v0}, Lf/i/a/a/j1/d;-><init>(Lf/i/a/a/j1/j$b;)V

    .line 3
    invoke-direct/range {p0 .. p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setDefaultLoadModel()V

    .line 4
    new-instance v4, Lf/i/a/a/v;

    iget-object v0, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v4, v0, v2}, Lf/i/a/a/v;-><init>(Landroid/content/Context;I)V

    .line 5
    iget-object v3, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    new-instance v6, Lf/i/a/a/t;

    invoke-direct {v6}, Lf/i/a/a/t;-><init>()V

    iget-object v7, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->drmSessionManager:Lf/i/a/a/z0/g;

    .line 6
    invoke-static {}, Lf/i/a/a/m1/h0;->D()Landroid/os/Looper;

    move-result-object v10

    .line 7
    new-instance v9, Lf/i/a/a/v0/a$a;

    invoke-direct {v9}, Lf/i/a/a/v0/a$a;-><init>()V

    .line 8
    const-class v2, Lc/a/a/b/g/h;

    monitor-enter v2

    .line 9
    :try_start_0
    sget-object v0, Lc/a/a/b/g/h;->a:Lf/i/a/a/l1/g;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lf/i/a/a/l1/r$a;

    invoke-direct {v0, v3}, Lf/i/a/a/l1/r$a;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v8, Lf/i/a/a/l1/r;

    iget-object v12, v0, Lf/i/a/a/l1/r$a;->a:Landroid/content/Context;

    iget-object v13, v0, Lf/i/a/a/l1/r$a;->b:Landroid/util/SparseArray;

    iget v14, v0, Lf/i/a/a/l1/r$a;->c:I

    iget-object v15, v0, Lf/i/a/a/l1/r$a;->d:Lf/i/a/a/m1/h;

    const/16 v16, 0x0

    move-object v11, v8

    .line 12
    invoke-direct/range {v11 .. v16}, Lf/i/a/a/l1/r;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILf/i/a/a/m1/h;Z)V

    .line 13
    sput-object v8, Lc/a/a/b/g/h;->a:Lf/i/a/a/l1/g;

    .line 14
    :cond_0
    sget-object v8, Lc/a/a/b/g/h;->a:Lf/i/a/a/l1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 15
    new-instance v0, Lf/i/a/a/t0;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lf/i/a/a/t0;-><init>(Landroid/content/Context;Lf/i/a/a/r0;Lf/i/a/a/j1/m;Lf/i/a/a/t;Lf/i/a/a/z0/g;Lf/i/a/a/l1/g;Lf/i/a/a/v0/a$a;Landroid/os/Looper;)V

    .line 16
    iput-object v0, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 18
    iget-object v3, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-interface {v2, v3}, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;->setPlayer(Lf/i/a/a/t0;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;

    .line 20
    iget-object v3, v1, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-interface {v2, v3}, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;->setPlayer(Lf/i/a/a/t0;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 21
    monitor-exit v2

    throw v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->O()V

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->l()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->C()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->O()V

    .line 3
    iget-object v0, v0, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v0}, Lf/i/a/a/y;->v()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMediaSourceBuilder()Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    return-object v0
.end method

.method public getPlayer()Lf/i/a/a/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    return-object v0
.end method

.method public getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public getVideoPlayerView()Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->w()Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/t0;->w()Lf/i/a/a/u0;

    move-result-object v0

    invoke-virtual {v0}, Lf/i/a/a/u0;->p()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hideControllerView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->hideControllerView(Z)V

    return-void
.end method

.method public hideControllerView(Z)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, p1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->toggoleController(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lf/i/a/a/t0;->o()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/t0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public land()V
    .locals 5

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v3, v2}, Lf/i/a/a/t0;->f(Z)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v3, v1}, Lf/i/a/a/t0;->f(Z)V

    .line 5
    :goto_1
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v4}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getMediaSource()Lf/i/a/a/h1/e0;

    move-result-object v4

    xor-int/2addr v0, v1

    invoke-virtual {v3, v4, v0, v2}, Lf/i/a/a/t0;->F(Lf/i/a/a/h1/e0;ZZ)V

    return-void
.end method

.method public next()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/o;->c()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 3
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->exitFull()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->releasePlayers()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;

    .line 3
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;->onDestroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->destroy()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTotalRxBytes:Ljava/lang/Long;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->lastTimeStamp:Ljava/lang/Long;

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    .line 10
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 11
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 12
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->basePlayerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 13
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 14
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isEnd:Z

    .line 15
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    .line 16
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    .line 19
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    .line 20
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    return-void
.end method

.method public onListPause(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/t0;->m()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    .line 4
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lf/i/a/a/t0;->m()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    .line 4
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->releasePlayers()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isLoad:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isEnd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 3
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->onResumeStart()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    return-void
.end method

.method public playerNoAlertDialog()V
    .locals 7

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->createFullPlayer()V

    .line 3
    :cond_0
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v1, v3}, Lf/i/a/a/t0;->f(Z)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v1, v2}, Lf/i/a/a/t0;->f(Z)V

    .line 7
    :goto_1
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playbackParameters:Lf/i/a/a/j0;

    invoke-virtual {v1, v4}, Lf/i/a/a/t0;->I(Lf/i/a/a/j0;)V

    .line 8
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/16 v5, 0x8

    .line 9
    invoke-interface {v4, v5, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showPreview(IZ)V

    .line 10
    invoke-interface {v4, v3, v3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->toggoleController(ZZ)V

    .line 11
    invoke-interface {v4, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setControllerHideOnTouch(Z)V

    .line 12
    invoke-interface {v4, v3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    iget-object v5, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lf/i/a/a/t0;->k(IJ)V

    .line 14
    :cond_4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {v1, v4}, Lf/i/a/a/t0;->y(Lf/i/a/a/l0$b;)V

    .line 15
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {v1, v4}, Lf/i/a/a/t0;->r(Lf/i/a/a/l0$b;)V

    .line 16
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v4}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getMediaSource()Lf/i/a/a/h1/e0;

    move-result-object v4

    xor-int/2addr v0, v2

    invoke-virtual {v1, v4, v0, v3}, Lf/i/a/a/t0;->F(Lf/i/a/a/h1/e0;ZZ)V

    .line 17
    iput-boolean v3, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isEnd:Z

    .line 18
    iput-boolean v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isLoad:Z

    .line 19
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 20
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->onPrepared()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public previous()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/o;->d()V

    return-void
.end method

.method public releasePlayers()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->updateResumePosition()V

    .line 2
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->unNetworkBroadcastReceiver()V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->y(Lf/i/a/a/l0$b;)V

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->M(Z)V

    .line 7
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/t0;->G()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    .line 9
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public removeExoPlayerViewListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mPlayerViewListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnWindowListener(Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoWindowListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoWindowListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V
    .locals 1
    .param p1    # Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoInfoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->M(Z)V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->y(Lf/i/a/a/l0$b;)V

    .line 4
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v2, 0x1

    .line 5
    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    .line 6
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->reset()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/t0;->G()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    :cond_1
    return-void
.end method

.method public resetList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->M(Z)V

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0}, Lf/i/a/a/t0;->G()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    :cond_1
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lf/i/a/a/t0;->k(IJ)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/i/a/a/t0;->z()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lf/i/a/a/t0;->k(IJ)V

    :cond_0
    return-void
.end method

.method public setCustomCacheKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setCustomCacheKey(Ljava/lang/String;)V

    return-void
.end method

.method public setDrmSessionManager(Lf/i/a/a/z0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->drmSessionManager:Lf/i/a/a/z0/g;

    return-void
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlaySwitchUri(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(IILandroid/net/Uri;Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 8
    invoke-interface {p3, p5, p2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setSwitchName(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlaySwitchUri(IILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
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
    .param p5    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlaySwitchUri(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p2, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaSwitchUri(Ljava/util/List;I)V

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 4
    invoke-interface {v0, p3, p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setSwitchName(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlaySwitchUri(I[Ljava/lang/String;[Ljava/lang/String;)V
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

    invoke-virtual {p0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlaySwitchUri(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setPlayUri(ILandroid/net/Uri;Landroid/net/Uri;)V
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

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public setPlayUri(ILjava/lang/String;Ljava/lang/String;)V
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

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public setPlayUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setPlayUri(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setPlayUri(Ljava/util/List;)V
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
            "TT;>;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Ljava/util/List;)V

    return-void
.end method

.method public setPlaybackParameters(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playbackParameters:Lf/i/a/a/j0;

    .line 2
    new-instance v0, Lf/i/a/a/j0;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, p2, v1}, Lf/i/a/a/j0;-><init>(FFZ)V

    .line 4
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playbackParameters:Lf/i/a/a/j0;

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lf/i/a/a/t0;->I(Lf/i/a/a/j0;)V

    :cond_0
    return-void
.end method

.method public setPosition(IJ)V
    .locals 0

    .line 2
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumeWindow:I

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->resumePosition:Ljava/lang/Long;

    return-void
.end method

.method public setSeekBarSeek(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    invoke-interface {v1, p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setSeekBarOpenSeek(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShowVideoSwitch(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    invoke-interface {v1, p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setShowWitch(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStartOrPause(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, v3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showPreview(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-virtual {v0, p1}, Lf/i/a/a/t0;->f(Z)V

    :cond_1
    return-void
.end method

.method public setSwitchPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    .line 2
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->updateResumePosition()V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getMediaSource()Lf/i/a/a/h1/e0;

    move-result-object v0

    instance-of v0, v0, Lf/i/a/a/h1/u;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getMediaSource()Lf/i/a/a/h1/e0;

    move-result-object v0

    check-cast v0, Lf/i/a/a/h1/u;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/u;->B(I)Lf/i/a/a/h1/e0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 8
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/i/a/a/h1/u;->w(Lf/i/a/a/h1/e0;)V

    .line 9
    iput-boolean v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isSwitch:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1

    .line 11
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->mediaSourceBuilder:Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Landroid/net/Uri;)V

    .line 12
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playerNoAlertDialog()V

    :goto_0
    return-void
.end method

.method public setTag(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setTag(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseController(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    invoke-interface {v1, p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setUseController(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showControllerView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-interface {v1, v2, v3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->toggoleController(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showControllerView(Z)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, p1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->toggoleController(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
    .locals 3

    .line 1
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->setCurrentVideoPlayer(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->handPause:Z

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 4
    invoke-interface {v2, p0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->startPlayer(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    .line 5
    invoke-interface {v2, v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startVideo()V

    .line 7
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->registerReceiverNet()V

    return-object p0
.end method

.method public startVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->activity:Landroid/content/Context;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPause:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playerNoAlertDialog()V

    goto :goto_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 4
    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showAlertDialog()V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public switchTargetView(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 3
    .param p1    # Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {v0, v1}, Lf/i/a/a/t0;->y(Lf/i/a/a/l0$b;)V

    .line 4
    :cond_1
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    invoke-direct {v0, p0}, Lchuangyuan/ycj/videolibrary/video/PlayComponent;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getComponentListener()Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->removeExoPlayerViewListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;)V

    .line 6
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->videoPlayerView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 7
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getComponentListener()Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addExoPlayerViewListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;)V

    .line 8
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->playComponentListener:Lchuangyuan/ycj/videolibrary/video/PlayComponent;

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->setExoPlayerListener(Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;)V

    .line 9
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->createFullPlayer()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 12
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;->setPlayer(Lf/i/a/a/t0;)V

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->player:Lf/i/a/a/t0;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->componentListener:Lf/i/a/a/l0$b;

    invoke-virtual {p1, v0}, Lf/i/a/a/t0;->r(Lf/i/a/a/l0$b;)V

    .line 14
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 15
    invoke-interface {v0, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setPlayerBtnOnTouch(Z)V

    .line 16
    invoke-interface {v0, v2, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->toggoleController(ZZ)V

    .line 17
    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setControllerHideOnTouch(Z)V

    goto :goto_2

    .line 18
    :cond_4
    iput-boolean v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isEnd:Z

    .line 19
    iput-boolean v1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isLoad:Z

    return-void
.end method
