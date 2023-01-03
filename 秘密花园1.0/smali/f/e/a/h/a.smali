.class public Lf/e/a/h/a;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"


# static fields
.field public static l:I

.field public static m:I

.field public static n:J


# instance fields
.field public a:Lf/e/a/h/h/c;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public e:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/Timer;

.field public j:Ljava/util/concurrent/ExecutorService;

.field public k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/bean/VideoCacheBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf/e/a/h/a;->c:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/e/a/h/a;->d:Z

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lf/e/a/h/a;->f:I

    const v0, 0x1b7740

    .line 5
    iput v0, p0, Lf/e/a/h/a;->g:I

    const/16 v0, 0x2710

    .line 6
    iput v0, p0, Lf/e/a/h/a;->h:I

    .line 7
    new-instance v0, Lf/e/a/h/a$a;

    invoke-direct {v0, p0}, Lf/e/a/h/a$a;-><init>(Lf/e/a/h/a;)V

    iput-object v0, p0, Lf/e/a/h/a;->k:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lf/e/a/h/a;->e:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getTempPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/e/a/h/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lf/e/a/h/a;Lf/e/a/h/h/a;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "elE2XEsaShMdE1gL"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lf/e/a/h/a;->c(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lf/e/a/h/a;->b:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    iget-object v1, p1, Lf/e/a/h/h/a;->d:Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v2, Li/e0$a;

    invoke-direct {v2}, Li/e0$a;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v1, "dA0NCg4QTVocCA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VA4MFw4="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v1, v3}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 9
    invoke-virtual {v2}, Li/e0$a;->b()Li/e0;

    move-result-object v1

    .line 10
    new-instance v2, Li/b0$a;

    invoke-direct {v2}, Li/b0$a;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    .line 11
    invoke-virtual {v2, v4, v5, v3}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-virtual {v2, v4, v5, v3}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 13
    iput-object v3, v2, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v2, Li/b0$a;->f:Z

    .line 15
    new-instance v3, Li/b0;

    invoke-direct {v3, v2}, Li/b0;-><init>(Li/b0$a;)V

    .line 16
    invoke-virtual {v3, v1}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Li/d0;

    :try_start_1
    invoke-virtual {v1}, Li/d0;->T()Li/h0;

    move-result-object v1

    .line 17
    iget-object v1, v1, Li/h0;->h:Li/i0;

    .line 18
    invoke-virtual {v1}, Li/i0;->e()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CVxdWlVN3Yv4jonaEw8ajpPTi9DOSQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 20
    :goto_0
    iput-object v1, p1, Lf/e/a/h/h/a;->f:[B

    .line 21
    iget-object v1, p1, Lf/e/a/h/h/a;->b:Ljava/util/List;

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lf/e/a/h/a;->m:I

    .line 23
    iget-object v1, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 25
    iput-object v0, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 26
    :cond_2
    iget v0, p0, Lf/e/a/h/a;->f:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 27
    iget-object v0, p1, Lf/e/a/h/h/a;->a:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lf/e/a/h/a;->i:Ljava/util/Timer;

    .line 29
    new-instance v2, Lf/e/a/h/d;

    invoke-direct {v2, p0}, Lf/e/a/h/d;-><init>(Lf/e/a/h/a;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 30
    iget-object v1, p1, Lf/e/a/h/h/a;->b:Ljava/util/List;

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lf/e/a/h/h/b;

    .line 32
    iget-object v9, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lf/e/a/h/e;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lf/e/a/h/e;-><init>(Lf/e/a/h/a;Ljava/io/File;Lf/e/a/h/h/b;Ljava/lang/String;Lf/e/a/h/h/a;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 33
    :cond_4
    throw v0
.end method


# virtual methods
.method public b(Lf/e/a/h/h/c;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    .line 2
    iget-boolean p1, p0, Lf/e/a/h/a;->d:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lf/e/a/h/a;->e:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    const/4 v0, 0x0

    .line 4
    sput v0, Lf/e/a/h/a;->l:I

    .line 5
    const-class v0, Lf/e/a/h/f;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lf/e/a/h/f;->c:Lf/e/a/h/f;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lf/e/a/h/f;

    invoke-direct {v1}, Lf/e/a/h/f;-><init>()V

    sput-object v1, Lf/e/a/h/f;->c:Lf/e/a/h/f;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    sget-object v0, Lf/e/a/h/f;->c:Lf/e/a/h/f;

    .line 10
    new-instance v1, Lf/e/a/h/c;

    invoke-direct {v1, p0}, Lf/e/a/h/c;-><init>(Lf/e/a/h/a;)V

    .line 11
    monitor-enter v0

    .line 12
    :try_start_1
    iput-object v1, v0, Lf/e/a/h/f;->a:Lf/e/a/h/h/d;

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getCachePath()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getMd5()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1}, Lf/e/a/h/c;->a()V

    .line 17
    new-instance v1, Lf/e/a/h/g;

    invoke-direct {v1, v0, v2, v3, p1}, Lf/e/a/h/g;-><init>(Lf/e/a/h/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "YwMQD0sBTF0dD1oA"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lf/e/a/h/a;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "YwMQD0sBTF0dD1oA"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/e/a/h/a;->d()V

    :cond_0
    const-string v0, "QwoRAQoXGVodElEVCh8TH1IG"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lf/e/a/h/a;->k:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3e9

    .line 6
    iput p1, v0, Landroid/os/Message;->what:I

    .line 7
    iget-object p1, p0, Lf/e/a/h/a;->k:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/comeback/data/ui/main/DownloadActivity;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/main/DownloadActivity;->rlDown:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/e/a/h/a;->i:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lf/e/a/h/a;->i:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lf/e/a/h/a;->d:Z

    .line 8
    iget-object v0, p0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    return-void
.end method
