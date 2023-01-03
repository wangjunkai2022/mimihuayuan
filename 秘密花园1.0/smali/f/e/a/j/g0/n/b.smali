.class public Lf/e/a/j/g0/n/b;
.super Ljava/lang/Object;
.source "ScaleTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const v2, 0x3cf5c280    # 0.029999971f

    const v3, 0x3da3d708    # 0.07999998f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    mul-float v3, v3, p2

    add-float/2addr v3, v0

    mul-float p2, p2, v2

    add-float/2addr p2, v0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_1
    mul-float v3, v3, p2

    sub-float v1, v0, v3

    mul-float p2, p2, v2

    sub-float/2addr v0, p2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    :goto_0
    const p2, 0x3f7851ec    # 0.97f

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    const p2, 0x3f6b851f    # 0.92f

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_1
    return-void
.end method
