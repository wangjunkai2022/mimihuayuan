.class public Lcom/tencent/smtt/sdk/d;
.super Ljava/lang/Object;
.source "SDKEngine.java"


# static fields
.field public static a:I = 0x0

.field public static b:Z = false

.field public static e:Lcom/tencent/smtt/sdk/d; = null

.field public static h:I = 0x0

.field public static i:I = 0x3

.field public static k:Ljava/lang/String;


# instance fields
.field public c:Lcom/tencent/smtt/sdk/r;

.field public d:Lcom/tencent/smtt/sdk/r;

.field public f:Z

.field public g:Z

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    .line 3
    iput-object v0, p0, Lcom/tencent/smtt/sdk/d;->d:Lcom/tencent/smtt/sdk/r;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    .line 5
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->g:Z

    .line 6
    iput-object v0, p0, Lcom/tencent/smtt/sdk/d;->j:Ljava/io/File;

    return-void
.end method

.method public static a(Z)Lcom/tencent/smtt/sdk/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/d;->e:Lcom/tencent/smtt/sdk/d;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 2
    const-class p0, Lcom/tencent/smtt/sdk/d;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/d;->e:Lcom/tencent/smtt/sdk/d;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tencent/smtt/sdk/d;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/d;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/d;->e:Lcom/tencent/smtt/sdk/d;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/smtt/sdk/d;->e:Lcom/tencent/smtt/sdk/d;

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    .line 64
    sput p0, Lcom/tencent/smtt/sdk/d;->h:I

    return-void
.end method

.method private b(I)V
    .locals 4

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    sget-object v1, Lcom/tencent/smtt/sdk/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/d;->j:Ljava/io/File;

    const-string v3, "count.prop"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/smtt/sdk/d;->h:I

    return v0
.end method

.method private i()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/d;->j:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 7
    sget-object v3, Lcom/tencent/smtt/sdk/d;->k:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 11
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 14
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_2
    :goto_4
    throw v0
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/r;
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;ZZ)V
    .locals 10

    monitor-enter p0

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    const-string v0, "SDKEngine"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init -- context: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isPreIniting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget v0, Lcom/tencent/smtt/sdk/d;->a:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/smtt/sdk/d;->a:I

    .line 11
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a()V

    .line 12
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    sget v4, Lcom/tencent/smtt/sdk/d;->a:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/tencent/smtt/sdk/l;->b(Landroid/content/Context;Z)V

    .line 13
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/l;->k(Landroid/content/Context;)V

    .line 14
    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    .line 15
    invoke-static {p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p3

    invoke-static {}, Lcom/tencent/smtt/sdk/d;->d()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/tencent/smtt/sdk/l;->g(Landroid/content/Context;I)Z

    move-result p3

    const-string v0, "SDKEngine"

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTbsCoreLegal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; cost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_e

    .line 19
    iget-boolean p2, p0, Lcom/tencent/smtt/sdk/d;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x3e3

    new-array p3, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/l;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    .line 26
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_a

    .line 27
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by error_tbs_core_dexopt_dir null!"

    .line 28
    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by error_host_unavailable"

    .line 31
    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :cond_5
    const/16 p2, 0x3e4

    :try_start_3
    new-array p3, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/l;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    .line 35
    sget p3, Lcom/tencent/smtt/sdk/d;->h:I

    const/16 v0, 0x635c

    if-eq p3, v0, :cond_7

    sget p3, Lcom/tencent/smtt/sdk/d;->h:I

    const/16 v0, 0x635d

    if-ne p3, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-eqz p3, :cond_8

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    move-object v0, p3

    goto :goto_4

    :cond_8
    move-object v0, p1

    :goto_4
    if-nez p2, :cond_9

    .line 37
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by tbs_core_share_dir null!"

    .line 38
    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :cond_9
    move-object p3, p2

    :cond_a
    move-object v5, v0

    .line 40
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/tencent/smtt/sdk/QbSdk;->getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    .line 41
    :goto_5
    array-length v3, v8

    if-ge v0, v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 42
    :cond_b
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 43
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    .line 44
    :cond_c
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    :goto_6
    move-object v7, p3

    const-string p3, "SDKEngine"

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKEngine init optDir is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p3, p0, Lcom/tencent/smtt/sdk/d;->d:Lcom/tencent/smtt/sdk/r;

    if-eqz p3, :cond_d

    .line 47
    iget-object v3, p0, Lcom/tencent/smtt/sdk/d;->d:Lcom/tencent/smtt/sdk/r;

    iput-object v3, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 49
    :cond_d
    new-instance p3, Lcom/tencent/smtt/sdk/r;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/smtt/sdk/r;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    .line 50
    :goto_7
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/d;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p2

    :try_start_5
    const-string p3, "SDKEngine"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useSystemWebView by exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 v0, 0x147

    invoke-virtual {p3, p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    .line 53
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDKEngine::useSystemWebView by exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 55
    :cond_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can_load_x5="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; is_compatible="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SDKEngine"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKEngine.init canLoadTbs=false; failure: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-boolean p3, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz p3, :cond_f

    iget-boolean p3, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    if-eqz p3, :cond_f

    goto :goto_8

    .line 58
    :cond_f
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    .line 59
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 v0, 0x195

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    .line 60
    :goto_8
    invoke-static {p1}, Lcom/tencent/smtt/sdk/l;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/d;->j:Ljava/io/File;

    .line 61
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/d;->g:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 65
    sput-object p1, Lcom/tencent/smtt/sdk/d;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/d;->f:Z

    return v0
.end method

.method public b(Z)Z
    .locals 0

    .line 2
    sput-boolean p1, Lcom/tencent/smtt/sdk/d;->b:Z

    return p1
.end method

.method public c()Lcom/tencent/smtt/sdk/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/r;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "system webview get nothing..."

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/d;->b:Z

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/tencent/smtt/sdk/d;->k:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/d;->i()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/d;->b(I)V

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    sget v2, Lcom/tencent/smtt/sdk/d;->i:I

    if-gt v0, v2, :cond_2

    .line 6
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/d;->b(I)V

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/tencent/smtt/sdk/d;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/d;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->useSoftWare()Z

    move-result v0

    return v0
.end method
