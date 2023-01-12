.class public final Lf/f/d/a;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field public a:F

.field public final b:F

.field public final c:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    .line 3
    iput p2, p0, Lf/f/d/a;->b:F

    const/high16 p1, 0x4f000000

    .line 4
    iput p1, p0, Lf/f/d/a;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lf/f/d/a;->a:F

    const/4 v1, 0x0

    const/high16 v2, 0x4f000000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lf/f/d/a;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lf/f/d/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3b060000    # -2000.0f

    :goto_0
    iput v2, p0, Lf/f/d/a;->a:F

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lf/f/d/a;->b:F

    iput v0, p0, Lf/f/d/a;->a:F

    .line 5
    :cond_2
    :goto_1
    iget v0, p0, Lf/f/d/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lf/f/d/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 6
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->a()V

    .line 7
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 8
    :cond_3
    iget v0, p0, Lf/f/d/a;->a:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 9
    iget-object v3, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 10
    iget-object v3, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    .line 11
    iget-boolean v4, v3, Lcom/contrarywind/view/WheelView;->z:Z

    if-nez v4, :cond_7

    .line 12
    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    move-result v3

    .line 13
    iget-object v4, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 14
    iget-object v5, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v3

    .line 15
    iget-object v6, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v6

    float-to-double v6, v6

    float-to-double v8, v3

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    float-to-double v10, v4

    cmpg-double v3, v6, v10

    if-gez v3, :cond_4

    .line 16
    iget-object v3, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    add-float v4, v3, v0

    goto :goto_2

    .line 17
    :cond_4
    iget-object v3, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v6, v8

    float-to-double v8, v5

    cmpl-double v3, v6, v8

    if-lez v3, :cond_5

    .line 18
    iget-object v3, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    add-float v5, v3, v0

    .line 19
    :cond_5
    :goto_2
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    const/high16 v0, 0x42200000    # 40.0f

    .line 20
    iput v0, p0, Lf/f/d/a;->a:F

    .line 21
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    float-to-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    .line 23
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    float-to-int v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    const/high16 v0, -0x3de00000    # -40.0f

    .line 24
    iput v0, p0, Lf/f/d/a;->a:F

    .line 25
    :cond_7
    :goto_3
    iget v0, p0, Lf/f/d/a;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    add-float/2addr v0, v2

    .line 26
    iput v0, p0, Lf/f/d/a;->a:F

    goto :goto_4

    :cond_8
    sub-float/2addr v0, v2

    .line 27
    iput v0, p0, Lf/f/d/a;->a:F

    .line 28
    :goto_4
    iget-object v0, p0, Lf/f/d/a;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
