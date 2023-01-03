.class public final Lm/r/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm/r/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lm/g;

.field public final b:Lm/g;

.field public final c:Lm/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lm/r/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lm/q/o;->f:Lm/q/o;

    .line 3
    invoke-virtual {v0}, Lm/q/o;->e()Lm/q/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lm/o/d/c;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lm/o/d/c;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lm/o/c/c;

    invoke-direct {v1, v0}, Lm/o/c/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    iput-object v1, p0, Lm/r/a;->a:Lm/g;

    .line 7
    new-instance v0, Lm/o/d/c;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lm/o/d/c;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lm/o/c/a;

    invoke-direct {v1, v0}, Lm/o/c/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 9
    iput-object v1, p0, Lm/r/a;->b:Lm/g;

    .line 10
    new-instance v0, Lm/o/d/c;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lm/o/d/c;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lm/o/c/d;

    invoke-direct {v1, v0}, Lm/o/c/d;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 12
    iput-object v1, p0, Lm/r/a;->c:Lm/g;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public static a()Lm/g;
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Lm/r/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/r/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lm/r/a;

    invoke-direct {v0}, Lm/r/a;-><init>()V

    .line 3
    sget-object v1, Lm/r/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :goto_1
    iget-object v0, v0, Lm/r/a;->b:Lm/g;

    return-object v0

    .line 5
    :cond_1
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lm/r/a;->a:Lm/g;

    instance-of v1, v1, Lm/o/c/h;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lm/r/a;->a:Lm/g;

    check-cast v1, Lm/o/c/h;

    invoke-interface {v1}, Lm/o/c/h;->shutdown()V

    .line 8
    :cond_2
    iget-object v1, v0, Lm/r/a;->b:Lm/g;

    instance-of v1, v1, Lm/o/c/h;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Lm/r/a;->b:Lm/g;

    check-cast v1, Lm/o/c/h;

    invoke-interface {v1}, Lm/o/c/h;->shutdown()V

    .line 10
    :cond_3
    iget-object v1, v0, Lm/r/a;->c:Lm/g;

    instance-of v1, v1, Lm/o/c/h;

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lm/r/a;->c:Lm/g;

    check-cast v1, Lm/o/c/h;

    invoke-interface {v1}, Lm/o/c/h;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
