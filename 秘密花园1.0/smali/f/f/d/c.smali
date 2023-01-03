.class public final Lf/f/d/c;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    .line 3
    iput p2, p0, Lf/f/d/c;->c:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Lf/f/d/c;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lf/f/d/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lf/f/d/c;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lf/f/d/c;->c:I

    iput v0, p0, Lf/f/d/c;->a:I

    .line 3
    :cond_0
    iget v0, p0, Lf/f/d/c;->a:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lf/f/d/c;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf/f/d/c;->b:I

    goto :goto_0

    .line 5
    :cond_1
    iput v2, p0, Lf/f/d/c;->b:I

    .line 6
    :cond_2
    :goto_0
    iget v0, p0, Lf/f/d/c;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xbb8

    if-gt v0, v2, :cond_3

    .line 7
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->a()V

    .line 8
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    iget v4, p0, Lf/f/d/c;->b:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 10
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    .line 11
    iget-boolean v3, v0, Lcom/contrarywind/view/WheelView;->z:Z

    if-nez v3, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    move-result v0

    .line 13
    iget-object v3, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    .line 14
    iget-object v4, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v2, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float v2, v2, v0

    .line 15
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    .line 16
    :cond_4
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v2

    iget v3, p0, Lf/f/d/c;->b:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 17
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->a()V

    .line 18
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Lf/f/d/c;->d:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    iget v0, p0, Lf/f/d/c;->a:I

    iget v1, p0, Lf/f/d/c;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lf/f/d/c;->a:I

    :goto_1
    return-void
.end method
