.class public final Li/d0;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Li/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/d0$a;
    }
.end annotation


# instance fields
.field public a:Li/m0/d/m;

.field public b:Z

.field public final c:Li/b0;

.field public final d:Li/e0;

.field public final e:Z


# direct methods
.method public constructor <init>(Li/b0;Li/e0;ZLh/o/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/d0;->c:Li/b0;

    iput-object p2, p0, Li/d0;->d:Li/e0;

    iput-boolean p3, p0, Li/d0;->e:Z

    return-void
.end method


# virtual methods
.method public S()Li/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/d0;->d:Li/e0;

    return-object v0
.end method

.method public T()Li/h0;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li/d0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3
    iput-boolean v1, p0, Li/d0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    monitor-exit p0

    .line 5
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Li/m0/d/m;->c:Li/m0/d/m$b;

    invoke-virtual {v0}, Lj/c;->h()V

    .line 7
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/m0/d/m;->b()V

    .line 8
    :try_start_1
    iget-object v0, p0, Li/d0;->c:Li/b0;

    .line 9
    iget-object v0, v0, Li/b0;->a:Li/q;

    .line 10
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v1, v0, Li/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    monitor-exit v0

    .line 13
    invoke-virtual {p0}, Li/d0;->a()Li/h0;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    iget-object v1, p0, Li/d0;->c:Li/b0;

    .line 15
    iget-object v1, v1, Li/b0;->a:Li/q;

    .line 16
    iget-object v2, v1, Li/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Li/q;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 17
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 18
    iget-object v1, p0, Li/d0;->c:Li/b0;

    .line 19
    iget-object v1, v1, Li/b0;->a:Li/q;

    .line 20
    iget-object v2, v1, Li/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Li/q;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 21
    throw v0

    :cond_0
    const-string v0, "transmitter"

    .line 22
    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "transmitter"

    .line 23
    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_5
    const-string v0, "Already Executed"

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 25
    monitor-exit p0

    throw v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/m0/d/m;->f()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "transmitter"

    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public W(Li/g;)V
    .locals 6

    const-string v0, "responseCallback"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li/d0;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 3
    iput-boolean v2, p0, Li/d0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    monitor-exit p0

    .line 5
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Li/m0/d/m;->b()V

    .line 6
    iget-object v0, p0, Li/d0;->c:Li/b0;

    .line 7
    iget-object v0, v0, Li/b0;->a:Li/q;

    .line 8
    new-instance v2, Li/d0$a;

    invoke-direct {v2, p0, p1}, Li/d0$a;-><init>(Li/d0;Li/g;)V

    .line 9
    monitor-enter v0

    .line 10
    :try_start_1
    iget-object p1, v0, Li/q;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, v2, Li/d0$a;->c:Li/d0;

    .line 12
    iget-boolean p1, p1, Li/d0;->e:Z

    if-nez p1, :cond_4

    .line 13
    invoke-virtual {v2}, Li/d0$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v3, v0, Li/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/d0$a;

    .line 15
    invoke-virtual {v4}, Li/d0$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    move-object v1, v4

    goto :goto_1

    .line 16
    :cond_1
    iget-object v3, v0, Li/q;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/d0$a;

    .line 17
    invoke-virtual {v4}, Li/d0$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 18
    iget-object p1, v1, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v2, Li/d0$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_4
    monitor-exit v0

    .line 20
    invoke-virtual {v0}, Li/q;->c()Z

    return-void

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "transmitter"

    .line 22
    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v1

    :cond_6
    :try_start_2
    const-string p1, "Already Executed"

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit p0

    throw p1

    .line 25
    :cond_7
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public final a()Li/h0;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Li/d0;->c:Li/b0;

    .line 3
    iget-object v0, v0, Li/b0;->c:Ljava/util/List;

    .line 4
    invoke-static {v1, v0}, Lc/a/a/b/g/h;->d(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 5
    new-instance v0, Li/m0/e/i;

    iget-object v2, p0, Li/d0;->c:Li/b0;

    invoke-direct {v0, v2}, Li/m0/e/i;-><init>(Li/b0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Li/m0/e/a;

    iget-object v2, p0, Li/d0;->c:Li/b0;

    .line 7
    iget-object v2, v2, Li/b0;->j:Li/p;

    .line 8
    invoke-direct {v0, v2}, Li/m0/e/a;-><init>(Li/p;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Li/m0/c/a;

    iget-object v2, p0, Li/d0;->c:Li/b0;

    .line 10
    iget-object v2, v2, Li/b0;->k:Li/d;

    .line 11
    invoke-direct {v0, v2}, Li/m0/c/a;-><init>(Li/d;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Li/m0/d/a;->a:Li/m0/d/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Li/d0;->e:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Li/d0;->c:Li/b0;

    .line 15
    iget-object v0, v0, Li/b0;->d:Ljava/util/List;

    .line 16
    invoke-static {v1, v0}, Lc/a/a/b/g/h;->d(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    :cond_0
    new-instance v0, Li/m0/e/b;

    iget-boolean v2, p0, Li/d0;->e:Z

    invoke-direct {v0, v2}, Li/m0/e/b;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v10, Li/m0/e/g;

    iget-object v2, p0, Li/d0;->a:Li/m0/d/m;

    const-string v11, "transmitter"

    const/4 v12, 0x0

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Li/d0;->d:Li/e0;

    .line 19
    iget-object v0, p0, Li/d0;->c:Li/b0;

    .line 20
    iget v7, v0, Li/b0;->y:I

    .line 21
    iget v8, v0, Li/b0;->z:I

    .line 22
    iget v9, v0, Li/b0;->A:I

    move-object v0, v10

    move-object v6, p0

    .line 23
    invoke-direct/range {v0 .. v9}, Li/m0/e/g;-><init>(Ljava/util/List;Li/m0/d/m;Li/m0/d/c;ILi/e0;Li/f;III)V

    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Li/d0;->d:Li/e0;

    invoke-virtual {v10, v1}, Li/m0/e/g;->d(Li/e0;)Li/h0;

    move-result-object v1

    .line 25
    iget-object v2, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Li/m0/d/m;->f()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 26
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v12}, Li/m0/d/m;->h(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v1

    :cond_1
    invoke-static {v11}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v12

    .line 27
    :cond_2
    :try_start_1
    invoke-static {v1}, Li/m0/b;->f(Ljava/io/Closeable;)V

    .line 28
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_3
    invoke-static {v11}, Lh/o/c/g;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    iget-object v1, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Li/m0/d/m;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    throw v0

    :cond_5
    invoke-static {v11}, Lh/o/c/g;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_7

    .line 31
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-nez v0, :cond_6

    invoke-static {v11}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v12

    :cond_6
    invoke-virtual {v0, v12}, Li/m0/d/m;->h(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_7
    throw v1

    .line 32
    :cond_8
    invoke-static {v11}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v12
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Li/m0/d/m;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Li/d0;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Li/d0;->d:Li/e0;

    .line 6
    iget-object v1, v1, Li/e0;->b:Li/x;

    .line 7
    invoke-virtual {v1}, Li/x;->k()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "transmitter"

    .line 9
    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/d0;->a:Li/m0/d/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/m0/d/m;->c()V

    return-void

    :cond_0
    const-string v0, "transmitter"

    invoke-static {v0}, Lh/o/c/g;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Li/d0;->c:Li/b0;

    iget-object v1, p0, Li/d0;->d:Li/e0;

    iget-boolean v2, p0, Li/d0;->e:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 2
    new-instance v4, Li/d0;

    invoke-direct {v4, v0, v1, v2, v3}, Li/d0;-><init>(Li/b0;Li/e0;ZLh/o/c/f;)V

    .line 3
    new-instance v1, Li/m0/d/m;

    invoke-direct {v1, v0, v4}, Li/m0/d/m;-><init>(Li/b0;Li/f;)V

    .line 4
    iput-object v1, v4, Li/d0;->a:Li/m0/d/m;

    return-object v4

    :cond_0
    const-string v0, "originalRequest"

    .line 5
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v0, "client"

    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v3
.end method
