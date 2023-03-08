.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lf/j/a/a/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public b(IZ)Lf/j/a/a/f/h;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-ne v3, v1, :cond_2

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v2}, Lf/j/a/a/f/g;->j()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Lf/j/a/a/f/g;->j()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 4
    :cond_2
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget v10, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    .line 6
    iput v1, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz p2, :cond_7

    .line 7
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    iget-boolean v3, v2, Lf/j/a/a/g/b;->d:Z

    if-nez v3, :cond_3

    iget-boolean v2, v2, Lf/j/a/a/g/b;->e:Z

    if-eqz v2, :cond_7

    .line 8
    :cond_3
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v4, v3

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    int-to-float v5, v5

    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q0:F

    mul-float v5, v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 9
    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    if-eq v3, v4, :cond_7

    .line 10
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v3, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    :cond_4
    neg-int v3, v3

    int-to-float v3, v3

    .line 11
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    int-to-float v4, v4

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r0:F

    mul-float v4, v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v3, :cond_5

    .line 12
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v3, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    .line 13
    :cond_5
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v3, :cond_6

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v3, :cond_6

    .line 14
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v3, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    .line 15
    :cond_6
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v3, :cond_7

    .line 16
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v3, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    .line 17
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_15

    if-ltz v1, :cond_9

    .line 18
    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v3, :cond_9

    .line 19
    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {v2, v4, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    if-gez v10, :cond_9

    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-gtz v1, :cond_b

    .line 20
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v5, :cond_b

    .line 21
    iget-boolean v6, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {v4, v6, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    if-lez v10, :cond_b

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz v3, :cond_15

    .line 22
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    check-cast v4, Lf/j/a/a/j/a;

    invoke-virtual {v4, v2, v5, v3}, Lf/j/a/a/j/a;->d(III)V

    .line 23
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v4, :cond_c

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    instance-of v4, v3, Lf/j/a/a/f/e;

    if-eqz v4, :cond_c

    .line 24
    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    sget-object v4, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v3, v4, :cond_c

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 25
    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 26
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    :cond_c
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v4, :cond_d

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    sget-object v4, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_f

    .line 28
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x1

    .line 29
    :goto_7
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v5, :cond_10

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v4

    sget-object v5, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_12

    .line 30
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v4, 0x1

    :goto_a
    if-eqz v3, :cond_13

    if-gez v2, :cond_14

    if-gtz v10, :cond_14

    :cond_13
    if-eqz v4, :cond_15

    if-lez v2, :cond_14

    if-gez v10, :cond_15

    .line 31
    :cond_14
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_15
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-gez v1, :cond_16

    if-lez v10, :cond_20

    .line 32
    :cond_16
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_20

    .line 33
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 34
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v15, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    int-to-float v3, v15

    .line 35
    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    mul-float v3, v3, v2

    float-to-int v7, v3

    int-to-float v2, v8

    mul-float v2, v2, v13

    if-nez v15, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    move v3, v15

    :goto_b
    int-to-float v3, v3

    div-float v16, v2, v3

    .line 36
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->v:Lf/j/a/a/g/b;

    if-ne v2, v3, :cond_18

    if-nez p2, :cond_18

    goto :goto_c

    :cond_18
    move/from16 v17, v7

    goto/16 :goto_11

    .line 37
    :cond_19
    :goto_c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v3, :cond_1d

    .line 38
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v2}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v2

    sget-object v3, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v2, v3, :cond_1a

    .line 39
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v2}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    if-eqz v3, :cond_1c

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    if-eqz v3, :cond_1c

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 41
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_e

    .line 42
    :cond_1a
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v2}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v2

    iget-boolean v2, v2, Lf/j/a/a/g/c;->c:Z

    if-eqz v2, :cond_1c

    .line 43
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v2}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 45
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1b

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_1b
    sget-object v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 47
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 48
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 49
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m0:I

    add-int/2addr v3, v5

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 51
    :cond_1c
    :goto_e
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v6, v15

    move/from16 v17, v7

    invoke-interface/range {v2 .. v7}, Lf/j/a/a/f/g;->h(ZFIII)V

    goto :goto_f

    :cond_1d
    move/from16 v17, v7

    :goto_f
    if-eqz p2, :cond_1f

    .line 52
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v2}, Lf/j/a/a/f/g;->j()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 53
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v2, v2

    .line 54
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 55
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v3, :cond_1e

    const/4 v5, 0x1

    goto :goto_10

    :cond_1e
    move v5, v3

    :goto_10
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 56
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v5, v4, v2, v3}, Lf/j/a/a/f/g;->g(FII)V

    .line 57
    :cond_1f
    :goto_11
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v3, :cond_20

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v3, :cond_20

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    instance-of v4, v2, Lf/j/a/a/f/f;

    if-eqz v4, :cond_20

    .line 58
    move-object v4, v2

    check-cast v4, Lf/j/a/a/f/f;

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move v7, v15

    move/from16 v8, v17

    invoke-interface/range {v2 .. v8}, Lf/j/a/a/l/c;->n(Lf/j/a/a/f/f;ZFIII)V

    :cond_20
    if-lez v1, :cond_21

    if-gez v10, :cond_2a

    .line 59
    :cond_21
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_2a

    .line 60
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 61
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    int-to-float v2, v8

    .line 62
    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    mul-float v2, v2, v1

    float-to-int v15, v2

    int-to-float v1, v7

    mul-float v1, v1, v13

    if-nez v8, :cond_22

    const/4 v2, 0x1

    goto :goto_12

    :cond_22
    move v2, v8

    :goto_12
    int-to-float v2, v2

    div-float v13, v1, v2

    .line 63
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v2, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    if-ne v1, v2, :cond_29

    if-nez p2, :cond_29

    .line 64
    :cond_23
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v2, :cond_27

    .line 65
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    sget-object v2, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v1, v2, :cond_24

    .line 66
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    if-eqz v2, :cond_26

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 68
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_14

    .line 69
    :cond_24
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    iget-boolean v1, v1, Lf/j/a/a/g/c;->c:Z

    if-eqz v1, :cond_26

    .line 70
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 72
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_25

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_13

    :cond_25
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 73
    :goto_13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 74
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v4, v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 75
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 76
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n0:I

    sub-int/2addr v4, v2

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 78
    :cond_26
    :goto_14
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    move/from16 v2, p2

    move v3, v13

    move v4, v7

    move v5, v8

    move v6, v15

    invoke-interface/range {v1 .. v6}, Lf/j/a/a/f/g;->h(ZFIII)V

    :cond_27
    if-eqz p2, :cond_29

    .line 79
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->j()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 80
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v1, v1

    .line 81
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 82
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v2, :cond_28

    goto :goto_15

    :cond_28
    move v11, v2

    :goto_15
    int-to-float v4, v11

    div-float/2addr v3, v4

    .line 83
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v4, v3, v1, v2}, Lf/j/a/a/f/g;->g(FII)V

    .line 84
    :cond_29
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eq v10, v2, :cond_2a

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v2, :cond_2a

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    instance-of v3, v1, Lf/j/a/a/f/e;

    if-eqz v3, :cond_2a

    .line 85
    move-object v3, v1

    check-cast v3, Lf/j/a/a/f/e;

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p2

    move v4, v13

    move v5, v7

    move v6, v8

    move v7, v15

    invoke-interface/range {v1 .. v7}, Lf/j/a/a/l/c;->f(Lf/j/a/a/f/e;ZFIII)V

    :cond_2a
    return-object v0
.end method

.method public c(Lf/j/a/a/f/g;I)Lf/j/a/a/f/h;
    .locals 2
    .param p1    # Lf/j/a/a/f/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;
    .locals 2
    .param p1    # Lf/j/a/a/g/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->x:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_d

    .line 4
    sget-object v0, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_d

    .line 6
    sget-object v0, Lf/j/a/a/g/b;->v:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 13
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 16
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->p:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 17
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 20
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v1, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lf/j/a/a/g/b;->f:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez p1, :cond_4

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 26
    :pswitch_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_6

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez p1, :cond_7

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 28
    sget-object p1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto/16 :goto_0

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 30
    :pswitch_d
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 32
    sget-object p1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto/16 :goto_0

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto/16 :goto_0

    .line 34
    :pswitch_e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v1, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v1, :cond_a

    iget-boolean v0, v0, Lf/j/a/a/g/b;->f:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_9

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-nez p1, :cond_a

    .line 35
    :cond_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 36
    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 37
    :pswitch_f
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 38
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 40
    :pswitch_10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_c

    .line 41
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto :goto_0

    .line 42
    :cond_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
