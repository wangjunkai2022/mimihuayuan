.class public Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
.super Ljava/lang/Object;
.source "MediaSourceBuilder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "chuangyuan.ycj.videolibrary.video.MediaSourceBuilder"


# instance fields
.field public context:Landroid/content/Context;

.field public customCacheKey:Ljava/lang/String;

.field public indexType:I

.field public listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

.field public mediaSource:Lf/i/a/a/h1/e0;

.field public videoUri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    .line 4
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addMediaUri(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/i/a/a/h1/u;

    const/4 v1, 0x0

    new-array v1, v1, [Lf/i/a/a/h1/e0;

    invoke-direct {v0, v1}, Lf/i/a/a/h1/u;-><init>([Lf/i/a/a/h1/e0;)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    .line 3
    :cond_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    instance-of v1, v0, Lf/i/a/a/h1/u;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lf/i/a/a/h1/u;

    .line 5
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/i/a/a/h1/u;->w(Lf/i/a/a/h1/e0;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;->getDataSourceFactory()Lf/i/a/a/l1/m$a;

    move-result-object v0

    invoke-interface {v0}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lf/i/a/a/l1/k0/e;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Lf/i/a/a/l1/k0/e;

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lf/i/a/a/l1/k0/e;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    :cond_1
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    .line 9
    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    return-void
.end method

.method public getDataSource()Lf/i/a/a/l1/m$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->listener:Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;->getDataSourceFactory()Lf/i/a/a/l1/m$a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getIndexType()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    return v0
.end method

.method public getMediaSource()Lf/i/a/a/h1/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-object v0
.end method

.method public getVideoUri()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    return-object v0
.end method

.method public initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;
    .locals 10

    .line 1
    new-instance v3, Lf/i/a/a/b1/e;

    invoke-direct {v3}, Lf/i/a/a/b1/e;-><init>()V

    .line 2
    monitor-enter v3

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput v0, v3, Lf/i/a/a/b1/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v3

    .line 5
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v2

    const/high16 v6, 0x100000

    .line 7
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v1, 0x5

    .line 8
    new-instance v4, Lf/i/a/a/l1/w;

    invoke-direct {v4, v1}, Lf/i/a/a/l1/w;-><init>(I)V

    .line 9
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 10
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->customCacheKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 12
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 13
    new-instance v9, Lf/i/a/a/h1/y;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lf/i/a/a/h1/y;-><init>(Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/b1/i;Lf/i/a/a/l1/b0;Ljava/lang/String;ILjava/lang/Object;Lf/i/a/a/h1/y$a;)V

    return-object v9

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->context:Landroid/content/Context;

    sget v1, Lchuangyuan/ycj/videolibrary/R$string;->media_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v3

    throw p1
.end method

.method public removeMedia(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    instance-of v1, v0, Lf/i/a/a/h1/u;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lf/i/a/a/h1/u;

    .line 3
    invoke-virtual {v0, p1}, Lf/i/a/a/h1/u;->B(I)Lf/i/a/a/h1/e0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lf/i/a/a/h1/e0;->i(Lf/i/a/a/h1/e0$b;)V

    .line 4
    monitor-enter v0

    add-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    .line 5
    :try_start_0
    invoke-static {v3}, Lc/a/a/b/g/h;->m(Z)V

    .line 6
    iget-object v4, v0, Lf/i/a/a/h1/u;->k:Landroid/os/Handler;

    .line 7
    iget-object v5, v0, Lf/i/a/a/h1/u;->i:Ljava/util/List;

    invoke-static {v5, p1, v1}, Lf/i/a/a/m1/h0;->f0(Ljava/util/List;II)V

    if-eqz v4, :cond_0

    .line 8
    new-instance v5, Lf/i/a/a/h1/u$h;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, p1, v1, v2}, Lf/i/a/a/h1/u$h;-><init>(ILjava/lang/Object;Lf/i/a/a/h1/u$f;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setClippingMediaUri(Lf/i/a/a/h1/e0;JJ)V
    .locals 7
    .param p1    # Lf/i/a/a/h1/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v6, Lf/i/a/a/h1/r;

    const-wide/16 v0, 0x3e8

    mul-long v2, p2, v0

    mul-long v4, p4, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/h1/r;-><init>(Lf/i/a/a/h1/e0;JJ)V

    iput-object v6, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method

.method public setCustomCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->customCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setIndexType(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    return-void
.end method

.method public setLoopingMediaSource(ILf/i/a/a/h1/e0;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 1
    new-instance v0, Lf/i/a/a/h1/b0;

    invoke-direct {v0, p2, p1}, Lf/i/a/a/h1/b0;-><init>(Lf/i/a/a/h1/e0;I)V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method

.method public setMediaSource(Lf/i/a/a/h1/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method

.method public setMediaSwitchUri(IILandroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lchuangyuan/ycj/videolibrary/listener/ItemVideo;",
            ">(II",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    .line 4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;

    .line 5
    iget-object v2, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    invoke-interface {v1}, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;->getVideoUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;

    invoke-interface {p2}, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;->getVideoUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public setMediaSwitchUri(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setMediaUri(IILandroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p4, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->videoUri:Ljava/util/List;

    .line 3
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    .line 4
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->setMediaUri(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public setMediaUri(ILandroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->indexType:I

    .line 6
    new-instance p1, Lf/i/a/a/h1/u;

    const/4 v0, 0x0

    new-array v0, v0, [Lf/i/a/a/h1/e0;

    invoke-direct {p1, v0}, Lf/i/a/a/h1/u;-><init>([Lf/i/a/a/h1/e0;)V

    .line 7
    invoke-virtual {p0, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/a/a/h1/u;->w(Lf/i/a/a/h1/e0;)V

    .line 8
    invoke-virtual {p0, p3}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/i/a/a/h1/u;->w(Lf/i/a/a/h1/e0;)V

    .line 9
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method

.method public setMediaUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method

.method public setMediaUri(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lchuangyuan/ycj/videolibrary/listener/ItemVideo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf/i/a/a/h1/e0;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;

    .line 12
    invoke-interface {v2}, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;->getVideoUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13
    invoke-interface {v2}, Lchuangyuan/ycj/videolibrary/listener/ItemVideo;->getVideoUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lf/i/a/a/h1/u;

    invoke-direct {p1, v0}, Lf/i/a/a/h1/u;-><init>([Lf/i/a/a/h1/e0;)V

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->mediaSource:Lf/i/a/a/h1/e0;

    return-void
.end method
