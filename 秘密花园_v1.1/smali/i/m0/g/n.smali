.class public final Li/m0/g/n;
.super Ljava/lang/Object;
.source "Http2Writer.kt"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lj/g;

.field public b:I

.field public c:Z

.field public final d:Li/m0/g/d$b;

.field public final e:Lj/i;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/m0/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/m0/g/n;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lj/i;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/g/n;->e:Lj/i;

    iput-boolean p2, p0, Li/m0/g/n;->f:Z

    .line 2
    new-instance p1, Lj/g;

    invoke-direct {p1}, Lj/g;-><init>()V

    iput-object p1, p0, Li/m0/g/n;->a:Lj/g;

    const/16 p2, 0x4000

    .line 3
    iput p2, p0, Li/m0/g/n;->b:I

    .line 4
    new-instance p2, Li/m0/g/d$b;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p1, v0}, Li/m0/g/d$b;-><init>(IZLj/g;I)V

    iput-object p2, p0, Li/m0/g/n;->d:Li/m0/g/d$b;

    return-void
.end method


# virtual methods
.method public final declared-synchronized E(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Li/m0/g/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "headerBlock"

    if-eqz p3, :cond_4

    .line 1
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Li/m0/g/n;->d:Li/m0/g/d$b;

    invoke-virtual {v0, p3}, Li/m0/g/d$b;->e(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Li/m0/g/n;->a:Lj/g;

    .line 4
    iget-wide v0, p3, Lj/g;->b:J

    .line 5
    iget p3, p0, Li/m0/g/n;->b:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v4, v4, 0x1

    :cond_1
    long-to-int p1, v2

    const/4 v5, 0x1

    .line 6
    invoke-virtual {p0, p2, p1, v5, v4}, Li/m0/g/n;->f(IIII)V

    .line 7
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    iget-object v4, p0, Li/m0/g/n;->a:Lj/g;

    invoke-interface {p1, v4, v2, v3}, Lj/y;->j(Lj/g;J)V

    if-lez p3, :cond_2

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Li/m0/g/n;->I(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Li/m0/g/n;->f(IIII)V

    .line 3
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1, p2}, Lj/i;->m(I)Lj/i;

    .line 4
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1, p3}, Lj/i;->m(I)Lj/i;

    .line 5
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized G(ILi/m0/g/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p2, Li/m0/g/b;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Li/m0/g/n;->f(IIII)V

    .line 4
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    .line 5
    iget p2, p2, Li/m0/g/b;->a:I

    .line 6
    invoke-interface {p1, p2}, Lj/i;->m(I)Lj/i;

    .line 7
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Li/m0/g/n;->f(IIII)V

    .line 3
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lj/i;->m(I)Lj/i;

    .line 4
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final I(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Li/m0/g/n;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    const/16 v5, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v4, v5, v0}, Li/m0/g/n;->f(IIII)V

    .line 3
    iget-object v0, p0, Li/m0/g/n;->e:Lj/i;

    iget-object v1, p0, Li/m0/g/n;->a:Lj/g;

    invoke-interface {v0, v1, v2, v3}, Lj/y;->j(Lj/g;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Li/m0/g/n;->c:Z

    .line 2
    iget-object v0, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v0}, Lj/y;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Li/m0/g/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "peerSettings"

    if-eqz p1, :cond_8

    .line 1
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_7

    .line 2
    iget v0, p0, Li/m0/g/n;->b:I

    .line 3
    iget v1, p1, Li/m0/g/r;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object v0, p1, Li/m0/g/r;->b:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 4
    :cond_0
    iput v0, p0, Li/m0/g/n;->b:I

    .line 5
    iget v0, p1, Li/m0/g/r;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Li/m0/g/r;->b:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_6

    .line 6
    iget-object v0, p0, Li/m0/g/n;->d:Li/m0/g/d$b;

    .line 7
    iget v3, p1, Li/m0/g/r;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object p1, p1, Li/m0/g/r;->b:[I

    aget v2, p1, v1

    .line 8
    :cond_2
    iput v2, v0, Li/m0/g/d$b;->h:I

    const/16 p1, 0x4000

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    iget v2, v0, Li/m0/g/d$b;->c:I

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v2, :cond_4

    .line 11
    iget v2, v0, Li/m0/g/d$b;->a:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Li/m0/g/d$b;->a:I

    .line 12
    :cond_4
    iput-boolean v1, v0, Li/m0/g/d$b;->b:Z

    .line 13
    iput p1, v0, Li/m0/g/d$b;->c:I

    .line 14
    iget v2, v0, Li/m0/g/d$b;->g:I

    if-ge p1, v2, :cond_6

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {v0}, Li/m0/g/d$b;->a()V

    goto :goto_1

    :cond_5
    sub-int/2addr v2, p1

    .line 16
    invoke-virtual {v0, v2}, Li/m0/g/d$b;->b(I)I

    :cond_6
    :goto_1
    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, p1, v1}, Li/m0/g/n;->f(IIII)V

    .line 18
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(ZILj/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Li/m0/g/n;->f(IIII)V

    if-lez p4, :cond_2

    .line 3
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    if-eqz p3, :cond_1

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lj/y;->j(Lj/g;J)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 5
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Li/m0/g/n;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Li/m0/g/n;->g:Ljava/util/logging/Logger;

    sget-object v1, Li/m0/g/e;->e:Li/m0/g/e;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Li/m0/g/e;->a(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p0, Li/m0/g/n;->b:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v2, 0x80000000L

    long-to-int v0, v2

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Li/m0/g/n;->e:Lj/i;

    invoke-static {v0, p2}, Li/m0/b;->I(Lj/i;I)V

    .line 4
    iget-object p2, p0, Li/m0/g/n;->e:Lj/i;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lj/i;->q(I)Lj/i;

    .line 5
    iget-object p2, p0, Li/m0/g/n;->e:Lj/i;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lj/i;->q(I)Lj/i;

    .line 6
    iget-object p2, p0, Li/m0/g/n;->e:Lj/i;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lj/i;->m(I)Lj/i;

    return-void

    :cond_3
    const-string p2, "reserved bit set: "

    .line 7
    invoke-static {p2, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "FRAME_SIZE_ERROR length > "

    .line 8
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Li/m0/g/n;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v0}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(ILi/m0/g/b;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/g/n;->c:Z

    if-nez v0, :cond_4

    .line 2
    iget v0, p2, Li/m0/g/b;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Li/m0/g/n;->f(IIII)V

    .line 5
    iget-object v0, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {v0, p1}, Lj/i;->m(I)Lj/i;

    .line 6
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    .line 7
    iget p2, p2, Li/m0/g/b;->a:I

    .line 8
    invoke-interface {p1, p2}, Lj/i;->m(I)Lj/i;

    .line 9
    array-length p1, p3

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    xor-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1, p3}, Lj/i;->r([B)Lj/i;

    .line 11
    :cond_2
    iget-object p1, p0, Li/m0/g/n;->e:Lj/i;

    invoke-interface {p1}, Lj/i;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    throw p1
.end method
