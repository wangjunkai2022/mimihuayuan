.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"


# static fields
.field public static a:Z = false

.field public static b:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z

    if-nez v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 v1, 0x1

    .line 7
    sput-boolean v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    sget-boolean v3, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Z

    if-nez v3, :cond_1

    .line 2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/umeng/commonsdk/UMConfigureImpl$2;

    invoke-direct {v4, p0}, Lcom/umeng/commonsdk/UMConfigureImpl$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/internal/utils/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/internal/utils/b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string v3, "internal"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "get station is null "

    aput-object v5, v4, v1

    .line 6
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    const-string v4, "internal"

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    .line 10
    :cond_1
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    return-void
.end method
