.class public Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;,
        Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;,
        Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadTracker"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dataSourceFactory:Lf/i/a/a/l1/m$a;

.field public final downloadIndex:Lf/i/a/a/e1/r;

.field public final downloads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lf/i/a/a/e1/m;",
            ">;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public startDownloadDialogHelper:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/l1/m$a;Lf/i/a/a/e1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->dataSourceFactory:Lf/i/a/a/l1/m$a;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    .line 6
    iget-object p1, p3, Lf/i/a/a/e1/s;->a:Lf/i/a/a/e1/d0;

    .line 7
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloadIndex:Lf/i/a/a/e1/r;

    .line 8
    new-instance p1, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$DownloadManagerListener;-><init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$1;)V

    .line 9
    iget-object p2, p3, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->loadDownloads()V

    return-void
.end method

.method public static synthetic access$100(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$300(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->context:Landroid/content/Context;

    return-object p0
.end method

.method private loadDownloads()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloadIndex:Lf/i/a/a/e1/r;

    const/4 v1, 0x0

    new-array v1, v1, [I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Lf/i/a/a/e1/k;

    :try_start_1
    invoke-virtual {v0, v1}, Lf/i/a/a/e1/k;->e([I)Lf/i/a/a/e1/o;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lf/i/a/a/e1/o;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lf/i/a/a/e1/k$b;

    :try_start_3
    invoke-virtual {v1}, Lf/i/a/a/e1/k$b;->d()Lf/i/a/a/e1/m;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    iget-object v3, v1, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    iget-object v3, v3, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_4
    check-cast v0, Lf/i/a/a/e1/k$b;

    .line 6
    iget-object v0, v0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 8
    :try_start_6
    check-cast v0, Lf/i/a/a/e1/k$b;

    .line 9
    iget-object v0, v0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 10
    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildRenderersFactory(Z)Lf/i/a/a/r0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->useExtensionRenderers()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    new-instance v0, Lf/i/a/a/v;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/v;-><init>(Landroid/content/Context;)V

    .line 3
    iput p1, v0, Lf/i/a/a/v;->c:I

    return-object v0
.end method

.method public getDownloadHelper(Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/r0;)Lf/i/a/a/e1/q;
    .locals 9

    .line 1
    invoke-static {p1, p2}, Lf/i/a/a/m1/h0;->P(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 2
    new-instance p2, Lf/i/a/a/e1/q;

    sget-object v5, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    const/4 p3, 0x0

    new-array v6, p3, [Lf/i/a/a/p;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "progressive"

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/e1/q;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/h1/e0;Lf/i/a/a/j1/d$c;[Lf/i/a/a/p;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Unsupported type: "

    invoke-static {p3, p2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->dataSourceFactory:Lf/i/a/a/l1/m$a;

    .line 5
    sget-object v6, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    .line 6
    new-instance v8, Lf/i/a/a/e1/q;

    sget-object v1, Lf/i/a/a/e1/q;->s:Lf/i/a/a/e1/q$f;

    .line 7
    invoke-static {v1, p1, p2, v0}, Lf/i/a/a/e1/q$f;->a(Lf/i/a/a/e1/q$f;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Ljava/util/List;)Lf/i/a/a/h1/e0;

    move-result-object v5

    .line 8
    invoke-static {p3, v0}, Lf/i/a/a/m1/h0;->J(Lf/i/a/a/r0;Lf/i/a/a/z0/g;)[Lf/i/a/a/p;

    move-result-object v7

    const/4 v4, 0x0

    const-string v2, "hls"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lf/i/a/a/e1/q;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/h1/e0;Lf/i/a/a/j1/d$c;[Lf/i/a/a/p;)V

    return-object v8

    .line 9
    :cond_2
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->dataSourceFactory:Lf/i/a/a/l1/m$a;

    .line 10
    sget-object v6, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    .line 11
    new-instance v8, Lf/i/a/a/e1/q;

    sget-object v1, Lf/i/a/a/e1/q;->r:Lf/i/a/a/e1/q$f;

    .line 12
    invoke-static {v1, p1, p2, v0}, Lf/i/a/a/e1/q$f;->a(Lf/i/a/a/e1/q$f;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Ljava/util/List;)Lf/i/a/a/h1/e0;

    move-result-object v5

    .line 13
    invoke-static {p3, v0}, Lf/i/a/a/m1/h0;->J(Lf/i/a/a/r0;Lf/i/a/a/z0/g;)[Lf/i/a/a/p;

    move-result-object v7

    const/4 v4, 0x0

    const-string v2, "ss"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lf/i/a/a/e1/q;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/h1/e0;Lf/i/a/a/j1/d$c;[Lf/i/a/a/p;)V

    return-object v8

    .line 14
    :cond_3
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->dataSourceFactory:Lf/i/a/a/l1/m$a;

    .line 15
    sget-object v6, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    .line 16
    new-instance v8, Lf/i/a/a/e1/q;

    sget-object v1, Lf/i/a/a/e1/q;->q:Lf/i/a/a/e1/q$f;

    .line 17
    invoke-static {v1, p1, p2, v0}, Lf/i/a/a/e1/q$f;->a(Lf/i/a/a/e1/q$f;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Ljava/util/List;)Lf/i/a/a/h1/e0;

    move-result-object v5

    .line 18
    invoke-static {p3, v0}, Lf/i/a/a/m1/h0;->J(Lf/i/a/a/r0;Lf/i/a/a/z0/g;)[Lf/i/a/a/p;

    move-result-object v7

    const/4 v4, 0x0

    const-string v2, "dash"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lf/i/a/a/e1/q;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/h1/e0;Lf/i/a/a/j1/d$c;[Lf/i/a/a/p;)V

    return-object v8
.end method

.method public getDownloadRequest(Landroid/net/Uri;)Lf/i/a/a/e1/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/e1/m;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p1, Lf/i/a/a/e1/m;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isDownloaded(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/e1/m;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lf/i/a/a/e1/m;->b:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeListener(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toggleDownload(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/r0;)V
    .locals 1

    .line 1
    iget-object p5, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->downloads:Ljava/util/HashMap;

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lf/i/a/a/e1/m;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p5, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->startDownloadDialogHelper:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;

    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p5}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->release()V

    .line 4
    :cond_1
    new-instance p5, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->buildRenderersFactory(Z)Lf/i/a/a/r0;

    move-result-object v0

    invoke-virtual {p0, p3, p4, v0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->getDownloadHelper(Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/r0;)Lf/i/a/a/e1/q;

    move-result-object p3

    invoke-direct {p5, p0, p1, p3, p2}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;-><init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;Landroidx/fragment/app/FragmentManager;Lf/i/a/a/e1/q;Ljava/lang/String;)V

    iput-object p5, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->startDownloadDialogHelper:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;

    :goto_0
    return-void
.end method

.method public useExtensionRenderers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
