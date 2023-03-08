.class public Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/GestureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerGestureListener"
.end annotation


# instance fields
.field public firstTouch:Z

.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

.field public toSeek:Z

.field public volumeControl:Z

.field public weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lchuangyuan/ycj/videolibrary/video/GestureModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;-><init>(Lchuangyuan/ycj/videolibrary/video/GestureModule;Lchuangyuan/ycj/videolibrary/video/GestureModule;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->firstTouch:Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->weakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v3, v0, v3

    .line 5
    iget-boolean v4, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->firstTouch:Z

    if-eqz v4, :cond_3

    .line 6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x1

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->toSeek:Z

    .line 7
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v4}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$100(Lchuangyuan/ycj/videolibrary/video/GestureModule;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->volumeControl:Z

    .line 8
    iput-boolean v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->firstTouch:Z

    .line 9
    :cond_3
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->toSeek:Z

    if-eqz v0, :cond_6

    neg-float v0, v3

    .line 10
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$200(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v3}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$200(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getDuration()J

    move-result-wide v7

    long-to-float v1, v1

    long-to-float v2, v7

    mul-float v0, v0, v2

    .line 12
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$100(Lchuangyuan/ycj/videolibrary/video/GestureModule;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v7

    if-lez v4, :cond_4

    move-wide v5, v7

    goto :goto_2

    :cond_4
    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    move-wide v5, v2

    goto :goto_2

    :cond_5
    move-wide v5, v0

    .line 13
    :goto_2
    iget-object v4, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v4}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$300(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$400(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$300(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v1}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$400(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$500(Lchuangyuan/ycj/videolibrary/video/GestureModule;JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_6
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$600(Lchuangyuan/ycj/videolibrary/video/GestureModule;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 15
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->volumeControl:Z

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v0, v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$700(Lchuangyuan/ycj/videolibrary/video/GestureModule;F)V

    goto :goto_3

    .line 17
    :cond_7
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/GestureModule$PlayerGestureListener;->this$0:Lchuangyuan/ycj/videolibrary/video/GestureModule;

    invoke-static {v0, v2}, Lchuangyuan/ycj/videolibrary/video/GestureModule;->access$800(Lchuangyuan/ycj/videolibrary/video/GestureModule;F)V

    .line 18
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_8
    :goto_4
    return v1
.end method
