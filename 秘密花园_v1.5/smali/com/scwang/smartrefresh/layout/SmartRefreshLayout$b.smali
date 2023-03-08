.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lf/j/a/a/l/d;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lf/j/a/a/l/d;->b(Lf/j/a/a/f/i;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-nez v0, :cond_1

    const/16 v0, 0xbb8

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_2

    .line 9
    iget v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p1, v1, v2}, Lf/j/a/a/f/g;->b(Lf/j/a/a/f/i;II)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    instance-of v1, v1, Lf/j/a/a/f/f;

    if-eqz v1, :cond_4

    .line 11
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->a:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0, p1}, Lf/j/a/a/l/d;->b(Lf/j/a/a/f/i;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    check-cast v1, Lf/j/a/a/f/f;

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lf/j/a/a/l/c;->l(Lf/j/a/a/f/f;II)V

    :cond_4
    return-void
.end method
