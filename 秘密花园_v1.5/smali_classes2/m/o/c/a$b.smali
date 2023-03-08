.class public final Lm/o/c/a$b;
.super Lm/g$a;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lm/s/a;

.field public final b:Lm/o/c/a$a;

.field public final c:Lm/o/c/a$c;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lm/o/c/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm/g$a;-><init>()V

    .line 2
    new-instance v0, Lm/s/a;

    invoke-direct {v0}, Lm/s/a;-><init>()V

    iput-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    .line 3
    iput-object p1, p0, Lm/o/c/a$b;->b:Lm/o/c/a$a;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm/o/c/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iget-object v0, p1, Lm/o/c/a$a;->d:Lm/s/a;

    .line 6
    iget-boolean v0, v0, Lm/s/a;->b:Z

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lm/o/c/a;->e:Lm/o/c/a$c;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p1, Lm/o/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Lm/o/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/o/c/a$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lm/o/c/a$c;

    iget-object v1, p1, Lm/o/c/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lm/o/c/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 11
    iget-object p1, p1, Lm/o/c/a$a;->d:Lm/s/a;

    invoke-virtual {p1, v0}, Lm/s/a;->b(Lm/k;)V

    :goto_0
    move-object p1, v0

    .line 12
    :goto_1
    iput-object p1, p0, Lm/o/c/a$b;->c:Lm/o/c/a$c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    .line 2
    iget-boolean v0, v0, Lm/s/a;->b:Z

    return v0
.end method

.method public b(Lm/n/a;)Lm/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    .line 2
    iget-boolean v0, v0, Lm/s/a;->b:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/c/a$b;->c:Lm/o/c/a$c;

    new-instance v1, Lm/o/c/b;

    invoke-direct {v1, p0, p1}, Lm/o/c/b;-><init>(Lm/o/c/a$b;Lm/n/a;)V

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lm/o/c/f;->e(Lm/n/a;JLjava/util/concurrent/TimeUnit;)Lm/o/c/g;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    invoke-virtual {v0, p1}, Lm/s/a;->b(Lm/k;)V

    .line 6
    iget-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    .line 7
    iget-object v1, p1, Lm/o/c/g;->a:Lm/o/d/g;

    new-instance v2, Lm/o/c/g$c;

    invoke-direct {v2, p1, v0}, Lm/o/c/g$c;-><init>(Lm/o/c/g;Lm/s/a;)V

    invoke-virtual {v1, v2}, Lm/o/d/g;->b(Lm/k;)V

    :goto_0
    return-object p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/o/c/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm/o/c/a$b;->c:Lm/o/c/a$c;

    invoke-virtual {v0, p0}, Lm/o/c/f;->b(Lm/n/a;)Lm/k;

    .line 3
    :cond_0
    iget-object v0, p0, Lm/o/c/a$b;->a:Lm/s/a;

    invoke-virtual {v0}, Lm/s/a;->c()V

    return-void
.end method

.method public call()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm/o/c/a$b;->b:Lm/o/c/a$a;

    iget-object v1, p0, Lm/o/c/a$b;->c:Lm/o/c/a$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3
    iget-wide v4, v0, Lm/o/c/a$a;->b:J

    add-long/2addr v2, v4

    .line 4
    iput-wide v2, v1, Lm/o/c/a$c;->i:J

    .line 5
    iget-object v0, v0, Lm/o/c/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
