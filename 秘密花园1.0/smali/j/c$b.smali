.class public final Lj/c$b;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Okio Watchdog"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lj/c;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v1, Lj/c;->k:Lj/c$a;

    invoke-virtual {v1}, Lj/c$a;->a()Lj/c;

    move-result-object v1

    .line 3
    sget-object v2, Lj/c;->j:Lj/c;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lj/c;->j:Lj/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lj/c;->m()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
.end method
