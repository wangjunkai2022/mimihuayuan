.class public final Li/m0/d/m;
.super Ljava/lang/Object;
.source "Transmitter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/d/m$a;
    }
.end annotation


# instance fields
.field public final a:Li/m0/d/i;

.field public final b:Li/t;

.field public final c:Li/m0/d/m$b;

.field public d:Ljava/lang/Object;

.field public e:Li/e0;

.field public f:Li/m0/d/d;

.field public g:Li/m0/d/h;

.field public h:Li/m0/d/c;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Li/b0;

.field public final o:Li/f;


# direct methods
.method public constructor <init>(Li/b0;Li/f;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/d/m;->n:Li/b0;

    iput-object p2, p0, Li/m0/d/m;->o:Li/f;

    .line 2
    iget-object v0, p1, Li/b0;->b:Li/l;

    .line 3
    iget-object v0, v0, Li/l;->a:Li/m0/d/i;

    .line 4
    iput-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    .line 5
    iget-object p1, p1, Li/b0;->e:Li/t$b;

    .line 6
    invoke-interface {p1, p2}, Li/t$b;->a(Li/f;)Li/t;

    move-result-object p1

    iput-object p1, p0, Li/m0/d/m;->b:Li/t;

    .line 7
    new-instance p1, Li/m0/d/m$b;

    invoke-direct {p1, p0}, Li/m0/d/m$b;-><init>(Li/m0/d/m;)V

    .line 8
    iget-object p2, p0, Li/m0/d/m;->n:Li/b0;

    .line 9
    iget p2, p2, Li/b0;->x:I

    int-to-long v0, p2

    .line 10
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    .line 11
    iput-object p1, p0, Li/m0/d/m;->c:Li/m0/d/m$b;

    return-void

    :cond_0
    const-string p1, "client"

    .line 12
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(Li/m0/d/h;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Li/m0/d/m;->g:Li/m0/d/h;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    iput-object p1, p0, Li/m0/d/m;->g:Li/m0/d/h;

    .line 4
    iget-object p1, p1, Li/m0/d/h;->n:Ljava/util/List;

    .line 5
    new-instance v0, Li/m0/d/m$a;

    iget-object v1, p0, Li/m0/d/m;->d:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Li/m0/d/m$a;-><init>(Li/m0/d/m;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "connection"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 2
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    const-string v1, "response.body().close()"

    .line 3
    invoke-virtual {v0, v1}, Li/m0/i/f;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Li/m0/d/m;->d:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Li/m0/d/m;->b:Li/t;

    iget-object v1, p0, Li/m0/d/m;->o:Li/f;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v0, "call"

    .line 5
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    throw v2
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Li/m0/d/m;->k:Z

    .line 3
    iget-object v1, p0, Li/m0/d/m;->h:Li/m0/d/c;

    .line 4
    iget-object v2, p0, Li/m0/d/m;->f:Li/m0/d/d;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v2, Li/m0/d/d;->g:Li/m0/d/i;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    sget-boolean v4, Lh/j;->a:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Assertion failed"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v2, v2, Li/m0/d/d;->c:Li/m0/d/h;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Li/m0/d/m;->g:Li/m0/d/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    monitor-exit v0

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, v1, Li/m0/d/c;->f:Li/m0/e/d;

    invoke-interface {v0}, Li/m0/e/d;->cancel()V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    iget-object v0, v2, Li/m0/d/h;->b:Ljava/net/Socket;

    if-eqz v0, :cond_4

    invoke-static {v0}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/m0/d/m;->m:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Li/m0/d/m;->h:Li/m0/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "Check failed."

    .line 5
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public final e(Li/m0/d/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Li/m0/d/c;",
            "ZZTE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/m0/d/m;->h:Li/m0/d/c;

    invoke-static {p1, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 3
    monitor-exit v0

    return-object p4

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 4
    :try_start_1
    iget-boolean p2, p0, Li/m0/d/m;->i:Z

    xor-int/2addr p2, v1

    .line 5
    iput-boolean v1, p0, Li/m0/d/m;->i:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 6
    iget-boolean p3, p0, Li/m0/d/m;->j:Z

    if-nez p3, :cond_2

    const/4 p2, 0x1

    .line 7
    :cond_2
    iput-boolean v1, p0, Li/m0/d/m;->j:Z

    .line 8
    :cond_3
    iget-boolean p3, p0, Li/m0/d/m;->i:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p0, Li/m0/d/m;->j:Z

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 9
    iget-object p2, p0, Li/m0/d/m;->h:Li/m0/d/c;

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Li/m0/d/c;->b()Li/m0/d/h;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 10
    iget v2, p2, Li/m0/d/h;->k:I

    add-int/2addr v2, v1

    .line 11
    iput v2, p2, Li/m0/d/h;->k:I

    .line 12
    iput-object p3, p0, Li/m0/d/m;->h:Li/m0/d/c;

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p3

    :cond_5
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p3

    :cond_6
    const/4 v1, 0x0

    .line 14
    :goto_1
    monitor-exit v0

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p0, p4, p1}, Li/m0/d/m;->g(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    :cond_7
    return-object p4

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    throw p1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/m0/d/m;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public final g(Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;Z)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object v3, p0, Li/m0/d/m;->h:Li/m0/d/c;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_15

    .line 3
    iget-object v3, p0, Li/m0/d/m;->g:Li/m0/d/h;

    .line 4
    iget-object v4, p0, Li/m0/d/m;->g:Li/m0/d/h;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, p0, Li/m0/d/m;->h:Li/m0/d/c;

    if-nez v4, :cond_3

    if-nez p2, :cond_2

    iget-boolean p2, p0, Li/m0/d/m;->m:Z

    if-eqz p2, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, Li/m0/d/m;->i()Ljava/net/Socket;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v5

    .line 6
    :goto_2
    iget-object v4, p0, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v4, :cond_4

    move-object v3, v5

    .line 7
    :cond_4
    iget-boolean v4, p0, Li/m0/d/m;->m:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Li/m0/d/m;->h:Li/m0/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 8
    :goto_3
    monitor-exit v0

    if-eqz p2, :cond_6

    .line 9
    invoke-static {p2}, Li/m0/b;->g(Ljava/net/Socket;)V

    :cond_6
    if-eqz v3, :cond_9

    .line 10
    iget-object p2, p0, Li/m0/d/m;->b:Li/t;

    iget-object v0, p0, Li/m0/d/m;->o:Li/f;

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, "call"

    .line 11
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 12
    :cond_8
    throw v5

    :cond_9
    :goto_4
    if-eqz v4, :cond_14

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 13
    :goto_5
    iget-boolean p2, p0, Li/m0/d/m;->l:Z

    if-eqz p2, :cond_b

    goto :goto_6

    .line 14
    :cond_b
    iget-object p2, p0, Li/m0/d/m;->c:Li/m0/d/m$b;

    invoke-virtual {p2}, Lj/c;->i()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_6

    .line 15
    :cond_c
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p2, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 16
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_d
    move-object p1, p2

    :goto_6
    if-eqz v1, :cond_11

    .line 17
    iget-object p2, p0, Li/m0/d/m;->b:Li/t;

    iget-object v0, p0, Li/m0/d/m;->o:Li/f;

    if-eqz p1, :cond_10

    if-eqz p2, :cond_f

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    const-string p1, "call"

    .line 18
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 19
    :cond_f
    throw v5

    .line 20
    :cond_10
    invoke-static {}, Lh/o/c/g;->e()V

    throw v5

    .line 21
    :cond_11
    iget-object p2, p0, Li/m0/d/m;->b:Li/t;

    iget-object v0, p0, Li/m0/d/m;->o:Li/f;

    if-eqz p2, :cond_13

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    const-string p1, "call"

    .line 22
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_13
    throw v5

    :cond_14
    :goto_7
    return-object p1

    :cond_15
    :try_start_1
    const-string p1, "cannot release connection while it is in use"

    .line 24
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_8
    monitor-exit v0

    throw p1
.end method

.method public final h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Li/m0/d/m;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Li/m0/d/m;->g(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1
.end method

.method public final i()Ljava/net/Socket;
    .locals 8

    .line 1
    iget-object v0, p0, Li/m0/d/m;->a:Li/m0/d/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lh/j;->a:Z

    const-string v2, "Assertion failed"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/m0/d/m;->g:Li/m0/d/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, v0, Li/m0/d/h;->n:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Ljava/lang/ref/Reference;

    .line 6
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li/m0/d/m;

    invoke-static {v5, p0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    const/4 v0, 0x1

    if-eq v4, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_c

    .line 7
    iget-object v5, p0, Li/m0/d/m;->g:Li/m0/d/h;

    if-eqz v5, :cond_b

    .line 8
    iget-object v6, v5, Li/m0/d/h;->n:Ljava/util/List;

    .line 9
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    iput-object v1, p0, Li/m0/d/m;->g:Li/m0/d/h;

    .line 11
    iget-object v4, v5, Li/m0/d/h;->n:Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 14
    iput-wide v6, v5, Li/m0/d/h;->o:J

    .line 15
    iget-object v4, p0, Li/m0/d/m;->a:Li/m0/d/i;

    if-eqz v4, :cond_9

    .line 16
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    sget-boolean v7, Lh/j;->a:Z

    if-eqz v7, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 17
    :cond_6
    :goto_4
    iget-boolean v2, v5, Li/m0/d/h;->i:Z

    if-nez v2, :cond_8

    .line 18
    iget v2, v4, Li/m0/d/i;->f:I

    if-nez v2, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_6

    .line 20
    :cond_8
    :goto_5
    iget-object v2, v4, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v5}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_a

    .line 21
    invoke-virtual {v5}, Li/m0/d/h;->j()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 22
    :cond_9
    throw v1

    :cond_a
    return-object v1

    .line 23
    :cond_b
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_d
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method
