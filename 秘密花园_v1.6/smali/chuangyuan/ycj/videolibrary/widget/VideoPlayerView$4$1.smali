.class public Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->showNetSpeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;

.field public final synthetic val$netSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;->val$netSpeed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;->this$1:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4;->this$0:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iget-object v0, v0, Lchuangyuan/ycj/videolibrary/widget/BaseView;->videoLoadingShowText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView$4$1;->val$netSpeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
