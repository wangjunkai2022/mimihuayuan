.class public final Lcom/tencent/smtt/utils/d$2;
.super Ljava/lang/Thread;
.source "DebugTbsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/utils/d;->a(Ljava/lang/String;Lcom/tencent/smtt/utils/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/smtt/utils/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/smtt/utils/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/utils/d$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://soft.tbs.imtt.qq.com/17421/tbs_res_imtt_tbs_DebugPlugin_DebugPlugin.tbs"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const/16 v3, 0x1388

    .line 4
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/smtt/utils/d$2;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v3}, Lcom/tencent/smtt/utils/f;->d(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    add-int/2addr v5, v6

    .line 10
    invoke-virtual {v0, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    mul-int/lit8 v6, v5, 0x64

    .line 11
    div-int/2addr v6, v2

    .line 12
    iget-object v7, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v7, v6}, Lcom/tencent/smtt/utils/d$a;->a(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v2}, Lcom/tencent/smtt/utils/d$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v1, v0

    .line 17
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object v3, p0, Lcom/tencent/smtt/utils/d$2;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v3, v2}, Lcom/tencent/smtt/utils/d$a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :catchall_2
    move-exception v2

    .line 23
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_7
    throw v2
.end method
