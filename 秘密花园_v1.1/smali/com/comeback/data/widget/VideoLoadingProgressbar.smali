.class public Lcom/comeback/data/widget/VideoLoadingProgressbar;
.super Landroid/view/View;
.source "VideoLoadingProgressbar.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/os/Handler;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    .line 3
    iput p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->d:I

    const-string p1, "FAYGAA4XXA=="

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->e:I

    const/16 p1, 0x14

    .line 5
    iput p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->h:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    .line 7
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance p1, Lf/e/a/m/a;

    invoke-direct {p1, p0}, Lf/e/a/m/a;-><init>(Lcom/comeback/data/widget/VideoLoadingProgressbar;)V

    iput-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->g:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->g:Landroid/os/Handler;

    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->h:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    .line 3
    iget v1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->a:I

    if-le v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->d:I

    iput v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    mul-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->a:I

    div-int/2addr v0, v1

    rsub-int v0, v0, 0xff

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->a:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->c:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    sub-float v6, v1, v4

    const/4 v7, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v3

    div-float/2addr v1, v2

    add-float v8, v1, v0

    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->b:I

    int-to-float v9, v0

    iget-object v10, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->a:I

    .line 3
    iput p2, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->b:I

    .line 4
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->f:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->g:Landroid/os/Handler;

    const/4 p2, 0x1

    iget v0, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->h:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/widget/VideoLoadingProgressbar;->g:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
