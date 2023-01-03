.class public final Lj/b;
.super Ljava/lang/Object;
.source "-Platform.kt"


# direct methods
.method public static A(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 5
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 9
    :cond_2
    new-instance v0, Lm/m/a;

    invoke-direct {v0, p0}, Lm/m/a;-><init>(Ljava/util/Collection;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lm/m/e;

    if-nez v0, :cond_5

    .line 2
    instance-of v0, p0, Lm/m/d;

    if-nez v0, :cond_4

    .line 3
    instance-of v0, p0, Lm/m/c;

    if-nez v0, :cond_3

    .line 4
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    .line 5
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 6
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 8
    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 9
    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    .line 10
    :cond_3
    check-cast p0, Lm/m/c;

    throw p0

    .line 11
    :cond_4
    check-cast p0, Lm/m/d;

    throw p0

    .line 12
    :cond_5
    check-cast p0, Lm/m/e;

    throw p0
.end method

.method public static C(Ljava/lang/Throwable;Lm/j;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lm/j<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p0, p2}, Lm/m/f;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm/j;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static D(Lk/a/g/f;Lk/a/e/l;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1
    invoke-interface {p0, v1, v2}, Lk/a/g/f;->a(Lk/a/e/l;I)V

    .line 2
    invoke-virtual {v1}, Lk/a/e/l;->f()I

    move-result v3

    if-lez v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lk/a/e/l;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/l;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lk/a/e/l;->p()Lk/a/e/l;

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v2, :cond_1

    .line 5
    invoke-interface {p0, v1, v2}, Lk/a/g/f;->b(Lk/a/e/l;I)V

    .line 6
    iget-object v1, v1, Lk/a/e/l;->a:Lk/a/e/l;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0, v1, v2}, Lk/a/g/f;->b(Lk/a/e/l;I)V

    if-ne v1, p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v1}, Lk/a/e/l;->p()Lk/a/e/l;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static final a(Ljava/io/File;)Lj/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2
    new-instance p0, Lj/s;

    new-instance v1, Lj/b0;

    invoke-direct {v1}, Lj/b0;-><init>()V

    invoke-direct {p0, v0, v1}, Lj/s;-><init>(Ljava/io/OutputStream;Lj/b0;)V

    return-object p0
.end method

.method public static final b([BI[BII)Z
    .locals 4

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    .line 1
    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "a"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final c([BI[BII)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const-string p0, "dest"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "src"

    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(Ll/d;Lh/m/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/d<",
            "TT;>;",
            "Lh/m/a<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lc/a/a/b/g/h;->h0(Lh/m/a;)Lh/m/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lh/m/a;I)V

    .line 2
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 3
    new-instance v1, Ll/q;

    invoke-direct {v1, p0}, Ll/q;-><init>(Ll/d;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lh/o/b/b;)V

    .line 4
    new-instance v1, Ll/s;

    invoke-direct {v1, p1}, Ll/s;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1}, Ll/d;->X(Ll/f;)V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 6
    sget-object p1, Lh/m/d/a;->a:Lh/m/d/a;

    return-object p0
.end method

.method public static final e(Ll/d;Lh/m/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/d<",
            "TT;>;",
            "Lh/m/a<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lc/a/a/b/g/h;->h0(Lh/m/a;)Lh/m/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lh/m/a;I)V

    .line 2
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 3
    new-instance v1, Ll/r;

    invoke-direct {v1, p0}, Ll/r;-><init>(Ll/d;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lh/o/b/b;)V

    .line 4
    new-instance v1, Ll/t;

    invoke-direct {v1, p1}, Ll/t;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1}, Ll/d;->X(Ll/f;)V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 6
    sget-object p1, Lh/m/d/a;->a:Lh/m/d/a;

    return-object p0
.end method

.method public static final f(Ll/d;Lh/m/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/d<",
            "TT;>;",
            "Lh/m/a<",
            "-",
            "Ll/g0<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lc/a/a/b/g/h;->h0(Lh/m/a;)Lh/m/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lh/m/a;I)V

    .line 2
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    .line 3
    new-instance v1, Ll/u;

    invoke-direct {v1, p0}, Ll/u;-><init>(Ll/d;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lh/o/b/b;)V

    .line 4
    new-instance v1, Ll/v;

    invoke-direct {v1, p1}, Ll/v;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p0, v1}, Ll/d;->X(Ll/f;)V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 6
    sget-object p1, Lh/m/d/a;->a:Lh/m/d/a;

    return-object p0
.end method

.method public static final g(Lj/y;)Lj/i;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lj/t;

    invoke-direct {v0, p0}, Lj/t;-><init>(Lj/y;)V

    return-object v0

    :cond_0
    const-string p0, "$receiver"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final h(Lj/a0;)Lj/j;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lj/u;

    invoke-direct {v0, p0}, Lj/u;-><init>(Lj/a0;)V

    return-object v0

    :cond_0
    const-string p0, "$receiver"

    .line 2
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final i(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;
    .locals 2

    .line 1
    new-instance v0, Lk/a/g/c;

    invoke-direct {v0}, Lk/a/g/c;-><init>()V

    .line 2
    new-instance v1, Lk/a/g/a;

    invoke-direct {v1, p1, v0, p0}, Lk/a/g/a;-><init>(Lk/a/e/h;Lk/a/g/c;Lk/a/g/d;)V

    invoke-static {v1, p1}, Lj/b;->D(Lk/a/g/f;Lk/a/e/l;)V

    return-object v0
.end method

.method public static k(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 7

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 2
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static final l(Ljava/lang/AssertionError;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const-string v2, "getsockname failed"

    invoke-static {p0, v2, v1, v0}, Lh/s/d;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static m(Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Lk/a/e/l;)Lk/a/e/f$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->y()Lk/a/e/l;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lk/a/e/f;

    if-eqz v0, :cond_0

    check-cast p0, Lk/a/e/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p0, Lk/a/e/f;

    const-string v0, ""

    invoke-direct {p0, v0}, Lk/a/e/f;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object p0, p0, Lk/a/e/f;->i:Lk/a/e/f$a;

    return-object p0
.end method

.method public static u(Ljava/lang/String;)Lk/a/e/f;
    .locals 7

    .line 1
    new-instance v0, Lk/a/f/b;

    invoke-direct {v0}, Lk/a/f/b;-><init>()V

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lk/a/f/g;

    invoke-direct {p0, v0}, Lk/a/f/g;-><init>(Lk/a/f/m;)V

    const-string v2, ""

    .line 3
    invoke-virtual {v0, v1, v2, p0}, Lk/a/f/m;->b(Ljava/io/Reader;Ljava/lang/String;Lk/a/f/g;)V

    .line 4
    iget-object p0, v0, Lk/a/f/m;->c:Lk/a/f/k;

    .line 5
    sget-object v1, Lk/a/f/i$j;->f:Lk/a/f/i$j;

    .line 6
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lk/a/f/k;->e:Z

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lk/a/f/k;->c:Lk/a/f/l;

    iget-object v3, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v2, p0, v3}, Lk/a/f/l;->f(Lk/a/f/k;Lk/a/f/a;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lk/a/f/k;->g:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 12
    iput-object v5, p0, Lk/a/f/k;->f:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lk/a/f/k;->l:Lk/a/f/i$c;

    .line 14
    iput-object v3, v2, Lk/a/f/i$c;->b:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_2
    iget-object v2, p0, Lk/a/f/k;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 16
    iget-object v3, p0, Lk/a/f/k;->l:Lk/a/f/i$c;

    .line 17
    iput-object v2, v3, Lk/a/f/i$c;->b:Ljava/lang/String;

    .line 18
    iput-object v5, p0, Lk/a/f/k;->f:Ljava/lang/String;

    move-object v2, v3

    goto :goto_1

    .line 19
    :cond_3
    iput-boolean v4, p0, Lk/a/f/k;->e:Z

    .line 20
    iget-object v2, p0, Lk/a/f/k;->d:Lk/a/f/i;

    .line 21
    :goto_1
    invoke-virtual {v0, v2}, Lk/a/f/m;->c(Lk/a/f/i;)Z

    .line 22
    invoke-virtual {v2}, Lk/a/f/i;->g()Lk/a/f/i;

    .line 23
    iget-object v2, v2, Lk/a/f/i;->a:Lk/a/f/i$j;

    if-ne v2, v1, :cond_0

    .line 24
    iget-object p0, v0, Lk/a/f/m;->b:Lk/a/f/a;

    .line 25
    iget-object v1, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    if-nez v1, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 27
    iput-object v5, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    .line 28
    iput-object v5, p0, Lk/a/f/a;->a:[C

    .line 29
    iput-object v5, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    .line 30
    throw v0

    .line 31
    :catch_0
    :goto_2
    iput-object v5, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    .line 32
    iput-object v5, p0, Lk/a/f/a;->a:[C

    .line 33
    iput-object v5, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    .line 34
    :goto_3
    iput-object v5, v0, Lk/a/f/m;->b:Lk/a/f/a;

    .line 35
    iput-object v5, v0, Lk/a/f/m;->c:Lk/a/f/k;

    .line 36
    iput-object v5, v0, Lk/a/f/m;->e:Ljava/util/ArrayList;

    .line 37
    iget-object p0, v0, Lk/a/f/m;->d:Lk/a/e/f;

    return-object p0
.end method

.method public static v(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0
.end method

.method public static final w(Ljava/net/Socket;)Lj/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lj/z;

    invoke-direct {v0, p0}, Lj/z;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lj/s;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lj/s;-><init>(Ljava/io/OutputStream;Lj/b0;)V

    .line 3
    new-instance p0, Lj/d;

    invoke-direct {p0, v0, v1}, Lj/d;-><init>(Lj/c;Lj/y;)V

    return-object p0

    :cond_0
    const-string p0, "$receiver"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static x(Ljava/io/File;ZI)Lj/y;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2
    new-instance p0, Lj/s;

    new-instance p1, Lj/b0;

    invoke-direct {p1}, Lj/b0;-><init>()V

    invoke-direct {p0, p2, p1}, Lj/s;-><init>(Ljava/io/OutputStream;Lj/b0;)V

    return-object p0
.end method

.method public static final y(Ljava/net/Socket;)Lj/a0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lj/z;

    invoke-direct {v0, p0}, Lj/z;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lj/q;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lj/q;-><init>(Ljava/io/InputStream;Lj/b0;)V

    .line 3
    new-instance p0, Lj/e;

    invoke-direct {p0, v0, v1}, Lj/e;-><init>(Lj/c;Lj/a0;)V

    return-object p0

    :cond_0
    const-string p0, "$receiver"

    .line 4
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final z(Ljava/lang/Exception;Lh/m/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lh/m/a<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ll/x;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ll/x;

    iget v1, v0, Ll/x;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll/x;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll/x;

    invoke-direct {v0, p1}, Ll/x;-><init>(Lh/m/a;)V

    :goto_0
    iget-object p1, v0, Ll/x;->d:Ljava/lang/Object;

    .line 1
    sget-object v1, Lh/m/d/a;->a:Lh/m/d/a;

    .line 2
    iget v2, v0, Ll/x;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Ll/x;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    .line 3
    instance-of p0, p1, Lh/d;

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lh/i;->a:Lh/i;

    return-object p0

    .line 5
    :cond_1
    check-cast p1, Lh/d;

    iget-object p0, p1, Lh/d;->a:Ljava/lang/Throwable;

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    instance-of v2, p1, Lh/d;

    if-nez v2, :cond_4

    .line 8
    iput-object p0, v0, Ll/x;->f:Ljava/lang/Object;

    iput v3, v0, Ll/x;->e:I

    .line 9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-interface {v0}, Lh/m/a;->getContext()Lh/m/c;

    move-result-object v2

    new-instance v3, Ll/w;

    invoke-direct {v3, v0, p0}, Ll/w;-><init>(Lh/m/a;Ljava/lang/Exception;)V

    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lh/m/c;Ljava/lang/Runnable;)V

    return-object v1

    .line 10
    :cond_4
    check-cast p1, Lh/d;

    iget-object p0, p1, Lh/d;->a:Ljava/lang/Throwable;

    throw p0
.end method
