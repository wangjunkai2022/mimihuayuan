.class public final Lm/o/a/g$d;
.super Lm/j;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "Lm/e<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field public static final v:[Lm/o/a/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lm/o/a/g$b<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:I

.field public h:Lm/o/a/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/o/a/g$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile j:Lm/s/a;

.field public volatile k:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public m:Z

.field public n:Z

.field public final o:Ljava/lang/Object;

.field public volatile p:[Lm/o/a/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lm/o/a/g$b<",
            "*>;"
        }
    .end annotation
.end field

.field public q:J

.field public r:J

.field public s:I

.field public final t:I

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lm/o/a/g$b;

    .line 1
    sput-object v0, Lm/o/a/g$d;->v:[Lm/o/a/g$b;

    return-void
.end method

.method public constructor <init>(Lm/j;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/j;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/g$d;->e:Lm/j;

    .line 3
    iput-boolean p2, p0, Lm/o/a/g$d;->f:Z

    .line 4
    iput p3, p0, Lm/o/a/g$d;->g:I

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/o/a/g$d;->o:Ljava/lang/Object;

    .line 6
    sget-object p1, Lm/o/a/g$d;->v:[Lm/o/a/g$b;

    iput-object p1, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_0

    .line 7
    iput p1, p0, Lm/o/a/g$d;->t:I

    const-wide p1, 0x7fffffffffffffffL

    .line 8
    invoke-virtual {p0, p1, p2}, Lm/j;->h(J)V

    goto :goto_0

    :cond_0
    shr-int/lit8 p1, p3, 0x1

    const/4 p2, 0x1

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lm/o/a/g$d;->t:I

    int-to-long p1, p3

    .line 10
    invoke-virtual {p0, p1, p2}, Lm/j;->h(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lm/o/a/g$d;->l:Z

    .line 2
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lm/o/a/g$d;->l:Z

    .line 3
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lm/e;

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    sget-object v0, Lm/o/a/a;->b:Lm/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget p1, p0, Lm/o/a/g$d;->u:I

    add-int/2addr p1, v1

    .line 4
    iget v0, p0, Lm/o/a/g$d;->t:I

    if-ne p1, v0, :cond_1

    .line 5
    iput v2, p0, Lm/o/a/g$d;->u:I

    int-to-long v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Lm/j;->h(J)V

    goto/16 :goto_9

    .line 7
    :cond_1
    iput p1, p0, Lm/o/a/g$d;->u:I

    goto/16 :goto_9

    .line 8
    :cond_2
    instance-of v0, p1, Lm/o/d/d;

    if-eqz v0, :cond_d

    .line 9
    check-cast p1, Lm/o/d/d;

    const/4 p1, 0x0

    .line 10
    iget-object v0, p0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 13
    iget-boolean v0, p0, Lm/o/a/g$d;->m:Z

    if-nez v0, :cond_3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v1, p0, Lm/o/a/g$d;->m:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 15
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_c

    .line 16
    iget-object v0, p0, Lm/o/a/g$d;->i:Ljava/util/Queue;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p0, p1}, Lm/o/a/g$d;->n(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lm/o/a/g$d;->l()V

    goto/16 :goto_9

    .line 20
    :cond_6
    :goto_2
    :try_start_1
    iget-object v0, p0, Lm/o/a/g$d;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 21
    :try_start_2
    iget-boolean v0, p0, Lm/o/a/g$d;->f:Z

    if-nez v0, :cond_7

    .line 22
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 23
    :try_start_3
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 24
    invoke-virtual {p0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 25
    iput-boolean v1, p0, Lm/o/a/g$d;->l:Z

    .line 26
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_9

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 27
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_3
    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-eqz p1, :cond_8

    .line 28
    iget-object p1, p0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {p1, v1}, Lm/o/a/g$c;->a(I)J

    .line 29
    :cond_8
    iget p1, p0, Lm/o/a/g$d;->u:I

    add-int/2addr p1, v1

    .line 30
    iget v0, p0, Lm/o/a/g$d;->t:I

    if-ne p1, v0, :cond_9

    .line 31
    iput v2, p0, Lm/o/a/g$d;->u:I

    int-to-long v3, p1

    .line 32
    invoke-virtual {p0, v3, v4}, Lm/j;->h(J)V

    goto :goto_4

    .line 33
    :cond_9
    iput p1, p0, Lm/o/a/g$d;->u:I

    .line 34
    :goto_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 35
    :try_start_5
    iget-boolean p1, p0, Lm/o/a/g$d;->n:Z

    if-nez p1, :cond_a

    .line 36
    iput-boolean v2, p0, Lm/o/a/g$d;->m:Z

    .line 37
    monitor-exit p0

    goto :goto_9

    .line 38
    :cond_a
    iput-boolean v2, p0, Lm/o/a/g$d;->n:Z

    .line 39
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 40
    invoke-virtual {p0}, Lm/o/a/g$d;->l()V

    goto :goto_9

    :catchall_3
    move-exception p1

    .line 41
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_4
    move-exception p1

    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_b

    .line 42
    monitor-enter p0

    .line 43
    :try_start_8
    iput-boolean v2, p0, Lm/o/a/g$d;->m:Z

    .line 44
    monitor-exit p0

    goto :goto_6

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :cond_b
    :goto_6
    throw p1

    .line 45
    :cond_c
    invoke-virtual {p0, p1}, Lm/o/a/g$d;->n(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V

    goto :goto_9

    .line 47
    :cond_d
    new-instance v0, Lm/o/a/g$b;

    iget-wide v3, p0, Lm/o/a/g$d;->q:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lm/o/a/g$d;->q:J

    invoke-direct {v0, p0, v3, v4}, Lm/o/a/g$b;-><init>(Lm/o/a/g$d;J)V

    .line 48
    iget-object v3, p0, Lm/o/a/g$d;->j:Lm/s/a;

    if-nez v3, :cond_f

    .line 49
    monitor-enter p0

    .line 50
    :try_start_9
    iget-object v3, p0, Lm/o/a/g$d;->j:Lm/s/a;

    if-nez v3, :cond_e

    .line 51
    new-instance v3, Lm/s/a;

    invoke-direct {v3}, Lm/s/a;-><init>()V

    .line 52
    iput-object v3, p0, Lm/o/a/g$d;->j:Lm/s/a;

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    .line 53
    :goto_7
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v1, :cond_f

    .line 54
    iget-object v1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1, v3}, Lm/o/d/g;->b(Lm/k;)V

    goto :goto_8

    :catchall_6
    move-exception p1

    .line 55
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p1

    .line 56
    :cond_f
    :goto_8
    invoke-virtual {v3, v0}, Lm/s/a;->b(Lm/k;)V

    .line 57
    iget-object v1, p0, Lm/o/a/g$d;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_b
    iget-object v3, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 59
    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    .line 60
    new-array v5, v5, [Lm/o/a/g$b;

    .line 61
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aput-object v0, v5, v4

    .line 63
    iput-object v5, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 64
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 65
    invoke-virtual {p1, v0}, Lm/e;->f(Lm/j;)Lm/k;

    .line 66
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V

    :goto_9
    return-void

    :catchall_7
    move-exception p1

    .line 67
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw p1
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm/o/a/g$d;->e:Lm/j;

    .line 2
    iget-object v0, v0, Lm/j;->a:Lm/o/d/g;

    .line 3
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    iget-boolean v2, p0, Lm/o/a/g$d;->f:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lm/o/a/g$d;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1}, Lm/o/d/g;->c()V

    .line 8
    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm/o/a/g$d;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lm/o/a/g$d;->n:Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-boolean v1, p0, Lm/o/a/g$d;->m:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lm/o/a/g$d;->l()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v4, v1, Lm/o/a/g$d;->e:Lm/j;

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v5, v1, Lm/o/a/g$d;->i:Ljava/util/Queue;

    .line 4
    iget-object v0, v1, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    :goto_2
    move-wide/from16 v16, v6

    const/4 v7, 0x0

    move v6, v0

    move-object v0, v15

    :goto_3
    cmp-long v18, v16, v13

    if-lez v18, :cond_5

    .line 5
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v18

    .line 6
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez v18, :cond_3

    move-object/from16 v0, v18

    goto :goto_5

    .line 7
    :cond_3
    invoke-static/range {v18 .. v18}, Lm/o/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 8
    :try_start_1
    invoke-virtual {v4, v0}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v19, v0

    .line 9
    :try_start_2
    iget-boolean v0, v1, Lm/o/a/g$d;->f:Z

    if-nez v0, :cond_4

    .line 10
    invoke-static/range {v19 .. v19}, Lj/b;->B(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 11
    :try_start_3
    iget-object v0, v1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    move-object/from16 v5, v19

    .line 12
    invoke-virtual {v4, v5}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_4
    move-object/from16 v2, v19

    .line 13
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-long v16, v16, v11

    move-object/from16 v0, v18

    goto :goto_3

    :cond_5
    :goto_5
    if-lez v7, :cond_7

    if-eqz v10, :cond_6

    move-wide/from16 v16, v8

    goto :goto_6

    .line 14
    :cond_6
    iget-object v2, v1, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v2, v7}, Lm/o/a/g$c;->a(I)J

    move-result-wide v16

    :cond_7
    :goto_6
    cmp-long v2, v16, v13

    if-eqz v2, :cond_a

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v6

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_9
    move-wide/from16 v16, v6

    const/4 v6, 0x0

    .line 15
    :cond_a
    :goto_7
    iget-boolean v0, v1, Lm/o/a/g$d;->l:Z

    .line 16
    iget-object v2, v1, Lm/o/a/g$d;->i:Ljava/util/Queue;

    .line 17
    iget-object v5, v1, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 18
    array-length v7, v5

    if-eqz v0, :cond_e

    if-eqz v2, :cond_b

    .line 19
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    if-nez v7, :cond_e

    .line 20
    iget-object v0, v1, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_d

    .line 21
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 22
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->q()V

    goto :goto_9

    .line 23
    :cond_d
    :goto_8
    invoke-virtual {v4}, Lm/j;->d()V

    :goto_9
    return-void

    :cond_e
    if-lez v7, :cond_28

    .line 24
    iget-wide v8, v1, Lm/o/a/g$d;->r:J

    .line 25
    iget v0, v1, Lm/o/a/g$d;->s:I

    if-le v7, v0, :cond_f

    .line 26
    aget-object v2, v5, v0

    iget-wide v11, v2, Lm/o/a/g$b;->f:J

    cmp-long v2, v11, v8

    if-eqz v2, :cond_14

    :cond_f
    if-gt v7, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v7, :cond_13

    .line 27
    aget-object v11, v5, v0

    iget-wide v11, v11, Lm/o/a/g$b;->f:J

    cmp-long v18, v11, v8

    if-nez v18, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_12

    const/4 v0, 0x0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 28
    :cond_13
    :goto_b
    iput v0, v1, Lm/o/a/g$d;->s:I

    .line 29
    aget-object v2, v5, v0

    iget-wide v8, v2, Lm/o/a/g$b;->f:J

    iput-wide v8, v1, Lm/o/a/g$d;->r:J

    :cond_14
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v2, v7, :cond_27

    .line 30
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->j()Z

    move-result v9

    if-eqz v9, :cond_15

    return-void

    .line 31
    :cond_15
    aget-object v9, v5, v0

    move-object v11, v15

    :goto_d
    const/4 v12, 0x0

    :goto_e
    cmp-long v18, v16, v13

    if-lez v18, :cond_1b

    .line 32
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->j()Z

    move-result v18

    if-eqz v18, :cond_16

    return-void

    .line 33
    :cond_16
    iget-object v3, v9, Lm/o/a/g$b;->h:Lm/o/d/b;

    if-nez v3, :cond_17

    goto :goto_11

    .line 34
    :cond_17
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 35
    :try_start_5
    iget-object v11, v3, Lm/o/d/b;->a:Ljava/util/Queue;

    if-nez v11, :cond_18

    .line 36
    monitor-exit v3

    move-object v11, v15

    goto :goto_f

    .line 37
    :cond_18
    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 38
    iget-object v13, v3, Lm/o/d/b;->b:Ljava/lang/Object;

    if-nez v20, :cond_19

    if-eqz v13, :cond_19

    .line 39
    invoke-interface {v11}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_19

    .line 40
    iput-object v15, v3, Lm/o/d/b;->b:Ljava/lang/Object;

    move-object/from16 v20, v13

    .line 41
    :cond_19
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v11, v20

    :goto_f
    if-nez v11, :cond_1a

    goto :goto_11

    .line 42
    :cond_1a
    :try_start_6
    invoke-static {v11}, Lm/o/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 43
    :try_start_7
    invoke-virtual {v4, v3}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v13, 0x1

    sub-long v16, v16, v13

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v13, 0x0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 44
    :try_start_8
    invoke-static {v2}, Lj/b;->B(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 45
    :try_start_9
    invoke-virtual {v4, v2}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 46
    :try_start_a
    iget-object v0, v1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 47
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_10
    const/4 v2, 0x1

    goto/16 :goto_19

    :catchall_4
    move-exception v0

    .line 48
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0

    :cond_1b
    :goto_11
    const-wide/16 v13, 0x1

    if-lez v12, :cond_1d

    if-nez v10, :cond_1c

    .line 49
    iget-object v3, v1, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v3, v12}, Lm/o/a/g$c;->a(I)J

    move-result-wide v16

    goto :goto_12

    :cond_1c
    const-wide v16, 0x7fffffffffffffffL

    :goto_12
    int-to-long v13, v12

    .line 50
    invoke-virtual {v9, v13, v14}, Lm/o/a/g$b;->j(J)V

    :cond_1d
    const-wide/16 v12, 0x0

    cmp-long v3, v16, v12

    if-eqz v3, :cond_1f

    if-nez v11, :cond_1e

    goto :goto_13

    :cond_1e
    move-wide v13, v12

    goto :goto_d

    .line 51
    :cond_1f
    :goto_13
    iget-boolean v11, v9, Lm/o/a/g$b;->g:Z

    .line 52
    iget-object v14, v9, Lm/o/a/g$b;->h:Lm/o/d/b;

    if-eqz v11, :cond_24

    if-eqz v14, :cond_22

    .line 53
    iget-object v11, v14, Lm/o/d/b;->a:Ljava/util/Queue;

    if-eqz v11, :cond_21

    .line 54
    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_20

    goto :goto_14

    :cond_20
    const/4 v11, 0x0

    goto :goto_15

    :cond_21
    :goto_14
    const/4 v11, 0x1

    :goto_15
    if-eqz v11, :cond_24

    .line 55
    :cond_22
    invoke-virtual {v1, v9}, Lm/o/a/g$d;->p(Lm/o/a/g$b;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lm/o/a/g$d;->j()Z

    move-result v8

    if-eqz v8, :cond_23

    return-void

    :cond_23
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    :cond_24
    if-nez v3, :cond_25

    goto :goto_16

    :cond_25
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_26

    const/4 v0, 0x0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    move-wide v13, v12

    goto/16 :goto_c

    .line 57
    :cond_27
    :goto_16
    iput v0, v1, Lm/o/a/g$d;->s:I

    .line 58
    aget-object v0, v5, v0

    iget-wide v2, v0, Lm/o/a/g$b;->f:J

    iput-wide v2, v1, Lm/o/a/g$d;->r:J

    goto :goto_17

    :cond_28
    const/4 v8, 0x0

    :goto_17
    if-lez v6, :cond_29

    int-to-long v2, v6

    .line 59
    invoke-virtual {v1, v2, v3}, Lm/j;->h(J)V

    :cond_29
    if-eqz v8, :cond_2a

    goto/16 :goto_0

    .line 60
    :cond_2a
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 61
    :try_start_d
    iget-boolean v0, v1, Lm/o/a/g$d;->n:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-nez v0, :cond_2b

    const/4 v2, 0x0

    .line 62
    :try_start_e
    iput-boolean v2, v1, Lm/o/a/g$d;->m:Z

    .line 63
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    const/4 v2, 0x1

    goto :goto_18

    :cond_2b
    const/4 v2, 0x0

    .line 64
    :try_start_f
    iput-boolean v2, v1, Lm/o/a/g$d;->n:Z

    .line 65
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    :goto_18
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_19

    :catchall_8
    move-exception v0

    goto :goto_18

    :catchall_9
    move-exception v0

    const/4 v2, 0x0

    :goto_19
    if-nez v2, :cond_2c

    .line 66
    monitor-enter p0

    const/4 v2, 0x0

    .line 67
    :try_start_12
    iput-boolean v2, v1, Lm/o/a/g$d;->m:Z

    .line 68
    monitor-exit p0

    goto :goto_1a

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    throw v0

    :cond_2c
    :goto_1a
    throw v0
.end method

.method public m()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 5
    iput-object v0, p0, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/o/a/g$d;->i:Ljava/util/Queue;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Lm/o/a/g$d;->g:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 3
    new-instance v0, Lm/o/d/i/d;

    sget v2, Lm/o/d/b;->c:I

    invoke-direct {v0, v2}, Lm/o/d/i/d;-><init>(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Lm/o/d/j/o;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Lm/o/d/j/j;

    invoke-direct {v2, v0}, Lm/o/d/j/j;-><init>(I)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Lm/o/d/i/b;

    invoke-direct {v2, v0}, Lm/o/d/i/b;-><init>(I)V

    goto :goto_1

    .line 7
    :cond_3
    new-instance v2, Lm/o/d/i/c;

    invoke-direct {v2, v0}, Lm/o/d/i/c;-><init>(I)V

    :goto_1
    move-object v0, v2

    .line 8
    :goto_2
    iput-object v0, p0, Lm/o/a/g$d;->i:Ljava/util/Queue;

    :cond_4
    if-nez p1, :cond_5

    .line 9
    sget-object v2, Lm/o/a/b;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, p1

    .line 10
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 12
    new-instance v0, Lm/m/b;

    invoke-direct {v0}, Lm/m/b;-><init>()V

    invoke-static {v0, p1}, Lm/m/f;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 14
    iput-boolean v1, p0, Lm/o/a/g$d;->l:Z

    .line 15
    invoke-virtual {p0}, Lm/o/a/g$d;->k()V

    :cond_6
    return-void
.end method

.method public o(Lm/o/a/g$b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o/a/g$b<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lm/o/a/g$b;->h:Lm/o/d/b;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lm/o/d/j/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lm/o/d/b;

    const/4 v1, 0x0

    sget v2, Lm/o/d/b;->c:I

    invoke-direct {v0, v1, v2}, Lm/o/d/b;-><init>(ZI)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lm/o/d/b;

    invoke-direct {v0}, Lm/o/d/b;-><init>()V

    .line 5
    :goto_0
    iget-object v1, p1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1, v0}, Lm/o/d/g;->b(Lm/k;)V

    .line 6
    iput-object v0, p1, Lm/o/a/g$b;->h:Lm/o/d/b;

    :cond_1
    if-nez p2, :cond_2

    .line 7
    :try_start_0
    sget-object p2, Lm/o/a/b;->a:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Lm/o/d/b;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lm/m/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 9
    :goto_2
    iget-object v0, p1, Lm/j;->a:Lm/o/d/g;

    .line 10
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 12
    invoke-virtual {p1, p2}, Lm/o/a/g$b;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 13
    :goto_3
    iget-object v0, p1, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 14
    invoke-virtual {p1, p2}, Lm/o/a/g$b;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public p(Lm/o/a/g$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o/a/g$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lm/o/a/g$b;->h:Lm/o/d/b;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    monitor-exit v0

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/a/g$d;->j:Lm/s/a;

    invoke-virtual {v0, p1}, Lm/s/a;->e(Lm/k;)V

    .line 5
    iget-object v0, p0, Lm/o/a/g$d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 8
    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_3

    .line 9
    monitor-exit v0

    return-void

    :cond_3
    const/4 p1, 0x1

    if-ne v2, p1, :cond_4

    .line 10
    sget-object p1, Lm/o/a/g$d;->v:[Lm/o/a/g$b;

    iput-object p1, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 11
    monitor-exit v0

    return-void

    :cond_4
    add-int/lit8 v5, v2, -0x1

    .line 12
    new-array v5, v5, [Lm/o/a/g$b;

    .line 13
    invoke-static {v1, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    .line 14
    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v5, p0, Lm/o/a/g$d;->p:[Lm/o/a/g$b;

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lm/o/a/g$d;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lm/o/a/g$d;->e:Lm/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lm/j;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lm/o/a/g$d;->e:Lm/j;

    new-instance v2, Lm/m/a;

    invoke-direct {v2, v0}, Lm/m/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lm/j;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
