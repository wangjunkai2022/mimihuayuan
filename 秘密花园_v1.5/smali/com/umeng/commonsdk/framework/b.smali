.class public Lcom/umeng/commonsdk/framework/b;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/b$a;
    }
.end annotation


# static fields
.field public static a:Landroid/os/HandlerThread; = null

.field public static b:Landroid/os/Handler; = null

.field public static c:Landroid/os/Handler; = null

.field public static final d:I = 0xc8

.field public static final e:I = 0x111

.field public static final f:I = 0x112

.field public static final g:I = 0x200

.field public static final h:I = 0x301

.field public static i:Lcom/umeng/commonsdk/framework/b$a; = null

.field public static j:Landroid/net/ConnectivityManager; = null

.field public static k:Landroid/net/NetworkInfo; = null

.field public static l:Landroid/content/IntentFilter; = null

.field public static m:Z = false

.field public static n:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/framework/UMSenderStateNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/lang/Object; = null

.field public static final p:Ljava/lang/String; = "report_policy"

.field public static final q:Ljava/lang/String; = "report_interval"

.field public static r:Z = false

.field public static final s:I = 0x3a98

.field public static t:I = 0x3a98

.field public static u:Ljava/lang/Object;

.field public static v:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/umeng/commonsdk/framework/b$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/b$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p2, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    .line 3
    :try_start_0
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    if-nez p2, :cond_3

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "NetWorkSender"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/umeng/commonsdk/framework/b$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/umeng/commonsdk/framework/b$a;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    .line 8
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    const-string p2, "--->>> FileMonitor has already started!"

    .line 9
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 11
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/framework/b;->m()V

    .line 18
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-nez p2, :cond_2

    .line 19
    new-instance p2, Lcom/umeng/commonsdk/framework/b$2;

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/umeng/commonsdk/framework/b$2;-><init>(Lcom/umeng/commonsdk/framework/b;Landroid/os/Looper;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    .line 20
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_policy"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 21
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_interval"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 22
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    sput-object p0, Lcom/umeng/commonsdk/framework/b;->j:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .line 2
    sput-object p0, Lcom/umeng/commonsdk/framework/b;->k:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static synthetic a(I)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    return-void
.end method

.method public static a(II)V
    .locals 3

    .line 23
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 26
    iput p0, v0, Landroid/os/Message;->what:I

    .line 27
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static a(IJ)V
    .locals 2

    .line 18
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 20
    iput p0, v0, Landroid/os/Message;->what:I

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> sendMsgDelayed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobclickRT"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    :cond_0
    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 8
    :goto_0
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_1

    const-string p0, "MobclickRT"

    const-string v1, "--->>> addConnStateObserver: input item has exist."

    .line 10
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 13
    :try_start_3
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 14
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 15
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 4
    sput-boolean p0, Lcom/umeng/commonsdk/framework/b;->m:Z

    return p0
.end method

.method public static b()I
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/umeng/commonsdk/framework/b;->t:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(I)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 7
    iput p0, v0, Landroid/os/Message;->what:I

    .line 8
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    return-void
.end method

.method public static c(I)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p0, v0, Landroid/os/Message;->what:I

    .line 5
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static d()V
    .locals 1

    const/16 v0, 0x111

    .line 1
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->b(I)V

    return-void
.end method

.method public static e()V
    .locals 2

    const/16 v0, 0x112

    const/16 v1, 0xbb8

    .line 1
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/b;->a(II)V

    return-void
.end method

.method public static synthetic f()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->j:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static synthetic g()Landroid/net/NetworkInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->k:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic j()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->q()V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->p()V

    return-void
.end method

.method public static synthetic l()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->o()V

    return-void
.end method

.method private m()V
    .locals 6

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_policy"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MobclickRT"

    const-string v2, "--->>> switch to report_policy 11"

    .line 4
    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    const/16 v1, 0x3a98

    .line 6
    sput v1, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 7
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    const-string v4, "15"

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "MobclickRT"

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> set report_interval value to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v2, v2, 0x3e8

    .line 10
    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sput v1, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 13
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    .line 3
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    .line 5
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 6
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public static o()V
    .locals 4

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    sget-object v3, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;

    invoke-interface {v3}, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;->onSenderIdle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static p()V
    .locals 3

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 3
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    .line 4
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    .line 9
    :cond_1
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    :cond_2
    const-string v0, "--->>> handleQuit: Quit sender thread."

    .line 10
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 13
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->n()V

    :cond_3
    return-void
.end method

.method public static q()V
    .locals 7

    const-string v0, "]."

    const-string v1, "--->>> handleProcessNext: Enter..."

    .line 1
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "--->>> The envelope file exists."

    .line 5
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_1

    const-string v2, "--->>> Number of envelope files is greater than 200, remove old files first."

    .line 7
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 8
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeRedundantEnvelopeFiles(Landroid/content/Context;I)V

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> Ready to send envelope file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    const-string v4, "MobclickRT"

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> send envelope file [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/c;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "--->>> Send envelope file success, delete it."

    .line 15
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 16
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "--->>> Failed to delete already processed file. We try again after delete failed."

    .line 17
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    :cond_2
    const/16 v0, 0x111

    .line 19
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    return-void

    :cond_3
    const-string v0, "--->>> Send envelope file failed, abandon and wait next trigger!"

    .line 20
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_4
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "report_policy"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3a98

    if-eqz v1, :cond_1

    const-string v1, "11"

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MobclickRT"

    const-string v3, "--->>> switch to report_policy 11"

    .line 4
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 6
    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    :cond_1
    :goto_0
    const-string v1, "report_interval"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "MobclickRT"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> set report_interval value to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xf

    if-lt p1, p2, :cond_3

    const/16 p2, 0x5a

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit16 p1, p1, 0x3e8

    .line 11
    sput p1, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 13
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
