.class public Lf/e/a/h/d;
.super Ljava/util/TimerTask;
.source "M3U8DownloadTask.java"


# instance fields
.field public final synthetic a:Lf/e/a/h/a;


# direct methods
.method public constructor <init>(Lf/e/a/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/d;->a:Lf/e/a/h/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lf/e/a/h/d;->a:Lf/e/a/h/a;

    .line 2
    iget-object v1, v0, Lf/e/a/h/a;->a:Lf/e/a/h/h/c;

    if-eqz v1, :cond_7

    .line 3
    iget-wide v2, v0, Lf/e/a/h/a;->c:J

    .line 4
    check-cast v1, Lcom/comeback/data/ui/main/DownloadActivity;

    .line 5
    iget-wide v4, v1, Lcom/comeback/data/ui/main/DownloadActivity;->e:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    const-class v4, Lf/e/a/h/i/a;

    monitor-enter v4

    .line 8
    :try_start_0
    sget-object v5, Lf/e/a/h/i/a;->a:Lf/e/a/h/i/a;

    if-nez v5, :cond_0

    .line 9
    new-instance v5, Lf/e/a/h/i/a;

    invoke-direct {v5}, Lf/e/a/h/i/a;-><init>()V

    sput-object v5, Lf/e/a/h/i/a;->a:Lf/e/a/h/i/a;

    .line 10
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object v4, Lf/e/a/h/i/a;->a:Lf/e/a/h/i/a;

    .line 12
    iget-wide v5, v1, Lcom/comeback/data/ui/main/DownloadActivity;->e:J

    sub-long v5, v2, v5

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/32 v8, 0x40000000

    cmp-long v10, v5, v8

    if-ltz v10, :cond_1

    const-string v8, "EkxSAks0ew=="

    .line 13
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v5, v5

    const/high16 v6, 0x4e800000

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-wide/32 v8, 0x100000

    const/high16 v10, 0x42c80000    # 100.0f

    cmp-long v11, v5, v8

    if-ltz v11, :cond_3

    long-to-float v5, v5

    const/high16 v6, 0x49800000    # 1048576.0f

    div-float/2addr v5, v6

    cmpl-float v6, v5, v10

    if-lez v6, :cond_2

    const-string v6, "EkxTAks+ew=="

    goto :goto_0

    :cond_2
    const-string v6, "EkxSAks+ew=="

    .line 14
    :goto_0
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x400

    cmp-long v11, v5, v8

    if-ltz v11, :cond_5

    long-to-float v5, v5

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    cmpl-float v6, v5, v10

    if-lez v6, :cond_4

    const-string v6, "EkxTAks4ew=="

    goto :goto_1

    :cond_4
    const-string v6, "EkxSAks4ew=="

    .line 15
    :goto_1
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const-string v8, "EgZDJg=="

    .line 16
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, "GBE="

    .line 17
    invoke-static {v0, v4, v5}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v4, Lf/e/a/j/b0/i;

    invoke-direct {v4, v1, v0}, Lf/e/a/j/b0/i;-><init>(Lcom/comeback/data/ui/main/DownloadActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    iput-wide v2, v1, Lcom/comeback/data/ui/main/DownloadActivity;->e:J

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 20
    throw v0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_3
    return-void
.end method
