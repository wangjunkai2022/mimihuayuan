.class public Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;
.super Ljava/lang/Object;
.source "ExoDownLoadManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger$Holder;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_ACTION_FILE:Ljava/lang/String; = "actions"

.field public static final DOWNLOAD_CONTENT_DIRECTORY:Ljava/lang/String; = "downloads"

.field public static final DOWNLOAD_TRACKER_ACTION_FILE:Ljava/lang/String; = "tracked_actions"

.field public static final MAX_SIMULTANEOUS_DOWNLOADS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "chuangyuan.ycj.videolibrary.offline.ExoDownLoadManger"


# instance fields
.field public context:Landroid/content/Context;

.field public databaseProvider:Lf/i/a/a/x0/b;

.field public downloadCache:Lf/i/a/a/l1/k0/b;

.field public downloadDirectory:Ljava/io/File;

.field public downloadManager:Lf/i/a/a/e1/s;

.field public downloadTracker:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildReadOnlyCacheDataSource(Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k0/b;)Lf/i/a/a/l1/k0/f;
    .locals 9

    .line 3
    new-instance v8, Lf/i/a/a/l1/k0/f;

    new-instance v3, Lf/i/a/a/l1/z;

    invoke-direct {v3}, Lf/i/a/a/l1/z;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    .line 4
    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/f;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k$a;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    return-object v8
.end method

.method public static buildReadOnlyCacheDataSource(Lf/i/a/a/l1/t;Lf/i/a/a/l1/k0/b;)Lf/i/a/a/l1/k0/f;
    .locals 9

    .line 1
    new-instance v8, Lf/i/a/a/l1/k0/f;

    new-instance v3, Lf/i/a/a/l1/z;

    invoke-direct {v3}, Lf/i/a/a/l1/z;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    .line 2
    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/f;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k$a;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    return-object v8
.end method

.method private getDatabaseProvider()Lf/i/a/a/x0/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->databaseProvider:Lf/i/a/a/x0/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/i/a/a/x0/c;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/x0/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->databaseProvider:Lf/i/a/a/x0/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->databaseProvider:Lf/i/a/a/x0/b;

    return-object v0
.end method

.method public static getSingle()Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;
    .locals 1

    .line 1
    sget-object v0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger$Holder;->h:Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;

    return-object v0
.end method

.method private upgradeActionFile(Ljava/lang/String;Lf/i/a/a/e1/k;Z)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDownloadDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p1, p2, v1, p3}, Lc/a/a/b/g/h;->t1(Ljava/io/File;Lf/i/a/a/e1/j;Lf/i/a/a/e1/k;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public buildDataSourceFactory(Landroid/content/Context;)Lf/i/a/a/l1/m$a;
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/l1/t;

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->buildHttpDataSourceFactory()Lf/i/a/a/l1/a0$b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf/i/a/a/l1/t;-><init>(Landroid/content/Context;Lf/i/a/a/l1/m$a;)V

    .line 3
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDownloadCache()Lf/i/a/a/l1/k0/b;

    move-result-object p1

    invoke-static {v0, p1}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->buildReadOnlyCacheDataSource(Lf/i/a/a/l1/t;Lf/i/a/a/l1/k0/b;)Lf/i/a/a/l1/k0/f;

    move-result-object p1

    return-object p1
.end method

.method public buildHttpDataSourceFactory()Lf/i/a/a/l1/a0$b;
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/l1/v;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->userAgent:Ljava/lang/String;

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lf/i/a/a/l1/v;-><init>(Ljava/lang/String;Lf/i/a/a/l1/i0;IIZ)V

    return-object v6
.end method

.method public buildRenderersFactory(Z)Lf/i/a/a/r0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->useExtensionRenderers()Z

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

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i/a/a/v;-><init>(Landroid/content/Context;)V

    .line 3
    iput p1, v0, Lf/i/a/a/v;->c:I

    return-object v0
.end method

.method public declared-synchronized getDownloadCache()Lf/i/a/a/l1/k0/b;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadCache:Lf/i/a/a/l1/k0/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDownloadDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "downloads"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lf/i/a/a/l1/k0/v;

    new-instance v3, Lf/i/a/a/l1/k0/t;

    invoke-direct {v3}, Lf/i/a/a/l1/k0/t;-><init>()V

    .line 4
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDatabaseProvider()Lf/i/a/a/x0/b;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v7}, Lf/i/a/a/l1/k0/v;-><init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;Lf/i/a/a/x0/b;[BZZ)V

    .line 6
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadCache:Lf/i/a/a/l1/k0/b;

    .line 7
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadCache:Lf/i/a/a/l1/k0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadDirectory()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadDirectory:Ljava/io/File;

    .line 4
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getDownloadManager()Lf/i/a/a/e1/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadManager:Lf/i/a/a/e1/s;

    return-object v0
.end method

.method public getExoDownloadTracker()Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadTracker:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    return-object v0
.end method

.method public declared-synchronized initDownloadManager(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->context:Landroid/content/Context;

    .line 2
    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->userAgent:Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadManager:Lf/i/a/a/e1/s;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lf/i/a/a/e1/k;

    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDatabaseProvider()Lf/i/a/a/x0/b;

    move-result-object p3

    invoke-direct {p2, p3}, Lf/i/a/a/e1/k;-><init>(Lf/i/a/a/x0/b;)V

    const-string p3, "actions"

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p3, p2, v0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->upgradeActionFile(Ljava/lang/String;Lf/i/a/a/e1/k;Z)V

    const-string p3, "tracked_actions"

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p3, p2, v0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->upgradeActionFile(Ljava/lang/String;Lf/i/a/a/e1/k;Z)V

    .line 7
    new-instance p3, Lf/i/a/a/e1/w;

    .line 8
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->getDownloadCache()Lf/i/a/a/l1/k0/b;

    move-result-object v0

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->buildHttpDataSourceFactory()Lf/i/a/a/l1/a0$b;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lf/i/a/a/e1/w;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;)V

    .line 9
    new-instance v0, Lf/i/a/a/e1/s;

    new-instance v1, Lf/i/a/a/e1/l;

    invoke-direct {v1, p3}, Lf/i/a/a/e1/l;-><init>(Lf/i/a/a/e1/w;)V

    invoke-direct {v0, p1, p2, v1}, Lf/i/a/a/e1/s;-><init>(Landroid/content/Context;Lf/i/a/a/e1/d0;Lf/i/a/a/e1/x;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadManager:Lf/i/a/a/e1/s;

    .line 10
    new-instance p2, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    .line 11
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->buildDataSourceFactory(Landroid/content/Context;)Lf/i/a/a/l1/m$a;

    move-result-object p3

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadManager:Lf/i/a/a/e1/s;

    invoke-direct {p2, p1, p3, v0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;-><init>(Landroid/content/Context;Lf/i/a/a/l1/m$a;Lf/i/a/a/e1/s;)V

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;->downloadTracker:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public useExtensionRenderers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
