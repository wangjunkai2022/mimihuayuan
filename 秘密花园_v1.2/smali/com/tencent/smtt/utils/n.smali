.class public Lcom/tencent/smtt/utils/n;
.super Ljava/lang/Object;
.source "TbsCommonConfig.java"


# static fields
.field public static c:Lcom/tencent/smtt/utils/n;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/io/File;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->b:Ljava/io/File;

    const-string v0, "http://log.tbs.qq.com/ajax?c=pu&v=2&k="

    .line 4
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->d:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=pu&tk="

    .line 5
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->e:Ljava/lang/String;

    const-string v0, "http://wup.imtt.qq.com:8080"

    .line 6
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=dl&k="

    .line 7
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->g:Ljava/lang/String;

    const-string v0, "http://cfg.imtt.qq.com/tbs?v=2&mk="

    .line 8
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->h:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=ul&v=2&k="

    .line 9
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->i:Ljava/lang/String;

    const-string v0, "http://mqqad.html5.qq.com/adjs"

    .line 10
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->j:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=ucfu&k="

    .line 11
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->k:Ljava/lang/String;

    const-string v0, "TbsCommonConfig"

    const-string v1, "TbsCommonConfig constructing..."

    .line 12
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/utils/n;->a:Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Lcom/tencent/smtt/utils/n;->g()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/utils/n;
    .locals 2

    const-class v0, Lcom/tencent/smtt/utils/n;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/utils/n;->c:Lcom/tencent/smtt/utils/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/utils/n;
    .locals 2

    const-class v0, Lcom/tencent/smtt/utils/n;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/utils/n;->c:Lcom/tencent/smtt/utils/n;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/smtt/utils/n;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/utils/n;->c:Lcom/tencent/smtt/utils/n;

    .line 3
    :cond_0
    sget-object p0, Lcom/tencent/smtt/utils/n;->c:Lcom/tencent/smtt/utils/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized g()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/utils/n;->h()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "TbsCommonConfig"

    const-string v2, "Config file is null, default values will be applied"

    .line 2
    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "pv_post_url"

    const-string v3, ""

    .line 8
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->d:Ljava/lang/String;

    :cond_1
    const-string v2, "wup_proxy_domain"

    const-string v3, ""

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/lang/String;

    :cond_2
    const-string v2, "tbs_download_stat_post_url"

    const-string v3, ""

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->g:Ljava/lang/String;

    :cond_3
    const-string v2, "tbs_downloader_post_url"

    const-string v3, ""

    .line 17
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->h:Ljava/lang/String;

    :cond_4
    const-string v2, "tbs_log_post_url"

    const-string v3, ""

    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 22
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->i:Ljava/lang/String;

    :cond_5
    const-string v2, "tips_url"

    const-string v3, ""

    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 25
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->j:Ljava/lang/String;

    :cond_6
    const-string v2, "tbs_cmd_post_url"

    const-string v3, ""

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 28
    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->k:Ljava/lang/String;

    :cond_7
    const-string v2, "pv_post_url_tk"

    const-string v3, ""

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 31
    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :cond_8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 33
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 34
    :goto_1
    :try_start_5
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 35
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "TbsCommonConfig"

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptions occurred1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_9

    .line 37
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    .line 38
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_a

    .line 39
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catch_2
    move-exception v0

    .line 40
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    :cond_a
    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Ljava/io/File;
    .locals 6

    const-string v0, "TbsCommonConfig"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/smtt/utils/n;->b:Ljava/io/File;

    if-nez v2, :cond_1

    .line 2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/n;->a:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->b:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/n;->b:Ljava/io/File;

    const-string v4, "tbsnet.conf"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get file("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 7
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 8
    :goto_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 9
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptions occurred2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/n;->e:Ljava/lang/String;

    return-object v0
.end method
