.class public final Li/m0/d/i;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# static fields
.field public static final g:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:J

.field public final b:Li/m0/d/i$a;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/m0/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li/m0/d/j;

.field public e:Z

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    .line 5
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Li/m0/d/i;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li/m0/d/i;->f:I

    .line 2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Li/m0/d/i;->a:J

    .line 3
    new-instance p1, Li/m0/d/i$a;

    invoke-direct {p1, p0}, Li/m0/d/i$a;-><init>(Li/m0/d/i;)V

    iput-object p1, p0, Li/m0/d/i;->b:Li/m0/d/i$a;

    .line 4
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    .line 5
    new-instance p1, Li/m0/d/j;

    invoke-direct {p1}, Li/m0/d/j;-><init>()V

    iput-object p1, p0, Li/m0/d/i;->d:Li/m0/d/j;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "keepAliveDuration <= 0: "

    .line 6
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Li/k0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "failedRoute"

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Li/k0;->b:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Li/k0;->a:Li/a;

    .line 4
    iget-object v1, v0, Li/a;->k:Ljava/net/ProxySelector;

    .line 5
    iget-object v0, v0, Li/a;->a:Li/x;

    .line 6
    invoke-virtual {v0}, Li/x;->m()Ljava/net/URI;

    move-result-object v0

    .line 7
    iget-object v2, p1, Li/k0;->b:Ljava/net/Proxy;

    .line 8
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10
    :cond_0
    iget-object p2, p0, Li/m0/d/i;->d:Li/m0/d/j;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v0, p2, Li/m0/d/j;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p2

    throw p1

    .line 15
    :cond_1
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Li/m0/d/h;J)I
    .locals 6

    .line 1
    iget-object v0, p1, Li/m0/d/h;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v3, Li/m0/d/m$a;

    const-string v4, "A connection to "

    .line 6
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7
    iget-object v5, p1, Li/m0/d/h;->q:Li/k0;

    .line 8
    iget-object v5, v5, Li/k0;->a:Li/a;

    .line 9
    iget-object v5, v5, Li/a;->a:Li/x;

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 12
    sget-object v5, Li/m0/i/f;->a:Li/m0/i/f;

    .line 13
    iget-object v3, v3, Li/m0/d/m$a;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {v5, v4, v3}, Li/m0/i/f;->l(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 16
    iput-boolean v3, p1, Li/m0/d/h;->i:Z

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    iget-wide v2, p0, Li/m0/d/i;->a:J

    sub-long/2addr p2, v2

    .line 19
    iput-wide p2, p1, Li/m0/d/h;->o:J

    return v1

    .line 20
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final c(Li/m0/d/h;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Li/m0/d/i;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/m0/d/i;->e:Z

    .line 4
    sget-object v0, Li/m0/d/i;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Li/m0/d/i;->b:Li/m0/d/i$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5
    :cond_2
    iget-object v0, p0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string p1, "connection"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Li/a;Li/m0/d/m;Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a;",
            "Li/m0/d/m;",
            "Ljava/util/List<",
            "Li/k0;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    if-eqz p2, :cond_15

    .line 1
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lh/j;->a:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Assertion failed"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/m0/d/h;

    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {v2}, Li/m0/d/h;->g()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v4, v2, Li/m0/d/h;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v2, Li/m0/d/h;->m:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_12

    iget-boolean v4, v2, Li/m0/d/h;->i:Z

    if-eqz v4, :cond_3

    goto/16 :goto_6

    .line 5
    :cond_3
    iget-object v4, v2, Li/m0/d/h;->q:Li/k0;

    .line 6
    iget-object v4, v4, Li/k0;->a:Li/a;

    .line 7
    invoke-virtual {v4, p1}, Li/a;->a(Li/a;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_6

    .line 8
    :cond_4
    iget-object v4, p1, Li/a;->a:Li/x;

    .line 9
    iget-object v4, v4, Li/x;->e:Ljava/lang/String;

    .line 10
    iget-object v5, v2, Li/m0/d/h;->q:Li/k0;

    .line 11
    iget-object v5, v5, Li/k0;->a:Li/a;

    .line 12
    iget-object v5, v5, Li/a;->a:Li/x;

    .line 13
    iget-object v5, v5, Li/x;->e:Ljava/lang/String;

    .line 14
    invoke-static {v4, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 15
    :cond_5
    iget-object v4, v2, Li/m0/d/h;->f:Li/m0/g/f;

    if-nez v4, :cond_6

    goto/16 :goto_6

    :cond_6
    if-eqz p3, :cond_12

    .line 16
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li/k0;

    .line 18
    iget-object v7, v5, Li/k0;->b:Ljava/net/Proxy;

    .line 19
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_9

    .line 20
    iget-object v7, v2, Li/m0/d/h;->q:Li/k0;

    .line 21
    iget-object v7, v7, Li/k0;->b:Ljava/net/Proxy;

    .line 22
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_9

    iget-object v7, v2, Li/m0/d/h;->q:Li/k0;

    .line 23
    iget-object v7, v7, Li/k0;->c:Ljava/net/InetSocketAddress;

    iget-object v5, v5, Li/k0;->c:Ljava/net/InetSocketAddress;

    .line 24
    invoke-static {v7, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_b

    goto :goto_6

    .line 25
    :cond_b
    iget-object v4, p1, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    sget-object v5, Li/m0/k/d;->a:Li/m0/k/d;

    if-eq v4, v5, :cond_c

    goto :goto_6

    .line 27
    :cond_c
    iget-object v4, p1, Li/a;->a:Li/x;

    .line 28
    invoke-virtual {v2, v4}, Li/m0/d/h;->l(Li/x;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    .line 29
    :cond_d
    :try_start_0
    iget-object v4, p1, Li/a;->h:Li/h;

    if-eqz v4, :cond_11

    .line 30
    iget-object v5, p1, Li/a;->a:Li/x;

    .line 31
    iget-object v5, v5, Li/x;->e:Ljava/lang/String;

    .line 32
    iget-object v7, v2, Li/m0/d/h;->d:Li/v;

    if-eqz v7, :cond_10

    .line 33
    invoke-virtual {v7}, Li/v;->b()Ljava/util/List;

    move-result-object v7

    if-eqz v5, :cond_f

    if-eqz v7, :cond_e

    .line 34
    new-instance v8, Li/i;

    invoke-direct {v8, v4, v7, v5}, Li/i;-><init>(Li/h;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v8}, Li/h;->a(Ljava/lang/String;Lh/o/b/a;)V

    goto :goto_2

    :cond_e
    const-string v4, "peerCertificates"

    .line 35
    invoke-static {v4}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :cond_f
    :try_start_1
    const-string v4, "hostname"

    invoke-static {v4}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    .line 36
    :cond_10
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_0

    throw v0

    :cond_11
    :try_start_3
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_0

    throw v0

    :catch_0
    :cond_12
    :goto_6
    if-nez v3, :cond_13

    goto/16 :goto_1

    :cond_13
    const-string p1, "connection"

    .line 37
    invoke-static {v2, p1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Li/m0/d/m;->a(Li/m0/d/h;)V

    return v6

    :cond_14
    return v3

    :cond_15
    const-string p1, "transmitter"

    .line 38
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string p1, "address"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
