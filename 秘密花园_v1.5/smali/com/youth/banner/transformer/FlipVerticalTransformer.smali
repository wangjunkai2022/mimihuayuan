.class public Lcom/youth/banner/transformer/FlipVerticalTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "FlipVerticalTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostTransform(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/youth/banner/transformer/ABaseTransformer;->onPostTransform(Landroid/view/View;F)V

    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTransform(Landroid/view/View;F)V
    .locals 2

    const/high16 v0, -0x3ccc0000    # -180.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method
