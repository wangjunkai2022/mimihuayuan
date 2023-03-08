.class public Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder$1;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/BasePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->create()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder$1;->this$0:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setPlayer(Lf/i/a/a/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder$1;->this$0:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;->access$100(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Builder;)Lf/i/a/a/k1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/i/a/a/k1/d;->setPlayer(Lf/i/a/a/l0;)V

    return-void
.end method
