.class public final Ll/y;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Ll/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/y$b;,
        Ll/y$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll/f0;

.field public final b:[Ljava/lang/Object;

.field public final c:Li/f$a;

.field public final d:Ll/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/l<",
            "Li/i0;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:Li/f;

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Ll/f0;[Ljava/lang/Object;Li/f$a;Ll/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/f0;",
            "[",
            "Ljava/lang/Object;",
            "Li/f$a;",
            "Ll/l<",
            "Li/i0;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/y;->a:Ll/f0;

    .line 3
    iput-object p2, p0, Ll/y;->b:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ll/y;->c:Li/f$a;

    .line 5
    iput-object p4, p0, Ll/y;->d:Ll/l;

    return-void
.end method


# virtual methods
.method public declared-synchronized S()Li/e0;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ll/y;->f:Li/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li/f;->S()Li/e0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Ll/y;->g:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ll/y;->a()Li/f;

    move-result-object v0

    iput-object v0, p0, Ll/y;->f:Li/f;

    invoke-interface {v0}, Li/f;->S()Li/e0;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    iput-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    invoke-static {v0}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public T()Ll/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ll/y;->h:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ll/y;->h:Z

    .line 4
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 9
    :cond_1
    iget-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Ll/y;->f:Li/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ll/y;->a()Li/f;

    move-result-object v0

    iput-object v0, p0, Ll/y;->f:Li/f;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    :try_start_2
    invoke-static {v0}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Ll/y;->g:Ljava/lang/Throwable;

    .line 14
    throw v0

    .line 15
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-boolean v1, p0, Ll/y;->e:Z

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0}, Li/f;->cancel()V

    .line 18
    :cond_4
    invoke-interface {v0}, Li/f;->T()Li/h0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll/y;->b(Li/h0;)Ll/g0;

    move-result-object v0

    return-object v0

    .line 19
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public U()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/y;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll/y;->f:Li/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/y;->f:Li/f;

    invoke-interface {v0}, Li/f;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public V()Ll/d;
    .locals 5

    .line 1
    new-instance v0, Ll/y;

    iget-object v1, p0, Ll/y;->a:Ll/f0;

    iget-object v2, p0, Ll/y;->b:[Ljava/lang/Object;

    iget-object v3, p0, Ll/y;->c:Li/f$a;

    iget-object v4, p0, Ll/y;->d:Ll/l;

    invoke-direct {v0, v1, v2, v3, v4}, Ll/y;-><init>(Ll/f0;[Ljava/lang/Object;Li/f$a;Ll/l;)V

    return-object v0
.end method

.method public X(Ll/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/f<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Ll/y;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ll/y;->h:Z

    .line 5
    iget-object v0, p0, Ll/y;->f:Li/f;

    .line 6
    iget-object v1, p0, Ll/y;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Ll/y;->a()Li/f;

    move-result-object v2

    iput-object v2, p0, Ll/y;->f:Li/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p0, Ll/y;->g:Ljava/lang/Throwable;

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, p0, v1}, Ll/f;->b(Ll/d;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    iget-boolean v1, p0, Ll/y;->e:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Li/f;->cancel()V

    .line 14
    :cond_2
    new-instance v1, Ll/y$a;

    invoke-direct {v1, p0, p1}, Ll/y$a;-><init>(Ll/y;Ll/f;)V

    invoke-interface {v0, v1}, Li/f;->W(Li/g;)V

    return-void

    .line 15
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final a()Li/f;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/y;->c:Li/f$a;

    iget-object v1, p0, Ll/y;->a:Ll/f0;

    iget-object v2, p0, Ll/y;->b:[Ljava/lang/Object;

    .line 2
    iget-object v3, v1, Ll/f0;->j:[Ll/c0;

    .line 3
    array-length v4, v2

    .line 4
    array-length v5, v3

    if-ne v4, v5, :cond_a

    .line 5
    new-instance v5, Ll/e0;

    iget-object v7, v1, Ll/f0;->c:Ljava/lang/String;

    iget-object v8, v1, Ll/f0;->b:Li/x;

    iget-object v9, v1, Ll/f0;->d:Ljava/lang/String;

    iget-object v10, v1, Ll/f0;->e:Li/w;

    iget-object v11, v1, Ll/f0;->f:Li/z;

    iget-boolean v12, v1, Ll/f0;->g:Z

    iget-boolean v13, v1, Ll/f0;->h:Z

    iget-boolean v14, v1, Ll/f0;->i:Z

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Ll/e0;-><init>(Ljava/lang/String;Li/x;Ljava/lang/String;Li/w;Li/z;ZZZ)V

    .line 6
    iget-boolean v6, v1, Ll/f0;->k:Z

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 7
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    .line 8
    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    aget-object v9, v3, v8

    aget-object v10, v2, v8

    invoke-virtual {v9, v5, v10}, Ll/c0;->a(Ll/e0;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v5, Ll/e0;->d:Li/x$a;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Li/x$a;->b()Li/x;

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, v5, Ll/e0;->b:Li/x;

    iget-object v3, v5, Ll/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Li/x;->l(Ljava/lang/String;)Li/x;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 13
    :goto_1
    iget-object v3, v5, Ll/e0;->k:Li/g0;

    if-nez v3, :cond_5

    .line 14
    iget-object v4, v5, Ll/e0;->j:Li/u$a;

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v4}, Li/u$a;->b()Li/u;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v4, v5, Ll/e0;->i:Li/a0$a;

    if-eqz v4, :cond_4

    .line 17
    invoke-virtual {v4}, Li/a0$a;->c()Li/a0;

    move-result-object v3

    goto :goto_2

    .line 18
    :cond_4
    iget-boolean v4, v5, Ll/e0;->h:Z

    if-eqz v4, :cond_5

    const/4 v3, 0x0

    new-array v4, v7, [B

    .line 19
    invoke-static {v3, v4}, Li/g0;->d(Li/z;[B)Li/g0;

    move-result-object v3

    .line 20
    :cond_5
    :goto_2
    iget-object v4, v5, Ll/e0;->g:Li/z;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 21
    new-instance v7, Ll/e0$a;

    invoke-direct {v7, v3, v4}, Ll/e0$a;-><init>(Li/g0;Li/z;)V

    move-object v3, v7

    goto :goto_3

    .line 22
    :cond_6
    iget-object v7, v5, Ll/e0;->f:Li/w$a;

    .line 23
    iget-object v4, v4, Li/z;->a:Ljava/lang/String;

    const-string v8, "Content-Type"

    .line 24
    invoke-virtual {v7, v8, v4}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    .line 25
    :cond_7
    :goto_3
    iget-object v4, v5, Ll/e0;->e:Li/e0$a;

    .line 26
    iput-object v2, v4, Li/e0$a;->a:Li/x;

    .line 27
    iget-object v2, v5, Ll/e0;->f:Li/w$a;

    .line 28
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v2

    invoke-virtual {v4, v2}, Li/e0$a;->d(Li/w;)Li/e0$a;

    iget-object v2, v5, Ll/e0;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v4, v2, v3}, Li/e0$a;->e(Ljava/lang/String;Li/g0;)Li/e0$a;

    .line 30
    const-class v2, Ll/p;

    new-instance v3, Ll/p;

    iget-object v1, v1, Ll/f0;->a:Ljava/lang/reflect/Method;

    invoke-direct {v3, v1, v6}, Ll/p;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 31
    invoke-virtual {v4, v2, v3}, Li/e0$a;->h(Ljava/lang/Class;Ljava/lang/Object;)Li/e0$a;

    .line 32
    invoke-virtual {v4}, Li/e0$a;->b()Li/e0;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    .line 34
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed URL. Base: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Ll/e0;->b:Li/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Ll/e0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument count ("

    const-string v2, ") doesn\'t match expected count ("

    invoke-static {v1, v4, v2}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Li/h0;)Ll/g0;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/h0;",
            ")",
            "Ll/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Li/h0;->h:Li/i0;

    .line 2
    iget-object v3, v0, Li/h0;->b:Li/e0;

    .line 3
    iget-object v4, v0, Li/h0;->c:Li/c0;

    .line 4
    iget v6, v0, Li/h0;->e:I

    .line 5
    iget-object v5, v0, Li/h0;->d:Ljava/lang/String;

    .line 6
    iget-object v7, v0, Li/h0;->f:Li/v;

    .line 7
    iget-object v2, v0, Li/h0;->g:Li/w;

    .line 8
    invoke-virtual {v2}, Li/w;->d()Li/w$a;

    move-result-object v2

    .line 9
    iget-object v8, v0, Li/h0;->h:Li/i0;

    .line 10
    iget-object v10, v0, Li/h0;->i:Li/h0;

    .line 11
    iget-object v11, v0, Li/h0;->j:Li/h0;

    .line 12
    iget-object v12, v0, Li/h0;->k:Li/h0;

    .line 13
    iget-wide v13, v0, Li/h0;->l:J

    .line 14
    iget-wide v8, v0, Li/h0;->m:J

    .line 15
    iget-object v0, v0, Li/h0;->n:Li/m0/d/c;

    .line 16
    new-instance v15, Ll/y$c;

    move-wide/from16 v16, v8

    .line 17
    invoke-virtual {v1}, Li/i0;->E()Li/z;

    move-result-object v8

    move-wide/from16 v18, v13

    invoke-virtual {v1}, Li/i0;->g()J

    move-result-wide v13

    invoke-direct {v15, v8, v13, v14}, Ll/y$c;-><init>(Li/z;J)V

    if-ltz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_a

    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    if-eqz v5, :cond_7

    .line 18
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v8

    .line 19
    new-instance v13, Li/h0;

    move-object v2, v13

    move-object v9, v15

    move-object v15, v13

    move-wide/from16 v13, v18

    move-object/from16 v18, v1

    move-object v1, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Li/h0;-><init>(Li/e0;Li/c0;Ljava/lang/String;ILi/v;Li/w;Li/i0;Li/h0;Li/h0;Li/h0;JJLi/m0/d/c;)V

    .line 20
    iget v0, v1, Li/h0;->e:I

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-lt v0, v2, :cond_5

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Ll/y$b;

    move-object/from16 v4, v18

    invoke-direct {v2, v4}, Ll/y$b;-><init>(Li/i0;)V

    move-object/from16 v5, p0

    .line 22
    :try_start_0
    iget-object v0, v5, Ll/y;->d:Ll/l;

    invoke-interface {v0, v2}, Ll/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {v0, v1}, Ll/g0;->b(Ljava/lang/Object;Li/h0;)Ll/g0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    iget-object v1, v2, Ll/y$b;->e:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 25
    throw v0

    .line 26
    :cond_3
    throw v1

    :cond_4
    :goto_1
    move-object/from16 v5, p0

    move-object/from16 v4, v18

    .line 27
    invoke-virtual {v4}, Li/i0;->close()V

    .line 28
    invoke-static {v3, v1}, Ll/g0;->b(Ljava/lang/Object;Li/h0;)Ll/g0;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    move-object/from16 v5, p0

    move-object/from16 v4, v18

    .line 29
    :try_start_1
    invoke-static {v4}, Ll/l0;->a(Li/i0;)Li/i0;

    move-result-object v0

    const-string v2, "body == null"

    .line 30
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "rawResponse == null"

    .line 31
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v1}, Li/h0;->g()Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    new-instance v2, Ll/g0;

    invoke-direct {v2, v1, v3, v0}, Ll/g0;-><init>(Li/h0;Ljava/lang/Object;Li/i0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-virtual {v4}, Li/i0;->close()V

    return-object v2

    .line 35
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v4}, Li/i0;->close()V

    throw v0

    :cond_7
    move-object/from16 v5, p0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v5, p0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v5, p0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v5, p0

    const-string v0, "code < 0: "

    .line 40
    invoke-static {v0, v6}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll/y;->e:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll/y;->f:Li/f;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Li/f;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll/y;

    iget-object v1, p0, Ll/y;->a:Ll/f0;

    iget-object v2, p0, Ll/y;->b:[Ljava/lang/Object;

    iget-object v3, p0, Ll/y;->c:Li/f$a;

    iget-object v4, p0, Ll/y;->d:Ll/l;

    invoke-direct {v0, v1, v2, v3, v4}, Ll/y;-><init>(Ll/f0;[Ljava/lang/Object;Li/f$a;Ll/l;)V

    return-object v0
.end method
