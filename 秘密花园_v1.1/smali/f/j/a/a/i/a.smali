.class public Lf/j/a/a/i/a;
.super Lf/j/a/a/k/b;
.source "BezierRadarHeader.java"

# interfaces
.implements Lf/j/a/a/f/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/j/a/a/i/a$a;
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Landroid/graphics/Path;

.field public k:Landroid/graphics/Paint;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:I

.field public u:F

.field public v:F

.field public w:F

.field public x:Landroid/animation/Animator;

.field public y:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Lf/j/a/a/k/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-boolean v0, p0, Lf/j/a/a/i/a;->i:Z

    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lf/j/a/a/i/a;->n:I

    .line 4
    iput v0, p0, Lf/j/a/a/i/a;->o:I

    .line 5
    iput v0, p0, Lf/j/a/a/i/a;->t:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf/j/a/a/i/a;->u:F

    .line 7
    iput v0, p0, Lf/j/a/a/i/a;->v:F

    .line 8
    iput v0, p0, Lf/j/a/a/i/a;->w:F

    .line 9
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lf/j/a/a/i/a;->y:Landroid/graphics/RectF;

    .line 10
    sget-object v3, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    iput-object v3, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    .line 11
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    .line 12
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x40e00000    # 7.0f

    .line 14
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lf/j/a/a/i/a;->r:F

    const/high16 v5, 0x41a00000    # 20.0f

    .line 15
    invoke-static {v5}, Lf/j/a/a/m/b;->d(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lf/j/a/a/i/a;->u:F

    .line 16
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lf/j/a/a/i/a;->v:F

    .line 17
    iget-object v3, p0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lf/j/a/a/m/b;->d(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x42c80000    # 100.0f

    .line 18
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x3e8

    .line 20
    iput v0, p0, Lf/j/a/a/i/a;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lf/j/a/a/i/a;->w:F

    const/16 v0, 0x10e

    .line 22
    iput v0, p0, Lf/j/a/a/i/a;->t:I

    goto :goto_0

    .line 23
    :cond_0
    iput v0, p0, Lf/j/a/a/i/a;->w:F

    .line 24
    :goto_0
    sget-object v0, Lf/j/a/a/d;->BezierRadarHeader:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget v0, Lf/j/a/a/d;->BezierRadarHeader_srlEnableHorizontalDrag:I

    iget-boolean v1, p0, Lf/j/a/a/i/a;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lf/j/a/a/i/a;->i:Z

    .line 26
    sget v0, Lf/j/a/a/d;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 27
    iput v0, p0, Lf/j/a/a/i/a;->d:I

    .line 28
    iput-boolean v4, p0, Lf/j/a/a/i/a;->g:Z

    .line 29
    sget v0, Lf/j/a/a/d;->BezierRadarHeader_srlPrimaryColor:I

    const v1, -0xddddde

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 30
    iput v0, p0, Lf/j/a/a/i/a;->e:I

    .line 31
    iput-boolean v4, p0, Lf/j/a/a/i/a;->f:Z

    .line 32
    sget v0, Lf/j/a/a/d;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lf/j/a/a/i/a;->g:Z

    .line 33
    sget v0, Lf/j/a/a/d;->BezierRadarHeader_srlPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lf/j/a/a/i/a;->f:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V
    .locals 0
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/j/a/a/g/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/j/a/a/g/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lf/j/a/a/i/a;->p:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lf/j/a/a/i/a;->w:F

    .line 4
    iput p1, p0, Lf/j/a/a/i/a;->s:F

    :goto_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Lf/j/a/a/i/a;->o:I

    :goto_0
    move v8, v2

    .line 3
    iget-object v2, v0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v2, v0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    iget v3, v0, Lf/j/a/a/i/a;->l:I

    int-to-float v3, v3

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v2, v0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    iget v3, v0, Lf/j/a/a/i/a;->n:I

    const/high16 v10, 0x40000000    # 2.0f

    if-ltz v3, :cond_1

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    int-to-float v3, v1

    div-float/2addr v3, v10

    :goto_1
    iget v4, v0, Lf/j/a/a/i/a;->l:I

    iget v5, v0, Lf/j/a/a/i/a;->m:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v11, v1

    int-to-float v1, v4

    invoke-virtual {v2, v3, v5, v11, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    iget-object v1, v0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v11, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v2, v0, Lf/j/a/a/i/a;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v1, v0, Lf/j/a/a/i/a;->j:Landroid/graphics/Path;

    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    iget v1, v0, Lf/j/a/a/i/a;->p:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_5

    .line 10
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v2, v0, Lf/j/a/a/i/a;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v8

    .line 11
    sget v2, Lf/j/a/a/m/b;->d:F

    div-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v11, v3

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v4, v5

    .line 12
    iget v6, v0, Lf/j/a/a/i/a;->q:F

    mul-float v12, v4, v6

    cmpl-float v13, v6, v3

    if-lez v13, :cond_2

    sub-float v13, v6, v3

    mul-float v13, v13, v4

    div-float/2addr v13, v6

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    sub-float/2addr v12, v13

    .line 13
    iget v4, v0, Lf/j/a/a/i/a;->q:F

    cmpl-float v6, v4, v3

    if-lez v6, :cond_3

    sub-float v6, v4, v3

    mul-float v6, v6, v1

    div-float/2addr v6, v10

    div-float/2addr v6, v4

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    sub-float/2addr v1, v6

    const/4 v4, 0x0

    :goto_4
    const/4 v6, 0x7

    if-ge v4, v6, :cond_4

    int-to-float v6, v4

    add-float/2addr v6, v3

    const/high16 v13, 0x40800000    # 4.0f

    sub-float/2addr v6, v13

    const/high16 v13, 0x437f0000    # 255.0f

    .line 14
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float/2addr v14, v5

    mul-float v14, v14, v10

    sub-float v14, v3, v14

    mul-float v14, v14, v13

    .line 15
    iget-object v13, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v15, v0, Lf/j/a/a/i/a;->p:F

    mul-float v15, v15, v14

    float-to-double v14, v15

    move/from16 v16, v6

    float-to-double v5, v2

    const-wide/high16 v17, 0x4089000000000000L    # 800.0

    div-double v5, v5, v17

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v5, v5, v17

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v17, v5

    sub-double v17, v17, v5

    mul-double v5, v17, v14

    double-to-int v5, v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget v5, v0, Lf/j/a/a/i/a;->r:F

    const/high16 v6, 0x41200000    # 10.0f

    div-float v6, v2, v6

    add-float/2addr v6, v3

    div-float v6, v3, v6

    sub-float v6, v3, v6

    mul-float v6, v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v9, v11, v5

    div-float v10, v6, v5

    sub-float/2addr v9, v10

    mul-float v10, v16, v12

    add-float/2addr v10, v9

    div-float v9, v1, v5

    .line 17
    iget-object v5, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v9, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_4

    .line 18
    :cond_4
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    :cond_5
    iget-object v1, v0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    :cond_6
    iget v1, v0, Lf/j/a/a/i/a;->u:F

    iget v2, v0, Lf/j/a/a/i/a;->w:F

    mul-float v1, v1, v2

    .line 21
    iget v3, v0, Lf/j/a/a/i/a;->v:F

    mul-float v3, v3, v2

    .line 22
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v4, v0, Lf/j/a/a/i/a;->d:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v11, v2

    int-to-float v4, v8

    div-float v10, v4, v2

    .line 24
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float v12, v3, v1

    .line 26
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v3, v0, Lf/j/a/a/i/a;->e:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x55000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v2, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v2, v0, Lf/j/a/a/i/a;->y:Landroid/graphics/RectF;

    sub-float v3, v9, v1

    sub-float v4, v10, v1

    add-float v5, v9, v1

    add-float/2addr v1, v10

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    iget-object v2, v0, Lf/j/a/a/i/a;->y:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    iget v1, v0, Lf/j/a/a/i/a;->t:I

    int-to-float v4, v1

    const/4 v5, 0x1

    iget-object v6, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 31
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v1, v0, Lf/j/a/a/i/a;->y:Landroid/graphics/RectF;

    sub-float v2, v9, v12

    sub-float v3, v10, v12

    add-float/2addr v9, v12

    add-float/2addr v10, v12

    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    iget-object v2, v0, Lf/j/a/a/i/a;->y:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    iget v1, v0, Lf/j/a/a/i/a;->t:I

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 34
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    :cond_7
    iget v1, v0, Lf/j/a/a/i/a;->s:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 36
    iget-object v1, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    iget v2, v0, Lf/j/a/a/i/a;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v11, v1

    int-to-float v2, v8

    div-float/2addr v2, v1

    .line 37
    iget v1, v0, Lf/j/a/a/i/a;->s:F

    iget-object v3, v0, Lf/j/a/a/i/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public g(FII)V
    .locals 0

    .line 1
    iput p2, p0, Lf/j/a/a/i/a;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h(ZFIII)V
    .locals 0

    .line 1
    iput p3, p0, Lf/j/a/a/i/a;->o:I

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lf/j/a/a/i/a;->h:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lf/j/a/a/i/a;->h:Z

    .line 4
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lf/j/a/a/i/a;->l:I

    const p1, 0x3ff33333    # 1.9f

    const/4 p5, 0x0

    sub-int/2addr p3, p4

    .line 5
    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lf/j/a/a/i/a;->m:I

    .line 6
    iput p2, p0, Lf/j/a/a/i/a;->q:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 2
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 6
    iget p2, p0, Lf/j/a/a/i/a;->o:I

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p2, p1

    int-to-double p1, p2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lf/j/a/a/i/a;->u:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lf/j/a/a/i/a$a;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lf/j/a/a/i/a$a;-><init>(Lf/j/a/a/i/a;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x190

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/i/a;->i:Z

    return v0
.end method

.method public k(Lf/j/a/a/f/i;II)V
    .locals 7
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    .line 1
    iput p2, p0, Lf/j/a/a/i/a;->l:I

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lf/j/a/a/i/a;->h:Z

    .line 3
    new-instance p3, Lf/j/a/a/m/b;

    sget v0, Lf/j/a/a/m/b;->c:I

    invoke-direct {p3, p1}, Lf/j/a/a/m/b;-><init>(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v2, Lf/j/a/a/i/a$a;

    invoke-direct {v2, p0, v0}, Lf/j/a/a/i/a$a;-><init>(Lf/j/a/a/i/a;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 7
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 8
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance p3, Lf/j/a/a/i/a$a;

    invoke-direct {p3, p0, p2}, Lf/j/a/a/i/a$a;-><init>(Lf/j/a/a/i/a;B)V

    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p3, v0, [I

    .line 10
    fill-array-data p3, :array_2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v3, 0x2d0

    .line 11
    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    .line 12
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 13
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v3, Lf/j/a/a/i/a$a;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lf/j/a/a/i/a$a;-><init>(Lf/j/a/a/i/a;B)V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/animation/Animator;

    aput-object v1, v6, p2

    aput-object v2, v6, p1

    aput-object p3, v6, v0

    .line 16
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 17
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 18
    iget v1, p0, Lf/j/a/a/i/a;->m:I

    aput v1, p3, p2

    aput p2, p3, p1

    int-to-float v2, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v6

    float-to-int v2, v2

    neg-int v2, v2

    aput v2, p3, v0

    aput p2, p3, v5

    int-to-float v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    aput v0, p3, v4

    const/4 v0, 0x5

    aput p2, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 19
    new-instance p3, Lf/j/a/a/i/a$a;

    invoke-direct {p3, p0, p1}, Lf/j/a/a/i/a$a;-><init>(Lf/j/a/a/i/a;B)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    new-instance p3, Lf/j/a/a/m/b;

    sget v0, Lf/j/a/a/m/b;->c:I

    invoke-direct {p3, p1}, Lf/j/a/a/m/b;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    iput-object v3, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/j/a/a/i/a;->x:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lf/j/a/a/i/a;->f:Z

    if-nez v0, :cond_0

    .line 2
    aget v0, p1, v1

    .line 3
    iput v0, p0, Lf/j/a/a/i/a;->e:I

    .line 4
    iput-boolean v2, p0, Lf/j/a/a/i/a;->f:Z

    .line 5
    iput-boolean v1, p0, Lf/j/a/a/i/a;->f:Z

    .line 6
    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lf/j/a/a/i/a;->g:Z

    if-nez v0, :cond_1

    .line 7
    aget p1, p1, v2

    .line 8
    iput p1, p0, Lf/j/a/a/i/a;->d:I

    .line 9
    iput-boolean v2, p0, Lf/j/a/a/i/a;->g:Z

    .line 10
    iput-boolean v1, p0, Lf/j/a/a/i/a;->g:Z

    :cond_1
    return-void
.end method
