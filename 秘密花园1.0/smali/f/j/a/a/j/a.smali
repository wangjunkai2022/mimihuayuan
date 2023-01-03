.class public Lf/j/a/a/j/a;
.super Ljava/lang/Object;
.source "RefreshContentWrapper.java"

# interfaces
.implements Lf/j/a/a/f/d;
.implements Lf/j/a/a/l/a;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lf/j/a/a/j/d;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/j/a/a/j/a;->f:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/j/a/a/j/a;->g:Z

    .line 4
    iput-boolean v0, p0, Lf/j/a/a/j/a;->h:Z

    .line 5
    new-instance v0, Lf/j/a/a/j/d;

    invoke-direct {v0}, Lf/j/a/a/j/d;-><init>()V

    iput-object v0, p0, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    .line 6
    iput-object p1, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    iput-object p1, p0, Lf/j/a/a/j/a;->b:Landroid/view/View;

    iput-object p1, p0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/j/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iget-object v1, p0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lf/j/a/a/j/d;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/j/a/a/j/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iget-object v1, p0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lf/j/a/a/j/d;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :cond_0
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lf/j/a/a/m/b;->h(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_1

    invoke-static {v2}, Lf/j/a/a/m/b;->f(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 9
    invoke-virtual {p0, v2, p2, p3}, Lf/j/a/a/j/a;->c(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 10
    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_2
    return-object v2

    :cond_3
    return-object p3
.end method

.method public d(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    .line 1
    iget-object v4, p0, Lf/j/a/a/j/a;->b:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    .line 2
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eq p3, v1, :cond_3

    .line 5
    iget-object v1, p0, Lf/j/a/a/j/a;->b:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 8
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    move v0, p2

    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object p2, p0, Lf/j/a/a/j/a;->b:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 10
    :cond_4
    iget-object p2, p0, Lf/j/a/a/j/a;->b:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    :goto_2
    iget-object p2, p0, Lf/j/a/a/j/a;->d:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 12
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    :cond_5
    iget-object p2, p0, Lf/j/a/a/j/a;->e:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 14
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public e(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lf/j/a/a/m/b;->c(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lf/j/a/a/m/b;->c(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iput p1, p0, Lf/j/a/a/j/a;->f:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    :try_start_0
    iget v0, p0, Lf/j/a/a/j/a;->f:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v0, v0, v1

    .line 3
    iget-object v1, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    float-to-int v0, v0

    invoke-static {v1, v0}, Lf/j/a/a/m/b;->j(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    iput p1, p0, Lf/j/a/a/j/a;->f:I

    return-void
.end method
