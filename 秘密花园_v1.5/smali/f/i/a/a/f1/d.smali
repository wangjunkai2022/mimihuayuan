.class public Lf/i/a/a/f1/d;
.super Landroid/view/TextureView;
.source "RenderTextureView.java"

# interfaces
.implements Lf/i/a/a/f1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/f1/d$c;,
        Lf/i/a/a/f1/d$b;
    }
.end annotation


# instance fields
.field public a:Lf/i/a/a/f1/a$a;

.field public b:Lf/i/a/a/f1/b;

.field public c:Z

.field public d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lf/i/a/a/f1/b;

    invoke-direct {p1}, Lf/i/a/a/f1/b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 3
    new-instance p1, Lf/i/a/a/f1/d$c;

    invoke-direct {p1, p0, v0}, Lf/i/a/a/f1/d$c;-><init>(Lf/i/a/a/f1/d;Lf/i/a/a/f1/d$a;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    const/16 v0, 0x1e0

    .line 5
    iput v0, p1, Lf/i/a/a/f1/b;->a:I

    const/16 v0, 0x10e

    .line 6
    iput v0, p1, Lf/i/a/a/f1/b;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->a:I

    .line 3
    iput p2, v0, Lf/i/a/a/f1/b;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public c(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->c:I

    .line 3
    iput p2, v0, Lf/i/a/a/f1/b;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iget v1, v0, Lf/i/a/a/f1/b;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget v3, v0, Lf/i/a/a/f1/b;->a:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, v0, Lf/i/a/a/f1/b;->i:F

    mul-float v3, v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p1, :cond_3

    .line 3
    iget v1, v0, Lf/i/a/a/f1/b;->h:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_3

    :cond_2
    div-float v3, v2, v3

    :cond_3
    cmpg-float v1, v3, v2

    if-gez v1, :cond_4

    .line 4
    iput p1, v0, Lf/i/a/a/f1/b;->h:I

    int-to-float p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_4
    return-void
.end method

.method public getOwnSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iget v0, v0, Lf/i/a/a/f1/b;->g:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/f1/b;->a(II)V

    .line 2
    iget-object p1, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 3
    iget p2, p1, Lf/i/a/a/f1/b;->e:I

    .line 4
    iget p1, p1, Lf/i/a/a/f1/b;->f:I

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPixelWidthHeightRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->i:F

    return-void
.end method

.method public setRenderCallback(Lf/i/a/a/f1/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/f1/d;->a:Lf/i/a/a/f1/a$a;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/f1/d;->d:Landroid/view/Surface;

    return-void
.end method

.method public setTakeOverSurfaceTexture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/f1/d;->c:Z

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->h:I

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    return-void
.end method
