.class public final Lm/o/c/g;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lm/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/c/g$b;,
        Lm/o/c/g$c;,
        Lm/o/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lm/k;"
    }
.end annotation


# instance fields
.field public final a:Lm/o/d/g;

.field public final b:Lm/n/a;


# direct methods
.method public constructor <init>(Lm/n/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/c/g;->b:Lm/n/a;

    .line 3
    new-instance p1, Lm/o/d/g;

    invoke-direct {p1}, Lm/o/d/g;-><init>()V

    iput-object p1, p0, Lm/o/c/g;->a:Lm/o/d/g;

    return-void
.end method

.method public constructor <init>(Lm/n/a;Lm/o/d/g;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    iput-object p1, p0, Lm/o/c/g;->b:Lm/n/a;

    .line 6
    new-instance p1, Lm/o/d/g;

    new-instance v0, Lm/o/c/g$b;

    invoke-direct {v0, p0, p2}, Lm/o/c/g$b;-><init>(Lm/o/c/g;Lm/o/d/g;)V

    invoke-direct {p1, v0}, Lm/o/d/g;-><init>(Lm/k;)V

    iput-object p1, p0, Lm/o/c/g;->a:Lm/o/d/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/g;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/g;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lm/o/c/g;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lm/o/c/g;->b:Lm/n/a;

    invoke-interface {v0}, Lm/n/a;->call()V
    :try_end_0
    .catch Lm/m/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lm/o/c/g;->c()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lm/o/c/g;->c()V

    throw v0
.end method
