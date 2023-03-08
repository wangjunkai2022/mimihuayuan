.class public Lf/e/a/h/b;
.super Ljava/lang/Thread;
.source "M3U8DownloadTask.java"


# instance fields
.field public final synthetic a:Lf/e/a/h/h/a;

.field public final synthetic b:Lf/e/a/h/c;


# direct methods
.method public constructor <init>(Lf/e/a/h/c;Lf/e/a/h/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iput-object p2, p0, Lf/e/a/h/b;->a:Lf/e/a/h/h/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    iget-object v1, p0, Lf/e/a/h/b;->a:Lf/e/a/h/h/a;

    invoke-static {v0, v1}, Lf/e/a/h/a;->a(Lf/e/a/h/a;Lf/e/a/h/h/a;)V

    .line 2
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 3
    iget-object v0, v0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 5
    iget-object v0, v0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 8
    iget-object v0, v0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 10
    iget-object v0, v0, Lf/e/a/h/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 14
    iget-boolean v0, v0, Lf/e/a/h/a;->d:Z

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 16
    iget-object v0, v0, Lf/e/a/h/a;->k:Landroid/os/Handler;

    const/16 v1, 0x3eb

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    iget-object v0, p0, Lf/e/a/h/b;->b:Lf/e/a/h/c;

    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lf/e/a/h/a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
