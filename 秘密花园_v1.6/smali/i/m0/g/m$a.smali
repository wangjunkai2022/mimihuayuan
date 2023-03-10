.class public final Li/m0/g/m$a;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lj/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lj/g;

.field public b:Z

.field public c:Z

.field public final synthetic d:Li/m0/g/m;


# direct methods
.method public constructor <init>(Li/m0/g/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Li/m0/g/m$a;->c:Z

    .line 2
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Li/m0/g/m$a;->a:Lj/g;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-boolean v2, Lh/j;->a:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Li/m0/g/m$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    monitor-exit v0

    return-void

    .line 4
    :cond_2
    :try_start_1
    iget-object v2, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v2}, Li/m0/g/m;->f()Li/m0/g/b;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    monitor-exit v0

    .line 6
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 7
    iget-object v0, v0, Li/m0/g/m;->h:Li/m0/g/m$a;

    .line 8
    iget-boolean v0, v0, Li/m0/g/m$a;->c:Z

    if-nez v0, :cond_6

    .line 9
    iget-object v0, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 10
    iget-wide v4, v0, Lj/g;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 11
    :goto_2
    iget-object v0, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 12
    iget-wide v2, v0, Lj/g;->b:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    .line 13
    invoke-virtual {p0, v1}, Li/m0/g/m$a;->d(Z)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 14
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 15
    iget-object v2, v0, Li/m0/g/m;->n:Li/m0/g/f;

    .line 16
    iget v3, v0, Li/m0/g/m;->m:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 17
    invoke-virtual/range {v2 .. v7}, Li/m0/g/f;->H(IZLj/g;J)V

    .line 18
    :cond_6
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    monitor-enter v0

    .line 19
    :try_start_2
    iput-boolean v1, p0, Li/m0/g/m$a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 22
    iget-object v0, v0, Li/m0/g/m;->n:Li/m0/g/f;

    .line 23
    iget-object v0, v0, Li/m0/g/f;->s:Li/m0/g/n;

    invoke-virtual {v0}, Li/m0/g/n;->flush()V

    .line 24
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v0}, Li/m0/g/m;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method public final d(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 3
    iget-object v1, v1, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 4
    invoke-virtual {v1}, Lj/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :goto_0
    :try_start_1
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 6
    iget-wide v1, v1, Li/m0/g/m;->c:J

    .line 7
    iget-object v3, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 8
    iget-wide v3, v3, Li/m0/g/m;->d:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 9
    iget-boolean v1, p0, Li/m0/g/m$a;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Li/m0/g/m$a;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v1}, Li/m0/g/m;->f()Li/m0/g/b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v1}, Li/m0/g/m;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 12
    iget-object v1, v1, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 13
    invoke-virtual {v1}, Li/m0/g/m$c;->n()V

    .line 14
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v1}, Li/m0/g/m;->b()V

    .line 15
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 16
    iget-wide v1, v1, Li/m0/g/m;->d:J

    .line 17
    iget-object v3, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 18
    iget-wide v3, v3, Li/m0/g/m;->c:J

    sub-long/2addr v1, v3

    .line 19
    iget-object v3, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 20
    iget-wide v3, v3, Lj/g;->b:J

    .line 21
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 22
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 23
    iget-wide v2, v1, Li/m0/g/m;->c:J

    add-long/2addr v2, v9

    .line 24
    iput-wide v2, v1, Li/m0/g/m;->c:J

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 26
    iget-wide v1, p1, Lj/g;->b:J

    cmp-long p1, v9, v1

    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {p1}, Li/m0/g/m;->f()Li/m0/g/b;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    iget-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 30
    iget-object p1, p1, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 31
    invoke-virtual {p1}, Lj/c;->h()V

    .line 32
    :try_start_3
    iget-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 33
    iget-object v5, p1, Li/m0/g/m;->n:Li/m0/g/f;

    .line 34
    iget-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 35
    iget v6, p1, Li/m0/g/m;->m:I

    .line 36
    iget-object v8, p0, Li/m0/g/m$a;->a:Lj/g;

    invoke-virtual/range {v5 .. v10}, Li/m0/g/f;->H(IZLj/g;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    iget-object p1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 38
    iget-object p1, p1, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 39
    invoke-virtual {p1}, Li/m0/g/m$c;->n()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 40
    iget-object v0, v0, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 41
    invoke-virtual {v0}, Li/m0/g/m$c;->n()V

    throw p1

    :catchall_1
    move-exception p1

    .line 42
    :try_start_4
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 43
    iget-object v1, v1, Li/m0/g/m;->j:Li/m0/g/m$c;

    .line 44
    invoke-virtual {v1}, Li/m0/g/m$c;->n()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 45
    monitor-exit v0

    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-virtual {v1}, Li/m0/g/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    :goto_1
    iget-object v0, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 6
    iget-wide v0, v0, Lj/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Li/m0/g/m$a;->d(Z)V

    .line 8
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 9
    iget-object v0, v0, Li/m0/g/m;->n:Li/m0/g/f;

    .line 10
    iget-object v0, v0, Li/m0/g/f;->s:Li/m0/g/n;

    invoke-virtual {v0}, Li/m0/g/n;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    .line 2
    iget-object v0, v0, Li/m0/g/m;->j:Li/m0/g/m$c;

    return-object v0
.end method

.method public j(Lj/g;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Li/m0/g/m$a;->d:Li/m0/g/m;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Assertion failed"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Li/m0/g/m$a;->a:Lj/g;

    invoke-virtual {v0, p1, p2, p3}, Lj/g;->j(Lj/g;J)V

    .line 3
    :goto_1
    iget-object p1, p0, Li/m0/g/m$a;->a:Lj/g;

    .line 4
    iget-wide p1, p1, Lj/g;->b:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Li/m0/g/m$a;->d(Z)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
