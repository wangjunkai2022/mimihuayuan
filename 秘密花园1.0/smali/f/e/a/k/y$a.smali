.class public Lf/e/a/k/y$a;
.super Ljava/lang/Object;
.source "VideoUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/k/y;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/e/a/k/y;


# direct methods
.method public constructor <init>(Lf/e/a/k/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2, v2}, Lf/i/a/a/k1/e;->setResizeMode(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Lf/i/a/a/k1/e;->setResizeMode(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lf/i/a/a/k1/e;->setResizeMode(I)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2}, Lf/i/a/a/k1/e;->getVideoSurfaceView()Lf/i/a/a/f1/a;

    move-result-object p2

    const/16 v0, 0x10e

    invoke-interface {p2, v0}, Lf/i/a/a/f1/a;->setVideoRotation(I)V

    .line 5
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lf/i/a/a/k1/e;->setResizeMode(I)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2}, Lf/i/a/a/k1/e;->getVideoSurfaceView()Lf/i/a/a/f1/a;

    move-result-object p2

    invoke-interface {p2, v0}, Lf/i/a/a/f1/a;->setVideoRotation(I)V

    .line 7
    iget-object p2, p0, Lf/e/a/k/y$a;->a:Lf/e/a/k/y;

    iget-object p2, p2, Lf/e/a/k/y;->b:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-virtual {p2}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlayerView()Lf/i/a/a/k1/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lf/i/a/a/k1/e;->setResizeMode(I)V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
