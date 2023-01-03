.class public Lcom/youth/banner/transformer/DepthPageTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "DepthPageTransformer.java"


# static fields
.field public static final MIN_SCALE:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTransform(Landroid/view/View;F)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    mul-float v3, v3, v2

    add-float/2addr v3, v0

    sub-float/2addr v1, p2

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float p2, p2

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method
