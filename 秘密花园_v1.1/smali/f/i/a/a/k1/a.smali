.class public Lf/i/a/a/k1/a;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lf/i/a/a/k1/g;


# static fields
.field public static final DEFAULT_AD_MARKER_COLOR:I = -0x4d000100

.field public static final DEFAULT_AD_MARKER_WIDTH_DP:I = 0x4

.field public static final DEFAULT_BAR_HEIGHT_DP:I = 0x4

.field public static final DEFAULT_INCREMENT_COUNT:I = 0x14

.field public static final DEFAULT_PLAYED_COLOR:I = -0x1

.field public static final DEFAULT_SCRUBBER_DISABLED_SIZE_DP:I = 0x0

.field public static final DEFAULT_SCRUBBER_DRAGGED_SIZE_DP:I = 0x10

.field public static final DEFAULT_SCRUBBER_ENABLED_SIZE_DP:I = 0xc

.field public static final DEFAULT_TOUCH_TARGET_HEIGHT_DP:I = 0x1a

.field public static final FINE_SCRUB_RATIO:I = 0x3

.field public static final FINE_SCRUB_Y_THRESHOLD_DP:I = -0x32

.field public static final STOP_SCRUBBING_TIMEOUT_MS:J = 0x3e8L


# instance fields
.field public adGroupCount:I

.field public adGroupTimesMs:[J

.field public final adMarkerPaint:Landroid/graphics/Paint;

.field public final adMarkerWidth:I

.field public final barHeight:I

.field public final bufferedBar:Landroid/graphics/Rect;

.field public final bufferedPaint:Landroid/graphics/Paint;

.field public bufferedPosition:J

.field public duration:J

.field public final fineScrubYThreshold:I

.field public final formatBuilder:Ljava/lang/StringBuilder;

.field public final formatter:Ljava/util/Formatter;

.field public keyCountIncrement:I

.field public keyTimeIncrement:J

.field public lastCoarseScrubXPosition:I

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/k1/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public locationOnScreen:[I

.field public playedAdGroups:[Z

.field public final playedAdMarkerPaint:Landroid/graphics/Paint;

.field public final playedPaint:Landroid/graphics/Paint;

.field public position:J

.field public final progressBar:Landroid/graphics/Rect;

.field public scrubPosition:J

.field public final scrubberBar:Landroid/graphics/Rect;

.field public final scrubberDisabledSize:I

.field public final scrubberDraggedSize:I

.field public final scrubberDrawable:Landroid/graphics/drawable/Drawable;

.field public final scrubberEnabledSize:I

.field public final scrubberPadding:I

.field public final scrubberPaint:Landroid/graphics/Paint;

.field public scrubbing:Z

.field public final seekBounds:Landroid/graphics/Rect;

.field public final stopScrubbingRunnable:Ljava/lang/Runnable;

.field public touchPosition:Landroid/graphics/Point;

.field public final touchTargetHeight:I

.field public final unplayedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->bufferedBar:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->playedPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->bufferedPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->adMarkerPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->playedAdMarkerPaint:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->scrubberPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v2, -0x32

    .line 16
    invoke-static {v0, v2}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v2

    iput v2, p0, Lf/i/a/a/k1/a;->fineScrubYThreshold:I

    const/4 v2, 0x4

    .line 17
    invoke-static {v0, v2}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v3

    const/16 v4, 0x1a

    .line 18
    invoke-static {v0, v4}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 19
    invoke-static {v0, v2}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v2

    const/16 v5, 0xc

    .line 20
    invoke-static {v0, v5}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v5

    const/4 v6, 0x0

    .line 21
    invoke-static {v0, v6}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v7

    const/16 v8, 0x10

    .line 22
    invoke-static {v0, v8}, Lf/i/a/a/k1/a;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v0

    const v9, -0x4d000100

    const/4 v10, -0x1

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v11, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar:[I

    invoke-virtual {p1, p2, v11, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 24
    :try_start_0
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_scrubber_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 25
    invoke-direct {p0, p2}, Lf/i/a/a/k1/a;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z

    .line 26
    iget-object p2, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p2

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 28
    :cond_0
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_bar_height:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->barHeight:I

    .line 29
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_touch_target_height:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    .line 30
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_ad_marker_width:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->adMarkerWidth:I

    .line 31
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->scrubberEnabledSize:I

    .line 32
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->scrubberDisabledSize:I

    .line 33
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lf/i/a/a/k1/a;->scrubberDraggedSize:I

    .line 34
    sget p2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_played_color:I

    invoke-virtual {p1, p2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 35
    sget v0, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_scrubber_color:I

    .line 36
    invoke-static {p2}, Lf/i/a/a/k1/a;->getDefaultScrubberColor(I)I

    move-result v2

    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 38
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_buffered_color:I

    .line 39
    invoke-static {p2}, Lf/i/a/a/k1/a;->getDefaultBufferedColor(I)I

    move-result v3

    .line 40
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 41
    sget v3, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_unplayed_color:I

    .line 42
    invoke-static {p2}, Lf/i/a/a/k1/a;->getDefaultUnplayedColor(I)I

    move-result v4

    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 44
    sget v4, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_ad_marker_color:I

    invoke-virtual {p1, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 45
    sget v5, Lchuangyuan/ycj/videolibrary/R$styleable;->DefaultTimeBar_played_ad_marker_color:I

    .line 46
    invoke-static {v4}, Lf/i/a/a/k1/a;->getDefaultPlayedAdMarkerColor(I)I

    move-result v6

    .line 47
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 48
    iget-object v6, p0, Lf/i/a/a/k1/a;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object p2, p0, Lf/i/a/a/k1/a;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p2, p0, Lf/i/a/a/k1/a;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p2, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p2, p0, Lf/i/a/a/k1/a;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p2, p0, Lf/i/a/a/k1/a;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    throw p2

    .line 56
    :cond_1
    iput v3, p0, Lf/i/a/a/k1/a;->barHeight:I

    .line 57
    iput v4, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    .line 58
    iput v2, p0, Lf/i/a/a/k1/a;->adMarkerWidth:I

    .line 59
    iput v5, p0, Lf/i/a/a/k1/a;->scrubberEnabledSize:I

    .line 60
    iput v7, p0, Lf/i/a/a/k1/a;->scrubberDisabledSize:I

    .line 61
    iput v0, p0, Lf/i/a/a/k1/a;->scrubberDraggedSize:I

    .line 62
    iget-object p1, p0, Lf/i/a/a/k1/a;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lf/i/a/a/k1/a;->scrubberPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lf/i/a/a/k1/a;->getDefaultScrubberColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lf/i/a/a/k1/a;->bufferedPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lf/i/a/a/k1/a;->getDefaultBufferedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p1, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lf/i/a/a/k1/a;->getDefaultUnplayedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object p1, p0, Lf/i/a/a/k1/a;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lf/i/a/a/k1/a;->formatBuilder:Ljava/lang/StringBuilder;

    .line 69
    new-instance p1, Ljava/util/Formatter;

    iget-object p2, p0, Lf/i/a/a/k1/a;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lf/i/a/a/k1/a;->formatter:Ljava/util/Formatter;

    .line 70
    new-instance p1, Lf/i/a/a/k1/a$a;

    invoke-direct {p1, p0}, Lf/i/a/a/k1/a$a;-><init>(Lf/i/a/a/k1/a;)V

    iput-object p1, p0, Lf/i/a/a/k1/a;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 71
    iget-object p1, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lf/i/a/a/k1/a;->scrubberPadding:I

    goto :goto_1

    .line 73
    :cond_2
    iget p1, p0, Lf/i/a/a/k1/a;->scrubberDisabledSize:I

    iget p2, p0, Lf/i/a/a/k1/a;->scrubberEnabledSize:I

    iget v0, p0, Lf/i/a/a/k1/a;->scrubberDraggedSize:I

    .line 74
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lf/i/a/a/k1/a;->scrubberPadding:I

    :goto_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 75
    iput-wide p1, p0, Lf/i/a/a/k1/a;->duration:J

    .line 76
    iput-wide p1, p0, Lf/i/a/a/k1/a;->keyTimeIncrement:J

    const/16 p1, 0x14

    .line 77
    iput p1, p0, Lf/i/a/a/k1/a;->keyCountIncrement:I

    .line 78
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    sget p1, Lf/i/a/a/m1/h0;->a:I

    if-lt p1, v8, :cond_3

    .line 80
    invoke-direct {p0}, Lf/i/a/a/k1/a;->maybeSetImportantForAccessibilityV16()V

    :cond_3
    return-void
.end method

.method public static synthetic access$000(Lf/i/a/a/k1/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    return-void
.end method

.method public static dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 0

    int-to-float p1, p1

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawPlayhead(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0, v2}, Lf/i/a/a/m1/h0;->o(III)I

    move-result v0

    .line 3
    iget-object v1, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 4
    iget-object v2, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 5
    iget-boolean v2, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lf/i/a/a/k1/a;->scrubberEnabledSize:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lf/i/a/a/k1/a;->scrubberDisabledSize:I

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget v2, p0, Lf/i/a/a/k1/a;->scrubberDraggedSize:I

    .line 8
    :goto_1
    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 9
    iget-object v3, p0, Lf/i/a/a/k1/a;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 11
    iget-object v3, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 12
    iget-object v4, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method private drawTimeBar(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3
    iget-wide v2, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 4
    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    int-to-float v8, v0

    iget-object v9, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lf/i/a/a/k1/a;->bufferedBar:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 6
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v4, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8
    iget-object v5, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_1

    int-to-float v7, v4

    int-to-float v8, v1

    int-to-float v9, v5

    int-to-float v10, v0

    .line 9
    iget-object v11, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    :cond_1
    iget-object v4, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v2, v3, :cond_2

    int-to-float v5, v3

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v0

    .line 11
    iget-object v9, p0, Lf/i/a/a/k1/a;->bufferedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    :cond_2
    iget-object v2, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    .line 13
    iget-object v2, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    int-to-float v8, v0

    iget-object v9, p0, Lf/i/a/a/k1/a;->playedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    :cond_3
    iget v2, p0, Lf/i/a/a/k1/a;->adMarkerWidth:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 15
    :goto_0
    iget v5, p0, Lf/i/a/a/k1/a;->adGroupCount:I

    if-ge v4, v5, :cond_5

    .line 16
    iget-object v5, p0, Lf/i/a/a/k1/a;->adGroupTimesMs:[J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lf/i/a/a/k1/a;->duration:J

    invoke-static/range {v6 .. v11}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide v5

    .line 17
    iget-object v7, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-long v7, v7

    mul-long v7, v7, v5

    iget-wide v5, p0, Lf/i/a/a/k1/a;->duration:J

    div-long/2addr v7, v5

    long-to-int v5, v7

    sub-int/2addr v5, v2

    .line 19
    iget-object v6, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v8, p0, Lf/i/a/a/k1/a;->adMarkerWidth:I

    sub-int/2addr v6, v8

    .line 20
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 21
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v7

    .line 22
    iget-object v6, p0, Lf/i/a/a/k1/a;->playedAdGroups:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4

    iget-object v6, p0, Lf/i/a/a/k1/a;->playedAdMarkerPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lf/i/a/a/k1/a;->adMarkerPaint:Landroid/graphics/Paint;

    :goto_1
    move-object v12, v6

    int-to-float v8, v5

    int-to-float v9, v1

    .line 23
    iget v6, p0, Lf/i/a/a/k1/a;->adMarkerWidth:I

    add-int/2addr v5, v6

    int-to-float v10, v5

    int-to-float v11, v0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static getDefaultBufferedColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x34000000    # -3.3554432E7f

    or-int/2addr p0, v0

    return p0
.end method

.method public static getDefaultPlayedAdMarkerColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static getDefaultScrubberColor(I)I
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static getDefaultUnplayedColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/k1/a;->keyTimeIncrement:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lf/i/a/a/k1/a;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/a/a/k1/a;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lf/i/a/a/k1/a;->position:J

    invoke-static {v0, v1, v2, v3}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lf/i/a/a/k1/a;->duration:J

    mul-long v0, v0, v2

    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isInSeekBar(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private maybeSetImportantForAccessibilityV16()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method private positionScrubber(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget-object v1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v2, v1}, Lf/i/a/a/m1/h0;->o(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->locationOnScreen:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lf/i/a/a/k1/a;->locationOnScreen:[I

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lf/i/a/a/k1/a;->touchPosition:Landroid/graphics/Point;

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/a;->locationOnScreen:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/a;->touchPosition:Landroid/graphics/Point;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lf/i/a/a/k1/a;->locationOnScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lf/i/a/a/k1/a;->locationOnScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr p1, v2

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 9
    iget-object p1, p0, Lf/i/a/a/k1/a;->touchPosition:Landroid/graphics/Point;

    return-object p1
.end method

.method private scrubIncrementally(J)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getScrubberPosition()J

    move-result-wide v0

    add-long v3, v0, p1

    const-wide/16 v5, 0x0

    .line 3
    iget-wide v7, p0, Lf/i/a/a/k1/a;->duration:J

    invoke-static/range {v3 .. v8}, Lf/i/a/a/m1/h0;->p(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    return v2

    .line 4
    :cond_1
    iget-boolean p1, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-nez p1, :cond_2

    .line 5
    invoke-direct {p0}, Lf/i/a/a/k1/a;->startScrubbing()V

    .line 6
    :cond_2
    iget-object p1, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/k1/g$a;

    .line 7
    iget-wide v0, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    invoke-interface {p2, p0, v0, v1}, Lf/i/a/a/k1/g$a;->c(Lf/i/a/a/k1/g;J)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    const/4 p1, 0x1

    return p1
.end method

.method private setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lf/i/a/a/k1/a;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 2

    .line 2
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startScrubbing()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/k1/g$a;

    .line 6
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getScrubberPosition()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Lf/i/a/a/k1/g$a;->d(Lf/i/a/a/k1/g;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private stopScrubbing(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    iget-object v0, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/k1/g$a;

    .line 7
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getScrubberPosition()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3, p1}, Lf/i/a/a/k1/g$a;->f(Lf/i/a/a/k1/g;JZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private update()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lf/i/a/a/k1/a;->position:J

    .line 4
    :goto_0
    iget-wide v2, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 5
    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lf/i/a/a/k1/a;->bufferedPosition:J

    mul-long v2, v2, v4

    iget-wide v4, p0, Lf/i/a/a/k1/a;->duration:J

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 6
    iget-object v2, p0, Lf/i/a/a/k1/a;->bufferedBar:Landroid/graphics/Rect;

    iget-object v4, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iget v3, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 8
    iget-object v1, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lf/i/a/a/k1/a;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 10
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberBar:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 11
    :goto_1
    iget-object v0, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lf/i/a/a/k1/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Lf/i/a/a/k1/a;->updateDrawableState()V

    return-void
.end method

.method public isOpenSeek()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lf/i/a/a/k1/a;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    const-class v0, Lf/i/a/a/k1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lf/i/a/a/k1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-wide v0, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 5
    :cond_0
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 6
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 7
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getPositionIncrement()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-long v0, v0

    .line 3
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lf/i/a/a/k1/a;->scrubIncrementally(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/a;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lf/i/a/a/k1/a;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 6
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lf/i/a/a/k1/a;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p1, p0, Lf/i/a/a/k1/a;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v3

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    iget p1, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 4
    iget p2, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    iget p3, p0, Lf/i/a/a/k1/a;->barHeight:I

    sub-int p3, p2, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p5

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    add-int/2addr p2, p5

    invoke-virtual {v0, p1, p5, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object p1, p0, Lf/i/a/a/k1/a;->progressBar:Landroid/graphics/Rect;

    iget-object p2, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p5, p0, Lf/i/a/a/k1/a;->scrubberPadding:I

    add-int/2addr p4, p5

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p5

    iget p5, p0, Lf/i/a/a/k1/a;->barHeight:I

    add-int/2addr p5, p3

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    .line 3
    iget p2, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lf/i/a/a/k1/a;->touchTargetHeight:I

    .line 4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    invoke-direct {p0}, Lf/i/a/a/k1/a;->updateDrawableState()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lf/i/a/a/k1/a;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-wide v2, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const/4 v5, 0x3

    if-eq v3, v4, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_4

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean p1, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz p1, :cond_7

    .line 7
    iget p1, p0, Lf/i/a/a/k1/a;->fineScrubYThreshold:I

    if-ge v0, p1, :cond_2

    .line 8
    iget p1, p0, Lf/i/a/a/k1/a;->lastCoarseScrubXPosition:I

    sub-int/2addr v2, p1

    .line 9
    div-int/2addr v2, v5

    add-int/2addr v2, p1

    int-to-float p1, v2

    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->positionScrubber(F)V

    goto :goto_0

    .line 10
    :cond_2
    iput v2, p0, Lf/i/a/a/k1/a;->lastCoarseScrubXPosition:I

    int-to-float p1, v2

    .line 11
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->positionScrubber(F)V

    .line 12
    :goto_0
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getScrubberPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    .line 13
    iget-object p1, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/k1/g$a;

    .line 14
    iget-wide v1, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    invoke-interface {v0, p0, v1, v2}, Lf/i/a/a/k1/g$a;->c(Lf/i/a/a/k1/g;J)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    .line 17
    :cond_4
    iget-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v1}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    return v4

    :cond_6
    int-to-float p1, v2

    int-to-float v0, v0

    .line 19
    invoke-direct {p0, p1, v0}, Lf/i/a/a/k1/a;->isInSeekBar(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->positionScrubber(F)V

    .line 21
    invoke-direct {p0}, Lf/i/a/a/k1/a;->startScrubbing()V

    .line 22
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getScrubberPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lf/i/a/a/k1/a;->scrubPosition:J

    .line 23
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_7
    :goto_2
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lf/i/a/a/k1/a;->duration:J

    const-wide/16 v3, 0x0

    const/4 p2, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    return p2

    :cond_1
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_2

    .line 3
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getPositionIncrement()J

    move-result-wide v1

    neg-long v1, v1

    invoke-direct {p0, v1, v2}, Lf/i/a/a/k1/a;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0, p2}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_4

    .line 5
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getPositionIncrement()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lf/i/a/a/k1/a;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0, p2}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :cond_4
    return p2
.end method

.method public removeListener(Lf/i/a/a/k1/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .locals 1
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    :goto_1
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iput p3, p0, Lf/i/a/a/k1/a;->adGroupCount:I

    .line 3
    iput-object p1, p0, Lf/i/a/a/k1/a;->adGroupTimesMs:[J

    .line 4
    iput-object p2, p0, Lf/i/a/a/k1/a;->playedAdGroups:[Z

    .line 5
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    return-void
.end method

.method public setAdMarkerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/k1/a;->bufferedPosition:J

    .line 2
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lf/i/a/a/k1/a;->duration:J

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lf/i/a/a/k1/a;->scrubbing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lf/i/a/a/k1/a;->stopScrubbing(Z)V

    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 2
    iput p1, p0, Lf/i/a/a/k1/a;->keyCountIncrement:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lf/i/a/a/k1/a;->keyTimeIncrement:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/i/a/a/k1/a;->keyCountIncrement:I

    .line 3
    iput-wide p1, p0, Lf/i/a/a/k1/a;->keyTimeIncrement:J

    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/k1/a;->position:J

    .line 2
    invoke-direct {p0}, Lf/i/a/a/k1/a;->getProgressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lf/i/a/a/k1/a;->update()V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/k1/a;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
