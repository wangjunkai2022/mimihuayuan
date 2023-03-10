.class public final Lm/o/a/i$a;
.super Lm/j;
.source "OperatorObserveOn.java"

# interfaces
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;",
        "Lm/n/a;"
    }
.end annotation


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lm/g$a;

.field public final g:Z

.field public final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public volatile j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public m:Ljava/lang/Throwable;

.field public n:J


# direct methods
.method public constructor <init>(Lm/g;Lm/j;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/g;",
            "Lm/j<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/j;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lm/o/a/i$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lm/o/a/i$a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p2, p0, Lm/o/a/i$a;->e:Lm/j;

    .line 5
    invoke-virtual {p1}, Lm/g;->a()Lm/g$a;

    move-result-object p1

    iput-object p1, p0, Lm/o/a/i$a;->f:Lm/g$a;

    .line 6
    iput-boolean p3, p0, Lm/o/a/i$a;->g:Z

    if-lez p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget p4, Lm/o/d/b;->c:I

    :goto_0
    shr-int/lit8 p1, p4, 0x2

    sub-int p1, p4, p1

    .line 8
    iput p1, p0, Lm/o/a/i$a;->i:I

    .line 9
    invoke-static {}, Lm/o/d/j/o;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lm/o/d/j/j;

    invoke-direct {p1, p4}, Lm/o/d/j/j;-><init>(I)V

    iput-object p1, p0, Lm/o/a/i$a;->h:Ljava/util/Queue;

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lm/o/d/i/b;

    invoke-direct {p1, p4}, Lm/o/d/i/b;-><init>(I)V

    iput-object p1, p0, Lm/o/a/i$a;->h:Ljava/util/Queue;

    :goto_1
    int-to-long p1, p4

    .line 12
    invoke-virtual {p0, p1, p2}, Lm/j;->h(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lm/o/a/i$a;->n:J

    .line 2
    iget-object v3, v0, Lm/o/a/i$a;->h:Ljava/util/Queue;

    .line 3
    iget-object v4, v0, Lm/o/a/i$a;->e:Lm/j;

    const-wide/16 v5, 0x1

    move-wide v7, v5

    .line 4
    :cond_0
    iget-object v9, v0, Lm/o/a/i$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    :cond_1
    :goto_0
    cmp-long v11, v9, v1

    if-eqz v11, :cond_8

    .line 5
    iget-boolean v12, v0, Lm/o/a/i$a;->j:Z

    .line 6
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0, v12, v14, v4, v3}, Lm/o/a/i$a;->j(ZZLm/j;Ljava/util/Queue;)Z

    move-result v12

    if-eqz v12, :cond_3

    return-void

    :cond_3
    if-eqz v14, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {v13}, Lm/o/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Lm/j;->f(Ljava/lang/Object;)V

    add-long/2addr v1, v5

    .line 9
    iget v11, v0, Lm/o/a/i$a;->i:I

    int-to-long v11, v11

    cmp-long v13, v1, v11

    if-nez v13, :cond_1

    .line 10
    iget-object v9, v0, Lm/o/a/i$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v10, v12

    if-nez v14, :cond_6

    :goto_2
    move-wide v9, v12

    goto :goto_3

    :cond_6
    sub-long v12, v10, v1

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_7

    .line 12
    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    .line 13
    :goto_3
    invoke-virtual {v0, v1, v2}, Lm/j;->h(J)V

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 14
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "More produced than requested: "

    invoke-static {v2, v12, v13}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    if-nez v11, :cond_9

    .line 15
    iget-boolean v9, v0, Lm/o/a/i$a;->j:Z

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v10

    invoke-virtual {v0, v9, v10, v4, v3}, Lm/o/a/i$a;->j(ZZLm/j;Ljava/util/Queue;)Z

    move-result v9

    if-eqz v9, :cond_9

    return-void

    .line 16
    :cond_9
    iput-wide v1, v0, Lm/o/a/i$a;->n:J

    .line 17
    iget-object v9, v0, Lm/o/a/i$a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v7

    invoke-virtual {v9, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lm/o/a/i$a;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lm/o/a/i$a;->j:Z

    .line 5
    invoke-virtual {p0}, Lm/o/a/i$a;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lm/o/a/i$a;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lm/o/a/i$a;->m:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lm/o/a/i$a;->j:Z

    .line 6
    invoke-virtual {p0}, Lm/o/a/i$a;->k()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-nez v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lm/o/a/i$a;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/a/i$a;->h:Ljava/util/Queue;

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lm/o/a/b;->a:Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Lm/m/b;

    invoke-direct {p1}, Lm/m/b;-><init>()V

    invoke-virtual {p0, p1}, Lm/o/a/i$a;->e(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lm/o/a/i$a;->k()V

    :cond_3
    :goto_0
    return-void
.end method

.method public j(ZZLm/j;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lm/j<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lm/j;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 4
    iget-boolean p1, p0, Lm/o/a/i$a;->g:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iget-object p1, p0, Lm/o/a/i$a;->m:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p3, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p3}, Lm/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object p1, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p1}, Lm/k;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p2}, Lm/k;->c()V

    throw p1

    .line 9
    :cond_2
    iget-object p1, p0, Lm/o/a/i$a;->m:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 11
    :try_start_1
    invoke-virtual {p3, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    iget-object p1, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p1}, Lm/k;->c()V

    return v1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p2}, Lm/k;->c()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    :try_start_2
    invoke-virtual {p3}, Lm/j;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    iget-object p1, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p1}, Lm/k;->c()V

    return v1

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-interface {p2}, Lm/k;->c()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm/o/a/i$a;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lm/o/a/i$a;->f:Lm/g$a;

    invoke-virtual {v0, p0}, Lm/g$a;->b(Lm/n/a;)Lm/k;

    :cond_0
    return-void
.end method
