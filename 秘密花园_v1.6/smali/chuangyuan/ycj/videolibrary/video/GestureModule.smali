.class public Lchuangyuan/ycj/videolibrary/video/GestureModule;
.super Ljava/lang/Object;
.source "GestureModule.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;
.implements Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "chuangyuan.ycj.videolibrary.video.GestureModule"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public audioManager:Landroid/media/AudioManager;

.field public brightness:F

.field public final exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public formatBuilder:Ljava/lang/StringBuilder;

.field public formatter:Ljava/util/Formatter;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public mMaxVolume:I

.field public newPosition:J

.field public onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

.field public onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

.field public onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

.field public screeHeightPixels:I

.field public volume:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->newPosition:J

    .line 5
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatBuilder:Ljava/lang/StringBuilder;

    .line 8
    new-instance p2, Ljava/util/Formatter;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatter:Ljava/util/Formatter;

    const-string p2, "audio"

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    iput p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->mMaxVolume:I

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->screeHeightPixels:I

    .line 12
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;-><init>(Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/video/GestureModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->screeHeightPixels:I

    return p0
.end method

.method public static synthetic access$200(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    return-object p0
.end method

.method public static synthetic access$300(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic access$400(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method public static synthetic access$500(Lchuangyuan/ycj/videolibrary/video/GestureModule;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->showProgressDialog(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$700(Lchuangyuan/ycj/videolibrary/video/GestureModule;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->showVolumeDialog(F)V

    return-void
.end method

.method public static synthetic access$800(Lchuangyuan/ycj/videolibrary/video/GestureModule;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->showBrightnessDialog(F)V

    return-void
.end method

.method private endGesture()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    .line 3
    iget-wide v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->newPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 4
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v0, v1}, Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;->endGestureProgress(J)V

    .line 6
    iput-wide v3, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->newPosition:J

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v2, v0, v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->seekTo(J)V

    .line 8
    iput-wide v3, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->newPosition:J

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

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

    const/16 v2, 0x8

    .line 10
    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showGestureView(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private declared-synchronized showBrightnessDialog(F)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    const/4 v1, 0x0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 4
    iput v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6
    iget v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->brightness:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    float-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v3, v5

    if-lez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_2
    cmpg-float p1, v1, v2

    if-gez p1, :cond_3

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x64

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-interface {p1, v2, v0}, Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;->setBrightnessPosition(II)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 13
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-interface {v3, v2, v4}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setBrightnessPosition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 14
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private showProgressDialog(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-wide p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->newPosition:J

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-interface/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;->showProgressDialog(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "/"

    .line 4
    invoke-static {p5, p1, p6}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->activity:Landroid/app/Activity;

    sget p4, Lchuangyuan/ycj/videolibrary/R$color;->simple_exo_style_color:I

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p4

    const/16 p5, 0x21

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 9
    invoke-interface {p2, p3}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setTimePosition(Landroid/text/SpannableString;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private showVolumeDialog(F)V
    .locals 4

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    if-gez v0, :cond_0

    .line 3
    iput v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    .line 4
    :cond_0
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->mMaxVolume:I

    int-to-float v3, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    iget v3, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->volume:I

    add-int/2addr p1, v3

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 5
    :goto_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

    if-eqz p1, :cond_3

    .line 7
    iget v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->mMaxVolume:I

    invoke-interface {p1, v1, v0}, Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;->setVolumePosition(II)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->exoUserPlayer:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 9
    iget v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->mMaxVolume:I

    invoke-interface {v1, v2, v0}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->setVolumePosition(II)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->audioManager:Landroid/media/AudioManager;

    .line 2
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatBuilder:Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatter:Ljava/util/Formatter;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 5
    :cond_0
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->formatter:Ljava/util/Formatter;

    .line 6
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    .line 7
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    .line 8
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

    return-void
.end method

.method public onEndGesture()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->endGesture()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public setOnGestureBrightnessListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureBrightnessListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureBrightnessListener;

    return-void
.end method

.method public setOnGestureProgressListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureProgressListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureProgressListener;

    return-void
.end method

.method public setOnGestureVolumeListener(Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule;->onGestureVolumeListener:Lchuangyuan/ycj/videolibrary/listener/OnGestureVolumeListener;

    return-void
.end method

.method public setPlayer(Lf/i/a/a/t0;)V
    .locals 0

    return-void
.end method
