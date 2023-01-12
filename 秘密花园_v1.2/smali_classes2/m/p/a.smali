.class public Lm/p/a;
.super Lm/j;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lm/j;-><init>(Lm/j;Z)V

    .line 2
    iput-object p1, p0, Lm/p/a;->e:Lm/j;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm/p/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/p/a;->f:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lm/p/a;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 6
    new-instance v1, Lm/m/g;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lm/m/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-static {v0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 9
    new-instance v1, Lm/m/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lm/m/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    .line 10
    :try_start_3
    iget-object v1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1}, Lm/o/d/g;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 11
    throw v0

    :catchall_3
    move-exception v0

    .line 12
    invoke-static {v0}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 13
    new-instance v1, Lm/m/g;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lm/m/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Lm/p/a;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm/p/a;->f:Z

    .line 4
    sget-object v1, Lm/q/o;->f:Lm/q/o;

    .line 5
    invoke-virtual {v1}, Lm/q/o;->b()Lm/q/b;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    :try_start_0
    iget-object v3, p0, Lm/p/a;->e:Lm/j;

    invoke-virtual {v3, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lm/m/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object p1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {p1}, Lm/o/d/g;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 9
    new-instance v0, Lm/m/d;

    invoke-direct {v0, p1}, Lm/m/d;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v3

    .line 10
    invoke-static {v3}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 11
    :try_start_2
    iget-object v4, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v4}, Lm/o/d/g;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    new-instance v4, Lm/m/d;

    new-instance v5, Lm/m/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lm/m/a;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v4, p1, v5}, Lm/m/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catchall_2
    move-exception v4

    .line 13
    invoke-static {v4}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 14
    new-instance v5, Lm/m/d;

    new-instance v6, Lm/m/a;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v1

    aput-object v3, v7, v0

    aput-object v4, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Lm/m/a;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, p1, v6}, Lm/m/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_0
    move-exception v3

    .line 15
    :try_start_3
    iget-object v4, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v4}, Lm/o/d/g;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 16
    throw v3

    :catchall_3
    move-exception v3

    .line 17
    invoke-static {v3}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 18
    new-instance v4, Lm/m/e;

    new-instance v5, Lm/m/a;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lm/m/a;-><init>(Ljava/util/Collection;)V

    const-string p1, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v4, p1, v5}, Lm/m/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    const/4 p1, 0x0

    .line 19
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lm/p/a;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm/p/a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
