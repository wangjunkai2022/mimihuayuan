.class public Lcom/umeng/commonsdk/framework/c;
.super Ljava/lang/Object;
.source "UMWorkDispatchImpl.java"


# static fields
.field public static final a:Ljava/lang/String; = "content"

.field public static final b:Ljava/lang/String; = "header"

.field public static final c:Ljava/lang/String; = "exception"

.field public static d:Landroid/os/HandlerThread; = null

.field public static e:Landroid/os/Handler; = null

.field public static f:Lcom/umeng/commonsdk/framework/b; = null

.field public static g:Ljava/lang/Object; = null

.field public static final h:I = 0x300

.field public static final i:I = 0x301

.field public static final j:I = 0x302

.field public static final k:I = 0x310


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x310

    .line 34
    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 3

    .line 22
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x302

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v2, "MobclickRT"

    if-eqz v0, :cond_0

    const-string p0, "--->>> MSG_DELAY_PROCESS has exist. do nothing."

    .line 24
    invoke-static {v2, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "--->>> MSG_DELAY_PROCESS not exist. send it."

    .line 25
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 27
    iput v1, v0, Landroid/os/Message;->what:I

    .line 28
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerAppContext(Landroid/content/Context;)V

    .line 5
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 6
    :cond_1
    sget-object p2, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-nez p2, :cond_3

    .line 7
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->e()V

    .line 8
    :cond_3
    :try_start_0
    sget-object p2, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-eqz p2, :cond_5

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    sget-object p2, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    if-nez p2, :cond_4

    .line 11
    sget-object p2, Lcom/umeng/commonsdk/framework/c;->g:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/umeng/commonsdk/framework/b;

    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    .line 14
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 15
    :cond_4
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p2, 0x300

    .line 16
    iput p2, p0, Landroid/os/Message;->what:I

    .line 17
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 18
    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "--->>> Context or UMLogDataProtocol parameter cannot be null!"

    .line 21
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(I)Z
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/c;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 30
    monitor-exit v0

    return p0

    .line 31
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->d()V

    return-void
.end method

.method public static b(Landroid/os/Message;)V
    .locals 4

    .line 2
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x"

    .line 5
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, p0, v0}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->g()V

    return-void
.end method

.method public static d()V
    .locals 7

    const-string v0, "exception"

    const-string v1, "--->>> delayProcess Enter..."

    .line 1
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    const-string v2, "MobclickRT"

    .line 2
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "analytics"

    .line 6
    invoke-static {v5}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v5, v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "--->>> analyticsCB.setupReportData() return null"

    .line 8
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "header"

    .line 10
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "content"

    .line 11
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v1, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> autoProcess: Build envelope error code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :try_start_2
    const-string v0, "--->>> autoProcess: removeCacheData ... "

    .line 15
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v5, v3}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 17
    :goto_0
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized e()V
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/c;

    monitor-enter v0

    :try_start_0
    const-string v1, "--->>> Dispatch: init Enter..."

    .line 1
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "work_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/umeng/commonsdk/framework/c$1;

    sget-object v2, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/framework/c$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v1, "--->>> Dispatch: init Exit..."

    .line 8
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    .line 3
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->e:Landroid/os/Handler;

    .line 5
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    if-eqz v0, :cond_2

    .line 6
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    :cond_2
    return-void
.end method

.method public static g()V
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->f:Lcom/umeng/commonsdk/framework/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->c()V

    const-string v0, "--->>> handleQuit: Quit dispatch thread."

    .line 3
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->f()V

    :cond_0
    return-void
.end method
