.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public final synthetic g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    const v0, 0x3f7ae148    # 0.98f

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->e:J

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->f:J

    .line 6
    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:F

    .line 7
    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_2

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    iget-boolean v0, v0, Lf/j/a/a/g/b;->f:Z

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->f:J

    sub-long v2, v0, v2

    .line 4
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:F

    float-to-double v4, v4

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:F

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->e:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v9, v10, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v4

    double-to-float v4, v6

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v10

    mul-float v2, v2, v4

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 6
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->f:J

    .line 7
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->a:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->a:I

    .line 8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    mul-int v3, v3, v0

    const/4 v4, 0x1

    if-lez v3, :cond_0

    .line 9
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-virtual {v1, v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w0:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_0
    iput-object v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    .line 12
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x0:Lf/j/a/a/f/h;

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b(IZ)Lf/j/a/a/f/h;

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u0:Lf/j/a/a/f/d;

    check-cast v0, Lf/j/a/a/j/a;

    .line 14
    iget-object v0, v0, Lf/j/a/a/j/a;->c:Landroid/view/View;

    .line 15
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Lf/j/a/a/m/b;->e(Landroid/view/View;I)V

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 17
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->g:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J0:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method
