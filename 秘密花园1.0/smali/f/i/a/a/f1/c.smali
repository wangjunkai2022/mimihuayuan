.class public Lf/i/a/a/f1/c;
.super Landroid/view/SurfaceView;
.source "RenderSurfaceView.java"

# interfaces
.implements Lf/i/a/a/f1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/f1/c$c;,
        Lf/i/a/a/f1/c$b;
    }
.end annotation


# instance fields
.field public a:Lf/i/a/a/f1/a$a;

.field public b:Lf/i/a/a/f1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lf/i/a/a/f1/b;

    invoke-direct {p1}, Lf/i/a/a/f1/b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v1, Lf/i/a/a/f1/c$c;

    invoke-direct {v1, p0, v0}, Lf/i/a/a/f1/c$c;-><init>(Lf/i/a/a/f1/c;Lf/i/a/a/f1/c$a;)V

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    iget-object p1, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    const/16 v0, 0x1e0

    .line 5
    iput v0, p1, Lf/i/a/a/f1/b;->a:I

    const/16 v1, 0x10e

    .line 6
    iput v1, p1, Lf/i/a/a/f1/b;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->a:I

    .line 3
    iput p2, v0, Lf/i/a/a/f1/b;->b:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public c(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->c:I

    .line 3
    iput p2, v0, Lf/i/a/a/f1/b;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getResizeMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 2
    iget v0, v0, Lf/i/a/a/f1/b;->g:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    invoke-virtual {v0, p1, p2}, Lf/i/a/a/f1/b;->a(II)V

    .line 3
    iget-object p1, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 4
    iget p2, p1, Lf/i/a/a/f1/b;->e:I

    .line 5
    iget p1, p1, Lf/i/a/a/f1/b;->f:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPixelWidthHeightRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/c;->b:Lf/i/a/a/f1/b;

    .line 2
    iput p1, v0, Lf/i/a/a/f1/b;->i:F

    return-void
.end method

.method public setRenderCallback(Lf/i/a/a/f1/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/f1/c;->a:Lf/i/a/a/f1/a$a;

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0

    return-void
.end method
