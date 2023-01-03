.class public Lchuangyuan/ycj/videolibrary/whole/WholeMediaSource;
.super Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;
.source "WholeMediaSource.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;-><init>(Landroid/content/Context;Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;)V

    return-void
.end method


# virtual methods
.method public initMediaSource(Landroid/net/Uri;)Lf/i/a/a/h1/e0;
    .locals 12
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v3

    const/high16 v7, 0x100000

    new-instance v4, Lf/i/a/a/b1/e;

    invoke-direct {v4}, Lf/i/a/a/b1/e;-><init>()V

    .line 3
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 4
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->customCacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 6
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 7
    new-instance v8, Lf/i/a/a/l1/w;

    invoke-direct {v8, v6}, Lf/i/a/a/l1/w;-><init>(I)V

    .line 8
    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 9
    new-instance v9, Lf/i/a/a/h1/y;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    move v6, v7

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lf/i/a/a/h1/y;-><init>(Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/b1/i;Lf/i/a/a/l1/b0;Ljava/lang/String;ILjava/lang/Object;Lf/i/a/a/h1/y$a;)V

    return-object v9

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, ":Unsupported type: "

    invoke-static {v2, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    new-instance v3, Lf/i/a/a/h1/u0/e;

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v4

    invoke-direct {v3, v4}, Lf/i/a/a/h1/u0/e;-><init>(Lf/i/a/a/l1/m$a;)V

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lf/i/a/a/h1/u0/h;)V

    .line 12
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:Z

    xor-int/2addr v3, v2

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 13
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    .line 14
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:Z

    xor-int/2addr v3, v2

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 15
    new-instance v3, Lf/i/a/a/l1/w;

    invoke-direct {v3, v6}, Lf/i/a/a/l1/w;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Lf/i/a/a/l1/b0;

    .line 16
    new-instance v3, Lf/i/a/a/h1/u0/f;

    invoke-direct {v3}, Lf/i/a/a/h1/u0/f;-><init>()V

    .line 17
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 18
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Lf/i/a/a/h1/u0/i;

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    return-object v0

    .line 20
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v7, Lf/i/a/a/h1/v0/b$a;

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v8

    invoke-direct {v7, v8}, Lf/i/a/a/h1/v0/b$a;-><init>(Lf/i/a/a/l1/m$a;)V

    new-instance v8, Lf/i/a/a/l1/t;

    iget-object v9, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->context:Landroid/content/Context;

    .line 21
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v10

    invoke-direct {v8, v9, v5, v10}, Lf/i/a/a/l1/t;-><init>(Landroid/content/Context;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/m$a;)V

    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lf/i/a/a/h1/v0/c$a;Lf/i/a/a/l1/m$a;)V

    .line 22
    new-instance v5, Lf/i/a/a/l1/w;

    invoke-direct {v5, v6}, Lf/i/a/a/l1/w;-><init>(I)V

    .line 23
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->h:Z

    xor-int/2addr v6, v2

    invoke-static {v6}, Lc/a/a/b/g/h;->v(Z)V

    .line 24
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:Lf/i/a/a/l1/b0;

    .line 25
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->h:Z

    xor-int/2addr v2, v5

    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 26
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->g:J

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object v0

    return-object v0

    .line 28
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v7, Lf/i/a/a/h1/t0/h$a;

    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v8

    invoke-direct {v7, v8}, Lf/i/a/a/h1/t0/h$a;-><init>(Lf/i/a/a/l1/m$a;)V

    new-instance v8, Lf/i/a/a/l1/t;

    iget-object v9, p0, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lchuangyuan/ycj/videolibrary/video/MediaSourceBuilder;->getDataSource()Lf/i/a/a/l1/m$a;

    move-result-object v10

    invoke-direct {v8, v9, v5, v10}, Lf/i/a/a/l1/t;-><init>(Landroid/content/Context;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/m$a;)V

    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lf/i/a/a/h1/t0/c$a;Lf/i/a/a/l1/m$a;)V

    .line 30
    new-instance v5, Lf/i/a/a/l1/w;

    invoke-direct {v5, v6}, Lf/i/a/a/l1/w;-><init>(I)V

    .line 31
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->i:Z

    xor-int/2addr v6, v2

    invoke-static {v6}, Lc/a/a/b/g/h;->v(Z)V

    .line 32
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:Lf/i/a/a/l1/b0;

    .line 33
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->i:Z

    xor-int/2addr v5, v2

    invoke-static {v5}, Lc/a/a/b/g/h;->v(Z)V

    .line 34
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:J

    .line 35
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->h:Z

    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object v0

    return-object v0
.end method
