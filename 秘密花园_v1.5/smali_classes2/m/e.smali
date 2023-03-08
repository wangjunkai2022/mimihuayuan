.class public Lm/e;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/e$b;,
        Lm/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lm/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm/e;->a:Lm/e$a;

    return-void
.end method

.method public static e(Lm/e$a;)Lm/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/e$a<",
            "TT;>;)",
            "Lm/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm/e;

    .line 2
    sget-object v1, Lm/q/l;->b:Lm/n/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/e$a;

    .line 4
    :cond_0
    invoke-direct {v0, p0}, Lm/e;-><init>(Lm/e$a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lm/n/c;)Lm/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/n/c<",
            "-TT;+",
            "Lm/e<",
            "+TR;>;>;)",
            "Lm/e<",
            "TR;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lm/o/d/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lm/o/d/d;

    .line 3
    new-instance v1, Lm/o/d/f;

    invoke-direct {v1, v0, p1}, Lm/o/d/f;-><init>(Lm/o/d/d;Lm/n/c;)V

    invoke-static {v1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lm/o/a/d;

    invoke-direct {v1, p0, p1}, Lm/o/a/d;-><init>(Lm/e;Lm/n/c;)V

    invoke-static {v1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 6
    check-cast p1, Lm/o/d/d;

    .line 7
    sget-object v0, Lm/o/d/h;->a:Lm/o/d/h;

    .line 8
    new-instance v1, Lm/o/d/f;

    invoke-direct {v1, p1, v0}, Lm/o/d/f;-><init>(Lm/o/d/d;Lm/n/c;)V

    invoke-static {v1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lm/o/a/g$a;->a:Lm/o/a/g;

    .line 10
    new-instance v1, Lm/o/a/c;

    iget-object p1, p1, Lm/e;->a:Lm/e$a;

    invoke-direct {v1, p1, v0}, Lm/o/a/c;-><init>(Lm/e$a;Lm/e$b;)V

    invoke-static {v1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(Lm/g;)Lm/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/g;",
            ")",
            "Lm/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lm/o/d/b;->c:I

    .line 2
    instance-of v1, p0, Lm/o/d/d;

    if-eqz v1, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lm/o/d/d;

    invoke-virtual {v0, p1}, Lm/o/d/d;->g(Lm/g;)Lm/e;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lm/o/a/i;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lm/o/a/i;-><init>(Lm/g;ZI)V

    .line 5
    new-instance p1, Lm/o/a/c;

    iget-object v0, p0, Lm/e;->a:Lm/e$a;

    invoke-direct {p1, v0, v1}, Lm/o/a/c;-><init>(Lm/e$a;Lm/e$b;)V

    invoke-static {p1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Lm/j;)Lm/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;)",
            "Lm/k;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p0, Lm/e;->a:Lm/e$a;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lm/j;->g()V

    .line 3
    instance-of v0, p1, Lm/p/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lm/p/a;

    invoke-direct {v0, p1}, Lm/p/a;-><init>(Lm/j;)V

    move-object p1, v0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lm/e;->a:Lm/e$a;

    .line 6
    sget-object v1, Lm/q/l;->e:Lm/n/d;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, p0, v0}, Lm/n/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/e$a;

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Lm/n/b;->a(Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lm/q/l;->g:Lm/n/c;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 12
    iget-object v1, p1, Lm/j;->a:Lm/o/d/g;

    .line 13
    iget-boolean v1, v1, Lm/o/d/g;->b:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v0}, Lm/q/l;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_2
    :try_start_1
    invoke-static {v0}, Lm/q/l;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :goto_0
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    :cond_3
    :goto_1
    return-object p1

    :catchall_1
    move-exception p1

    .line 17
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 18
    new-instance v1, Lm/m/d;

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] and then again while trying to pass to onError."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lm/m/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {v1}, Lm/q/l;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    throw v1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onSubscribe function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subscriber can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lm/g;)Lm/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/g;",
            ")",
            "Lm/e<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    instance-of v1, p0, Lm/o/d/d;

    if-eqz v1, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lm/o/d/d;

    invoke-virtual {v0, p1}, Lm/o/d/d;->g(Lm/g;)Lm/e;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lm/o/a/j;

    invoke-direct {v1, p0, p1, v0}, Lm/o/a/j;-><init>(Lm/e;Lm/g;Z)V

    invoke-static {v1}, Lm/e;->e(Lm/e$a;)Lm/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(Lm/j;)Lm/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;)",
            "Lm/k;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lm/j;->g()V

    .line 2
    iget-object v0, p0, Lm/e;->a:Lm/e$a;

    .line 3
    sget-object v1, Lm/q/l;->e:Lm/n/d;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, v0}, Lm/n/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/e$a;

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lm/n/b;->a(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lm/q/l;->g:Lm/n/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 9
    :try_start_1
    invoke-static {v0}, Lm/q/l;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    return-object p1

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 12
    new-instance v1, Lm/m/d;

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] and then again while trying to pass to onError."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lm/m/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-static {v1}, Lm/q/l;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw v1
.end method
