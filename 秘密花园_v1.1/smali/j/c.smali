.class public Lj/c;
.super Lj/b0;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/c$b;,
        Lj/c$a;
    }
.end annotation


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Lj/c;

.field public static final k:Lj/c$a;


# instance fields
.field public e:Z

.field public f:Lj/c;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj/c$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Lj/c;->k:Lj/c$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lj/c;->h:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lj/c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lj/c;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lj/c;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 2
    iget-wide v2, p0, Lj/b0;->c:J

    .line 3
    iget-boolean v0, p0, Lj/b0;->a:Z

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean v1, p0, Lj/c;->e:Z

    .line 5
    const-class v1, Lj/c;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v4, Lj/c;->j:Lj/c;

    if-nez v4, :cond_1

    .line 7
    new-instance v4, Lj/c;

    invoke-direct {v4}, Lj/c;-><init>()V

    .line 8
    sput-object v4, Lj/c;->j:Lj/c;

    .line 9
    new-instance v4, Lj/c$b;

    invoke-direct {v4}, Lj/c$b;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lj/b0;->c()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 12
    iput-wide v2, p0, Lj/c;->g:J

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    add-long/2addr v2, v4

    .line 13
    iput-wide v2, p0, Lj/c;->g:J

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_a

    .line 14
    invoke-virtual {p0}, Lj/b0;->c()J

    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lj/c;->g:J

    .line 16
    :goto_0
    iget-wide v2, p0, Lj/c;->g:J

    sub-long/2addr v2, v4

    .line 17
    sget-object v0, Lj/c;->j:Lj/c;

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    .line 18
    :goto_1
    iget-object v7, v0, Lj/c;->f:Lj/c;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lj/c;->f:Lj/c;

    if-eqz v7, :cond_6

    .line 19
    iget-wide v7, v7, Lj/c;->g:J

    sub-long/2addr v7, v4

    cmp-long v9, v2, v7

    if-gez v9, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v0, v0, Lj/c;->f:Lj/c;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 22
    :cond_6
    :try_start_1
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 23
    :cond_7
    :goto_2
    :try_start_2
    iget-object v2, v0, Lj/c;->f:Lj/c;

    .line 24
    iput-object v2, p0, Lj/c;->f:Lj/c;

    .line 25
    iput-object p0, v0, Lj/c;->f:Lj/c;

    .line 26
    sget-object v2, Lj/c;->j:Lj/c;

    if-ne v0, v2, :cond_8

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_8
    monitor-exit v1

    return-void

    .line 29
    :cond_9
    :try_start_3
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 30
    :cond_a
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v1

    throw v0

    :cond_b
    const-string v0, "Unbalanced enter/exit"

    .line 32
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj/c;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lj/c;->e:Z

    const/4 v0, 0x0

    .line 3
    const-class v2, Lj/c;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v3, Lj/c;->j:Lj/c;

    :goto_0
    if-eqz v3, :cond_2

    .line 5
    iget-object v4, v3, Lj/c;->f:Lj/c;

    if-ne v4, p0, :cond_1

    .line 6
    iget-object v4, p0, Lj/c;->f:Lj/c;

    .line 7
    iput-object v4, v3, Lj/c;->f:Lj/c;

    .line 8
    iput-object v0, p0, Lj/c;->f:Lj/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v2

    goto :goto_1

    .line 10
    :cond_1
    :try_start_1
    iget-object v3, v3, Lj/c;->f:Lj/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 11
    monitor-exit v2

    :goto_1
    return v1

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v2

    throw v0
.end method

.method public final j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj/c;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final k(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lj/c;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method
