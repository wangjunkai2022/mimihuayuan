.class public Lchuangyuan/ycj/videolibrary/widget/BaseView$4;
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
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object v1, p2, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$000(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->access$000(Lchuangyuan/ycj/videolibrary/widget/BaseView;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/BaseView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/BaseView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    invoke-interface {p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->startPlayers()V

    :cond_2
    :goto_0
    return v0
.end method
