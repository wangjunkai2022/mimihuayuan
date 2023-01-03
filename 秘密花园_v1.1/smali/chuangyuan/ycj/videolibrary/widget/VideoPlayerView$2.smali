.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mLockControlView:Lchuangyuan/ycj/videolibrary/widget/LockControlView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/LockControlView;->updateLockCheckBox(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->isLand()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnim(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$2;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->exoControlsBack:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnim(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method
