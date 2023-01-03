.class public abstract Lm/j;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lm/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/j<",
        "TT;>;",
        "Lm/k;"
    }
.end annotation


# instance fields
.field public final a:Lm/o/d/g;

.field public final b:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lm/f;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lm/j;-><init>(Lm/j;Z)V

    return-void
.end method

.method public constructor <init>(Lm/j;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lm/j;->d:J

    .line 4
    iput-object p1, p0, Lm/j;->b:Lm/j;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lm/j;->a:Lm/o/d/g;

    goto :goto_0

    :cond_0
    new-instance p1, Lm/o/d/g;

    invoke-direct {p1}, Lm/o/d/g;-><init>()V

    :goto_0
    iput-object p1, p0, Lm/j;->a:Lm/o/d/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public final b(Lm/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0, p1}, Lm/o/d/g;->b(Lm/k;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e(Ljava/lang/Throwable;)V
.end method

.method public abstract f(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, p0, Lm/j;->c:Lm/f;

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lm/j;->c:Lm/f;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v0, p1, p2}, Lm/f;->b(J)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lm/j;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 7
    iput-wide p1, p0, Lm/j;->d:J

    goto :goto_0

    :cond_1
    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 8
    iput-wide p1, p0, Lm/j;->d:J

    goto :goto_0

    .line 9
    :cond_2
    iput-wide v2, p0, Lm/j;->d:J

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number requested cannot be negative: "

    invoke-static {v1, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lm/f;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lm/j;->d:J

    .line 3
    iput-object p1, p0, Lm/j;->c:Lm/f;

    .line 4
    iget-object p1, p0, Lm/j;->b:Lm/j;

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p1, :cond_0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lm/j;->b:Lm/j;

    iget-object v0, p0, Lm/j;->c:Lm/f;

    invoke-virtual {p1, v0}, Lm/j;->i(Lm/f;)V

    goto :goto_1

    :cond_1
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lm/j;->c:Lm/f;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lm/f;->b(J)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lm/j;->c:Lm/f;

    invoke-interface {p1, v0, v1}, Lm/f;->b(J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
