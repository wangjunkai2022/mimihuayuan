.class public final Li/m0/d/i$a;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/d/i;-><init>(IJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/m0/d/i;


# direct methods
.method public constructor <init>(Li/m0/d/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/d/i$a;->a:Li/m0/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Li/m0/d/i$a;->a:Li/m0/d/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v3, v0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Li/m0/d/h;

    const-string v12, "connection"

    .line 4
    invoke-static {v11, v12}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v1, v2}, Li/m0/d/i;->b(Li/m0/d/h;J)I

    move-result v12

    if-lez v12, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 5
    iget-wide v12, v11, Li/m0/d/h;->o:J

    sub-long v12, v1, v12

    cmp-long v14, v12, v4

    if-lez v14, :cond_1

    move-object v9, v11

    move-wide v4, v12

    goto :goto_1

    .line 6
    :cond_3
    iget-wide v1, v0, Li/m0/d/i;->a:J

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    cmp-long v3, v4, v1

    if-gez v3, :cond_7

    iget v1, v0, Li/m0/d/i;->f:I

    if-le v8, v1, :cond_4

    goto :goto_2

    :cond_4
    if-lez v8, :cond_5

    .line 7
    iget-wide v1, v0, Li/m0/d/i;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-long/2addr v1, v4

    monitor-exit v0

    goto :goto_3

    :cond_5
    if-lez v10, :cond_6

    .line 8
    :try_start_1
    iget-wide v1, v0, Li/m0/d/i;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    goto :goto_3

    .line 9
    :cond_6
    :try_start_2
    iput-boolean v6, v0, Li/m0/d/i;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    monitor-exit v0

    move-wide v1, v11

    goto :goto_3

    .line 11
    :cond_7
    :goto_2
    :try_start_3
    iget-object v1, v0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 12
    monitor-exit v0

    if-eqz v9, :cond_f

    .line 13
    invoke-virtual {v9}, Li/m0/d/h;->j()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Li/m0/b;->g(Ljava/net/Socket;)V

    move-wide v1, v13

    :goto_3
    cmp-long v0, v1, v11

    if-nez v0, :cond_8

    return-void

    .line 14
    :cond_8
    :try_start_4
    iget-object v0, p0, Li/m0/d/i$a;->a:Li/m0/d/i;

    const-string v3, "$this$lockAndWaitNanos"

    if-eqz v0, :cond_b

    const-wide/32 v3, 0xf4240

    .line 15
    div-long v5, v1, v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    .line 16
    :try_start_5
    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    long-to-int v2, v1

    cmp-long v1, v5, v13

    if-gtz v1, :cond_9

    if-lez v2, :cond_a

    .line 17
    :cond_9
    :try_start_6
    invoke-virtual {v0, v5, v6, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :cond_a
    :try_start_7
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 19
    :cond_b
    invoke-static {v3}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    throw v7

    .line 20
    :catch_0
    iget-object v0, p0, Li/m0/d/i$a;->a:Li/m0/d/i;

    if-eqz v0, :cond_e

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    monitor-enter v0

    .line 23
    :try_start_8
    iget-object v2, v0, Li/m0/d/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "connections.iterator()"

    invoke-static {v2, v3}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/m0/d/h;

    .line 26
    iget-object v4, v3, Li/m0/d/h;->n:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 28
    iput-boolean v4, v3, Li/m0/d/h;->i:Z

    const-string v4, "connection"

    .line 29
    invoke-static {v3, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 31
    :cond_d
    monitor-exit v0

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/m0/d/h;

    .line 33
    invoke-virtual {v1}, Li/m0/d/h;->j()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Li/m0/b;->g(Ljava/net/Socket;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1

    .line 35
    :cond_e
    throw v7

    .line 36
    :cond_f
    invoke-static {}, Lh/o/c/g;->e()V

    throw v7

    :catchall_2
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1
.end method
