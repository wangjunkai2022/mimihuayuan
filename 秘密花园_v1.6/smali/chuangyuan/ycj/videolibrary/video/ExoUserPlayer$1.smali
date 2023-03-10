.class public Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;
.super Ljava/lang/Object;
.source "ExoUserPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 2
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {v2}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$000(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showNetSpeed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
