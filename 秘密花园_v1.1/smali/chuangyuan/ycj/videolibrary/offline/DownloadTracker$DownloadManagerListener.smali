.class public Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;
.super Ljava/lang/Object;
.source "DownloadTracker.java"

# interfaces
.implements Lf/i/a/a/e1/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadManagerListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;-><init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)V

    return-void
.end method


# virtual methods
.method public onDownloadChanged(Lf/i/a/a/e1/s;Lf/i/a/a/e1/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->access$100(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p2, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v0, v0, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->access$200(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;

    .line 3
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;->onDownloadsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadRemoved(Lf/i/a/a/e1/s;Lf/i/a/a/e1/m;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->access$100(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p2, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object p2, p2, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->access$200(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;

    .line 3
    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;->onDownloadsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIdle(Lf/i/a/a/e1/s;)V
    .locals 0

    return-void
.end method

.method public onInitialized(Lf/i/a/a/e1/s;)V
    .locals 0

    return-void
.end method

.method public onRequirementsStateChanged(Lf/i/a/a/e1/s;Lf/i/a/a/g1/b;I)V
    .locals 0

    return-void
.end method
