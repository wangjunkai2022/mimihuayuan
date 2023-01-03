.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lf/i/a/a/k1/d$e;


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
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showBackView(IZ)V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {v0, p1}, Lchuangyuan/ycj/videolibrary/widget/BaseView;->showLockState(I)V

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$1;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->dismissBelowView()V

    :cond_0
    return-void
.end method
