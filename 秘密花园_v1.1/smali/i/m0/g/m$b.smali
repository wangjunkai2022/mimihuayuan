.class public final Li/m0/g/m$b;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lj/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lj/g;

.field public final b:Lj/g;

.field public c:Z

.field public final d:J

.field public e:Z

.field public final synthetic f:Li/m0/g/m;


# direct methods
.method public constructor <init>(Li/m0/g/m;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Li/m0/g/m$b;->d:J

    iput-boolean p4, p0, Li/m0/g/m$b;->e:Z

    .line 2
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Li/m0/g/m$b;->a:Lj/g;

    .line 3
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Li/m0/g/m$b;->b:Lj/g;

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 1
    :goto_1
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 3
    iget-object v4, v4, Li/m0/g/m;->i:Li/m0/g/m$c;

    .line 4
    invoke-virtual {v4}, Lj/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-virtual {v4}, Li/m0/g/m;->f()Li/m0/g/b;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 7
    iget-object v4, v4, Li/m0/g/m;->l:Ljava/io/IOException;

    if-eqz v4, :cond_1

    :goto_2
    move-object v1, v4

    goto :goto_3

    .line 8
    :cond_1
    new-instance v4, Li/m0/g/s;

    iget-object v5, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-virtual {v5}, Li/m0/g/m;->f()Li/m0/g/b;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {v4, v5}, Li/m0/g/s;-><init>(Li/m0/g/b;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9
    :cond_3
    :goto_3
    :try_start_2
    iget-boolean v4, p0, Li/m0/g/m$b;->c:Z

    if-nez v4, :cond_a

    .line 10
    iget-object v4, p0, Li/m0/g/m$b;->b:Lj/g;

    .line 11
    iget-wide v4, v4, Lj/g;->b:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v2

    if-lez v8, :cond_4

    .line 12
    iget-object v2, p0, Li/m0/g/m$b;->b:Lj/g;

    iget-object v3, p0, Li/m0/g/m$b;->b:Lj/g;

    .line 13
    iget-wide v3, v3, Lj/g;->b:J

    .line 14
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lj/g;->c(Lj/g;J)J

    move-result-wide v2

    .line 15
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 16
    iget-wide v8, v4, Li/m0/g/m;->a:J

    add-long/2addr v8, v2

    .line 17
    iput-wide v8, v4, Li/m0/g/m;->a:J

    .line 18
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 19
    iget-wide v4, v4, Li/m0/g/m;->a:J

    .line 20
    iget-object v8, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 21
    iget-wide v8, v8, Li/m0/g/m;->b:J

    sub-long/2addr v4, v8

    if-nez v1, :cond_6

    .line 22
    iget-object v8, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 23
    iget-object v8, v8, Li/m0/g/m;->n:Li/m0/g/f;

    .line 24
    iget-object v8, v8, Li/m0/g/f;->l:Li/m0/g/r;

    .line 25
    invoke-virtual {v8}, Li/m0/g/r;->a()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-ltz v10, :cond_6

    .line 26
    iget-object v8, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 27
    iget-object v8, v8, Li/m0/g/m;->n:Li/m0/g/f;

    .line 28
    iget-object v9, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 29
    iget v9, v9, Li/m0/g/m;->m:I

    .line 30
    invoke-virtual {v8, v9, v4, v5}, Li/m0/g/f;->K(IJ)V

    .line 31
    iget-object v4, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    iget-object v5, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 32
    iget-wide v8, v5, Li/m0/g/m;->a:J

    .line 33
    iput-wide v8, v4, Li/m0/g/m;->b:J

    goto :goto_4

    .line 34
    :cond_4
    iget-boolean v2, p0, Li/m0/g/m$b;->e:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 35
    iget-object v2, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-virtual {v2}, Li/m0/g/m;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    move-wide v3, v6

    goto :goto_5

    :cond_5
    move-wide v2, v6

    :cond_6
    :goto_4
    const/4 v4, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 36
    :goto_5
    :try_start_3
    iget-object v5, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 37
    iget-object v5, v5, Li/m0/g/m;->i:Li/m0/g/m$c;

    .line 38
    invoke-virtual {v5}, Li/m0/g/m$c;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    monitor-exit v0

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    goto/16 :goto_1

    :cond_7
    cmp-long p1, v3, v6

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p0, v3, v4}, Li/m0/g/m$b;->d(J)V

    return-wide v3

    :cond_8
    if-nez v1, :cond_9

    return-wide v6

    .line 41
    :cond_9
    throw v1

    .line 42
    :cond_a
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 43
    :try_start_5
    iget-object p2, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 44
    iget-object p2, p2, Li/m0/g/m;->i:Li/m0/g/m$c;

    .line 45
    invoke-virtual {p2}, Li/m0/g/m$c;->n()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 46
    monitor-exit v0

    throw p1

    :cond_b
    const-string p1, "byteCount < 0: "

    .line 47
    invoke-static {p1, p2, p3}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_c
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Li/m0/g/m$b;->c:Z

    .line 3
    iget-object v1, p0, Li/m0/g/m$b;->b:Lj/g;

    .line 4
    iget-wide v1, v1, Lj/g;->b:J

    .line 5
    iget-object v3, p0, Li/m0/g/m$b;->b:Lj/g;

    .line 6
    iget-wide v4, v3, Lj/g;->b:J

    invoke-virtual {v3, v4, v5}, Lj/g;->skip(J)V

    .line 7
    iget-object v3, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p0, v1, v2}, Li/m0/g/m$b;->d(J)V

    .line 11
    :cond_0
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    invoke-virtual {v0}, Li/m0/g/m;->a()V

    return-void

    .line 12
    :cond_1
    :try_start_1
    new-instance v1, Lh/f;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1
.end method

.method public final d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

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
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 3
    iget-object v0, v0, Li/m0/g/m;->n:Li/m0/g/f;

    .line 4
    invoke-virtual {v0, p1, p2}, Li/m0/g/f;->G(J)V

    return-void
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/g/m$b;->f:Li/m0/g/m;

    .line 2
    iget-object v0, v0, Li/m0/g/m;->i:Li/m0/g/m$c;

    return-object v0
.end method
