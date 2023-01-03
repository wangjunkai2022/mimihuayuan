.class public final Li/q;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/d0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/d0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Li/q;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Li/q;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Li/q;->d:Ljava/util/ArrayDeque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Li/q;->e:Ljava/util/ArrayDeque;

    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Li/q;->f:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    monitor-exit p0

    .line 4
    invoke-virtual {p0}, Li/q;->c()Z

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final b(Li/d0$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    iget-object v0, p0, Li/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1}, Li/q;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sget-boolean v3, Lh/j;->a:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Assertion failed"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Li/q;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v4, "readyAsyncCalls.iterator()"

    invoke-static {v0, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/d0$a;

    .line 7
    iget-object v5, v1, Li/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    iget v6, v1, Li/q;->a:I

    if-lt v5, v6, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v5, v4, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, v1, Li/q;->b:I

    if-lt v5, v6, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 11
    iget-object v5, v4, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v5, "asyncCall"

    .line 13
    invoke-static {v4, v5}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, v1, Li/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    :goto_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 16
    :try_start_1
    iget-object v0, v1, Li/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v4, v1, Li/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/2addr v0, v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v4, 0x0

    if-lez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 17
    :goto_3
    monitor-exit p0

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_b

    .line 19
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Li/d0$a;

    .line 20
    monitor-enter p0

    .line 21
    :try_start_3
    iget-object v0, v1, Li/q;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_6

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x0

    const v11, 0x7fffffff

    const-wide/16 v12, 0x3c

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    new-instance v15, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v15}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v9, "OkHttp Dispatcher"

    invoke-static {v9, v4}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v16

    move-object v9, v0

    .line 24
    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, v1, Li/q;->c:Ljava/util/concurrent/ExecutorService;

    .line 25
    :cond_6
    iget-object v0, v1, Li/q;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v9, 0x0

    if-eqz v0, :cond_a

    monitor-exit p0

    .line 26
    iget-object v10, v8, Li/d0$a;->c:Li/d0;

    .line 27
    iget-object v10, v10, Li/d0;->c:Li/b0;

    .line 28
    iget-object v10, v10, Li/b0;->a:Li/q;

    .line 29
    invoke-static {v10}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v2

    sget-boolean v11, Lh/j;->a:Z

    if-eqz v11, :cond_8

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Assertion failed"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 30
    :cond_8
    :goto_5
    :try_start_4
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 31
    :try_start_5
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v11, "executor rejected"

    invoke-direct {v0, v11}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v10}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 33
    iget-object v10, v8, Li/d0$a;->c:Li/d0;

    .line 34
    iget-object v10, v10, Li/d0;->a:Li/m0/d/m;

    if-eqz v10, :cond_9

    .line 35
    invoke-virtual {v10, v0}, Li/m0/d/m;->h(Ljava/io/IOException;)Ljava/io/IOException;

    .line 36
    iget-object v9, v8, Li/d0$a;->b:Li/g;

    iget-object v10, v8, Li/d0$a;->c:Li/d0;

    invoke-interface {v9, v10, v0}, Li/g;->d(Li/f;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    iget-object v0, v8, Li/d0$a;->c:Li/d0;

    .line 38
    iget-object v0, v0, Li/d0;->c:Li/b0;

    .line 39
    iget-object v0, v0, Li/b0;->a:Li/q;

    .line 40
    invoke-virtual {v0, v8}, Li/q;->b(Li/d0$a;)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    :try_start_6
    const-string v0, "transmitter"

    .line 41
    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 42
    :goto_7
    iget-object v2, v8, Li/d0$a;->c:Li/d0;

    .line 43
    iget-object v2, v2, Li/d0;->c:Li/b0;

    .line 44
    iget-object v2, v2, Li/b0;->a:Li/q;

    .line 45
    invoke-virtual {v2, v8}, Li/q;->b(Li/d0$a;)V

    throw v0

    .line 46
    :cond_a
    :try_start_7
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v9

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    return v5

    :catchall_2
    move-exception v0

    .line 47
    :try_start_8
    monitor-exit p0

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    .line 48
    monitor-exit p0

    throw v0
.end method
