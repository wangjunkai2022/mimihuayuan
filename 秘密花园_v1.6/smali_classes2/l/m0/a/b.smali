.class public final Ll/m0/a/b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CallArbiter.java"

# interfaces
.implements Lm/k;
.implements Lm/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lm/k;",
        "Lm/f;"
    }
.end annotation


# instance fields
.field public final a:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-",
            "Ll/g0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public volatile c:Z

.field public volatile d:Ll/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/g0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/d;Lm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;",
            "Lm/j<",
            "-",
            "Ll/g0<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Ll/m0/a/b;->a:Ll/d;

    .line 3
    iput-object p2, p0, Ll/m0/a/b;->b:Lm/j;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll/m0/a/b;->c:Z

    return v0
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown state: "

    invoke-static {v0, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_2
    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ll/m0/a/b;->d:Ll/g0;

    invoke-virtual {p0, p1}, Ll/m0/a/b;->d(Ll/g0;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll/m0/a/b;->c:Z

    .line 2
    iget-object v0, p0, Ll/m0/a/b;->a:Ll/d;

    invoke-interface {v0}, Ll/d;->cancel()V

    return-void
.end method

.method public final d(Ll/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/g0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Ll/m0/a/b;->c:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Ll/m0/a/b;->b:Lm/j;

    invoke-virtual {v1, p1}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lm/m/c; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lm/m/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lm/m/e; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Ll/m0/a/b;->c:Z

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Ll/m0/a/b;->b:Lm/j;

    invoke-virtual {p1}, Lm/j;->d()V
    :try_end_1
    .catch Lm/m/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lm/m/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lm/m/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 7
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    throw v0

    .line 9
    :catch_0
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 10
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    return-void

    .line 11
    :cond_3
    throw v0

    .line 12
    :goto_2
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 13
    :try_start_2
    iget-object v1, p0, Ll/m0/a/b;->b:Lm/j;

    invoke-virtual {v1, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lm/m/c; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lm/m/d; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lm/m/e; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 14
    invoke-static {v1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 15
    new-instance v2, Lm/m/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-direct {v2, v3}, Lm/m/a;-><init>([Ljava/lang/Throwable;)V

    .line 16
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 17
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    throw v0

    .line 19
    :catch_1
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 20
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_3
    return-void

    .line 21
    :cond_5
    throw v0

    .line 22
    :catch_2
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 23
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_6

    return-void

    .line 24
    :cond_6
    throw v0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-boolean v0, p0, Ll/m0/a/b;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Ll/m0/a/b;->b:Lm/j;

    invoke-virtual {v1, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lm/m/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lm/m/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lm/m/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 5
    new-instance v2, Lm/m/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-direct {v2, v3}, Lm/m/a;-><init>([Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 7
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    throw v0

    .line 9
    :catch_0
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 10
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Ll/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/g0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown state: "

    invoke-static {v1, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ll/m0/a/b;->d(Ll/g0;)V

    return-void

    .line 6
    :cond_3
    iput-object p1, p0, Ll/m0/a/b;->d:Ll/g0;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
