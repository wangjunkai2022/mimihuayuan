.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lf/j/a/a/f/i;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;
    }
.end annotation


# static fields
.field public static L0:Lf/j/a/a/f/a;

.field public static M0:Lf/j/a/a/f/b;

.field public static N0:Lf/j/a/a/f/c;

.field public static O0:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public A:Z

.field public A0:J

.field public B:Z

.field public B0:I

.field public C:Z

.field public C0:I

.field public D:Z

.field public D0:Z

.field public E:Z

.field public E0:Z

.field public F:Z

.field public F0:Z

.field public G:Z

.field public G0:Z

.field public H:Z

.field public H0:Z

.field public I:Z

.field public I0:Landroid/view/MotionEvent;

.field public J:Z

.field public J0:Ljava/lang/Runnable;

.field public K:Z

.field public K0:Landroid/animation/ValueAnimator;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public a:I

.field public a0:Lf/j/a/a/l/d;

.field public b:I

.field public b0:Lf/j/a/a/l/b;

.field public c:I

.field public c0:Lf/j/a/a/l/c;

.field public d:I

.field public d0:I

.field public e:I

.field public e0:Z

.field public f:I

.field public f0:[I

.field public g:I

.field public g0:Landroidx/core/view/NestedScrollingChildHelper;

.field public h:F

.field public h0:Landroidx/core/view/NestedScrollingParentHelper;

.field public i:F

.field public i0:I

.field public j:F

.field public j0:Lf/j/a/a/g/a;

.field public k:F

.field public k0:I

.field public l:F

.field public l0:Lf/j/a/a/g/a;

.field public m:C

.field public m0:I

.field public n:Z

.field public n0:I

.field public o:Z

.field public o0:F

.field public p:I

.field public p0:F

.field public q:I

.field public q0:F

.field public r:I

.field public r0:F

.field public s:I

.field public s0:Lf/j/a/a/f/g;

.field public t:I

.field public t0:Lf/j/a/a/f/g;

.field public u:I

.field public u0:Lf/j/a/a/f/d;

.field public v:I

.field public v0:Landroid/graphics/Paint;

.field public w:Landroid/widget/Scroller;

.field public w0:Landroid/os/Handler;

.field public x:Landroid/view/VelocityTracker;

.field public x0:Lf/j/a/a/f/h;

.field public y:Landroid/view/animation/Interpolator;

.field public y0:Lf/j/a/a/g/b;

.field public z:[I

.field public z0:Lf/j/a/a/g/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    const/16 v0, 0x6e

    .line 5
    iput-char v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    .line 7
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    .line 8
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    .line 9
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 12
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    .line 13
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    .line 14
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    .line 15
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    .line 16
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 17
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    .line 18
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    .line 19
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    .line 20
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    .line 21
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    .line 22
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    .line 23
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    .line 24
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    .line 25
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 26
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 27
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 28
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    .line 29
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    .line 30
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    .line 31
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    .line 32
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 33
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f0:[I

    .line 34
    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    .line 35
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingParentHelper;

    .line 36
    sget-object v3, Lf/j/a/a/g/a;->c:Lf/j/a/a/g/a;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    .line 37
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    const/high16 v3, 0x40200000    # 2.5f

    .line 38
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    .line 39
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q0:F

    .line 41
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r0:F

    .line 42
    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-direct {v3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    .line 43
    sget-object v3, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    .line 44
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    const-wide/16 v3, 0x0

    .line 45
    iput-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    .line 46
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    .line 47
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    .line 48
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    .line 49
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H0:Z

    const/4 v3, 0x0

    .line 50
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    .line 51
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 52
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    .line 53
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    .line 54
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    .line 56
    new-instance v4, Lf/j/a/a/m/b;

    sget v5, Lf/j/a/a/m/b;->b:I

    invoke-direct {v4, v1}, Lf/j/a/a/m/b;-><init>(I)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    .line 57
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    .line 58
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 59
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    const/high16 v3, 0x42700000    # 60.0f

    .line 60
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 61
    invoke-static {v3}, Lf/j/a/a/m/b;->d(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    .line 62
    sget-object v3, Lf/j/a/a/d;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    sget v3, Lf/j/a/a/d;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 65
    :cond_0
    sget v3, Lf/j/a/a/d;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 67
    :cond_1
    sget-object v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N0:Lf/j/a/a/f/c;

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v3, p1, p0}, Lf/j/a/a/f/c;->a(Landroid/content/Context;Lf/j/a/a/f/i;)V

    .line 69
    :cond_2
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    .line 70
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    .line 71
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    .line 72
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q0:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q0:F

    .line 73
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r0:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r0:F

    .line 74
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 75
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlReboundDuration:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    .line 76
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 77
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    .line 78
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    .line 79
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m0:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m0:I

    .line 80
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n0:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n0:I

    .line 81
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 82
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 83
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    .line 84
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    .line 85
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    .line 86
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    .line 87
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    .line 88
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    .line 89
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    .line 90
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    .line 91
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    .line 92
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 93
    sget v3, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 94
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    .line 95
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    .line 96
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    .line 97
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    .line 98
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    .line 99
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    .line 100
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    .line 101
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 102
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v3, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 103
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez p1, :cond_4

    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    .line 104
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    if-nez p1, :cond_6

    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Z

    .line 105
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    if-nez p1, :cond_8

    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x1

    :goto_5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Z

    .line 106
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lf/j/a/a/g/a;->i:Lf/j/a/a/g/a;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    :goto_6
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    .line 107
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lf/j/a/a/g/a;->i:Lf/j/a/a/g/a;

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    :goto_7
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    .line 108
    sget p1, Lf/j/a/a/d;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 109
    sget v3, Lf/j/a/a/d;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_b

    new-array v2, v2, [I

    aput v3, v2, v1

    aput p1, v2, v0

    .line 110
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    goto :goto_8

    :cond_b
    new-array p1, v0, [I

    aput v3, p1, v1

    .line 111
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    new-array v2, v2, [I

    aput v1, v2, v1

    aput p1, v2, v0

    .line 112
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    .line 113
    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez p1, :cond_e

    .line 114
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 115
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lf/j/a/a/f/a;)V
    .locals 0
    .param p0    # Lf/j/a/a/f/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L0:Lf/j/a/a/f/a;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lf/j/a/a/f/b;)V
    .locals 0
    .param p0    # Lf/j/a/a/f/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M0:Lf/j/a/a/f/b;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lf/j/a/a/f/c;)V
    .locals 0
    .param p0    # Lf/j/a/a/f/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N0:Lf/j/a/a/f/c;

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v2, Lf/j/a/a/j/a;

    invoke-virtual {v2}, Lf/j/a/a/j/a;->b()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_b

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v2, :cond_b

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    .line 5
    check-cast v2, Lf/j/a/a/j/a;

    invoke-virtual {v2}, Lf/j/a/a/j/a;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H0:Z

    if-eqz v2, :cond_a

    if-lez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_6

    .line 9
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-eq v3, v4, :cond_5

    sget-object v4, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    if-ne v3, v4, :cond_6

    .line 10
    :cond_5
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    invoke-direct {v2, p0, v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    goto :goto_1

    :cond_6
    cmpg-float v2, v0, v2

    if-gez v2, :cond_9

    .line 11
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 12
    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 13
    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-eq v2, v3, :cond_9

    .line 14
    :cond_8
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v3, v3

    invoke-direct {v2, p0, v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    goto :goto_1

    .line 15
    :cond_9
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v2, :cond_a

    .line 16
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    .line 17
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_2

    .line 18
    :cond_b
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H0:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 5
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    const/4 v3, 0x5

    if-eq v6, v2, :cond_5

    if-ne v6, v3, :cond_6

    .line 6
    :cond_5
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_6

    .line 7
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    sub-float v5, v8, v5

    add-float/2addr v5, v4

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 8
    :cond_6
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    .line 9
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    .line 10
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_a

    .line 11
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    .line 12
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v5, :cond_9

    .line 13
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    if-ne v2, v3, :cond_9

    .line 14
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v2, v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 16
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 17
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lf/j/a/a/f/g;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v5, v4, v2, v3}, Lf/j/a/a/f/g;->g(FII)V

    goto :goto_5

    .line 19
    :cond_8
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lf/j/a/a/f/g;->j()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 20
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v5, v4, v2, v3}, Lf/j/a/a/f/g;->g(FII)V

    :cond_9
    :goto_5
    return v1

    .line 21
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v4, :cond_3a

    :cond_b
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D0:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v12, v4, Lf/j/a/a/g/b;->e:Z

    if-nez v12, :cond_c

    iget-boolean v4, v4, Lf/j/a/a/g/b;->f:Z

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v4, v4, Lf/j/a/a/g/b;->a:Z

    if-nez v4, :cond_3a

    :cond_d
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E0:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v12, v4, Lf/j/a/a/g/b;->e:Z

    if-nez v12, :cond_e

    iget-boolean v4, v4, Lf/j/a/a/g/b;->f:Z

    if-eqz v4, :cond_f

    :cond_e
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v4, v4, Lf/j/a/a/g/b;->b:Z

    if-eqz v4, :cond_f

    goto/16 :goto_f

    .line 22
    :cond_f
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n(I)Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v12, v4, Lf/j/a/a/g/b;->f:Z

    if-nez v12, :cond_39

    sget-object v12, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v4, v12, :cond_10

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v4, :cond_39

    :cond_10
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v12, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v4, v12, :cond_11

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v4, :cond_11

    goto/16 :goto_e

    :cond_11
    const/16 v4, 0x68

    const/4 v12, 0x0

    if-eqz v6, :cond_33

    if-eq v6, v11, :cond_2f

    const/4 v2, 0x3

    if-eq v6, v5, :cond_12

    if-eq v6, v2, :cond_30

    goto/16 :goto_c

    .line 23
    :cond_12
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    sub-float/2addr v9, v3

    .line 24
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v3, v8, v3

    .line 25
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v5, :cond_1f

    iget-char v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    if-eq v5, v4, :cond_1f

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v6, :cond_1f

    const/16 v6, 0x76

    if-eq v5, v6, :cond_14

    .line 27
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-ltz v5, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v5, v5, v13

    if-gez v5, :cond_13

    goto :goto_6

    .line 28
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-ltz v5, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1f

    iget-char v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    if-eq v5, v6, :cond_1f

    .line 29
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    goto/16 :goto_a

    .line 30
    :cond_14
    :goto_6
    iput-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    cmpl-float v4, v3, v7

    if-lez v4, :cond_17

    .line 31
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-ltz v4, :cond_16

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v4, :cond_15

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-eqz v4, :cond_17

    :cond_15
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v4, Lf/j/a/a/j/a;

    invoke-virtual {v4}, Lf/j/a/a/j/a;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 32
    :cond_16
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 33
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    goto :goto_7

    :cond_17
    cmpg-float v4, v3, v7

    if-gez v4, :cond_1b

    .line 34
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v4, :cond_1a

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v4, :cond_18

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v4, :cond_1b

    :cond_18
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v5, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v4, v5, :cond_19

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-nez v4, :cond_1a

    :cond_19
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v4, Lf/j/a/a/j/a;

    invoke-virtual {v4}, Lf/j/a/a/j/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 35
    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 36
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 37
    :cond_1b
    :goto_7
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_1f

    .line 38
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v3, v8, v3

    .line 39
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    if-eqz v4, :cond_1c

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    :cond_1c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v5, :cond_1e

    if-nez v5, :cond_1d

    cmpl-float v5, v3, v7

    if-lez v5, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v5, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v5, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    :goto_9
    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 44
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1f

    .line 45
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    :cond_1f
    :goto_a
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_2e

    float-to-int v4, v3

    .line 47
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    add-int/2addr v4, v5

    .line 48
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    iget-boolean v5, v5, Lf/j/a/a/g/b;->a:Z

    if-eqz v5, :cond_20

    if-ltz v4, :cond_21

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-ltz v5, :cond_21

    :cond_20
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    iget-boolean v5, v5, Lf/j/a/a/g/b;->b:Z

    if-eqz v5, :cond_2d

    if-gtz v4, :cond_21

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-lez v5, :cond_2d

    .line 49
    :cond_21
    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 51
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v17, 0x0

    .line 52
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v18, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/16 v20, 0x0

    move-wide v13, v5

    move-wide v15, v5

    move/from16 v19, v1

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    .line 53
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v17, 0x2

    .line 54
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v18, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    int-to-float v9, v4

    add-float v19, v1, v9

    const/16 v20, 0x0

    move-wide v13, v5

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 55
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz v5, :cond_23

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_23

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v3, :cond_23

    .line 57
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    :cond_23
    if-lez v4, :cond_25

    .line 58
    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v3, Lf/j/a/a/j/a;

    invoke-virtual {v3}, Lf/j/a/a/j/a;->b()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 59
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 60
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 61
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v4, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    check-cast v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_b

    :cond_25
    if-gez v4, :cond_27

    .line 62
    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v3, Lf/j/a/a/j/a;

    invoke-virtual {v3}, Lf/j/a/a/j/a;->a()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 63
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 64
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 65
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v4, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    check-cast v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_b

    :cond_27
    move v10, v4

    .line 66
    :goto_b
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    iget-boolean v3, v3, Lf/j/a/a/g/b;->a:Z

    if-eqz v3, :cond_28

    if-ltz v10, :cond_29

    :cond_28
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    iget-boolean v3, v3, Lf/j/a/a/g/b;->b:Z

    if-eqz v3, :cond_2b

    if-lez v10, :cond_2b

    .line 67
    :cond_29
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v1, :cond_2a

    .line 68
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V

    :cond_2a
    return v11

    .line 69
    :cond_2b
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2c

    .line 70
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 72
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 73
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_2d
    int-to-float v1, v4

    .line 74
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V

    return v11

    .line 75
    :cond_2e
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v2, :cond_32

    .line 76
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    goto :goto_c

    .line 77
    :cond_2f
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 78
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 79
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 80
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z(F)Z

    .line 81
    :cond_30
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    .line 82
    iput-char v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    .line 83
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    .line 84
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 85
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I0:Landroid/view/MotionEvent;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 87
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 88
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s()V

    .line 91
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v2, :cond_32

    .line 92
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    return v11

    .line 93
    :cond_32
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 94
    :cond_33
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 95
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 96
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v5, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 97
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    .line 98
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 99
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    .line 100
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 101
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 102
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    .line 103
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v6, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    if-ne v5, v6, :cond_34

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/2addr v6, v2

    int-to-float v2, v6

    cmpg-float v2, v5, v2

    if-gez v2, :cond_34

    .line 104
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    .line 105
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    return v1

    .line 106
    :cond_34
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v2, :cond_38

    .line 107
    check-cast v2, Lf/j/a/a/j/a;

    if-eqz v2, :cond_37

    .line 108
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    iget-object v1, v2, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v4, v2, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/PointF;->offset(FF)V

    .line 110
    iget-object v1, v2, Lf/j/a/a/j/a;->c:Landroid/view/View;

    iget-object v4, v2, Lf/j/a/a/j/a;->a:Landroid/view/View;

    if-eq v1, v4, :cond_35

    .line 111
    invoke-virtual {v2, v4, v3, v1}, Lf/j/a/a/j/a;->c(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lf/j/a/a/j/a;->c:Landroid/view/View;

    .line 112
    :cond_35
    iget-object v1, v2, Lf/j/a/a/j/a;->c:Landroid/view/View;

    iget-object v4, v2, Lf/j/a/a/j/a;->a:Landroid/view/View;

    if-ne v1, v4, :cond_36

    .line 113
    iget-object v1, v2, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iput-object v12, v1, Lf/j/a/a/j/d;->a:Landroid/graphics/PointF;

    goto :goto_d

    .line 114
    :cond_36
    iget-object v1, v2, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iput-object v3, v1, Lf/j/a/a/j/d;->a:Landroid/graphics/PointF;

    goto :goto_d

    .line 115
    :cond_37
    throw v12

    :cond_38
    :goto_d
    return v11

    :cond_39
    :goto_e
    return v10

    .line 116
    :cond_3a
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/j/a/a/j/a;

    .line 2
    iget-object v0, v0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_6

    .line 4
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    iget-boolean v3, v3, Lf/j/a/a/g/c;->c:Z

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    sget-object v4, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v3, v4, :cond_3

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    sget-object v4, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v3, v4, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_5
    :goto_2
    return v2

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_c

    .line 19
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz v0, :cond_c

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 21
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    .line 22
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    iget-boolean v1, v1, Lf/j/a/a/g/c;->c:Z

    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 25
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    sget-object v2, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v1, v2, :cond_9

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v1

    :cond_9
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v0:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    :cond_a
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    sget-object v2, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v1, v2, :cond_c

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_b
    :goto_4
    return v2

    .line 33
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public g(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lf/j/a/a/f/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    instance-of v1, v0, Lf/j/a/a/f/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf/j/a/a/f/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lf/j/a/a/f/f;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    instance-of v1, v0, Lf/j/a/a/f/f;

    if-eqz v1, :cond_0

    check-cast v0, Lf/j/a/a/f/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lf/j/a/a/g/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    return-object v0
.end method

.method public h()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    mul-float v4, v4, v3

    const/4 v3, 0x1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 2
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v6, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3
    new-instance v5, Lf/j/a/a/e;

    invoke-direct {v5, p0, v4, v2, v1}, Lf/j/a/a/e;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    .line 4
    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lf/j/a/a/g/b;)V

    if-lez v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    int-to-long v6, v0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v5}, Lf/j/a/a/e;->run()V

    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public i(IZZ)Lf/j/a/a/f/i;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 1
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V

    if-lez p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->run()V

    :goto_0
    return-object p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Z)Lf/j/a/a/f/i;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(IZZ)Lf/j/a/a/f/i;

    return-object p0
.end method

.method public k()Lf/j/a/a/f/i;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    move-result-object v0

    return-object v0
.end method

.method public l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 1
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->run()V

    :goto_0
    return-object p0
.end method

.method public m(Z)Lf/j/a/a/f/i;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;

    return-object p0
.end method

.method public n(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v2, p1, Lf/j/a/a/g/b;->f:Z

    if-nez v2, :cond_3

    sget-object v2, Lf/j/a/a/g/b;->p:Lf/j/a/a/g/b;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    if-ne p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v2, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    if-ne p1, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v2, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 9
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public o(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttachedToWindow()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F0:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M0:Lf/j/a/a/f/b;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lf/j/a/a/f/b;->a(Landroid/content/Context;Lf/j/a/a/f/i;)Lf/j/a/a/f/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y(Lf/j/a/a/f/f;)Lf/j/a/a/f/i;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lf/j/a/a/i/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lf/j/a/a/i/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y(Lf/j/a/a/f/f;)Lf/j/a/a/f/i;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 9
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L0:Lf/j/a/a/f/a;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lf/j/a/a/f/a;->a(Landroid/content/Context;Lf/j/a/a/f/i;)Lf/j/a/a/f/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(Lf/j/a/a/f/e;)Lf/j/a/a/f/i;

    goto :goto_3

    .line 11
    :cond_2
    iget-boolean v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 12
    new-instance v4, Lf/j/a/a/h/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lf/j/a/a/h/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(Lf/j/a/a/f/e;)Lf/j/a/a/f/i;

    .line 13
    iput-boolean v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    goto :goto_3

    .line 14
    :cond_3
    iget-boolean v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 15
    :goto_3
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-nez v0, :cond_9

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_9

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 18
    iget-object v6, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_8

    :cond_6
    iget-object v6, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v6, :cond_7

    .line 19
    invoke-interface {v6}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_8

    .line 20
    :cond_7
    new-instance v6, Lf/j/a/a/j/a;

    invoke-direct {v6, v5}, Lf/j/a/a/j/a;-><init>(Landroid/view/View;)V

    iput-object v6, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 21
    :cond_9
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    const/4 v4, -0x1

    if-nez v0, :cond_a

    const/high16 v0, 0x41a00000    # 20.0f

    .line 22
    invoke-static {v0}, Lf/j/a/a/m/b;->d(F)I

    move-result v5

    .line 23
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, -0x9a00

    .line 24
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    .line 25
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 27
    sget v0, Lf/j/a/a/c;->srl_content_empty:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 28
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-direct {v0, v4, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(II)V

    invoke-super {v1, v6, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Lf/j/a/a/j/a;

    invoke-direct {v0, v6}, Lf/j/a/a/j/a;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    .line 30
    check-cast v0, Lf/j/a/a/j/a;

    .line 31
    iget-object v0, v0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 32
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    :cond_a
    iget v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 34
    iget v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 35
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    move-object v7, v0

    check-cast v7, Lf/j/a/a/j/a;

    const/4 v8, 0x0

    if-eqz v7, :cond_1a

    .line 36
    iget-object v7, v7, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iput-object v8, v7, Lf/j/a/a/j/d;->b:Lf/j/a/a/j/d;

    .line 37
    iget-boolean v7, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    move-object v9, v0

    check-cast v9, Lf/j/a/a/j/a;

    .line 38
    iget-object v9, v9, Lf/j/a/a/j/a;->i:Lf/j/a/a/j/d;

    iput-boolean v7, v9, Lf/j/a/a/j/d;->c:Z

    .line 39
    iget-object v7, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    move-object v9, v0

    check-cast v9, Lf/j/a/a/j/a;

    .line 40
    iget-object v0, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v10

    move-object v11, v8

    :goto_5
    if-eqz v11, :cond_b

    .line 42
    instance-of v12, v11, Landroidx/core/view/NestedScrollingParent;

    if-eqz v12, :cond_12

    instance-of v12, v11, Landroidx/core/view/NestedScrollingChild;

    if-nez v12, :cond_12

    :cond_b
    if-nez v11, :cond_c

    const/4 v12, 0x1

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    .line 43
    :goto_6
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 44
    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v14, v8

    .line 45
    :goto_7
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-lez v15, :cond_10

    if-nez v14, :cond_10

    .line 46
    invoke-virtual {v13}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_f

    if-nez v12, :cond_d

    if-eq v15, v0, :cond_e

    .line 47
    :cond_d
    invoke-static {v15}, Lf/j/a/a/m/b;->f(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_e

    move-object v14, v15

    goto :goto_7

    .line 48
    :cond_e
    instance-of v8, v15, Landroid/view/ViewGroup;

    if-eqz v8, :cond_f

    .line 49
    check-cast v15, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    .line 50
    :goto_8
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v8, v2, :cond_f

    .line 51
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x1

    const/4 v8, 0x0

    goto :goto_7

    :cond_10
    if-nez v14, :cond_11

    move-object v14, v0

    :cond_11
    if-ne v14, v11, :cond_17

    :cond_12
    if-eqz v11, :cond_13

    .line 52
    iput-object v11, v9, Lf/j/a/a/j/a;->c:Landroid/view/View;

    :cond_13
    if-nez v5, :cond_14

    if-eqz v6, :cond_16

    .line 53
    :cond_14
    iput-object v5, v9, Lf/j/a/a/j/a;->d:Landroid/view/View;

    .line 54
    iput-object v6, v9, Lf/j/a/a/j/a;->e:Landroid/view/View;

    .line 55
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    check-cast v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    .line 57
    iget-object v2, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 58
    invoke-interface {v2}, Lf/j/a/a/f/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v8, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 59
    iget-object v8, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 60
    invoke-interface {v8}, Lf/j/a/a/f/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v10, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    iget-object v8, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v4, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 63
    iget-object v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 64
    invoke-interface {v7}, Lf/j/a/a/f/i;->getLayout()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iput-object v0, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    if-eqz v5, :cond_15

    const-string v2, "fixed-top"

    .line 66
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 68
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 70
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    invoke-static {v5}, Lf/j/a/a/m/b;->i(Landroid/view/View;)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    new-instance v8, Landroidx/legacy/widget/Space;

    iget-object v10, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 73
    invoke-virtual {v0, v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    if-eqz v6, :cond_16

    const-string v2, "fixed-bottom"

    .line 74
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 76
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 78
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {v6}, Lf/j/a/a/m/b;->i(Landroid/view/View;)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    new-instance v8, Landroidx/legacy/widget/Space;

    iget-object v9, v9, Lf/j/a/a/j/a;->a:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x50

    .line 82
    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v0, v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_16
    iget v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_1b

    .line 85
    sget-object v0, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 86
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    check-cast v0, Lf/j/a/a/j/a;

    invoke-virtual {v0, v3, v2, v4}, Lf/j/a/a/j/a;->d(III)V

    goto :goto_a

    :cond_17
    const/4 v2, 0x1

    if-nez v10, :cond_19

    .line 87
    :try_start_0
    instance-of v0, v14, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_19

    .line 88
    move-object v0, v7

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    .line 89
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 90
    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 91
    move-object v0, v14

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    :cond_18
    :goto_9
    add-int/2addr v8, v4

    if-ltz v8, :cond_19

    .line 93
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 94
    instance-of v12, v11, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v12, :cond_18

    .line 95
    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v12, Lf/j/a/a/m/a;

    invoke-direct {v12, v9}, Lf/j/a/a/m/a;-><init>(Lf/j/a/a/l/a;)V

    invoke-virtual {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    move-object v0, v14

    move-object v11, v0

    const/4 v8, 0x0

    goto/16 :goto_5

    .line 97
    :cond_1a
    throw v8

    .line 98
    :cond_1b
    :goto_a
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    if-eqz v0, :cond_1d

    .line 99
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v2, :cond_1c

    .line 100
    invoke-interface {v2, v0}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    .line 101
    :cond_1c
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_1d

    .line 102
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    invoke-interface {v0, v2}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    .line 103
    :cond_1d
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v0, :cond_1e

    .line 104
    check-cast v0, Lf/j/a/a/j/a;

    .line 105
    iget-object v0, v0, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 106
    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 107
    :cond_1e
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v0

    iget-boolean v0, v0, Lf/j/a/a/g/c;->b:Z

    if-eqz v0, :cond_1f

    .line 108
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 109
    :cond_1f
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v0

    iget-boolean v0, v0, Lf/j/a/a/g/c;->b:Z

    if-eqz v0, :cond_20

    .line 110
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F0:Z

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 4
    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    .line 8
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    .line 9
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 11
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 3
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-static {v9}, Lf/j/a/a/m/b;->f(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    const/4 v6, 0x2

    goto :goto_2

    .line 5
    :cond_1
    instance-of v7, v9, Lf/j/a/a/f/g;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 6
    new-instance v4, Lf/j/a/a/j/a;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lf/j/a/a/j/a;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_3
    const/4 v7, -0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 7
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 8
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-nez v6, :cond_8

    instance-of v6, v5, Lf/j/a/a/f/f;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 9
    instance-of v6, v5, Lf/j/a/a/f/e;

    if-eqz v6, :cond_f

    .line 10
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 11
    instance-of v6, v5, Lf/j/a/a/f/e;

    if-eqz v6, :cond_c

    check-cast v5, Lf/j/a/a/f/e;

    goto :goto_8

    :cond_c
    new-instance v6, Lf/j/a/a/j/b;

    invoke-direct {v6, v5}, Lf/j/a/a/j/b;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    goto :goto_b

    .line 12
    :cond_d
    :goto_9
    instance-of v6, v5, Lf/j/a/a/f/f;

    if-eqz v6, :cond_e

    check-cast v5, Lf/j/a/a/f/f;

    goto :goto_a

    :cond_e
    new-instance v6, Lf/j/a/a/j/c;

    invoke-direct {v6, v5}, Lf/j/a/a/j/c;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 13
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_13

    .line 5
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lf/j/a/a/c;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    check-cast v1, Lf/j/a/a/j/a;

    .line 8
    iget-object v1, v1, Lf/j/a/a/j/a;->a:Landroid/view/View;

    if-ne v1, v0, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v3, Lf/j/a/a/j/a;

    .line 11
    iget-object v3, v3, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 13
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 15
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 18
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 20
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 23
    :goto_3
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 25
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m0:I

    add-int/2addr v4, v6

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 30
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v1

    sget-object v8, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v1, v8, :cond_7

    .line 31
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 32
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 33
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 35
    :goto_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    :goto_6
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v3}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v3

    .line 39
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 40
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n0:I

    sub-int/2addr v6, v5

    .line 41
    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    .line 42
    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    sget-object v7, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne v5, v7, :cond_c

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 43
    invoke-virtual {p0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 44
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v5, Lf/j/a/a/j/a;

    .line 45
    iget-object v5, v5, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 47
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 48
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v6, v5, v7

    .line 49
    :cond_c
    sget-object v5, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne v3, v5, :cond_d

    .line 50
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n0:I

    sub-int v6, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 51
    sget-object v1, Lf/j/a/a/g/c;->g:Lf/j/a/a/g/c;

    if-eq v3, v1, :cond_10

    sget-object v1, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 52
    :cond_e
    iget-boolean v1, v3, Lf/j/a/a/g/c;->c:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_11

    .line 53
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 54
    :cond_10
    :goto_9
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    :goto_a
    sub-int/2addr v6, v1

    .line 55
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    .line 57
    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_23

    .line 3
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_21

    sget v10, Lf/j/a/a/c;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_1

    goto/16 :goto_16

    .line 5
    :cond_1
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v10, :cond_e

    invoke-interface {v10}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_e

    .line 6
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v10}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 8
    instance-of v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    move-object v4, v15

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    :goto_2
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    iget v14, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 10
    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    .line 11
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    iget v5, v11, Lf/j/a/a/g/a;->a:I

    sget-object v13, Lf/j/a/a/g/a;->i:Lf/j/a/a/g/a;

    iget v13, v13, Lf/j/a/a/g/a;->a:I

    if-ge v5, v13, :cond_7

    .line 12
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_4

    .line 13
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    .line 14
    sget-object v13, Lf/j/a/a/g/a;->g:Lf/j/a/a/g/a;

    invoke-virtual {v11, v13}, Lf/j/a/a/g/a;->a(Lf/j/a/a/g/a;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 15
    iget v11, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v13

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v13

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    .line 16
    sget-object v11, Lf/j/a/a/g/a;->g:Lf/j/a/a/g/a;

    iput-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    :cond_3
    move v14, v5

    goto :goto_3

    :cond_4
    const/4 v11, -0x2

    if-ne v5, v11, :cond_7

    .line 17
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    sget-object v11, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne v5, v11, :cond_5

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    iget-boolean v5, v5, Lf/j/a/a/g/a;->b:Z

    if-nez v5, :cond_7

    .line 18
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 19
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    .line 20
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_7

    if-eq v11, v5, :cond_6

    .line 21
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    sget-object v13, Lf/j/a/a/g/a;->e:Lf/j/a/a/g/a;

    invoke-virtual {v5, v13}, Lf/j/a/a/g/a;->a(Lf/j/a/a/g/a;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    .line 23
    sget-object v5, Lf/j/a/a/g/a;->e:Lf/j/a/a/g/a;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    :cond_6
    const/4 v14, -0x1

    .line 24
    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    sget-object v11, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne v5, v11, :cond_8

    .line 25
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v11, 0x0

    :goto_4
    const/4 v13, -0x1

    goto :goto_7

    .line 26
    :cond_8
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    iget-boolean v5, v5, Lf/j/a/a/g/c;->c:Z

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    .line 27
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    move v5, v14

    goto :goto_4

    :goto_7
    if-eq v5, v13, :cond_b

    .line 28
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v4

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 29
    :cond_b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    iget-boolean v5, v4, Lf/j/a/a/g/a;->b:Z

    if-nez v5, :cond_d

    if-nez v5, :cond_c

    .line 30
    sget-object v5, Lf/j/a/a/g/a;->o:[Lf/j/a/a/g/a;

    iget v4, v4, Lf/j/a/a/g/a;->a:I

    const/4 v11, 0x1

    add-int/2addr v4, v11

    aget-object v4, v5, v4

    .line 31
    :cond_c
    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    .line 32
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    int-to-float v13, v11

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lf/j/a/a/f/g;->e(Lf/j/a/a/f/h;II)V

    :cond_d
    if-eqz v3, :cond_e

    .line 33
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 34
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 35
    :cond_e
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_1a

    .line 36
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v4}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 38
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_f

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_f
    sget-object v10, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    :goto_8
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 40
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    .line 41
    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    iget v14, v13, Lf/j/a/a/g/a;->a:I

    sget-object v15, Lf/j/a/a/g/a;->i:Lf/j/a/a/g/a;

    iget v15, v15, Lf/j/a/a/g/a;->a:I

    if-ge v14, v15, :cond_13

    .line 42
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_10

    .line 43
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    .line 44
    sget-object v14, Lf/j/a/a/g/a;->g:Lf/j/a/a/g/a;

    invoke-virtual {v13, v14}, Lf/j/a/a/g/a;->a(Lf/j/a/a/g/a;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 45
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    .line 46
    sget-object v5, Lf/j/a/a/g/a;->g:Lf/j/a/a/g/a;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    goto :goto_9

    :cond_10
    const/4 v5, -0x2

    if-ne v14, v5, :cond_13

    .line 47
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    sget-object v13, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne v5, v13, :cond_11

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    iget-boolean v5, v5, Lf/j/a/a/g/a;->b:Z

    if-nez v5, :cond_13

    .line 48
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v13

    const/4 v13, 0x0

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v13, -0x80000000

    .line 49
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v11, v13}, Landroid/view/View;->measure(II)V

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-lez v13, :cond_13

    if-eq v13, v5, :cond_12

    .line 51
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    sget-object v12, Lf/j/a/a/g/a;->e:Lf/j/a/a/g/a;

    invoke-virtual {v5, v12}, Lf/j/a/a/g/a;->a(Lf/j/a/a/g/a;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 52
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v5

    iput v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    .line 53
    sget-object v5, Lf/j/a/a/g/a;->e:Lf/j/a/a/g/a;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    :cond_12
    const/4 v13, -0x1

    goto :goto_a

    :cond_13
    :goto_9
    move v13, v12

    .line 54
    :goto_a
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    sget-object v12, Lf/j/a/a/g/c;->h:Lf/j/a/a/g/c;

    if-ne v5, v12, :cond_15

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    :cond_14
    const/4 v12, 0x0

    goto :goto_c

    .line 56
    :cond_15
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v5}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v5

    iget-boolean v5, v5, Lf/j/a/a/g/c;->c:Z

    if-eqz v5, :cond_14

    if-nez v3, :cond_14

    .line 57
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v5, v5

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    :goto_b
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_d

    :goto_c
    move v5, v13

    :goto_d
    const/4 v13, -0x1

    if-eq v5, v13, :cond_17

    .line 58
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v10

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Landroid/view/View;->measure(II)V

    .line 59
    :cond_17
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    iget-boolean v10, v5, Lf/j/a/a/g/a;->b:Z

    if-nez v10, :cond_19

    if-nez v10, :cond_18

    .line 60
    sget-object v10, Lf/j/a/a/g/a;->o:[Lf/j/a/a/g/a;

    iget v5, v5, Lf/j/a/a/g/a;->a:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    aget-object v5, v10, v5

    goto :goto_e

    :cond_18
    const/4 v11, 0x1

    .line 61
    :goto_e
    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    .line 62
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    int-to-float v15, v13

    mul-float v14, v14, v15

    float-to-int v14, v14

    invoke-interface {v5, v10, v13, v14}, Lf/j/a/a/f/g;->e(Lf/j/a/a/f/h;II)V

    goto :goto_f

    :cond_19
    const/4 v11, 0x1

    :goto_f
    if-eqz v3, :cond_1b

    .line 63
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    move v8, v4

    goto :goto_10

    :cond_1a
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 65
    :cond_1b
    :goto_10
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v4, :cond_22

    check-cast v4, Lf/j/a/a/j/a;

    .line 66
    iget-object v4, v4, Lf/j/a/a/j/a;->a:Landroid/view/View;

    if-ne v4, v9, :cond_22

    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 68
    instance-of v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_1c

    move-object v9, v5

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_11

    :cond_1c
    sget-object v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    :goto_11
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v10, :cond_1d

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-virtual {v0, v10, v13}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v10, 0x1

    goto :goto_12

    :cond_1d
    const/4 v10, 0x0

    .line 70
    :goto_12
    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v13, :cond_1e

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v13}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v13

    if-eqz v13, :cond_1e

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-virtual {v0, v13, v14}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v13, 0x1

    goto :goto_13

    :cond_1e
    const/4 v13, 0x0

    .line 71
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v15, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v14

    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    invoke-static {v1, v15, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v16, v16, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v16, v16, v9

    if-eqz v3, :cond_1f

    if-eqz v10, :cond_1f

    iget v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    goto :goto_14

    :cond_1f
    const/4 v9, 0x0

    :goto_14
    add-int v16, v16, v9

    if-eqz v3, :cond_20

    if-eqz v13, :cond_20

    iget v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    goto :goto_15

    :cond_20
    const/4 v9, 0x0

    :goto_15
    add-int v9, v16, v9

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-static {v2, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 75
    invoke-virtual {v4, v14, v5}, Landroid/view/View;->measure(II)V

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_17

    :cond_21
    :goto_16
    const/4 v11, 0x1

    const/4 v12, 0x0

    :cond_22
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 77
    :cond_23
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 78
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 79
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    .line 4
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    move v1, p1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    move v1, p3

    .line 6
    :goto_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V

    move v1, p3

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    .line 11
    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f0:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f0:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    goto :goto_1

    :cond_1
    if-lez p5, :cond_5

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz p2, :cond_5

    goto :goto_0

    .line 4
    :goto_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    sget-object v0, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    if-eq p2, v0, :cond_2

    iget-boolean p2, p2, Lf/j/a/a/g/b;->e:Z

    if-eqz p2, :cond_4

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    if-lez p5, :cond_3

    sget-object v0, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    goto :goto_2

    :cond_3
    sget-object v0, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    :goto_2
    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    if-nez p1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 7
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    :cond_4
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V

    .line 10
    :cond_5
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz p1, :cond_6

    if-gez p3, :cond_6

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h0:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d0:I

    .line 4
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s()V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public p(ZLf/j/a/a/f/g;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object p1

    sget-object p2, Lf/j/a/a/g/c;->f:Lf/j/a/a/g/c;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public q(F)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v1, Lf/j/a/a/j/a;

    invoke-virtual {v1}, Lf/j/a/a/j/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 3
    :goto_0
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v5, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 7
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    float-to-int v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    check-cast v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v3, v5, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v5, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ne v3, v5, :cond_5

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_5

    .line 9
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    int-to-float v5, v3

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 10
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    float-to-int v5, v1

    check-cast v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v3, v5, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto/16 :goto_1

    .line 11
    :cond_3
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    sub-float/2addr v5, v7

    int-to-float v3, v3

    mul-float v5, v5, v3

    float-to-double v14, v5

    .line 12
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    sub-int/2addr v3, v5

    int-to-double v6, v3

    int-to-float v3, v5

    sub-float v3, v1, v3

    .line 13
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v3

    neg-double v2, v4

    cmpl-double v16, v6, v8

    if-nez v16, :cond_4

    move-wide v6, v12

    :cond_4
    div-double/2addr v2, v6

    .line 14
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v12, v2

    mul-double v12, v12, v14

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 15
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    add-int/2addr v2, v3

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto/16 :goto_1

    :cond_5
    cmpg-float v3, v1, v2

    if-gez v3, :cond_a

    .line 16
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v2, v3, :cond_7

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 17
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v2, :cond_a

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 18
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19
    :cond_7
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    .line 20
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    float-to-int v3, v1

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto/16 :goto_1

    .line 21
    :cond_8
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    sub-float/2addr v3, v7

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    .line 22
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    sub-int/2addr v4, v5

    int-to-double v6, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 23
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v14, v4

    cmpl-double v16, v6, v8

    if-nez v16, :cond_9

    move-wide v6, v12

    :cond_9
    div-double/2addr v14, v6

    .line 24
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v12, v6

    mul-double v12, v12, v2

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 25
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    sub-int/2addr v2, v3

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_c

    .line 26
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 27
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 28
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v6, v6, v1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    neg-double v14, v6

    cmpl-double v16, v4, v8

    if-nez v16, :cond_b

    move-wide v4, v12

    :cond_b
    div-double/2addr v14, v4

    .line 29
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v12, v4

    mul-double v12, v12, v2

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 30
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    double-to-int v2, v2

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    goto :goto_1

    .line 31
    :cond_c
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 32
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 33
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v6, v6, v1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    neg-double v14, v6

    cmpl-double v16, v4, v8

    if-nez v16, :cond_d

    move-wide v4, v12

    :cond_d
    div-double/2addr v14, v4

    .line 34
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v12, v4

    mul-double v12, v12, v2

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 35
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    double-to-int v2, v2

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 36
    :goto_1
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-nez v2, :cond_f

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v2, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-eq v1, v2, :cond_f

    sget-object v2, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v1, v2, :cond_f

    sget-object v2, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    if-eq v1, v2, :cond_f

    .line 37
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    .line 39
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v2, v2

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    :cond_e
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 41
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;

    invoke-direct {v2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

.method public r(Lf/j/a/a/g/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    if-eq v0, p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    .line 3
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    .line 5
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, p0, v0, p1}, Lf/j/a/a/l/e;->a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2, p0, v0, p1}, Lf/j/a/a/l/e;->a(Lf/j/a/a/f/i;Lf/j/a/a/g/b;Lf/j/a/a/g/b;)V

    .line 8
    :cond_1
    sget-object v0, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    if-eq p1, v0, :cond_3

    .line 11
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    :cond_3
    :goto_0
    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_f

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    .line 7
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->u:Lf/j/a/a/g/b;

    if-ne v3, v4, :cond_f

    .line 8
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v3, Lf/j/a/a/g/b;->x:Lf/j/a/a/g/b;

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v1, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    .line 9
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0, v2, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 11
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    goto/16 :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 13
    :cond_2
    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 14
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_5

    .line 16
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    if-le v0, v1, :cond_4

    .line 17
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_4
    if-gez v0, :cond_f

    .line 18
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 19
    :cond_5
    sget-object v1, Lf/j/a/a/g/b;->i:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_6

    .line 20
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->k:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto/16 :goto_1

    .line 21
    :cond_6
    sget-object v1, Lf/j/a/a/g/b;->j:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_7

    .line 22
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->l:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto/16 :goto_1

    .line 23
    :cond_7
    sget-object v1, Lf/j/a/a/g/b;->m:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_8

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_1

    .line 25
    :cond_8
    sget-object v1, Lf/j/a/a/g/b;->n:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_9

    .line 26
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_1

    .line 27
    :cond_9
    sget-object v1, Lf/j/a/a/g/b;->o:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_a

    .line 28
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    sget-object v1, Lf/j/a/a/g/b;->p:Lf/j/a/a/g/b;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->d(Lf/j/a/a/g/b;)Lf/j/a/a/f/h;

    goto :goto_1

    .line 29
    :cond_a
    sget-object v1, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_b

    .line 30
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 31
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 32
    :cond_b
    sget-object v1, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_c

    .line 33
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 34
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v1, v1

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 35
    :cond_c
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 37
    :cond_d
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v3, v1

    if-ge v0, v3, :cond_e

    .line 38
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    neg-int v1, v1

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_e
    if-lez v0, :cond_f

    .line 39
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    :cond_f
    :goto_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g0:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setStateDirectLoading(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v0, v1, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    .line 4
    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b0:Lf/j/a/a/l/b;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v1, p0}, Lf/j/a/a/l/b;->d(Lf/j/a/a/f/i;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(IZZ)Lf/j/a/a/f/i;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz p1, :cond_2

    .line 9
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    int-to-float v2, v0

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-interface {p1, p0, v0, v1}, Lf/j/a/a/f/g;->b(Lf/j/a/a/f/i;II)V

    :cond_2
    return-void
.end method

.method public setStateLoading(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Lf/j/a/a/g/b;->r:Lf/j/a/a/g/b;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int v1, v1

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p0:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lf/j/a/a/f/g;->k(Lf/j/a/a/f/i;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$a;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method public setStateRefreshing(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Lf/j/a/a/g/b;->q:Lf/j/a/a/g/b;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->a(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o0:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lf/j/a/a/f/g;->k(Lf/j/a/a/f/i;II)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    return-void
.end method

.method public setViceState(Lf/j/a/a/g/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v1, v0, Lf/j/a/a/g/b;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lf/j/a/a/g/b;->a:Z

    iget-boolean v1, p1, Lf/j/a/a/g/b;->a:Z

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z0:Lf/j/a/a/g/b;

    :cond_1
    return-void
.end method

.method public t(Z)Lf/j/a/a/f/i;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method public u(Z)Lf/j/a/a/f/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x12c

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    .line 3
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(IZLjava/lang/Boolean;)Lf/j/a/a/f/i;

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A0:J

    sub-long/2addr v0, v5

    long-to-int p1, v0

    rsub-int p1, p1, 0x12c

    .line 6
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1, v2, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(IZZ)Lf/j/a/a/f/i;

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eq v0, p1, :cond_3

    .line 8
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    instance-of v1, v0, Lf/j/a/a/f/e;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Lf/j/a/a/f/e;

    invoke-interface {v0, p1}, Lf/j/a/a/f/e;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    .line 12
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    .line 13
    invoke-interface {p1}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object p1

    sget-object v0, Lf/j/a/a/g/c;->d:Lf/j/a/a/g/c;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(ZLf/j/a/a/f/g;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {p1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 17
    :cond_2
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    const-string p1, "Footer:"

    .line 18
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public v(Lf/j/a/a/l/b;)Lf/j/a/a/f/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b0:Lf/j/a/a/l/b;

    .line 2
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method public varargs w([I)Lf/j/a/a/f/i;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    .line 8
    :cond_2
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    return-object p0
.end method

.method public x(Lf/j/a/a/f/e;)Lf/j/a/a/f/i;
    .locals 4
    .param p1    # Lf/j/a/a/f/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C0:I

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    .line 7
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E0:Z

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    invoke-virtual {v0}, Lf/j/a/a/g/a;->b()Lf/j/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l0:Lf/j/a/a/g/a;

    .line 9
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v0

    iget-boolean v0, v0, Lf/j/a/a/g/c;->b:Z

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {p1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-direct {v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(II)V

    invoke-super {p0, p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-direct {v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(II)V

    invoke-super {p0, v0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, p1}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    :cond_4
    return-object p0
.end method

.method public y(Lf/j/a/a/f/f;)Lf/j/a/a/f/i;
    .locals 4
    .param p1    # Lf/j/a/a/f/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B0:I

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D0:Z

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    invoke-virtual {v0}, Lf/j/a/a/g/a;->b()Lf/j/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j0:Lf/j/a/a/g/a;

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getSpinnerStyle()Lf/j/a/a/g/c;

    move-result-object v0

    iget-boolean v0, v0, Lf/j/a/a/g/c;->b:Z

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {p1}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-direct {v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(II)V

    invoke-super {p0, p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    invoke-interface {v0}, Lf/j/a/a/f/g;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    invoke-direct {v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(II)V

    invoke-super {p0, v0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s0:Lf/j/a/a/f/g;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1}, Lf/j/a/a/f/g;->setPrimaryColors([I)V

    :cond_2
    return-object p0
.end method

.method public z(F)Z
    .locals 13

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float p1, p1

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleY()F

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v1, Lf/j/a/a/j/a;

    .line 5
    iget-object v1, v1, Lf/j/a/a/j/a;->a:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    .line 8
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v2, v1

    mul-float v2, v2, p1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_d

    .line 9
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v4, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_3

    sget-object v4, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v2, v4, :cond_3

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v1, v1, Lf/j/a/a/g/b;->g:Z

    if-eqz v1, :cond_d

    return v5

    .line 11
    :cond_3
    :goto_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    .line 12
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v2, v1, Lf/j/a/a/g/b;->f:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    move-object v0, v4

    goto/16 :goto_3

    .line 13
    :cond_5
    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v2, :cond_c

    iget-boolean v1, v1, Lf/j/a/a/g/b;->e:Z

    if-nez v1, :cond_6

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_6
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v2, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-eq v1, v2, :cond_7

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 14
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int p1, p1

    if-lt v1, p1, :cond_9

    :cond_8
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v2, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v1, v2, :cond_c

    iget v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    if-le v1, p1, :cond_c

    .line 15
    :cond_9
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    .line 16
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:F

    move v2, p1

    :goto_2
    mul-int v6, p1, v2

    if-lez v6, :cond_c

    float-to-double v6, v1

    .line 17
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:F

    float-to-double v8, v1

    add-int/2addr v3, v5

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    mul-int v1, v1, v3

    int-to-float v1, v1

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v1, v10

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v6

    double-to-float v1, v8

    .line 18
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v6, v6, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v1

    .line 19
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v8, v7

    if-gez v7, :cond_b

    .line 20
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v3, v1, Lf/j/a/a/g/b;->e:Z

    if-eqz v3, :cond_4

    sget-object v3, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v1, v3, :cond_a

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i0:I

    if-gt v2, p1, :cond_4

    :cond_a
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v3, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-eq v1, v3, :cond_c

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k0:I

    neg-int p1, p1

    if-ge v2, p1, :cond_c

    goto/16 :goto_1

    :cond_b
    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    goto :goto_2

    .line 21
    :cond_c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->e:J

    .line 22
    iget-object p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :goto_3
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    return v5

    :cond_d
    cmpg-float v1, p1, v0

    if-gez v1, :cond_10

    .line 24
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v1, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v2, Lf/j/a/a/g/b;->t:Lf/j/a/a/g/b;

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_12

    :cond_f
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o(Z)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v0, :cond_12

    :cond_11
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->s:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v0, :cond_13

    .line 25
    :cond_12
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H0:Z

    .line 26
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float p1, p1

    float-to-int v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x7fffffff

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 27
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return v3
.end method
