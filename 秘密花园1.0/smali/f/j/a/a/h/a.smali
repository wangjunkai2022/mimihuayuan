.class public Lf/j/a/a/h/a;
.super Lf/j/a/a/k/b;
.source "BallPulseFooter.java"

# interfaces
.implements Lf/j/a/a/f/e;


# instance fields
.field public d:Z

.field public e:Z

.field public f:Landroid/graphics/Paint;

.field public g:I

.field public h:I

.field public i:F

.field public j:J

.field public k:Z

.field public l:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Lf/j/a/a/k/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, -0x111112

    .line 2
    iput v2, p0, Lf/j/a/a/h/a;->g:I

    const v2, -0x18a6ba

    .line 3
    iput v2, p0, Lf/j/a/a/h/a;->h:I

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lf/j/a/a/h/a;->j:J

    .line 5
    iput-boolean v0, p0, Lf/j/a/a/h/a;->k:Z

    .line 6
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lf/j/a/a/h/a;->l:Landroid/animation/TimeInterpolator;

    const/high16 v2, 0x42700000    # 60.0f

    .line 7
    invoke-static {v2}, Lf/j/a/a/m/b;->d(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8
    sget-object v2, Lf/j/a/a/d;->BallPulseFooter:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v1, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v1, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    sget-object v1, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    iput-object v1, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    .line 14
    sget-object v3, Lf/j/a/a/g/c;->i:[Lf/j/a/a/g/c;

    sget v4, Lf/j/a/a/d;->BallPulseFooter_srlClassicsSpinnerStyle:I

    iget v1, v1, Lf/j/a/a/g/c;->a:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v1, v3, v1

    iput-object v1, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    .line 15
    sget v1, Lf/j/a/a/d;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget v1, Lf/j/a/a/d;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lf/j/a/a/h/a;->o(I)Lf/j/a/a/h/a;

    .line 17
    :cond_0
    sget v1, Lf/j/a/a/d;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    sget v1, Lf/j/a/a/d;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 19
    iput v0, p0, Lf/j/a/a/h/a;->h:I

    .line 20
    iput-boolean v2, p0, Lf/j/a/a/h/a;->e:Z

    .line 21
    iget-boolean v1, p0, Lf/j/a/a/h/a;->k:Z

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x40800000    # 4.0f

    .line 24
    invoke-static {p1}, Lf/j/a/a/m/b;->d(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lf/j/a/a/h/a;->i:F

    return-void
.end method


# virtual methods
.method public b(Lf/j/a/a/f/i;II)V
    .locals 0
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lf/j/a/a/h/a;->k:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lf/j/a/a/h/a;->k:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lf/j/a/a/h/a;->j:J

    .line 5
    iget-object p1, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    iget p2, p0, Lf/j/a/a/h/a;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lf/j/a/a/h/a;->i:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v4, v7

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float v7, v4, v6

    add-float/2addr v5, v7

    sub-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v5, v10, :cond_2

    .line 5
    iget-wide v10, v0, Lf/j/a/a/h/a;->j:J

    sub-long v10, v8, v10

    add-int/lit8 v12, v5, 0x1

    mul-int/lit8 v13, v12, 0x78

    int-to-long v13, v13

    sub-long/2addr v10, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    cmp-long v16, v10, v13

    if-lez v16, :cond_0

    const-wide/16 v13, 0x2ee

    .line 6
    rem-long/2addr v10, v13

    long-to-float v10, v10

    const v11, 0x443b8000    # 750.0f

    div-float/2addr v10, v11

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 7
    :goto_1
    iget-object v11, v0, Lf/j/a/a/h/a;->l:Landroid/animation/TimeInterpolator;

    invoke-interface {v11, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v5

    mul-float v11, v7, v5

    add-float/2addr v11, v2

    .line 9
    iget v13, v0, Lf/j/a/a/h/a;->i:F

    mul-float v13, v13, v5

    add-float/2addr v13, v11

    .line 10
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-double v13, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const v5, 0x3f333333    # 0.7f

    cmpg-double v11, v13, v16

    if-gez v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v6

    mul-float v10, v10, v5

    sub-float/2addr v11, v10

    .line 11
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_1
    mul-float v10, v10, v6

    mul-float v10, v10, v5

    const v5, 0x3ecccccd    # 0.4f

    sub-float/2addr v10, v5

    .line 12
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13
    :goto_2
    iget-object v5, v0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v15, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v5, v12

    goto :goto_0

    .line 15
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16
    iget-boolean v1, v0, Lf/j/a/a/h/a;->k:Z

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 2
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lf/j/a/a/h/a;->k:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/j/a/a/h/a;->j:J

    .line 3
    iget-object p2, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    iget v0, p0, Lf/j/a/a/h/a;->g:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return p1
.end method

.method public o(I)Lf/j/a/a/h/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lf/j/a/a/h/a;->g:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/j/a/a/h/a;->d:Z

    .line 3
    iget-boolean v0, p0, Lf/j/a/a/h/a;->k:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/h/a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 2
    aget v0, p1, v1

    .line 3
    iput v0, p0, Lf/j/a/a/h/a;->h:I

    .line 4
    iput-boolean v2, p0, Lf/j/a/a/h/a;->e:Z

    .line 5
    iget-boolean v3, p0, Lf/j/a/a/h/a;->k:Z

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lf/j/a/a/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_0
    iput-boolean v1, p0, Lf/j/a/a/h/a;->e:Z

    .line 8
    :cond_1
    iget-boolean v0, p0, Lf/j/a/a/h/a;->d:Z

    if-nez v0, :cond_4

    .line 9
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 10
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lf/j/a/a/h/a;->o(I)Lf/j/a/a/h/a;

    goto :goto_0

    .line 11
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    const v0, -0x66000001

    .line 12
    aget p1, p1, v1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lf/j/a/a/h/a;->o(I)Lf/j/a/a/h/a;

    .line 13
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lf/j/a/a/h/a;->d:Z

    :cond_4
    return-void
.end method
