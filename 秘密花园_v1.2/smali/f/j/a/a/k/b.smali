.class public abstract Lf/j/a/a/k/b;
.super Landroid/widget/RelativeLayout;
.source "InternalAbstract.java"

# interfaces
.implements Lf/j/a/a/f/g;


# instance fields
.field public a:Landroid/view/View;

.field public b:Lf/j/a/a/g/c;

.field public c:Lf/j/a/a/f/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lf/j/a/a/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lf/j/a/a/f/g;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p1, p0, Lf/j/a/a/k/b;->a:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    .line 5
    instance-of p1, p0, Lf/j/a/a/j/b;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    instance-of p1, v0, Lf/j/a/a/f/f;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object p1

    sget-object v2, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne p1, v2, :cond_1

    .line 6
    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 7
    :cond_1
    instance-of p1, p0, Lf/j/a/a/j/c;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    instance-of v2, p1, Lf/j/a/a/f/e;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object p1

    sget-object v2, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne p1, v2, :cond_2

    .line 8
    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V
    .locals 2
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
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 2
    instance-of v1, p0, Lf/j/a/a/j/b;

    if-eqz v1, :cond_1

    instance-of v0, v0, Lf/j/a/a/f/f;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p2, Lf/j/a/a/g/b;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lf/j/a/a/g/b;->b()Lf/j/a/a/g/b;

    move-result-object p2

    .line 5
    :cond_0
    iget-boolean v0, p3, Lf/j/a/a/g/b;->b:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p3}, Lf/j/a/a/g/b;->b()Lf/j/a/a/g/b;

    move-result-object p3

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p0, Lf/j/a/a/j/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    instance-of v0, v0, Lf/j/a/a/f/e;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p2, Lf/j/a/a/g/b;->a:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2}, Lf/j/a/a/g/b;->a()Lf/j/a/a/g/b;

    move-result-object p2

    .line 10
    :cond_2
    iget-boolean v0, p3, Lf/j/a/a/g/b;->a:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p3}, Lf/j/a/a/g/b;->a()Lf/j/a/a/g/b;

    move-result-object p3

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0, p1, p2, p3}, Lf/j/a/a/l/e;->a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V

    :cond_4
    return-void
.end method

.method public b(Lf/j/a/a/f/i;II)V
    .locals 1
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lf/j/a/a/f/g;->b(Lf/j/a/a/f/i;II)V

    :cond_0
    return-void
.end method

.method public d(Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    instance-of v1, v0, Lf/j/a/a/f/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf/j/a/a/f/e;

    invoke-interface {v0, p1}, Lf/j/a/a/f/e;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lf/j/a/a/f/h;II)V
    .locals 1
    .param p1    # Lf/j/a/a/f/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lf/j/a/a/f/g;->e(Lf/j/a/a/f/h;II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lf/j/a/a/k/b;->a:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 5
    instance-of p3, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    if-eqz p3, :cond_1

    .line 6
    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    iget p2, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;->a:I

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->c(Lf/j/a/a/f/g;I)Lf/j/a/a/f/h;

    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lf/j/a/a/f/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p1, Lf/j/a/a/f/g;

    invoke-interface {p1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public g(FII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lf/j/a/a/f/g;->g(FII)V

    :cond_0
    return-void
.end method

.method public getSpinnerStyle()Lf/j/a/a/g/c;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 3
    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lf/j/a/a/k/b;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;->b:Lf/j/a/a/g/c;

    iput-object v1, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_5

    .line 8
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 9
    :cond_3
    sget-object v0, Lf/j/a/a/g/c;->i:[Lf/j/a/a/g/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 10
    iget-boolean v4, v3, Lf/j/a/a/g/c;->c:Z

    if-eqz v4, :cond_4

    .line 11
    iput-object v3, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_5
    sget-object v0, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    iput-object v0, p0, Lf/j/a/a/k/b;->b:Lf/j/a/a/g/c;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->a:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public h(ZFIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lf/j/a/a/f/g;->h(ZFIII)V

    :cond_0
    return-void
.end method

.method public i(Lf/j/a/a/f/i;Z)I
    .locals 1
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lf/j/a/a/f/g;->i(Lf/j/a/a/f/i;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lf/j/a/a/f/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lf/j/a/a/f/i;II)V
    .locals 1
    .param p1    # Lf/j/a/a/f/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lf/j/a/a/f/g;->k(Lf/j/a/a/f/i;II)V

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/j/a/a/k/b;->c:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
