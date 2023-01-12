.class public Lf/j/a/a/e$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/j/a/a/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/j/a/a/e;


# direct methods
.method public constructor <init>(Lf/j/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j/a/a/e$b;->a:Lf/j/a/a/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/j/a/a/e$b;->a:Lf/j/a/a/e;

    iget-object p1, p1, Lf/j/a/a/e;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    .line 5
    :cond_0
    iget-object p1, p0, Lf/j/a/a/e$b;->a:Lf/j/a/a/e;

    iget-object v0, p1, Lf/j/a/a/e;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lf/j/a/a/e;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    :cond_1
    return-void
.end method
