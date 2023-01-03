.class public final Li/m0/g/f$d;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Li/m0/g/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Li/m0/g/l;

.field public final synthetic b:Li/m0/g/f;


# direct methods
.method public constructor <init>(Li/m0/g/f;Li/m0/g/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/m0/g/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/m0/g/f$d;->a:Li/m0/g/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(ZLi/m0/g/r;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 2
    iget-object v0, v0, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "OkHttp "

    .line 3
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 4
    iget-object v2, v2, Li/m0/g/f;->d:Ljava/lang/String;

    const-string v3, " ACK Settings"

    .line 5
    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_0
    new-instance v2, Li/m0/g/f$d$d;

    invoke-direct {v2, v1, p0, p1, p2}, Li/m0/g/f$d$d;-><init>(Ljava/lang/String;Li/m0/g/f$d;ZLi/m0/g/r;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(ZILj/j;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v7, p4

    const-string v3, "source"

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    .line 1
    iget-object v3, v1, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v3, v0}, Li/m0/g/f;->g(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2
    iget-object v5, v1, Li/m0/g/f$d;->b:Li/m0/g/f;

    if-eqz v5, :cond_1

    .line 3
    new-instance v6, Lj/g;

    invoke-direct {v6}, Lj/g;-><init>()V

    int-to-long v3, v7

    .line 4
    invoke-interface {v2, v3, v4}, Lj/j;->x(J)V

    .line 5
    invoke-interface {v2, v6, v3, v4}, Lj/a0;->c(Lj/g;J)J

    .line 6
    iget-boolean v2, v5, Li/m0/g/f;->g:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v9, v5, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v2, "OkHttp "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Push Data["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v10, Li/m0/g/g;

    move-object v2, v10

    move-object v4, v5

    move/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Li/m0/g/g;-><init>(Ljava/lang/String;Li/m0/g/f;ILj/g;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    throw v4

    .line 10
    :cond_2
    iget-object v3, v1, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v3, v0}, Li/m0/g/f;->e(I)Li/m0/g/m;

    move-result-object v3

    if-nez v3, :cond_3

    .line 11
    iget-object v3, v1, Li/m0/g/f$d;->b:Li/m0/g/f;

    sget-object v4, Li/m0/g/b;->c:Li/m0/g/b;

    invoke-virtual {v3, v0, v4}, Li/m0/g/f;->J(ILi/m0/g/b;)V

    .line 12
    iget-object v0, v1, Li/m0/g/f$d;->b:Li/m0/g/f;

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, Li/m0/g/f;->G(J)V

    .line 13
    invoke-interface {v2, v3, v4}, Lj/j;->skip(J)V

    return-void

    .line 14
    :cond_3
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    sget-boolean v5, Lh/j;->a:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Assertion failed"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 15
    :cond_5
    :goto_0
    iget-object v0, v3, Li/m0/g/m;->g:Li/m0/g/m$b;

    int-to-long v5, v7

    .line 16
    iget-object v7, v0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    sget-boolean v8, Lh/j;->a:Z

    if-eqz v8, :cond_7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "Assertion failed"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_7
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_10

    .line 17
    iget-object v9, v0, Li/m0/g/m$b;->f:Li/m0/g/m;

    monitor-enter v9

    .line 18
    :try_start_0
    iget-boolean v10, v0, Li/m0/g/m$b;->e:Z

    .line 19
    iget-object v11, v0, Li/m0/g/m$b;->b:Lj/g;

    .line 20
    iget-wide v11, v11, Lj/g;->b:J

    add-long/2addr v11, v5

    .line 21
    iget-wide v13, v0, Li/m0/g/m$b;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    cmp-long v16, v11, v13

    if-lez v16, :cond_8

    const/4 v11, 0x1

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    .line 22
    :goto_2
    monitor-exit v9

    if-eqz v11, :cond_9

    .line 23
    invoke-interface {v2, v5, v6}, Lj/j;->skip(J)V

    .line 24
    iget-object v0, v0, Li/m0/g/m$b;->f:Li/m0/g/m;

    sget-object v2, Li/m0/g/b;->e:Li/m0/g/b;

    invoke-virtual {v0, v2}, Li/m0/g/m;->e(Li/m0/g/b;)V

    goto :goto_5

    :cond_9
    if-eqz v10, :cond_a

    .line 25
    invoke-interface {v2, v5, v6}, Lj/j;->skip(J)V

    goto :goto_5

    .line 26
    :cond_a
    iget-object v9, v0, Li/m0/g/m$b;->a:Lj/g;

    invoke-interface {v2, v9, v5, v6}, Lj/a0;->c(Lj/g;J)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_f

    sub-long/2addr v5, v9

    .line 27
    iget-object v9, v0, Li/m0/g/m$b;->f:Li/m0/g/m;

    monitor-enter v9

    .line 28
    :try_start_1
    iget-boolean v10, v0, Li/m0/g/m$b;->c:Z

    if-eqz v10, :cond_b

    .line 29
    iget-object v10, v0, Li/m0/g/m$b;->a:Lj/g;

    .line 30
    iget-wide v10, v10, Lj/g;->b:J

    .line 31
    iget-object v12, v0, Li/m0/g/m$b;->a:Lj/g;

    .line 32
    iget-wide v13, v12, Lj/g;->b:J

    invoke-virtual {v12, v13, v14}, Lj/g;->skip(J)V

    goto :goto_4

    .line 33
    :cond_b
    iget-object v10, v0, Li/m0/g/m$b;->b:Lj/g;

    .line 34
    iget-wide v10, v10, Lj/g;->b:J

    cmp-long v12, v10, v7

    if-nez v12, :cond_c

    const/4 v15, 0x1

    .line 35
    :cond_c
    iget-object v10, v0, Li/m0/g/m$b;->b:Lj/g;

    iget-object v11, v0, Li/m0/g/m$b;->a:Lj/g;

    invoke-virtual {v10, v11}, Lj/g;->P(Lj/a0;)J

    if-eqz v15, :cond_e

    .line 36
    iget-object v10, v0, Li/m0/g/m$b;->f:Li/m0/g/m;

    if-eqz v10, :cond_d

    .line 37
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_d
    new-instance v0, Lh/f;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_3
    move-wide v10, v7

    .line 38
    :goto_4
    monitor-exit v9

    cmp-long v9, v10, v7

    if-lez v9, :cond_7

    .line 39
    invoke-virtual {v0, v10, v11}, Li/m0/g/m$b;->d(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 40
    monitor-exit v9

    throw v0

    .line 41
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 42
    monitor-exit v9

    throw v0

    :cond_10
    :goto_5
    if-eqz p1, :cond_11

    .line 43
    sget-object v0, Li/m0/b;->b:Li/w;

    invoke-virtual {v3, v0, v4}, Li/m0/g/m;->j(Li/w;Z)V

    :cond_11
    return-void

    .line 44
    :cond_12
    invoke-static {v3}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v4
.end method

.method public d(ZII)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p2, Li/m0/g/f;->k:Z

    .line 4
    iget-object p2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    new-instance p2, Lh/f;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2

    .line 9
    :cond_1
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 10
    iget-object p1, p1, Li/m0/g/f;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "OkHttp "

    .line 11
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 12
    iget-object v1, v1, Li/m0/g/f;->d:Ljava/lang/String;

    const-string v2, " ping"

    .line 13
    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_2
    new-instance v1, Li/m0/g/f$d$c;

    invoke-direct {v1, v0, p0, p2, p3}, Li/m0/g/f$d$c;-><init>(Ljava/lang/String;Li/m0/g/f$d;II)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public e(IIIZ)V
    .locals 0

    return-void
.end method

.method public f(ILi/m0/g/b;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 1
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v0, p1}, Li/m0/g/f;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 3
    iget-boolean v1, v0, Li/m0/g/f;->g:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v2, "OkHttp "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Push Reset["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Li/m0/g/j;

    invoke-direct {v3, v2, v0, p1, p2}, Li/m0/g/j;-><init>(Ljava/lang/String;Li/m0/g/f;ILi/m0/g/b;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v0, p1}, Li/m0/g/f;->E(I)Li/m0/g/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Li/m0/g/m;->k(Li/m0/g/b;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "errorCode"

    .line 8
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(ZIILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move v0, p2

    .line 1
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v1, p2}, Li/m0/g/f;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 3
    iget-boolean v1, v3, Li/m0/g/f;->g:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v7, v3, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "OkHttp "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Push Headers["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :try_start_0
    new-instance v8, Li/m0/g/h;

    move-object v1, v8

    move v4, p2

    move-object/from16 v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Li/m0/g/h;-><init>(Ljava/lang/String;Li/m0/g/f;ILjava/util/List;Z)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v10, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    monitor-enter v10

    .line 7
    :try_start_1
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v1, p2}, Li/m0/g/f;->e(I)Li/m0/g/m;

    move-result-object v7

    if-nez v7, :cond_5

    .line 8
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 9
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-boolean v2, v1, Li/m0/g/f;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 11
    monitor-exit v10

    return-void

    .line 12
    :cond_2
    :try_start_4
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 13
    iget v1, v1, Li/m0/g/f;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-gt v0, v1, :cond_3

    .line 14
    monitor-exit v10

    return-void

    .line 15
    :cond_3
    :try_start_5
    rem-int/lit8 v1, v0, 0x2

    iget-object v2, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 16
    iget v2, v2, Li/m0/g/f;->f:I

    .line 17
    rem-int/lit8 v2, v2, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v1, v2, :cond_4

    monitor-exit v10

    return-void

    .line 18
    :cond_4
    :try_start_6
    invoke-static/range {p4 .. p4}, Li/m0/b;->B(Ljava/util/List;)Li/w;

    move-result-object v6

    .line 19
    new-instance v8, Li/m0/g/m;

    iget-object v3, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    const/4 v4, 0x0

    move-object v1, v8

    move v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Li/m0/g/m;-><init>(ILi/m0/g/f;ZZLi/w;)V

    .line 20
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 21
    iput v0, v1, Li/m0/g/f;->e:I

    .line 22
    iget-object v1, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 23
    iget-object v1, v1, Li/m0/g/f;->c:Ljava/util/Map;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v11, Li/m0/g/f;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 27
    iget-object v2, v2, Li/m0/g/f;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v12, Li/m0/g/f$d$b;

    move-object v1, v12

    move-object v3, v8

    move-object v4, p0

    move-object v5, v7

    move v6, p2

    move-object/from16 v7, p4

    move v8, p1

    invoke-direct/range {v1 .. v8}, Li/m0/g/f$d$b;-><init>(Ljava/lang/String;Li/m0/g/m;Li/m0/g/f$d;Li/m0/g/m;ILjava/util/List;Z)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 30
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 31
    :try_start_7
    monitor-exit v1

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 32
    :cond_5
    monitor-exit v10

    .line 33
    invoke-static/range {p4 .. p4}, Li/m0/b;->B(Ljava/util/List;)Li/w;

    move-result-object v0

    move v1, p1

    invoke-virtual {v7, v0, p1}, Li/m0/g/m;->j(Li/w;Z)V

    return-void

    :catchall_1
    move-exception v0

    .line 34
    monitor-exit v10

    throw v0
.end method

.method public h(IJ)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 3
    iget-wide v1, v0, Li/m0/g/f;->q:J

    add-long/2addr v1, p2

    .line 4
    iput-wide v1, v0, Li/m0/g/f;->q:J

    .line 5
    iget-object p2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    new-instance p2, Lh/f;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1

    throw p2

    .line 10
    :cond_1
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v0, p1}, Li/m0/g/f;->e(I)Li/m0/g/m;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    monitor-enter p1

    .line 12
    :try_start_2
    iget-wide v0, p1, Li/m0/g/m;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Li/m0/g/m;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public i(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p1, Li/m0/g/f;->u:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p3, Li/m0/g/b;->c:Li/m0/g/b;

    invoke-virtual {p1, p2, p3}, Li/m0/g/f;->J(ILi/m0/g/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p1, Li/m0/g/f;->u:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p1

    .line 8
    iget-boolean v0, p1, Li/m0/g/f;->g:Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Li/m0/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "OkHttp "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Li/m0/g/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Push Request["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_2
    new-instance v2, Li/m0/g/i;

    invoke-direct {v2, v1, p1, p2, p3}, Li/m0/g/i;-><init>(Ljava/lang/String;Li/m0/g/f;ILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1

    throw p2
.end method

.method public j(ILi/m0/g/b;Lj/k;)V
    .locals 3

    const-string v0, "errorCode"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const-string p2, "debugData"

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p3}, Lj/k;->b()I

    move-result p2

    .line 2
    iget-object p2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 4
    iget-object p3, p3, Li/m0/g/f;->c:Ljava/util/Map;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Li/m0/g/m;

    .line 6
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, [Li/m0/g/m;

    .line 7
    iget-object v1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Li/m0/g/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p2

    .line 10
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 11
    iget v2, v1, Li/m0/g/m;->m:I

    if-le v2, p1, :cond_0

    .line 12
    invoke-virtual {v1}, Li/m0/g/m;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Li/m0/g/b;->f:Li/m0/g/b;

    invoke-virtual {v1, v2}, Li/m0/g/m;->k(Li/m0/g/b;)V

    .line 14
    iget-object v2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 15
    iget v1, v1, Li/m0/g/m;->m:I

    .line 16
    invoke-virtual {v2, v1}, Li/m0/g/f;->E(I)Li/m0/g/m;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 17
    :cond_2
    :try_start_1
    new-instance p1, Lh/f;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p3}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2

    throw p1

    .line 19
    :cond_3
    invoke-static {p2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(ZLi/m0/g/r;)V
    .locals 10

    const-string v0, "settings"

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    .line 1
    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 2
    iget-object v0, v0, Li/m0/g/f;->s:Li/m0/g/n;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v3, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 6
    iget-object v3, v3, Li/m0/g/f;->m:Li/m0/g/r;

    .line 7
    invoke-virtual {v3}, Li/m0/g/r;->a()I

    move-result v3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 9
    iget-object p1, p1, Li/m0/g/f;->m:Li/m0/g/r;

    .line 10
    iput v4, p1, Li/m0/g/r;->a:I

    .line 11
    iget-object p1, p1, Li/m0/g/r;->b:[I

    .line 12
    array-length v5, p1

    .line 13
    invoke-static {p1, v4, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 14
    :cond_0
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 15
    iget-object p1, p1, Li/m0/g/f;->m:Li/m0/g/r;

    if-eqz p1, :cond_9

    const/16 v5, 0xa

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_3

    shl-int v8, v7, v6

    .line 16
    iget v9, p2, Li/m0/g/r;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v7, p2, Li/m0/g/r;->b:[I

    aget v7, v7, v6

    .line 18
    invoke-virtual {p1, v6, v7}, Li/m0/g/r;->b(II)Li/m0/g/r;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 20
    iget-object p1, p1, Li/m0/g/f;->m:Li/m0/g/r;

    .line 21
    invoke-virtual {p1}, Li/m0/g/r;->a()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v5, 0x0

    if-eq p1, p2, :cond_5

    if-eq p1, v3, :cond_5

    sub-int/2addr p1, v3

    int-to-long p1, p1

    .line 22
    iget-object v3, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 23
    iget-object v3, v3, Li/m0/g/f;->c:Ljava/util/Map;

    .line 24
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_6

    iget-object v1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 25
    iget-object v1, v1, Li/m0/g/f;->c:Ljava/util/Map;

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v4, [Li/m0/g/m;

    .line 27
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, [Li/m0/g/m;

    goto :goto_3

    :cond_4
    new-instance p1, Lh/f;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move-wide p1, v5

    .line 28
    :cond_6
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    :try_start_3
    iget-object v2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 30
    iget-object v2, v2, Li/m0/g/f;->s:Li/m0/g/n;

    .line 31
    iget-object v3, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 32
    iget-object v3, v3, Li/m0/g/f;->m:Li/m0/g/r;

    .line 33
    invoke-virtual {v2, v3}, Li/m0/g/n;->d(Li/m0/g/r;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v2

    .line 34
    :try_start_4
    iget-object v3, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 35
    sget-object v7, Li/m0/g/b;->c:Li/m0/g/b;

    invoke-virtual {v3, v7, v7, v2}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    :goto_4
    monitor-exit v0

    if-eqz v1, :cond_8

    .line 37
    array-length v0, v1

    :goto_5
    if-ge v4, v0, :cond_8

    aget-object v2, v1, v4

    .line 38
    monitor-enter v2

    .line 39
    :try_start_5
    iget-wide v7, v2, Li/m0/g/m;->d:J

    add-long/2addr v7, p1

    iput-wide v7, v2, Li/m0/g/m;->d:J

    cmp-long v3, p1, v5

    if-lez v3, :cond_7

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :cond_7
    monitor-exit v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 42
    :cond_8
    sget-object p1, Li/m0/g/f;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p2, "OkHttp "

    .line 43
    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 44
    iget-object v0, v0, Li/m0/g/f;->d:Ljava/lang/String;

    const-string v1, " settings"

    .line 45
    invoke-static {p2, v0, v1}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    new-instance v0, Li/m0/g/f$d$a;

    invoke-direct {v0, p2, p0}, Li/m0/g/f$d$a;-><init>(Ljava/lang/String;Li/m0/g/f$d;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 47
    :cond_9
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 48
    :try_start_7
    monitor-exit v2

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 49
    monitor-exit v0

    throw p1

    .line 50
    :cond_a
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public run()V
    .locals 5

    .line 1
    sget-object v0, Li/m0/g/b;->c:Li/m0/g/b;

    sget-object v1, Li/m0/g/b;->d:Li/m0/g/b;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Li/m0/g/f$d;->a:Li/m0/g/l;

    invoke-virtual {v3, p0}, Li/m0/g/l;->e(Li/m0/g/l$b;)V

    .line 3
    :goto_0
    iget-object v3, p0, Li/m0/g/f$d;->a:Li/m0/g/l;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p0}, Li/m0/g/l;->d(ZLi/m0/g/l$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Li/m0/g/b;->b:Li/m0/g/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v0, Li/m0/g/b;->g:Li/m0/g/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object v1, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v1, v3, v0, v2}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v2, v0, v0, v1}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    .line 7
    :goto_1
    iget-object v0, p0, Li/m0/g/f$d;->a:Li/m0/g/l;

    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    return-void

    .line 8
    :goto_2
    iget-object v4, p0, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v4, v3, v1, v2}, Li/m0/g/f;->d(Li/m0/g/b;Li/m0/g/b;Ljava/io/IOException;)V

    .line 9
    iget-object v1, p0, Li/m0/g/f$d;->a:Li/m0/g/l;

    invoke-static {v1}, Li/m0/b;->f(Ljava/io/Closeable;)V

    throw v0
.end method
