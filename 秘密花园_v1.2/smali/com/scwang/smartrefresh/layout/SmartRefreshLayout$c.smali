.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 2
    iget v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_0

    iget-boolean v2, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lf/j/a/a/g/b;->d:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    :cond_1
    :goto_0
    return-void
.end method
