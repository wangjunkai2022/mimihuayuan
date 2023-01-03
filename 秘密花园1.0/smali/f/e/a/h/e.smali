.class public Lf/e/a/h/e;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lf/e/a/h/h/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf/e/a/h/h/a;

.field public final synthetic e:Lf/e/a/h/a;


# direct methods
.method public constructor <init>(Lf/e/a/h/a;Ljava/io/File;Lf/e/a/h/h/b;Ljava/lang/String;Lf/e/a/h/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    iput-object p2, p0, Lf/e/a/h/e;->a:Ljava/io/File;

    iput-object p3, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    iput-object p4, p0, Lf/e/a/h/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lf/e/a/h/e;->d:Lf/e/a/h/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf/e/a/h/e;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 2
    iget-object v2, v2, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    const-string v3, "GA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CA=="

    .line 3
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v7, v1, v4

    if-lez v7, :cond_b

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "XwYPEAoU"

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "RRcNTCZAbAs3CUMJFAUCD2MDEA9FGVhFElwGUEBDWQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 8
    iget-object v2, v2, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 10
    iget-object v2, v2, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    const-string v4, "XxYXFA=="

    .line 11
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 13
    iget-object v2, v2, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v2, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 15
    iget-object v2, v2, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    .line 16
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lf/e/a/h/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lf/e/a/h/e;->c:Ljava/lang/String;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x9

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 18
    iget-object v3, v3, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 20
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lf/e/a/h/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 21
    iget-object v3, v3, Lf/e/a/h/h/b;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 25
    iget-object v3, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    .line 26
    iget v3, v3, Lf/e/a/h/a;->h:I

    .line 27
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 28
    iget-object v3, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    .line 29
    iget v3, v3, Lf/e/a/h/a;->g:I

    .line 30
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 31
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    .line 32
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    iget-object v3, p0, Lf/e/a/h/e;->d:Lf/e/a/h/h/a;

    .line 34
    iget-boolean v3, v3, Lf/e/a/h/h/a;->c:Z

    if-eqz v3, :cond_4

    .line 35
    iget-object v3, p0, Lf/e/a/h/e;->d:Lf/e/a/h/h/a;

    .line 36
    iget-object v3, v3, Lf/e/a/h/h/a;->f:[B

    .line 37
    iget-object v4, p0, Lf/e/a/h/e;->b:Lf/e/a/h/h/b;

    .line 38
    iget-object v4, v4, Lf/e/a/h/h/b;->c:Ljava/lang/String;

    .line 39
    invoke-static {v3, v2, v4}, Lc/a/a/b/g/h;->K([BLjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 40
    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v1, 0x800000

    :try_start_2
    new-array v1, v1, [B

    .line 41
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 42
    iget-object v5, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    iget-object v7, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    .line 43
    iget-wide v7, v7, Lf/e/a/h/a;->c:J

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 44
    iput-wide v7, v5, Lf/e/a/h/a;->c:J

    .line 45
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catch_1
    move-exception v3

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_4

    .line 46
    :cond_6
    :try_start_3
    iget-object v3, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v4}, Lf/e/a/h/a;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v1

    :goto_2
    if-eqz v1, :cond_7

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_7
    :goto_3
    if-eqz v3, :cond_9

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 49
    :goto_4
    :try_start_5
    iget-object v4, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    .line 50
    invoke-virtual {v4, v1}, Lf/e/a/h/a;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_8

    .line 51
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 52
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    nop

    .line 53
    :cond_9
    :goto_7
    sget v1, Lf/e/a/h/a;->l:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lf/e/a/h/a;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 55
    sput-wide v0, Lf/e/a/h/a;->n:J

    .line 56
    :cond_a
    iget-object v0, p0, Lf/e/a/h/e;->e:Lf/e/a/h/a;

    .line 57
    iget-object v0, v0, Lf/e/a/h/a;->k:Landroid/os/Handler;

    const/16 v1, 0x3ea

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    return-void

    :goto_8
    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_c

    .line 59
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    :catch_6
    nop

    :cond_c
    :goto_a
    if-eqz v3, :cond_d

    .line 60
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 61
    :catch_7
    :cond_d
    throw v0
.end method
