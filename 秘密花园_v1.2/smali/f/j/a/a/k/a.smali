.class public Lf/j/a/a/k/a;
.super Lf/j/a/a/k/d;
.source "ArrowDrawable.java"


# instance fields
.field public b:I

.field public c:I

.field public d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/j/a/a/k/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/j/a/a/k/a;->b:I

    .line 3
    iput v0, p0, Lf/j/a/a/k/a;->c:I

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 4
    iget v2, p0, Lf/j/a/a/k/a;->b:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lf/j/a/a/k/a;->c:I

    if-eq v2, v0, :cond_1

    :cond_0
    mul-int/lit8 v2, v1, 0x1e

    .line 5
    div-int/lit16 v2, v2, 0xe1

    .line 6
    iget-object v3, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    int-to-float v2, v2

    const v3, 0x3f3504f3

    mul-float v4, v2, v3

    div-float v3, v2, v3

    .line 7
    iget-object v5, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    int-to-float v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object v5, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    div-float v10, v9, v7

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v5, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    sub-float v12, v10, v4

    invoke-virtual {v5, v4, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v5, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    div-float/2addr v2, v7

    sub-float v7, v8, v2

    sub-float/2addr v9, v3

    sub-float/2addr v9, v2

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v3, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v3, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    add-float/2addr v8, v2

    invoke-virtual {v3, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v2, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v2, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    sub-float v3, v6, v4

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v2, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v2, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 17
    iput v1, p0, Lf/j/a/a/k/a;->b:I

    .line 18
    iput v0, p0, Lf/j/a/a/k/a;->c:I

    .line 19
    :cond_1
    iget-object v0, p0, Lf/j/a/a/k/a;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
