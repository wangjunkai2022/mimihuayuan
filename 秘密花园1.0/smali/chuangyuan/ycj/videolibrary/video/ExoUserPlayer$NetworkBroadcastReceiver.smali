.class public final Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExoUserPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkBroadcastReceiver"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public is:J

.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->is:J

    return-void
.end method

.method public synthetic constructor <init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;-><init>(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "connectivity"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->is:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->is:J

    .line 9
    invoke-static {}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->getInstance()Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;->isClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->access$200(Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->getPlayerViewListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;

    .line 12
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/listener/ExoPlayerViewListener;->showAlertDialog()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 14
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer$NetworkBroadcastReceiver;->this$0:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startVideo()V

    :cond_2
    return-void
.end method
