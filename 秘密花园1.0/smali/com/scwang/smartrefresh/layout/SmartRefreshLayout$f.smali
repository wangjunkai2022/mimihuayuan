.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Boolean;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->b:I

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->c:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v3, v4, :cond_0

    .line 3
    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v3, v0, Lf/j/a/a/g/b;->a:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lf/j/a/a/g/b;->d:Z

    if-nez v3, :cond_1

    sget-object v3, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    if-ne v0, v3, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 6
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v1, v3, :cond_3

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v1, :cond_3

    .line 10
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:I

    .line 11
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->b:I

    int-to-long v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lf/j/a/a/g/b;->v:Lf/j/a/a/g/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->c:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lf/j/a/a/f/i;

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->c:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lf/j/a/a/f/i;

    goto/16 :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->d:Z

    invoke-interface {v3, v0, v4}, Lf/j/a/a/f/g;->i(Lf/j/a/a/f/i;Z)I

    move-result v0

    .line 18
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    instance-of v5, v3, Lf/j/a/a/f/f;

    if-eqz v5, :cond_5

    .line 19
    check-cast v3, Lf/j/a/a/f/f;

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->d:Z

    invoke-interface {v4, v3, v5}, Lf/j/a/a/l/c;->c(Lf/j/a/a/f/f;Z)V

    :cond_5
    const v3, 0x7fffffff

    if-ge v0, v3, :cond_c

    .line 20
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v4, :cond_6

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    if-eqz v3, :cond_8

    .line 21
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 22
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_7

    .line 23
    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 24
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 25
    iput-boolean v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    const/4 v8, 0x0

    .line 26
    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 27
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 28
    :cond_7
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    if-eqz v4, :cond_8

    .line 29
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    const/4 v8, 0x1

    .line 30
    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v10, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 31
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    .line 32
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 33
    :cond_8
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v4, :cond_a

    .line 34
    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    if-eqz v3, :cond_9

    .line 36
    iget-object v1, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    check-cast v1, Lf/j/a/a/j/a;

    invoke-virtual {v1, v2}, Lf/j/a/a/j/a;->e(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_9
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_a
    if-gez v4, :cond_b

    .line 38
    iget-object v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 39
    :cond_b
    iget-object v0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v2, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 40
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    :cond_c
    :goto_1
    return-void
.end method
