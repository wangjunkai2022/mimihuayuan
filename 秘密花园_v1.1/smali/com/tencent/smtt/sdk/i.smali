.class public Lcom/tencent/smtt/sdk/i;
.super Ljava/lang/Object;
.source "TbsApkDownloader.java"


# static fields
.field public static d:I = 0x5

.field public static e:I = 0x1

.field public static final f:[Ljava/lang/String;


# instance fields
.field public A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:I

.field public C:Z

.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:I

.field public g:Landroid/content/Context;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/io/File;

.field public l:J

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Ljava/net/HttpURLConnection;

.field public u:Ljava/lang/String;

.field public v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Z

.field public z:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "tbs_downloading_com.tencent.mtt"

    const-string v1, "tbs_downloading_com.tencent.mm"

    const-string v2, "tbs_downloading_com.tencent.mobileqq"

    const-string v3, "tbs_downloading_com.tencent.tbs"

    const-string v4, "tbs_downloading_com.qzone"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/i;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 2
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->m:I

    const/16 v0, 0x4e20

    .line 3
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->n:I

    .line 4
    sget v0, Lcom/tencent/smtt/sdk/i;->d:I

    iput v0, p0, Lcom/tencent/smtt/sdk/i;->B:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/smtt/sdk/i;->c:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    const-string p1, "tbs_downloading_"

    .line 10
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->u:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/l;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->e()V

    .line 13
    iput-object v0, p0, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/tencent/smtt/sdk/i;->x:I

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "TbsCorePrivateDir is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(JJ)J
    .locals 3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p1, v0, p1

    .line 67
    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownConsumeTime(J)V

    .line 68
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadSize(J)V

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 117
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TbsDownload"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/io/File;
    .locals 2

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_1
    const-string p0, "x5.tbs.org"

    :goto_0
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 69
    iget p3, p0, Lcom/tencent/smtt/sdk/i;->p:I

    iget v0, p0, Lcom/tencent/smtt/sdk/i;->B:I

    if-le p3, v0, :cond_1

    .line 70
    :cond_0
    iget-object p3, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    .line 71
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(J)V
    .locals 3

    .line 110
    iget v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->l()J

    move-result-wide p1

    .line 112
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)V
    .locals 11

    .line 131
    const-class v0, Lcom/tencent/smtt/utils/a;

    monitor-enter v0

    if-eqz p0, :cond_b

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 133
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 134
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 135
    new-instance v2, Ljava/io/File;

    const-string v5, "x5.tbs.decouple"

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_2
    const-string v5, "x5.tbs.org"

    :goto_0
    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 138
    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;Ljava/io/File;)Z

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "x5.tbs.decouple"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v5, :cond_7

    .line 141
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(.*)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 144
    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v5, v8

    .line 145
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 146
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 147
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    :cond_5
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    .line 149
    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_download_version"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, "TbsDownload"

    const-string p1, "[TbsApkDownloader.backupTbsApk]delete bacup config file error "

    .line 152
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 154
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 155
    :cond_7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_version_type"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_a

    .line 156
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_decouplecoreversion"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 157
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_responsecode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    :cond_8
    const-string v3, "TbsApkDownloader"

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "return backup decouple apk"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9
    new-instance v2, Ljava/io/File;

    const-string v3, "x5.tbs.decouple"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result p1

    if-eq v1, p1, :cond_a

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 162
    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :catch_0
    :cond_a
    :try_start_4
    monitor-exit v0

    return-void

    .line 164
    :cond_b
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 165
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "[initHttpRequest] mHttpRequest.disconnect() Throwable:"

    .line 5
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TbsDownload"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    .line 7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 11
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/i;->n:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 12
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/i;->m:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->m()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x4

    .line 257
    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 258
    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 259
    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 260
    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TbsDownload"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private b(I)Z
    .locals 6

    const-string v0, "TbsDownload"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_0
    const-string v5, "x5.tbs.org"

    :goto_0
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 5
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;Ljava/io/File;)Z

    .line 6
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] verifyTbsApk error!!"

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    const-string v0, "(.*)"

    .line 51
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/l;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/io/File;

    const-string v3, "x5.tbs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 53
    new-instance v2, Ljava/io/File;

    const-string v3, "x5.tbs.temp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 54
    invoke-static {p0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 55
    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.org"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 56
    new-instance v1, Ljava/io/File;

    const-string v2, "x5.oversea.tbs.org"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 60
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 66
    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, p0, v3

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    return-void
.end method

.method private c(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/q;->a(Landroid/content/Context;)Z

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "request_full_package"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "tbs_needdownload"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const/16 v2, -0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "tbs_download_interrupt_code_reason"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    .line 7
    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x78

    :goto_0
    invoke-interface {v1, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    .line 8
    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_responsecode"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/i;->a(IZ)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/l;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/16 v4, 0x2710

    if-le p1, v4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "tbs_download_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 13
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_2

    .line 15
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0, p1, v2, v1}, Lcom/tencent/smtt/sdk/i;->a(ILjava/io/File;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/l;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/i;->c()V

    .line 19
    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :goto_2
    return-void
.end method

.method private c(ZZ)Z
    .locals 12

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TbsDownload"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    if-nez p1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    const-string v5, "x5.tbs.temp"

    :goto_0
    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    return v5

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_apk_md5"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v0}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 27
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.verifyTbsApk] md5("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") successful!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_4

    .line 28
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_apkfilesize"

    invoke-interface {v3, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    cmp-long v3, v10, v8

    if-lez v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v3, v10, v8

    if-eqz v3, :cond_4

    .line 30
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " filelength failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",contentLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    return v5

    .line 32
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.verifyTbsApk] length("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    .line 33
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    .line 34
    iget-object v8, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_download_version"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v3, :cond_6

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " versionCode failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",configVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_5
    return v5

    .line 37
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TbsApkDownloader.verifyTbsApk] tbsApkVersionCode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    if-nez p1, :cond_9

    .line 38
    iget-object p2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p2, v5, v0}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " signature failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 41
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-string v0, "signature:"

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_7

    const-string p2, "null"

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_8
    return v5

    :cond_9
    const-string p2, "[TbsApkDownloader.verifyTbsApk] signature successful!"

    .line 42
    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_b

    .line 43
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v7, p1

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_a

    const/16 p1, 0x6d

    .line 44
    invoke-direct {p0, v7}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    return v5

    :cond_a
    move v5, p1

    .line 45
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TbsApkDownloader.verifyTbsApk] rename("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 46
    :cond_c
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " md5 failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 47
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-string p2, "fileMd5 not match"

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_d
    return v5
.end method

.method private d(Z)Z
    .locals 2

    const-string v0, "[TbsApkDownloader.deleteFile] isApk="

    const-string v1, "TbsDownload"

    .line 1
    invoke-static {v0, p1, v1}, Lf/b/a/a/a;->A(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v1, "x5.tbs"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v1, "x5.tbs.temp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    .line 2
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->q:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/tencent/smtt/sdk/i;->l:J

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->o:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->r:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->s:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->y:Z

    return-void
.end method

.method private f()V
    .locals 7

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.closeHttpRequest]"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/i;->r:Z

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/i;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setResolveIp(Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v3, "[closeHttpRequest] mHttpRequest.disconnect() Throwable:"

    .line 6
    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iput-object v2, p0, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    .line 9
    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/i;->r:Z

    const/4 v4, 0x0

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/i;->y:Z

    if-eqz v3, :cond_9

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    .line 11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v3

    .line 13
    iget-object v5, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setApn(Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v5, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkType(I)V

    .line 15
    iget v5, p0, Lcom/tencent/smtt/sdk/i;->x:I

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    if-eqz v0, :cond_5

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->getDownFinalFlag()I

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    const/16 v4, 0x65

    if-nez v0, :cond_6

    .line 19
    invoke-direct {p0, v4, v2, v3}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    goto :goto_1

    .line 20
    :cond_6
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    invoke-direct {p0, v4, v2, v3}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 22
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_2

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    .line 25
    :goto_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    const/16 v0, 0x64

    if-eq v1, v0, :cond_a

    .line 26
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    goto :goto_3

    .line 27
    :cond_9
    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    :cond_a
    :goto_3
    return-void
.end method

.method private g()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_0
    const-string v2, "x5.tbs.org"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_backup_version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const-wide/16 v3, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_0
    const-string v2, "x5.tbs.org"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(.*)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()J
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private k()Z
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ping www.qq.com"

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    .line 6
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string v7, "TTL"

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ttl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v6

    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    move-object v2, v0

    move-object v0, v4

    .line 8
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 9
    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 10
    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 11
    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_4
    move-exception v1

    .line 12
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 13
    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 14
    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private l()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-wide/32 v0, 0x30d40

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x186a0

    goto :goto_0

    .line 2
    :cond_1
    iget v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4e20

    mul-long v0, v0, v2

    :goto_0
    return-wide v0
.end method

.method private m()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi="

    const-string v4, "TbsDownload"

    .line 2
    invoke-static {v3, v0, v4}, Lf/b/a/a/a;->A(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] localBSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://pms.mb.qq.com/rsp204"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v3, 0x2710

    .line 8
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 11
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 12
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v3, v0

    move v2, v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v3, v5

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 15
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    .line 16
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    move-object v3, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 17
    :catch_2
    :cond_3
    throw v0

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->n()V

    .line 21
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->z:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->z:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    if-eqz v2, :cond_6

    .line 23
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    return v2
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->z:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/smtt/sdk/i$1;

    invoke-static {}, Lcom/tencent/smtt/sdk/k;->a()Lcom/tencent/smtt/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/i$1;-><init>(Lcom/tencent/smtt/sdk/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/i;->z:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/io/File;Z)Landroid/os/Bundle;
    .locals 4

    if-eqz p3, :cond_0

    .line 96
    new-instance p3, Ljava/io/File;

    const-string v0, "x5.tbs.decouple"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_0
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    goto :goto_0

    :cond_1
    const-string v0, "x5.tbs.org"

    :goto_0
    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    :goto_1
    iget-object p2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result p2

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 101
    :goto_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "tbs_download_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "operation"

    .line 103
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_core_ver"

    .line 104
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_core_ver"

    .line 105
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "old_apk_location"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "new_apk_location"

    .line 107
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diff_file_location"

    .line 108
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(IZ)Landroid/os/Bundle;
    .locals 6

    if-eqz p2, :cond_0

    .line 75
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/l;->h(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/l;->i(Landroid/content/Context;)I

    move-result v1

    .line 79
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_2

    return-object v4

    .line 81
    :cond_2
    iget-object v3, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    const-string v5, "tbs_download_version"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_3

    .line 82
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p2

    iget-object v4, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v5, 0x6

    invoke-virtual {p2, v4, v5}, Lcom/tencent/smtt/sdk/l;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    .line 83
    :cond_3
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object p2

    iget-object v4, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-virtual {p2, v4, v5}, Lcom/tencent/smtt/sdk/l;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    .line 84
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "operation"

    .line 85
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_core_ver"

    .line 86
    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_core_ver"

    .line 87
    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "old_apk_location"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "new_apk_location"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diff_file_location"

    .line 90
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_4
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "backup_apk"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public a(I)V
    .locals 3

    .line 126
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/l;->b()V

    .line 128
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-lez p1, :cond_1

    if-ne p1, v1, :cond_1

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 8

    const-string v0, "TbsApkDownloader"

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #1"

    .line 46
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x5.tbs.decouple"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "tbs_decouplecoreversion"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "verifyAndInstallDecoupleCoreFromBackup #2"

    .line 49
    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;Ljava/io/File;)Z

    .line 53
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v1, v5, v6, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #3"

    .line 54
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->m()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return v0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/tencent/smtt/sdk/i;->c:I

    if-ltz v1, :cond_2

    array-length v2, p1

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 58
    iput v2, p0, Lcom/tencent/smtt/sdk/i;->c:I

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    .line 59
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->p:I

    .line 60
    iput v0, p0, Lcom/tencent/smtt/sdk/i;->q:I

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Lcom/tencent/smtt/sdk/i;->l:J

    .line 62
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->o:Z

    .line 63
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->r:Z

    .line 64
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->s:Z

    .line 65
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->y:Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public a(ZZ)Z
    .locals 8

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    return v0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_backup_version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 15
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/l;->i(Landroid/content/Context;)I

    move-result v1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "by default key"

    .line 17
    iput-object v2, p0, Lcom/tencent/smtt/sdk/i;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "by new key"

    .line 18
    iput-object v2, p0, Lcom/tencent/smtt/sdk/i;->a:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_a

    if-ne p1, v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v1, "tbs_download_interrupt_code_reason"

    const/16 v2, -0xd6

    const/4 v3, 0x1

    if-eqz p2, :cond_8

    .line 19
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "x5.oversea.tbs.org"

    goto :goto_1

    :cond_3
    const-string v7, "x5.tbs.org"

    :goto_1
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :try_start_0
    iget-object v6, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_version_type"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 23
    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v5, 0x0

    .line 25
    :goto_2
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->g()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/i;->b(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    .line 29
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->c(Z)V

    if-eqz v5, :cond_6

    const/16 p1, 0x64

    const-string p2, "use local backup apk in startDownload"

    .line 30
    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 31
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_3

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    .line 34
    :goto_3
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    :cond_6
    return v3

    .line 35
    :cond_7
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/i;->h()V

    .line 36
    iget-object v5, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v5, v4, v6, v7, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result p1

    if-nez p1, :cond_8

    .line 37
    invoke-static {v4}, Lcom/tencent/smtt/utils/f;->b(Ljava/io/File;)V

    .line 38
    :cond_8
    invoke-direct {p0, v0, p2}, Lcom/tencent/smtt/sdk/i;->c(ZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 39
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    .line 41
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->c(Z)V

    return v3

    .line 42
    :cond_9
    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    move-result p1

    if-nez p1, :cond_a

    .line 43
    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "TbsDownload"

    const-string p2, "[TbsApkDownloader] delete file failed!"

    .line 44
    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    const/16 p2, -0x12d

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_a
    :goto_4
    return v0
.end method

.method public b(Z)I
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.decouple"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "x5.oversea.tbs.org"

    goto :goto_1

    :cond_3
    const-string v2, "x5.tbs.org"

    :goto_1
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    :goto_2
    return v1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->r:Z

    .line 267
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v1, -0x135

    .line 269
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    .line 270
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    .line 271
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ZZ)V
    .locals 36

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "tbs_downloadstarttime"

    .line 10
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/l;->c(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 11
    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    .line 12
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x142

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    .line 13
    :cond_0
    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_responsecode"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez p2, :cond_3

    .line 14
    invoke-virtual {v1, v2, v4}, Lcom/tencent/smtt/sdk/i;->a(ZZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    return-void

    .line 16
    :cond_3
    iput-boolean v2, v1, Lcom/tencent/smtt/sdk/i;->C:Z

    .line 17
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "tbs_downloadurl"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/smtt/sdk/i;->h:Ljava/lang/String;

    .line 18
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "tbs_downloadurl_list"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupUrlStrings:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "TbsDownload"

    invoke-static {v10, v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    iput-object v9, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    .line 21
    iput v5, v1, Lcom/tencent/smtt/sdk/i;->c:I

    if-nez v2, :cond_4

    if-eqz v6, :cond_4

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 23
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    :cond_4
    const-string v5, "[TbsApkDownloader.startDownload] mDownloadUrl="

    .line 24
    invoke-static {v5}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Lcom/tencent/smtt/sdk/i;->h:Ljava/lang/String;

    const-string v11, " backupUrlStrings="

    const-string v12, " mLocation="

    invoke-static {v5, v8, v11, v6, v12}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mCanceled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mHttpRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->h:Ljava/lang/String;

    const/16 v6, 0x6e

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 26
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    .line 27
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x12e

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    .line 28
    :cond_5
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_6

    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    if-nez v5, :cond_6

    .line 29
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    .line 30
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x12f

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_6
    const/16 v5, -0x130

    if-nez v2, :cond_7

    .line 31
    iget-object v8, v1, Lcom/tencent/smtt/sdk/i;->A:Ljava/util/Set;

    iget-object v11, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v2, "[TbsApkDownloader.startDownload] WIFI Unavailable"

    .line 32
    invoke-static {v10, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    .line 34
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    .line 35
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->e()V

    const-string v5, "STEP 1/2 begin downloading..."

    .line 36
    invoke-static {v10, v5, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v5

    .line 38
    iget-object v8, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "tbs_downloadflow"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v2, :cond_8

    .line 39
    sget v8, Lcom/tencent/smtt/sdk/i;->e:I

    iput v8, v1, Lcom/tencent/smtt/sdk/i;->B:I

    goto :goto_2

    .line 40
    :cond_8
    sget v8, Lcom/tencent/smtt/sdk/i;->d:I

    iput v8, v1, Lcom/tencent/smtt/sdk/i;->B:I

    :goto_2
    const/4 v8, 0x0

    .line 41
    :goto_3
    iget v14, v1, Lcom/tencent/smtt/sdk/i;->p:I

    iget v15, v1, Lcom/tencent/smtt/sdk/i;->B:I

    if-le v14, v15, :cond_9

    :goto_4
    move/from16 p2, v8

    goto/16 :goto_1c

    .line 42
    :cond_9
    iget v14, v1, Lcom/tencent/smtt/sdk/i;->q:I

    const/16 v15, 0x8

    if-le v14, v15, :cond_a

    const/16 v2, 0x7b

    .line 43
    invoke-direct {v1, v2, v9, v7}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 44
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x132

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_4

    .line 45
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string v7, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    if-nez v2, :cond_d

    .line 46
    :try_start_0
    iget-object v9, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v7

    move/from16 p2, v8

    const-wide/16 v7, 0x0

    :try_start_1
    invoke-interface {v9, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long v7, v14, v7

    const-wide/32 v17, 0x5265c00

    cmp-long v9, v7, v17

    if-lez v9, :cond_b

    :try_start_2
    const-string v7, "[TbsApkDownloader.startDownload] OVER DOWNLOAD_PERIOD"

    .line 47
    invoke-static {v10, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v12, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object v7, v0

    move-object/from16 v16, v3

    move-wide/from16 v20, v5

    move-object v9, v11

    goto/16 :goto_d

    .line 51
    :cond_b
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.startDownload] downloadFlow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v12, v5

    if-ltz v7, :cond_c

    const/4 v7, 0x1

    move-object/from16 v8, v16

    .line 52
    invoke-static {v10, v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0x70

    const/4 v9, 0x0

    .line 53
    invoke-direct {v1, v8, v9, v7}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 54
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x133

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v16

    .line 55
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/f;->b(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "DownloadBegin FreeSpace too small"

    const/4 v8, 0x1

    .line 56
    invoke-static {v10, v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x69

    const/4 v9, 0x0

    .line 57
    invoke-direct {v1, v7, v9, v8}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 58
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x134

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_30

    .line 59
    :goto_7
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 p2, v8

    goto :goto_5

    :cond_d
    move/from16 p2, v8

    move-object v8, v7

    :cond_e
    const/4 v7, 0x1

    .line 60
    :try_start_4
    iput-boolean v7, v1, Lcom/tencent/smtt/sdk/i;->y:Z

    .line 61
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_23

    if-eqz v7, :cond_f

    :try_start_5
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :cond_f
    :try_start_6
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->h:Ljava/lang/String;

    .line 62
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_23

    move-object/from16 v16, v3

    :try_start_7
    const-string v3, "try url:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mRetryTimes:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/tencent/smtt/sdk/i;->p:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-static {v10, v3, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->i:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_22

    if-nez v3, :cond_10

    .line 64
    :try_start_8
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadUrl(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-wide/from16 v20, v5

    move-object v9, v11

    move-wide/from16 v22, v12

    goto/16 :goto_c

    .line 65
    :cond_10
    :goto_9
    :try_start_9
    iput-object v7, v1, Lcom/tencent/smtt/sdk/i;->i:Ljava/lang/String;

    .line 66
    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/String;)V

    .line 67
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->o:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_22

    const-string v7, "/"

    if-nez v3, :cond_12

    move-wide/from16 v17, v14

    .line 68
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->j()J

    move-result-wide v14

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TbsApkDownloader.startDownload] range="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v3, v8

    .line 70
    :try_start_b
    iget-wide v8, v1, Lcom/tencent/smtt/sdk/i;->l:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v19, v3

    const-string v3, "-"

    move-wide/from16 v20, v5

    const-string v5, "bytes="

    const-string v6, "Range"

    const-wide/16 v22, 0x0

    cmp-long v24, v8, v22

    if-gtz v24, :cond_11

    .line 71
    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "STEP 1/2 begin downloading...current"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v10, v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v8, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v9, v11

    move-wide/from16 v22, v12

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-object v7, v0

    move-object v9, v11

    move-wide/from16 v22, v12

    goto :goto_b

    .line 73
    :cond_11
    :try_start_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#1 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object v9, v11

    move-wide/from16 v22, v12

    :try_start_e
    iget-wide v11, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    invoke-static {v10, v8, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    iget-object v8, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-wide/from16 v20, v5

    :goto_a
    move-object v9, v11

    move-wide/from16 v22, v12

    move-object v7, v0

    :goto_b
    move-wide/from16 v12, v22

    goto :goto_d

    :catchall_7
    move-exception v0

    move-wide/from16 v20, v5

    move-object v9, v11

    move-wide/from16 v22, v12

    move-object v3, v0

    :goto_c
    move-object v7, v3

    goto :goto_b

    :goto_d
    move/from16 v8, p2

    move-object v3, v7

    move-object v7, v9

    move-wide/from16 v19, v20

    :goto_e
    move v9, v4

    goto/16 :goto_51

    :cond_12
    move-wide/from16 v20, v5

    move-object/from16 v19, v8

    move-object v9, v11

    move-wide/from16 v22, v12

    move-wide/from16 v17, v14

    const-wide/16 v14, 0x0

    .line 75
    :goto_f
    :try_start_f
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-wide/16 v5, 0x0

    cmp-long v8, v14, v5

    if-nez v8, :cond_13

    const/4 v5, 0x0

    goto :goto_10

    :cond_13
    const/4 v5, 0x1

    :goto_10
    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    .line 76
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v3

    .line 77
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_21

    if-nez v6, :cond_14

    :try_start_10
    iget v6, v1, Lcom/tencent/smtt/sdk/i;->x:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_14

    .line 79
    iput-object v5, v1, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;

    .line 80
    iput v3, v1, Lcom/tencent/smtt/sdk/i;->x:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v7, v0

    goto/16 :goto_1d

    .line 81
    :cond_14
    :try_start_11
    iget v6, v1, Lcom/tencent/smtt/sdk/i;->x:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_21

    if-ne v3, v6, :cond_15

    :try_start_12
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-nez v6, :cond_16

    .line 82
    :cond_15
    :try_start_13
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    .line 83
    iput-object v5, v1, Lcom/tencent/smtt/sdk/i;->w:Ljava/lang/String;

    .line 84
    iput v3, v1, Lcom/tencent/smtt/sdk/i;->x:I

    .line 85
    :cond_16
    :goto_11
    iget v3, v1, Lcom/tencent/smtt/sdk/i;->p:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_21

    const/4 v5, 0x1

    if-lt v3, v5, :cond_17

    .line 86
    :try_start_14
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const-string v5, "Referer"

    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 87
    :cond_17
    :try_start_15
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDownloader.startDownload] responseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v5, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setHttpCode(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_21

    if-nez v2, :cond_1a

    .line 90
    :try_start_16
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_18

    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_1a

    :cond_18
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->b()V

    .line 92
    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v5, :cond_19

    .line 93
    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v6, 0x6f

    invoke-interface {v5, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_19
    const-string v5, "Download is canceled due to NOT_WIFI error!"

    const/4 v6, 0x0

    .line 94
    invoke-static {v10, v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 95
    :cond_1a
    :try_start_17
    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/i;->r:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_21

    if-eqz v5, :cond_1b

    .line 96
    :try_start_18
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-nez v2, :cond_30

    :goto_12
    goto/16 :goto_1a

    :cond_1b
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_2b

    const/16 v5, 0xce

    if-ne v3, v5, :cond_1c

    goto/16 :goto_17

    :cond_1c
    const/16 v5, 0x12c

    if-lt v3, v5, :cond_1e

    const/16 v5, 0x133

    if-gt v3, v5, :cond_1e

    .line 97
    :try_start_19
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 99
    iput-object v3, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    .line 100
    iget v3, v1, Lcom/tencent/smtt/sdk/i;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/smtt/sdk/i;->q:I

    if-nez v2, :cond_2d

    goto/16 :goto_13

    :cond_1d
    const/16 v3, 0x7c

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 101
    invoke-direct {v1, v3, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 102
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x138

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto/16 :goto_14

    :cond_1e
    const/16 v5, 0x66

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_21

    const/4 v3, 0x1

    .line 104
    invoke-direct {v1, v3, v4}, Lcom/tencent/smtt/sdk/i;->c(ZZ)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-eqz v3, :cond_20

    .line 105
    :try_start_1a
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0xd6

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    if-nez v2, :cond_1f

    .line 106
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_1f
    const/4 v2, 0x1

    move v9, v4

    goto/16 :goto_54

    :catchall_9
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x1

    goto/16 :goto_16

    :cond_20
    const/4 v3, 0x0

    .line 108
    :try_start_1b
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    .line 109
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x139

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto/16 :goto_14

    :cond_21
    const/16 v5, 0x193

    if-eq v3, v5, :cond_22

    const/16 v5, 0x196

    if-ne v3, v5, :cond_23

    .line 110
    :cond_22
    iget-wide v5, v1, Lcom/tencent/smtt/sdk/i;->l:J

    const-wide/16 v7, -0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_23

    .line 111
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x13a

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto/16 :goto_14

    :cond_23
    const/16 v5, 0xca

    if-ne v3, v5, :cond_24

    if-nez v2, :cond_2d

    goto/16 :goto_13

    .line 112
    :cond_24
    iget v5, v1, Lcom/tencent/smtt/sdk/i;->p:I

    iget v6, v1, Lcom/tencent/smtt/sdk/i;->B:I

    if-ge v5, v6, :cond_26

    const/16 v5, 0x1f7

    if-ne v3, v5, :cond_26

    .line 113
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    const-string v5, "Retry-After"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 114
    invoke-direct {v1, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(J)V

    .line 115
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    if-eqz v3, :cond_25

    .line 116
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto :goto_14

    :cond_25
    if-nez v2, :cond_2d

    goto :goto_13

    .line 117
    :cond_26
    iget v5, v1, Lcom/tencent/smtt/sdk/i;->p:I

    iget v6, v1, Lcom/tencent/smtt/sdk/i;->B:I

    if-ge v5, v6, :cond_29

    const/16 v5, 0x198

    if-eq v3, v5, :cond_27

    const/16 v5, 0x1f8

    if-eq v3, v5, :cond_27

    const/16 v5, 0x1f6

    if-eq v3, v5, :cond_27

    const/16 v5, 0x198

    if-ne v3, v5, :cond_29

    :cond_27
    const-wide/16 v5, 0x0

    .line 118
    invoke-direct {v1, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(J)V

    .line 119
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    if-eqz v3, :cond_28

    .line 120
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_30

    goto :goto_14

    :cond_28
    if-nez v2, :cond_2d

    goto :goto_13

    .line 121
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->j()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v11, v5, v7

    if-gtz v11, :cond_2a

    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/i;->o:Z

    if-nez v5, :cond_2a

    const/16 v5, 0x19a

    if-eq v3, v5, :cond_2a

    const/4 v3, 0x1

    .line 122
    iput-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->o:Z

    if-nez v2, :cond_2d

    :goto_13
    goto/16 :goto_18

    .line 123
    :cond_2a
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x13b

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-nez v2, :cond_30

    :goto_14
    goto/16 :goto_12

    .line 124
    :goto_15
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :catchall_a
    move-exception v0

    move-object v3, v0

    move/from16 v8, p2

    :goto_16
    move-object v7, v3

    goto/16 :goto_1e

    .line 125
    :cond_2b
    :goto_17
    :try_start_1c
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v5, v14

    iput-wide v5, v1, Lcom/tencent/smtt/sdk/i;->l:J

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsApkDownloader.startDownload] mContentLength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-wide v5, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v3, v5, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPkgSize(J)V

    .line 128
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_apkfilesize"

    const-wide/16 v11, 0x0

    invoke-interface {v3, v5, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_21

    cmp-long v3, v5, v11

    if-eqz v3, :cond_31

    .line 129
    :try_start_1d
    iget-wide v11, v1, Lcom/tencent/smtt/sdk/i;->l:J

    cmp-long v3, v11, v5

    if-eqz v3, :cond_31

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadBegin tbsApkFileSize="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "  but contentLength="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v10, v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v2, :cond_2f

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->m()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 132
    :cond_2c
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Z)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    if-eqz v3, :cond_2e

    if-nez v2, :cond_2d

    .line 133
    :goto_18
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_2d
    const/4 v3, 0x1

    move/from16 v8, p2

    move-object v7, v9

    move-wide/from16 v19, v20

    move-wide/from16 v12, v22

    move v9, v4

    goto/16 :goto_4c

    :cond_2e
    const/16 v3, 0x71

    .line 135
    :try_start_1e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tbsApkFileSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  but contentLength="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v1, v3, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 136
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x136

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_19

    :cond_2f
    const/16 v3, 0x65

    const-string v5, "WifiNetworkUnAvailable"

    const/4 v6, 0x1

    .line 137
    invoke-direct {v1, v3, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 138
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x130

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :goto_19
    if-nez v2, :cond_30

    .line 139
    :goto_1a
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_15

    .line 140
    :goto_1b
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_30
    :goto_1c
    move/from16 v8, p2

    move v9, v4

    goto/16 :goto_53

    :goto_1d
    move/from16 v8, p2

    :goto_1e
    move-object v3, v7

    move-object v7, v9

    move-wide/from16 v19, v20

    move-wide/from16 v12, v22

    goto/16 :goto_e

    :cond_31
    :try_start_1f
    const-string v3, "[TbsApkDownloader.startDownload] begin readResponse"

    .line 141
    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_21

    .line 142
    :try_start_20
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_1c

    if-eqz v3, :cond_44

    .line 143
    :try_start_21
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_1a

    if-eqz v5, :cond_32

    :try_start_22
    const-string v6, "gzip"

    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 145
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_22

    :catchall_b
    move-exception v0

    move-object v5, v0

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object v5, v0

    goto :goto_21

    :cond_32
    if-eqz v5, :cond_33

    const-string v6, "deflate"

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 147
    new-instance v5, Ljava/util/zip/InflaterInputStream;

    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v5, v3, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    goto :goto_22

    :goto_1f
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_20
    move-wide/from16 v12, v22

    goto :goto_24

    :goto_21
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v12, v22

    goto :goto_25

    :cond_33
    move-object v5, v3

    :goto_22
    const/16 v6, 0x2000

    :try_start_23
    new-array v6, v6, [B

    .line 148
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/tencent/smtt/sdk/i;->k:Ljava/io/File;

    const-string v13, "x5.tbs.temp"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_19

    .line 149
    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_c
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    move-wide/from16 v24, v14

    move-wide/from16 v14, v17

    move-wide/from16 v17, v24

    .line 150
    :goto_23
    :try_start_25
    iget-boolean v13, v1, Lcom/tencent/smtt/sdk/i;->r:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_b
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    if-eqz v13, :cond_34

    :try_start_26
    const-string v6, "STEP 1/2 begin downloading...Canceled!"

    const/4 v7, 0x1

    .line 151
    invoke-static {v10, v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x135

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    move/from16 v6, p2

    move-object/from16 v26, v9

    goto/16 :goto_27

    :catchall_c
    move-exception v0

    move-object v6, v0

    move-object v7, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_20

    :goto_24
    move-object v8, v6

    move-wide/from16 v19, v20

    move-object v6, v5

    move-object v5, v7

    move-object v7, v9

    move v9, v4

    goto/16 :goto_42

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v7, v8

    move-wide/from16 v12, v22

    move-object/from16 v32, v6

    move-object v6, v5

    move-object/from16 v5, v32

    :goto_25
    move-object v8, v7

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v4, v6

    goto/16 :goto_45

    :cond_34
    const/16 v13, 0x2000

    move-object/from16 v26, v9

    const/4 v9, 0x0

    .line 153
    :try_start_27
    invoke-virtual {v5, v6, v9, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_a
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    if-gtz v13, :cond_38

    .line 154
    :try_start_28
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    if-eqz v6, :cond_36

    const/4 v6, 0x1

    .line 155
    invoke-direct {v1, v6, v4}, Lcom/tencent/smtt/sdk/i;->c(ZZ)Z

    move-result v6

    if-nez v6, :cond_36

    if-nez v2, :cond_35

    .line 156
    invoke-virtual {v1, v9}, Lcom/tencent/smtt/sdk/i;->a(Z)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x1

    move/from16 v7, p2

    goto :goto_28

    :cond_35
    const/4 v6, 0x1

    .line 157
    iput-boolean v6, v1, Lcom/tencent/smtt/sdk/i;->s:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_28

    :cond_36
    const/4 v6, 0x1

    .line 158
    iput-boolean v6, v1, Lcom/tencent/smtt/sdk/i;->s:Z

    .line 159
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_3
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    if-eqz v6, :cond_37

    const/4 v6, 0x1

    goto :goto_26

    :cond_37
    move/from16 v6, p2

    .line 160
    :goto_26
    :try_start_29
    iget-object v7, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v9, -0x137

    invoke-virtual {v7, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :goto_27
    const/4 v7, 0x0

    move v7, v6

    const/4 v6, 0x0

    :goto_28
    move-object/from16 v27, v3

    move v9, v4

    move-wide/from16 v19, v20

    :goto_29
    move-wide/from16 v12, v22

    goto/16 :goto_32

    :catchall_d
    move-exception v0

    goto :goto_2a

    :catch_2
    move-exception v0

    move v7, v6

    goto :goto_2b

    :catchall_e
    move-exception v0

    move/from16 v6, p2

    :goto_2a
    move-object v7, v0

    move v9, v4

    move-object v11, v7

    move-wide/from16 v19, v20

    move-wide/from16 v12, v22

    move-object/from16 v7, v26

    move/from16 v32, v6

    move-object v6, v3

    move/from16 v3, v32

    goto/16 :goto_3a

    :catch_3
    move-exception v0

    move/from16 v7, p2

    :goto_2b
    move-object v6, v0

    move v9, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-wide/from16 v19, v20

    move-wide/from16 v12, v22

    move-object/from16 v7, v26

    goto/16 :goto_46

    .line 161
    :cond_38
    :try_start_2a
    invoke-virtual {v8, v6, v9, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 162
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    if-nez v2, :cond_3a

    move-object/from16 v27, v3

    move v9, v4

    int-to-long v3, v13

    add-long v3, v22, v3

    cmp-long v22, v3, v20

    if-ltz v22, :cond_39

    const/4 v6, 0x1

    move-object/from16 v7, v19

    .line 163
    :try_start_2b
    invoke-static {v10, v7, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadFlow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " downloadMaxflow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_5
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    move-wide/from16 v11, v20

    :try_start_2c
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x70

    const/4 v13, 0x1

    invoke-direct {v1, v7, v6, v13}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 165
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x133

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_4
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    move-wide/from16 v22, v3

    move-wide/from16 v19, v11

    goto/16 :goto_30

    :catchall_f
    move-exception v0

    :goto_2c
    move-object v6, v0

    goto :goto_2e

    :catch_4
    move-exception v0

    :goto_2d
    move-object v6, v0

    goto :goto_2f

    :catchall_10
    move-exception v0

    move-wide/from16 v11, v20

    goto :goto_2c

    :goto_2e
    move-wide/from16 v19, v11

    move-object/from16 v7, v26

    move-wide v12, v3

    move-object/from16 v3, v27

    goto/16 :goto_42

    :catch_5
    move-exception v0

    move-wide/from16 v11, v20

    goto :goto_2d

    :goto_2f
    move-wide/from16 v19, v11

    move-object/from16 v7, v26

    move-wide v12, v3

    move-object v3, v6

    move-object/from16 v6, v27

    goto/16 :goto_3f

    :cond_39
    move-wide/from16 v32, v20

    move-object/from16 v21, v19

    move-wide/from16 v19, v32

    move-wide/from16 v22, v3

    .line 166
    :try_start_2d
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/f;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "DownloadEnd FreeSpace too small "

    const/4 v4, 0x1

    .line 167
    invoke-static {v10, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freespace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/q;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",and minFreeSpace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    const/4 v6, 0x1

    invoke-direct {v1, v4, v3, v6}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 169
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x134

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_6
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    :goto_30
    const/4 v6, 0x0

    move/from16 v7, p2

    goto/16 :goto_29

    :catchall_11
    move-exception v0

    move-object v3, v0

    move-object v11, v3

    move-wide/from16 v3, v22

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_39

    :catch_6
    move-exception v0

    move-object v3, v0

    move-object v11, v3

    move-wide/from16 v3, v22

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_3c

    :cond_3a
    move-object/from16 v27, v3

    move v9, v4

    move-wide/from16 v32, v20

    move-object/from16 v21, v19

    move-wide/from16 v19, v32

    :cond_3b
    int-to-long v3, v13

    .line 170
    :try_start_2e
    invoke-direct {v1, v14, v15, v3, v4}, Lcom/tencent/smtt/sdk/i;->a(JJ)J

    move-result-wide v14

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_9
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    add-long v3, v17, v3

    sub-long v17, v28, v11

    const-wide/16 v30, 0x3e8

    cmp-long v13, v17, v30

    if-lez v13, :cond_43

    .line 172
    :try_start_2f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#2 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/tencent/smtt/sdk/i;->l:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    sget-object v11, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_8
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    if-eqz v11, :cond_3c

    long-to-double v11, v3

    move-object/from16 v17, v6

    move-object v13, v7

    .line 174
    :try_start_30
    iget-wide v6, v1, Lcom/tencent/smtt/sdk/i;->l:J

    long-to-double v6, v6

    div-double/2addr v11, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v6

    double-to-int v6, v11

    .line 175
    sget-object v7, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v7, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_7
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    goto :goto_31

    :catchall_12
    move-exception v0

    move-object v3, v0

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_38

    :catch_7
    move-exception v0

    move-object v3, v0

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    goto/16 :goto_3b

    :cond_3c
    move-object/from16 v17, v6

    move-object v13, v7

    :goto_31
    if-nez v2, :cond_42

    sub-long v6, v3, v24

    const-wide/32 v11, 0x100000

    cmp-long v18, v6, v11

    if-lez v18, :cond_42

    .line 176
    :try_start_31
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_41

    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v6
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_8
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3d

    :try_start_32
    iget-object v6, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v6
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_7
    .catchall {:try_start_32 .. :try_end_32} :catchall_12

    if-nez v6, :cond_41

    :cond_3d
    :try_start_33
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v6

    if-nez v6, :cond_41

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->b()V

    .line 178
    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_8
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    if-eqz v3, :cond_3e

    .line 179
    :try_start_34
    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v4, 0x6f

    invoke-interface {v3, v4}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_7
    .catchall {:try_start_34 .. :try_end_34} :catchall_12

    :cond_3e
    :try_start_35
    const-string v3, "Download is paused due to NOT_WIFI error!"

    const/4 v4, 0x0

    .line 180
    invoke-static {v10, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x130

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_8
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    goto/16 :goto_30

    :goto_32
    if-eqz v6, :cond_40

    .line 182
    :try_start_36
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 183
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    move-object/from16 v6, v27

    .line 184
    invoke-direct {v1, v6}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_13

    if-nez v2, :cond_3f

    .line 185
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v11, v26

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_33

    :cond_3f
    move-object/from16 v11, v26

    :goto_33
    move v6, v7

    move-object v7, v11

    goto/16 :goto_4b

    :catchall_13
    move-exception v0

    move-object/from16 v11, v26

    move-object v3, v0

    move v8, v7

    move-object v7, v11

    goto/16 :goto_51

    :cond_40
    move-object/from16 v6, v27

    move v3, v7

    move-object/from16 v7, v26

    goto/16 :goto_40

    :cond_41
    move-object/from16 v11, v26

    move-object/from16 v6, v27

    move-wide/from16 v24, v3

    goto :goto_34

    :cond_42
    move-object/from16 v11, v26

    move-object/from16 v6, v27

    :goto_34
    move-object v7, v11

    move-wide/from16 v11, v28

    goto :goto_35

    :catchall_14
    move-exception v0

    move-object/from16 v6, v27

    move-object v3, v0

    move-object/from16 v7, v26

    goto :goto_38

    :catch_8
    move-exception v0

    move-object/from16 v6, v27

    move-object v3, v0

    move-object/from16 v7, v26

    goto/16 :goto_3b

    :cond_43
    move-object/from16 v17, v6

    move-object v13, v7

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    :goto_35
    move-wide/from16 v32, v3

    move-object v3, v6

    move v4, v9

    move-object/from16 v6, v17

    move-wide/from16 v17, v32

    move-object v9, v7

    move-object v7, v13

    move-wide/from16 v34, v19

    move-object/from16 v19, v21

    move-wide/from16 v20, v34

    goto/16 :goto_23

    :catchall_15
    move-exception v0

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    :goto_36
    move-object v3, v0

    goto :goto_38

    :catch_9
    move-exception v0

    move-object/from16 v7, v26

    move-object/from16 v6, v27

    :goto_37
    move-object v3, v0

    goto :goto_3b

    :catchall_16
    move-exception v0

    move-object v6, v3

    move v9, v4

    move-wide/from16 v19, v20

    move-object/from16 v7, v26

    goto :goto_36

    :goto_38
    move-object v11, v3

    move-wide/from16 v3, v22

    :goto_39
    move-wide v12, v3

    move/from16 v3, p2

    :goto_3a
    move v4, v3

    move-object v3, v6

    move-object v6, v11

    goto/16 :goto_4e

    :catch_a
    move-exception v0

    move-object v6, v3

    move v9, v4

    move-wide/from16 v19, v20

    move-object/from16 v7, v26

    goto :goto_37

    :goto_3b
    move-object v11, v3

    move-wide/from16 v3, v22

    :goto_3c
    move-wide v12, v3

    goto :goto_3d

    :catchall_17
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move/from16 v4, p2

    move-object v3, v6

    move-wide/from16 v12, v22

    move-object v6, v0

    goto/16 :goto_4e

    :catch_b
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v11, v0

    move-wide/from16 v12, v22

    :goto_3d
    move-object v4, v5

    move-object v3, v6

    move-object v5, v11

    goto/16 :goto_45

    :catchall_18
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v4, v5

    move-object v3, v6

    move-wide/from16 v12, v22

    move/from16 v6, p2

    :goto_3e
    move-object v5, v0

    goto/16 :goto_4d

    :catch_c
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    move-wide/from16 v12, v22

    :goto_3f
    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    goto/16 :goto_45

    :catchall_19
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    const/4 v8, 0x0

    move/from16 v4, p2

    move-wide/from16 v12, v22

    move-object/from16 v32, v6

    move-object v6, v3

    move-object/from16 v3, v32

    goto/16 :goto_4e

    :catch_d
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    goto/16 :goto_44

    :catchall_1a
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v8, v4

    move-object v3, v6

    goto/16 :goto_41

    :catch_e
    move-exception v0

    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    move-object v4, v6

    goto/16 :goto_43

    :cond_44
    move-object v6, v3

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v3, p2

    move-wide/from16 v12, v22

    .line 187
    :goto_40
    :try_start_37
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 188
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 189
    invoke-direct {v1, v6}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 190
    iget-boolean v4, v1, Lcom/tencent/smtt/sdk/i;->s:Z

    if-nez v4, :cond_45

    .line 191
    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x13f

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    :cond_45
    if-nez v2, :cond_46

    .line 192
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_47

    :cond_46
    move v8, v3

    goto/16 :goto_53

    :catchall_1b
    move-exception v0

    move v8, v3

    move-object v3, v0

    goto/16 :goto_51

    :catchall_1c
    move-exception v0

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v4

    move-object/from16 v32, v5

    move-object v5, v3

    move-object/from16 v3, v32

    :goto_41
    const/4 v4, 0x0

    move-object v6, v5

    move-wide/from16 v12, v22

    move-object v5, v4

    :goto_42
    move/from16 v4, p2

    goto/16 :goto_4e

    :catch_f
    move-exception v0

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    move-object v3, v0

    const/4 v4, 0x0

    :goto_43
    const/4 v5, 0x0

    move-object/from16 v32, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v32

    :goto_44
    const/4 v6, 0x0

    move-object v8, v6

    move-wide/from16 v12, v22

    :goto_45
    move/from16 v6, p2

    .line 193
    :goto_46
    :try_start_38
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    instance-of v11, v5, Ljava/net/SocketTimeoutException;

    if-nez v11, :cond_4b

    instance-of v11, v5, Ljava/net/SocketException;

    if-eqz v11, :cond_47

    goto/16 :goto_49

    :cond_47
    if-nez v2, :cond_49

    .line 195
    iget-object v11, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/utils/f;->b(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_49

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freespace="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/q;->a()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",and minFreeSpace="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x69

    const/4 v14, 0x1

    invoke-direct {v1, v11, v5, v14}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 197
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v11, -0x134

    invoke-virtual {v5, v11}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    .line 198
    :try_start_39
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 199
    invoke-direct {v1, v4}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 200
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    if-nez v2, :cond_48

    .line 201
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move v3, v6

    :goto_47
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v3

    goto/16 :goto_52

    :cond_48
    move v8, v6

    goto/16 :goto_53

    :catchall_1d
    move-exception v0

    goto/16 :goto_3e

    :cond_49
    const-wide/16 v14, 0x0

    .line 202
    :try_start_3a
    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/i;->a(J)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->i()Z

    move-result v11

    if-nez v11, :cond_4a

    const/16 v11, 0x6a

    .line 204
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-direct {v1, v11, v5, v14}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    goto :goto_48

    :cond_4a
    const/4 v11, 0x0

    const/16 v14, 0x68

    .line 205
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v14, v5, v11}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1f

    .line 206
    :goto_48
    :try_start_3b
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 207
    invoke-direct {v1, v4}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 208
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    if-nez v2, :cond_4c

    goto :goto_4a

    :cond_4b
    :goto_49
    const v11, 0x186a0

    .line 209
    :try_start_3c
    iput v11, v1, Lcom/tencent/smtt/sdk/i;->m:I

    const-wide/16 v14, 0x0

    .line 210
    invoke-direct {v1, v14, v15}, Lcom/tencent/smtt/sdk/i;->a(J)V

    const/16 v11, 0x67

    .line 211
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-direct {v1, v11, v5, v14}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    .line 212
    :try_start_3d
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 213
    invoke-direct {v1, v4}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 214
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    if-nez v2, :cond_4c

    .line 215
    :goto_4a
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_4c
    :goto_4b
    const/4 v3, 0x1

    move v8, v6

    :goto_4c
    const/4 v4, 0x0

    goto/16 :goto_5b

    :catchall_1e
    move-exception v0

    move-object v3, v0

    move v8, v6

    goto :goto_51

    :catchall_1f
    move-exception v0

    goto/16 :goto_3e

    :goto_4d
    move-object/from16 v32, v5

    move-object v5, v4

    move v4, v6

    move-object/from16 v6, v32

    .line 217
    :goto_4e
    :try_start_3e
    invoke-direct {v1, v8}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 218
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    .line 219
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/io/Closeable;)V

    throw v6
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_20

    :catchall_20
    move-exception v0

    move-object v3, v0

    move v8, v4

    goto :goto_51

    :catchall_21
    move-exception v0

    move-object v7, v9

    move-wide/from16 v19, v20

    move v9, v4

    :goto_4f
    move-object v3, v0

    move/from16 v8, p2

    move-wide/from16 v12, v22

    goto :goto_51

    :catchall_22
    move-exception v0

    :goto_50
    move v9, v4

    move-wide/from16 v19, v5

    move-object v7, v11

    move-wide/from16 v22, v12

    goto :goto_4f

    :catchall_23
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_50

    .line 220
    :goto_51
    :try_start_3f
    instance-of v4, v3, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_4d

    if-nez v2, :cond_4d

    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    if-eqz v4, :cond_4d

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/i;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[startdownload]url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " download exception\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 222
    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    goto/16 :goto_5a

    :cond_4d
    const/4 v4, 0x0

    .line 223
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v5, 0x0

    .line 224
    invoke-direct {v1, v5, v6}, Lcom/tencent/smtt/sdk/i;->a(J)V

    const/16 v5, 0x6b

    .line 225
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v1, v5, v3, v6}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    .line 226
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    if-eqz v3, :cond_57

    .line 227
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x135

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_24

    if-nez v2, :cond_4e

    .line 228
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_52
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_4e
    :goto_53
    move v2, v8

    .line 230
    :goto_54
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->r:Z

    if-nez v3, :cond_56

    .line 231
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/i;->s:Z

    if-eqz v3, :cond_53

    .line 232
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->b:[Ljava/lang/String;

    if-nez v3, :cond_4f

    if-nez v2, :cond_4f

    const/4 v2, 0x1

    .line 233
    invoke-direct {v1, v2, v9}, Lcom/tencent/smtt/sdk/i;->c(ZZ)Z

    move-result v2

    .line 234
    :cond_4f
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setUnpkgFlag(I)V

    if-nez v9, :cond_51

    .line 235
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v2, :cond_50

    const/4 v4, 0x1

    goto :goto_55

    :cond_50
    const/4 v4, 0x2

    :goto_55
    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    goto :goto_56

    .line 236
    :cond_51
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    :goto_56
    if-eqz v2, :cond_52

    const/4 v3, 0x1

    .line 237
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->c(Z)V

    .line 238
    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x13d

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v4, 0x64

    const-string v5, "success"

    .line 239
    invoke-direct {v1, v4, v5, v3}, Lcom/tencent/smtt/sdk/i;->a(ILjava/lang/String;Z)V

    goto :goto_57

    .line 240
    :cond_52
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x13e

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/4 v3, 0x0

    .line 241
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    goto :goto_58

    :cond_53
    :goto_57
    const/4 v3, 0x0

    .line 242
    :goto_58
    iget-object v4, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    if-eqz v2, :cond_54

    .line 243
    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_download_success_retrytimes"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 244
    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 245
    :cond_54
    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_download_failed_retrytimes"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 246
    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v5

    if-ne v3, v5, :cond_55

    .line 248
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    .line 249
    :cond_55
    :goto_59
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    .line 250
    iget-object v3, v1, Lcom/tencent/smtt/sdk/i;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownFinalFlag(I)V

    .line 251
    :cond_56
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/i;->f()V

    return-void

    :cond_57
    :goto_5a
    const/4 v3, 0x1

    .line 252
    :try_start_40
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x13c

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_24

    if-nez v2, :cond_58

    .line 253
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v5, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_58
    :goto_5b
    move-object v11, v7

    move-wide/from16 v5, v19

    move v7, v3

    move-object/from16 v3, v16

    move/from16 v32, v9

    move-object v9, v4

    move/from16 v4, v32

    goto/16 :goto_3

    :catchall_24
    move-exception v0

    move-object v3, v0

    if-nez v2, :cond_59

    .line 255
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, v1, Lcom/tencent/smtt/sdk/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_59
    throw v3
.end method

.method public c()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/i;->b()V

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/i;->d(Z)Z

    return-void
.end method

.method public d()Z
    .locals 2

    const-string v0, "[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground="

    .line 6
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/i;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/i;->C:Z

    return v0
.end method
