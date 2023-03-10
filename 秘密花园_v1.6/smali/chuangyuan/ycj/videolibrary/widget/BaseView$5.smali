.class public Lchuangyuan/ycj/videolibrary/widget/BaseView$5;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/widget/BaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/BaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$100(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->isLock()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$200(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$300(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$300(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$300(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$5;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$300(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;

    move-result-object p1

    invoke-interface {p1}, Lchuangyuan/ycj/videolibrary/listener/OnEndGestureListener;->onEndGesture()V

    :cond_5
    :goto_0
    return v0
.end method
