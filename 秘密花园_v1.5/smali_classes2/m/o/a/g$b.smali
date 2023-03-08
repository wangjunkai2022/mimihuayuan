.class public final Lm/o/a/g$b;
.super Lm/j;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:I


# instance fields
.field public final e:Lm/o/a/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/o/a/g$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:J

.field public volatile g:Z

.field public volatile h:Lm/o/d/b;

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lm/o/d/b;->c:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lm/o/a/g$b;->j:I

    return-void
.end method

.method public constructor <init>(Lm/o/a/g$d;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/o/a/g$d<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/j;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/g$b;->e:Lm/o/a/g$d;

    .line 3
    iput-wide p2, p0, Lm/o/a/g$b;->f:J

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lm/o/a/g$b;->g:Z

    .line 2
    iget-object v0, p0, Lm/o/a/g$b;->e:Lm/o/a/g$d;

    invoke-virtual {v0}, Lm/o/a/g$d;->k()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/a/g$b;->e:Lm/o/a/g$d;

    invoke-virtual {v0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lm/o/a/g$b;->g:Z

    .line 3
    iget-object p1, p0, Lm/o/a/g$b;->e:Lm/o/a/g$d;

    invoke-virtual {p1}, Lm/o/a/g$d;->k()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/o/a/g$b;->e:Lm/o/a/g$d;

    .line 2
    iget-object v1, v0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 5
    iget-boolean v7, v0, Lm/o/a/g$d;->m:Z

    if-nez v7, :cond_0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_0

    .line 6
    iput-boolean v5, v0, Lm/o/a/g$d;->m:Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_a

    .line 8
    iget-object v3, p0, Lm/o/a/g$b;->h:Lm/o/d/b;

    if-eqz v3, :cond_5

    .line 9
    iget-object v3, v3, Lm/o/d/b;->a:Ljava/util/Queue;

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {v0, p0, p1}, Lm/o/a/g$d;->o(Lm/o/a/g$b;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lm/o/a/g$d;->l()V

    goto :goto_8

    .line 13
    :cond_5
    :goto_4
    :try_start_1
    iget-object v3, v0, Lm/o/a/g$d;->e:Lm/j;

    invoke-virtual {v3, p1}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    iget-boolean v3, v0, Lm/o/a/g$d;->f:Z

    if-nez v3, :cond_6

    .line 15
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 16
    :try_start_3
    iget-object v1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1}, Lm/o/d/g;->c()V

    .line 17
    invoke-virtual {p0, p1}, Lm/o/a/g$b;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_6

    .line 18
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lm/o/a/g$d;->m()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_5
    const-wide v3, 0x7fffffffffffffffL

    cmp-long p1, v1, v3

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, v0, Lm/o/a/g$d;->h:Lm/o/a/g$c;

    invoke-virtual {p1, v5}, Lm/o/a/g$c;->a(I)J

    :cond_7
    const-wide/16 v1, 0x1

    .line 20
    invoke-virtual {p0, v1, v2}, Lm/o/a/g$b;->j(J)V

    .line 21
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 22
    :try_start_5
    iget-boolean p1, v0, Lm/o/a/g$d;->n:Z

    if-nez p1, :cond_8

    .line 23
    iput-boolean v6, v0, Lm/o/a/g$d;->m:Z

    .line 24
    monitor-exit v0

    goto :goto_8

    .line 25
    :cond_8
    iput-boolean v6, v0, Lm/o/a/g$d;->n:Z

    .line 26
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 27
    invoke-virtual {v0}, Lm/o/a/g$d;->l()V

    goto :goto_8

    :catchall_3
    move-exception p1

    .line 28
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_4
    move-exception p1

    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_9

    .line 29
    monitor-enter v0

    .line 30
    :try_start_8
    iput-boolean v6, v0, Lm/o/a/g$d;->m:Z

    .line 31
    monitor-exit v0

    goto :goto_7

    :catchall_5
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :cond_9
    :goto_7
    throw p1

    .line 32
    :cond_a
    invoke-virtual {v0, p0, p1}, Lm/o/a/g$d;->o(Lm/o/a/g$b;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0}, Lm/o/a/g$d;->k()V

    :goto_8
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    sget v0, Lm/o/d/b;->c:I

    iput v0, p0, Lm/o/a/g$b;->i:I

    int-to-long v0, v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lm/j;->h(J)V

    return-void
.end method

.method public j(J)V
    .locals 1

    .line 1
    iget v0, p0, Lm/o/a/g$b;->i:I

    long-to-int p2, p1

    sub-int/2addr v0, p2

    .line 2
    sget p1, Lm/o/a/g$b;->j:I

    if-le v0, p1, :cond_0

    .line 3
    iput v0, p0, Lm/o/a/g$b;->i:I

    return-void

    .line 4
    :cond_0
    sget p1, Lm/o/d/b;->c:I

    iput p1, p0, Lm/o/a/g$b;->i:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    int-to-long p1, p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lm/j;->h(J)V

    :cond_1
    return-void
.end method
