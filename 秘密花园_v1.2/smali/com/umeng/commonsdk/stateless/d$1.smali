.class public final Lcom/umeng/commonsdk/stateless/d$1;
.super Landroid/content/BroadcastReceiver;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->b()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->b()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "walle"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-static {v2}, Lcom/umeng/commonsdk/stateless/d;->a(Z)Z

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "[stateless] net reveiver ok --->>>"

    aput-object v2, p2, v1

    .line 10
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x111

    .line 11
    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/d;->b(I)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "[stateless] net reveiver disconnected --->>>"

    aput-object v2, p2, v1

    .line 12
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/d;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 14
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
