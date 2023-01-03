.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(IZZ)Lf/j/a/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:I

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->c:Z

    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v2, v3, :cond_0

    .line 3
    sget-object v2, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v2, v0, Lf/j/a/a/g/b;->d:Z

    if-nez v2, :cond_1

    sget-object v2, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v2, v2, Lf/j/a/a/g/b;->b:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    .line 6
    iput-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v2, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v2, :cond_3

    .line 10
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:I

    .line 11
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    return-void

    .line 13
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->c:Z

    if-eqz v0, :cond_d

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lf/j/a/a/f/i;

    goto/16 :goto_5

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->d:Z

    invoke-interface {v2, v0, v3}, Lf/j/a/a/f/g;->i(Lf/j/a/a/f/i;Z)I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    instance-of v4, v2, Lf/j/a/a/f/e;

    if-eqz v4, :cond_5

    .line 17
    check-cast v2, Lf/j/a/a/f/e;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->d:Z

    invoke-interface {v3, v2, v4}, Lf/j/a/a/l/c;->m(Lf/j/a/a/f/e;Z)V

    :cond_5
    const v2, 0x7fffffff

    if-ge v0, v2, :cond_d

    .line 18
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v4, :cond_6

    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v4, :cond_6

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v2, Lf/j/a/a/j/a;

    invoke-virtual {v2}, Lf/j/a/a/j/a;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 19
    :goto_1
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v1, :cond_7

    iget v1, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v4, v1

    .line 20
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v2, :cond_8

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    if-eqz v1, :cond_b

    .line 21
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 22
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v6, :cond_a

    .line 23
    iget v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 24
    iget v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    sub-int/2addr v6, v4

    iput v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 25
    iput-boolean v3, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 26
    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    if-eqz v5, :cond_9

    move v5, v4

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    .line 27
    :goto_3
    iget-object v13, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v9, 0x0

    iget v10, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v6, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    int-to-float v14, v5

    add-float/2addr v6, v14

    iget v5, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v11, v6, v5

    const/4 v12, 0x0

    move-wide v5, v1

    move-wide v7, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 28
    iget-object v13, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v9, 0x2

    iget v10, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v5, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    add-float v11, v5, v14

    move-wide v5, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 29
    :cond_a
    iget-object v13, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    if-eqz v5, :cond_b

    .line 30
    iput v3, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    const/4 v9, 0x1

    .line 31
    iget v10, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v11, v13, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    const/4 v12, 0x0

    move-wide v5, v1

    move-wide v7, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 32
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    .line 33
    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 34
    :cond_b
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;

    invoke-direct {v2, p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;I)V

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v3, :cond_c

    int-to-long v3, v0

    goto :goto_4

    :cond_c
    const-wide/16 v3, 0x0

    :goto_4
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_5
    return-void
.end method
