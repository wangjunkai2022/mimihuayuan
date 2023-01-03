.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/widget/BelowView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->mExoPlayerListener:Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerListener;->switchUri(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getSwitchText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$3;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object p1, p1, Lchuangyuan/ycj/videolibrary/widget/BaseView;->belowView:Lchuangyuan/ycj/videolibrary/widget/BelowView;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/BelowView;->dismissBelowView()V

    return-void
.end method
