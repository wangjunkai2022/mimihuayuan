.class public abstract Lf/j/a/a/k/c;
.super Lf/j/a/a/k/b;
.source "InternalClassics.java"

# interfaces
.implements Lf/j/a/a/f/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lf/j/a/a/k/c;",
        ">",
        "Lf/j/a/a/k/b;",
        "Lf/j/a/a/f/g;"
    }
.end annotation


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Lf/j/a/a/f/h;

.field public h:Lf/j/a/a/k/d;

.field public i:Lf/j/a/a/k/d;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/j/a/a/k/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 2
    iput p1, p0, Lf/j/a/a/k/c;->m:I

    const/16 p1, 0x14

    .line 3
    iput p1, p0, Lf/j/a/a/k/c;->n:I

    .line 4
    iput p1, p0, Lf/j/a/a/k/c;->o:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lf/j/a/a/k/c;->p:I

    .line 6
    sget-object p1, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    iput-object p1, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

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
    iget-object p1, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    instance-of p3, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p3, :cond_0

    .line 6
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x470ca000    # 36000.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/32 p2, 0x186a0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lf/j/a/a/f/h;II)V
    .locals 0
    .param p1    # Lf/j/a/a/f/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/j/a/a/k/c;->g:Lf/j/a/a/f/h;

    .line 2
    iget p2, p0, Lf/j/a/a/k/c;->l:I

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->c(Lf/j/a/a/f/g;I)Lf/j/a/a/f/h;

    return-void
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 2
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget p1, p0, Lf/j/a/a/k/c;->m:I

    return p1
.end method

.method public k(Lf/j/a/a/f/i;II)V
    .locals 0
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf/j/a/a/k/c;->b(Lf/j/a/a/f/i;II)V

    return-void
.end method

.method public o(I)Lf/j/a/a/k/c;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/j/a/a/k/c;->j:Z

    .line 2
    iget-object v0, p0, Lf/j/a/a/k/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/j/a/a/k/c;->h:Lf/j/a/a/k/d;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lf/j/a/a/k/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lf/j/a/a/k/c;->i:Lf/j/a/a/k/d;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lf/j/a/a/k/c;->e:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    iget-object v0, p0, Lf/j/a/a/k/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lf/j/a/a/k/c;->p:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lf/j/a/a/k/c;->n:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lf/j/a/a/k/c;->o:I

    .line 4
    iget v2, p0, Lf/j/a/a/k/c;->n:I

    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 7
    iget v3, p0, Lf/j/a/a/k/c;->n:I

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v3, :cond_1

    invoke-static {v4}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    :cond_1
    iput v3, p0, Lf/j/a/a/k/c;->n:I

    .line 8
    iget v3, p0, Lf/j/a/a/k/c;->o:I

    if-nez v3, :cond_2

    invoke-static {v4}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    :cond_2
    iput v3, p0, Lf/j/a/a/k/c;->o:I

    .line 9
    iget v4, p0, Lf/j/a/a/k/c;->n:I

    invoke-virtual {p0, v0, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 11
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_6

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 13
    iget v2, p0, Lf/j/a/a/k/c;->p:I

    if-ge v0, v2, :cond_5

    sub-int/2addr v0, v2

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lf/j/a/a/k/c;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lf/j/a/a/k/c;->o:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 19
    iget p1, p0, Lf/j/a/a/k/c;->p:I

    if-nez p1, :cond_8

    .line 20
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 22
    iget p2, p0, Lf/j/a/a/k/c;->p:I

    if-ge p2, p1, :cond_7

    .line 23
    iput p1, p0, Lf/j/a/a/k/c;->p:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public p(I)Lf/j/a/a/k/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/j/a/a/k/c;->k:Z

    .line 2
    iput p1, p0, Lf/j/a/a/k/c;->l:I

    .line 3
    iget-object v0, p0, Lf/j/a/a/k/c;->g:Lf/j/a/a/f/h;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->c(Lf/j/a/a/f/g;I)Lf/j/a/a/f/h;

    :cond_0
    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    if-lez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/j/a/a/k/c;->k:Z

    if-nez v0, :cond_0

    .line 3
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lf/j/a/a/k/c;->p(I)Lf/j/a/a/k/c;

    .line 4
    iput-boolean v1, p0, Lf/j/a/a/k/c;->k:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lf/j/a/a/k/c;->j:Z

    if-nez v0, :cond_3

    .line 6
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 7
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lf/j/a/a/k/c;->o(I)Lf/j/a/a/k/c;

    goto :goto_0

    .line 8
    :cond_1
    aget p1, p1, v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const v0, -0x99999a

    :cond_2
    invoke-virtual {p0, v0}, Lf/j/a/a/k/c;->o(I)Lf/j/a/a/k/c;

    .line 9
    :goto_0
    iput-boolean v1, p0, Lf/j/a/a/k/c;->j:Z

    :cond_3
    return-void
.end method
