.class public Lcom/youth/banner/transformer/TabletTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "TabletTransformer.java"


# static fields
.field public static final OFFSET_CAMERA:Landroid/graphics/Camera;

.field public static final OFFSET_MATRIX:Landroid/graphics/Matrix;

.field public static final OFFSET_TEMP_FLOAT:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    .line 2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    sput-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_CAMERA:Landroid/graphics/Camera;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    sput-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_TEMP_FLOAT:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method

.method public static final getOffsetXForRotation(FII)F
    .locals 4

    .line 1
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_CAMERA:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 3
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_CAMERA:Landroid/graphics/Camera;

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_CAMERA:Landroid/graphics/Camera;

    sget-object v1, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 5
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_CAMERA:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 6
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    neg-int v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    neg-int v3, p2

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    int-to-float p1, p1

    mul-float v1, p1, v2

    int-to-float p2, p2

    mul-float v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8
    sget-object v0, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_TEMP_FLOAT:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    .line 9
    aput p2, v0, v2

    .line 10
    sget-object p2, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 11
    sget-object p2, Lcom/youth/banner/transformer/TabletTransformer;->OFFSET_TEMP_FLOAT:[F

    aget p2, p2, v1

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    mul-float p1, p1, p0

    return p1
.end method


# virtual methods
.method public onTransform(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_0
    const/high16 v1, -0x3e100000    # -30.0f

    .line 1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/youth/banner/transformer/TabletTransformer;->getOffsetXForRotation(FII)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method
