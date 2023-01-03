.class public Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultCacheDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/l1/m$a;


# instance fields
.field public final defaultDatasourceFactory:Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;

.field public final listener:Lf/i/a/a/l1/k0/e$a;

.field public maxCacheSize:J

.field public simpleCache:Lf/i/a/a/l1/k0/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const-wide v3, 0x10000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J[BLf/i/a/a/l1/k0/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J[BLf/i/a/a/l1/k0/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J[BLf/i/a/a/l1/k0/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J[BLf/i/a/a/l1/k0/e$a;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lf/i/a/a/l1/k0/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J[BLf/i/a/a/l1/k0/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J[BLf/i/a/a/l1/k0/e$a;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lf/i/a/a/l1/k0/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->maxCacheSize:J

    .line 7
    iput-object p6, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->listener:Lf/i/a/a/l1/k0/e$a;

    .line 8
    iput-wide p3, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->maxCacheSize:J

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p6, "media"

    invoke-virtual {p2, p6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p6

    if-nez p6, :cond_1

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_1
    new-instance p6, Lf/i/a/a/l1/k0/v;

    new-instance v0, Lf/i/a/a/l1/k0/s;

    invoke-direct {v0, p3, p4}, Lf/i/a/a/l1/k0/s;-><init>(J)V

    invoke-direct {p6, p2, v0, p5}, Lf/i/a/a/l1/k0/v;-><init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;[B)V

    iput-object p6, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->simpleCache:Lf/i/a/a/l1/k0/v;

    goto :goto_0

    .line 14
    :cond_2
    new-instance p6, Lf/i/a/a/l1/k0/v;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lf/i/a/a/l1/k0/s;

    invoke-direct {p2, p3, p4}, Lf/i/a/a/l1/k0/s;-><init>(J)V

    invoke-direct {p6, v0, p2, p5}, Lf/i/a/a/l1/k0/v;-><init>(Ljava/io/File;Lf/i/a/a/l1/k0/g;[B)V

    iput-object p6, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->simpleCache:Lf/i/a/a/l1/k0/v;

    .line 15
    :goto_0
    new-instance p2, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;

    invoke-direct {p2, p1}, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->defaultDatasourceFactory:Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;

    return-void
.end method


# virtual methods
.method public createDataSource()Lf/i/a/a/l1/m;
    .locals 9

    .line 1
    new-instance v8, Lf/i/a/a/l1/k0/e;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->simpleCache:Lf/i/a/a/l1/k0/v;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->defaultDatasourceFactory:Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v2

    new-instance v3, Lf/i/a/a/l1/y;

    invoke-direct {v3}, Lf/i/a/a/l1/y;-><init>()V

    new-instance v4, Lf/i/a/a/l1/k0/c;

    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->simpleCache:Lf/i/a/a/l1/k0/v;

    iget-wide v5, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->maxCacheSize:J

    const/16 v7, 0x5000

    .line 2
    invoke-direct {v4, v0, v5, v6, v7}, Lf/i/a/a/l1/k0/c;-><init>(Lf/i/a/a/l1/k0/b;JI)V

    const/4 v5, 0x1

    .line 3
    iget-object v6, p0, Lchuangyuan/ycj/videolibrary/factory/DefaultCacheDataSourceFactory;->listener:Lf/i/a/a/l1/k0/e$a;

    const/4 v7, 0x0

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/e;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m;Lf/i/a/a/l1/m;Lf/i/a/a/l1/k;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    return-object v8
.end method
