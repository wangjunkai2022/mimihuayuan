.class public final Lf/f/c/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field public final a:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f/c/a;->a:Lcom/contrarywind/view/WheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lf/f/c/a;->a:Lcom/contrarywind/view/WheelView;

    .line 2
    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->a()V

    .line 3
    iget-object v0, p1, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lf/f/d/a;

    invoke-direct {v1, p1, p4}, Lf/f/d/a;-><init>(Lcom/contrarywind/view/WheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p1, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x1

    return p1
.end method
