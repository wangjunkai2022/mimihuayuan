.class public final Li/m0/g/f;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/g/f$b;,
        Li/m0/g/f$d;,
        Li/m0/g/f$c;
    }
.end annotation


# static fields
.field public static final v:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:Z

.field public final b:Li/m0/g/f$c;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Li/m0/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final j:Li/m0/g/q;

.field public k:Z

.field public final l:Li/m0/g/r;

.field public final m:Li/m0/g/r;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public final r:Ljava/net/Socket;

.field public final s:Li/m0/g/n;

.field public final t:Li/m0/g/f$d;

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Li/m0/g/f;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Li/m0/g/f$b;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Li/m0/g/f$b;->h:Z

    .line 3
    iput-boolean v0, p0, Li/m0/g/f;->a:Z

    .line 4
    iget-object v0, p1, Li/m0/g/f$b;->e:Li/m0/g/f$c;

    .line 5
    iput-object v0, p0, Li/m0/g/f;->b:Li/m0/g/f$c;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Li/m0/g/f;->c:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Li/m0/g/f$b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    iput-object v0, p0, Li/m0/g/f;->d:Ljava/lang/String;

    .line 9
    iget-boolean v0, p1, Li/m0/g/f$b;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    iput v0, p0, Li/m0/g/f;->f:I

    .line 11
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    iget-object v4, p0, Li/m0/g/f;->d:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "OkHttp %s Writer"

    invoke-static {v4, v3}, Li/m0/b;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    .line 13
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 14
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    iget-object v4, p0, Li/m0/g/f;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "OkHttp %s Push Observer"

    invoke-static {v4, v3}, Li/m0/b;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    move-object v6, v0

    .line 16
    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    iget-object v0, p1, Li/m0/g/f$b;->f:Li/m0/g/q;

    .line 18
    iput-object v0, p0, Li/m0/g/f;->j:Li/m0/g/q;

    .line 19
    new-instance v0, Li/m0/g/r;

    invoke-direct {v0}, Li/m0/g/r;-><init>()V

    .line 20
    iget-boolean v2, p1, Li/m0/g/f$b;->h:Z

    const/4 v3, 0x7

    if-eqz v2, :cond_1

    const/high16 v2, 0x1000000

    .line 21
    invoke-virtual {v0, v3, v2}, Li/m0/g/r;->b(II)Li/m0/g/r;

    .line 22
    :cond_1
    iput-object v0, p0, Li/m0/g/f;->l:Li/m0/g/r;

    .line 23
    new-instance v0, Li/m0/g/r;

    invoke-direct {v0}, Li/m0/g/r;-><init>()V

    const v2, 0xffff

    .line 24
    invoke-virtual {v0, v3, v2}, Li/m0/g/r;->b(II)Li/m0/g/r;

    const/4 v2, 0x5

    const/16 v3, 0x4000

    .line 25
    invoke-virtual {v0, v2, v3}, Li/m0/g/r;->b(II)Li/m0/g/r;

    .line 26
    iput-object v0, p0, Li/m0/g/f;->m:Li/m0/g/r;

    .line 27
    invoke-virtual {v0}, Li/m0/g/r;->a()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Li/m0/g/f;->q:J

    .line 28
    iget-object v0, p1, Li/m0/g/f$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_5

    .line 29
    iput-object v0, p0, Li/m0/g/f;->r:Ljava/net/Socket;

    .line 30
    new-instance v0, Li/m0/g/n;

    .line 31
    iget-object v2, p1, Li/m0/g/f$b;->d:Lj/i;

    if-eqz v2, :cond_4

    .line 32
    iget-boolean v3, p0, Li/m0/g/f;->a:Z

    invoke-direct {v0, v2, v3}, Li/m0/g/n;-><init>(Lj/i;Z)V

    iput-object v0, p0, Li/m0/g/f;->s:Li/m0/g/n;

    .line 33
    new-instance v0, Li/m0/g/f$d;

    new-instance v2, Li/m0/g/l;

    .line 34
    iget-object v3, p1, Li/m0/g/f$b;->c:Lj/j;

    if-eqz v3, :cond_3

    .line 35
    iget-boolean v1, p0, Li/m0/g/f;->a:Z

    invoke-direct {v2, v3, v1}, Li/m0/g/l;-><init>(Lj/j;Z)V

    invoke-direct {v0, p0, v2}, Li/m0/g/f$d;-><init>(Li/m0/g/f;Li/m0/g/l;)V

    iput-object v0, p0, Li/m0/g/f;->t:Li/m0/g/f$d;

    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Li/m0/g/f;->u:Ljava/util/Set;

    .line 37
    iget v0, p1, Li/m0/g/f$b;->g:I

    if-eqz v0, :cond_2

    .line 38
    iget-object v1, p0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Li/m0/g/f$a;

    invoke-direct {v2, p0}, Li/m0/g/f$a;-><init>(Li/m0/g/f;)V

    .line 39
    iget p1, p1, Li/m0/g/f$b;->g:I

    int-to-long v5, p1

    .line 40
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    .line 41
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void

    :cond_3
    const-string p1, "source"

    .line 42
    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "sink"

    .line 43
    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "socket"

    .line 44
    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "connectionName"

    .line 45
    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized E(I)Li/m0/g/m;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/m0/g/m;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final F(Li/m0/g/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/f;->s:Li/m0/g/n;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Li/m0/g/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Li/m0/g/f;->g:Z

    .line 6
    iget v1, p0, Li/m0/g/f;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    monitor-exit p0

    .line 8
    iget-object v2, p0, Li/m0/g/f;->s:Li/m0/g/n;

    sget-object v3, Li/m0/b;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Li/m0/g/n;->g(ILi/m0/g/b;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized G(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Li/m0/g/f;->n:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Li/m0/g/f;->n:J

    .line 2
    iget-wide p1, p0, Li/m0/g/f;->o:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Li/m0/g/f;->l:Li/m0/g/r;

    invoke-virtual {p1}, Li/m0/g/r;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Li/m0/g/f;->K(IJ)V

    .line 5
    iget-wide p1, p0, Li/m0/g/f;->o:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Li/m0/g/f;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final H(IZLj/g;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Li/m0/g/f;->s:Li/m0/g/n;

    invoke-virtual {p4, p2, p1, p3, v0}, Li/m0/g/n;->e(ZILj/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Li/m0/g/f;->p:J

    iget-wide v5, p0, Li/m0/g/f;->q:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 4
    iget-object v3, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    iget-wide v3, p0, Li/m0/g/f;->q:J

    iget-wide v5, p0, Li/m0/g/f;->p:J

    sub-long/2addr v3, v5

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Li/m0/g/f;->s:Li/m0/g/n;

    .line 9
    iget v3, v3, Li/m0/g/n;->b:I

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    iget-wide v4, p0, Li/m0/g/f;->p:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Li/m0/g/f;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    int-to-long v4, v3

    sub-long/2addr p4, v4

    .line 13
    iget-object v4, p0, Li/m0/g/f;->s:Li/m0/g/n;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Li/m0/g/n;->e(ZILj/g;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final I(ZII)V
    .locals 3

    .line 1
    sget-object v0, Li/m0/g/b;->c:Li/m0/g/b;

    if-nez p1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Li/m0/g/f;->k:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Li/m0/g/f;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Li/m0/g/f;->s:Li/m0/g/n;

    invoke-virtual {v1, p1, p2, p3}, Li/m0/g/n;->F(ZII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final J(ILi/m0/g/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "OkHttp "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_0
    new-instance v2, Li/m0/g/f$e;

    invoke-direct {v2, v1, p0, p1, p2}, Li/m0/g/f$e;-><init>(Ljava/lang/String;Li/m0/g/f;ILi/m0/g/b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final K(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "OkHttp Window Update "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    :try_start_0
    new-instance v1, Li/m0/g/f$f;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Li/m0/g/f$f;-><init>(Ljava/lang/String;Li/m0/g/f;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Li/m0/g/b;->b:Li/m0/g/b;

    sget-object v1, Li/m0/g/b;->g:Li/m0/g/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Assertion failed"

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 2
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Li/m0/g/f;->F(Li/m0/g/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    monitor-enter p0

    .line 4
    :try_start_1
    iget-object p1, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Li/m0/g/m;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Li/m0/g/m;

    .line 7
    iget-object v1, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_1
    monitor-exit p0

    if-eqz p1, :cond_4

    .line 10
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    .line 11
    :try_start_2
    invoke-virtual {v2, p2, p3}, Li/m0/g/m;->c(Li/m0/g/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12
    :cond_4
    :try_start_3
    iget-object p1, p0, Li/m0/g/f;->s:Li/m0/g/n;

    invoke-virtual {p1}, Li/m0/g/n;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 13
    :catch_2
    :try_start_4
    iget-object p1, p0, Li/m0/g/f;->r:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 14
    :catch_3
    iget-object p1, p0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 15
    iget-object p1, p0, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(I)Li/m0/g/m;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/m0/g/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/m0/g/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/m0/g/f;->m:Li/m0/g/r;

    const v1, 0x7fffffff

    .line 2
    iget v2, v0, Li/m0/g/r;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v0, v0, Li/m0/g/r;->b:[I

    const/4 v1, 0x4

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
