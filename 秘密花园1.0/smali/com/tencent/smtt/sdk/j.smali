.class public Lcom/tencent/smtt/sdk/j;
.super Ljava/lang/Object;
.source "TbsCoreVerManager.java"


# static fields
.field public static a:Lcom/tencent/smtt/sdk/j;

.field public static b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/j;->a:Lcom/tencent/smtt/sdk/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/smtt/sdk/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/j;->a:Lcom/tencent/smtt/sdk/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/smtt/sdk/j;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/j;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/j;->a:Lcom/tencent/smtt/sdk/j;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/j;->b:Landroid/content/Context;

    .line 7
    sget-object p0, Lcom/tencent/smtt/sdk/j;->a:Lcom/tencent/smtt/sdk/j;

    return-object p0
.end method

.method private e()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/j;->a()Ljava/io/File;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v2

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 8
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 9
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 11
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :cond_3
    :goto_5
    throw v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .line 10
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    sget-object v0, Lcom/tencent/smtt/sdk/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/l;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/File;

    const-string v2, "tbscoreinstall.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :goto_0
    return-object v1
.end method

.method public a(I)V
    .locals 1

    const-string v0, "dexopt_retry_num"

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const-string v0, "copy_core_ver"

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    const-string p1, "copy_status"

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "install_apk_path"

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/j;->e()Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/j;->a()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 20
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and status!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 24
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 25
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :cond_2
    :goto_4
    throw p1
.end method

.method public b()I
    .locals 1

    const-string v0, "install_core_ver"

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/j;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/j;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(I)V
    .locals 1

    const-string v0, "unzip_retry_num"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(II)V
    .locals 1

    const-string v0, "tpatch_ver"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    const-string p1, "tpatch_status"

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c()I
    .locals 1

    const-string v0, "install_status"

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/j;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/j;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(I)V
    .locals 1

    const-string v0, "incrupdate_status"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(II)V
    .locals 1

    const-string v0, "install_core_ver"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    const-string p1, "install_status"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public d()I
    .locals 1

    const-string v0, "incrupdate_status"

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/j;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/j;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    const-string v0, "unlzma_status"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/j;->a(Ljava/lang/String;I)V

    return-void
.end method
