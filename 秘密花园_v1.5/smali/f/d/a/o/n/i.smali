.class public Lf/d/a/o/n/i;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lf/d/a/o/n/g$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lf/d/a/u/j/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/n/i$g;,
        Lf/d/a/o/n/i$f;,
        Lf/d/a/o/n/i$d;,
        Lf/d/a/o/n/i$a;,
        Lf/d/a/o/n/i$c;,
        Lf/d/a/o/n/i$e;,
        Lf/d/a/o/n/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/g$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lf/d/a/o/n/i<",
        "*>;>;",
        "Lf/d/a/u/j/a$d;"
    }
.end annotation


# instance fields
.field public A:Lf/d/a/o/a;

.field public B:Lf/d/a/o/m/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/m/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile C:Lf/d/a/o/n/g;

.field public volatile D:Z

.field public volatile E:Z

.field public final a:Lf/d/a/o/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/u/j/d;

.field public final d:Lf/d/a/o/n/i$d;

.field public final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lf/d/a/o/n/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lf/d/a/o/n/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/i$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lf/d/a/o/n/i$e;

.field public h:Lf/d/a/e;

.field public i:Lf/d/a/o/f;

.field public j:Lf/d/a/f;

.field public k:Lf/d/a/o/n/o;

.field public l:I

.field public m:I

.field public n:Lf/d/a/o/n/k;

.field public o:Lf/d/a/o/h;

.field public p:Lf/d/a/o/n/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/i$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Lf/d/a/o/n/i$g;

.field public s:Lf/d/a/o/n/i$f;

.field public t:J

.field public u:Z

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Thread;

.field public x:Lf/d/a/o/f;

.field public y:Lf/d/a/o/f;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/i$d;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/i$d;",
            "Landroidx/core/util/Pools$Pool<",
            "Lf/d/a/o/n/i<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/n/h;

    invoke-direct {v0}, Lf/d/a/o/n/h;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lf/d/a/u/j/d$b;

    invoke-direct {v0}, Lf/d/a/u/j/d$b;-><init>()V

    .line 5
    iput-object v0, p0, Lf/d/a/o/n/i;->c:Lf/d/a/u/j/d;

    .line 6
    new-instance v0, Lf/d/a/o/n/i$c;

    invoke-direct {v0}, Lf/d/a/o/n/i$c;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/i;->f:Lf/d/a/o/n/i$c;

    .line 7
    new-instance v0, Lf/d/a/o/n/i$e;

    invoke-direct {v0}, Lf/d/a/o/n/i$e;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/i;->g:Lf/d/a/o/n/i$e;

    .line 8
    iput-object p1, p0, Lf/d/a/o/n/i;->d:Lf/d/a/o/n/i$d;

    .line 9
    iput-object p2, p0, Lf/d/a/o/n/i;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/n/i$f;->b:Lf/d/a/o/n/i$f;

    iput-object v0, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    .line 2
    iget-object v0, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast v0, Lf/d/a/o/n/m;

    invoke-virtual {v0, p0}, Lf/d/a/o/n/m;->i(Lf/d/a/o/n/i;)V

    return-void
.end method

.method public b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            "Ljava/lang/Exception;",
            "Lf/d/a/o/m/d<",
            "*>;",
            "Lf/d/a/o/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lf/d/a/o/m/d;->b()V

    .line 2
    new-instance v0, Lf/d/a/o/n/r;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lf/d/a/o/n/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Lf/d/a/o/m/d;->a()Ljava/lang/Class;

    move-result-object p2

    .line 4
    iput-object p1, v0, Lf/d/a/o/n/r;->b:Lf/d/a/o/f;

    .line 5
    iput-object p4, v0, Lf/d/a/o/n/r;->c:Lf/d/a/o/a;

    .line 6
    iput-object p2, v0, Lf/d/a/o/n/r;->d:Ljava/lang/Class;

    .line 7
    iget-object p1, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lf/d/a/o/n/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 9
    sget-object p1, Lf/d/a/o/n/i$f;->b:Lf/d/a/o/n/i$f;

    iput-object p1, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    .line 10
    iget-object p1, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast p1, Lf/d/a/o/n/m;

    invoke-virtual {p1, p0}, Lf/d/a/o/n/m;->i(Lf/d/a/o/n/i;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lf/d/a/o/n/i;->m()V

    :goto_0
    return-void
.end method

.method public c()Lf/d/a/u/j/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->c:Lf/d/a/u/j/d;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/n/i;

    .line 2
    iget-object v0, p0, Lf/d/a/o/n/i;->j:Lf/d/a/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lf/d/a/o/n/i;->j:Lf/d/a/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lf/d/a/o/n/i;->q:I

    iget p1, p1, Lf/d/a/o/n/i;->q:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d(Lf/d/a/o/m/d;Ljava/lang/Object;Lf/d/a/o/a;)Lf/d/a/o/n/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d/a/o/m/d<",
            "*>;TData;",
            "Lf/d/a/o/a;",
            ")",
            "Lf/d/a/o/n/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/d/a/o/n/r;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lf/d/a/o/m/d;->b()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, p2, p3}, Lf/d/a/o/n/i;->e(Ljava/lang/Object;Lf/d/a/o/a;)Lf/d/a/o/n/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 4
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p3, v1, v2, v0}, Lf/d/a/o/n/i;->j(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-interface {p1}, Lf/d/a/o/m/d;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lf/d/a/o/m/d;->b()V

    throw p2
.end method

.method public final e(Ljava/lang/Object;Lf/d/a/o/a;)Lf/d/a/o/n/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lf/d/a/o/a;",
            ")",
            "Lf/d/a/o/n/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/d/a/o/n/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d/a/o/n/h;->d(Ljava/lang/Class;)Lf/d/a/o/n/u;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lf/d/a/o/n/i;->o:Lf/d/a/o/h;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v1, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    .line 5
    iget-boolean v1, v1, Lf/d/a/o/n/h;->r:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    sget-object v3, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    invoke-virtual {v0, v3}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 8
    :cond_4
    new-instance v0, Lf/d/a/o/h;

    invoke-direct {v0}, Lf/d/a/o/h;-><init>()V

    .line 9
    iget-object v3, p0, Lf/d/a/o/n/i;->o:Lf/d/a/o/h;

    invoke-virtual {v0, v3}, Lf/d/a/o/h;->d(Lf/d/a/o/h;)V

    .line 10
    sget-object v3, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    iget-object v4, v0, Lf/d/a/o/h;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :goto_3
    iget-object v0, p0, Lf/d/a/o/n/i;->h:Lf/d/a/e;

    .line 13
    iget-object v0, v0, Lf/d/a/e;->b:Lf/d/a/h;

    .line 14
    iget-object v0, v0, Lf/d/a/h;->e:Lf/d/a/o/m/f;

    .line 15
    monitor-enter v0

    :try_start_0
    const-string v1, "Argument must not be null"

    .line 16
    invoke-static {p1, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v1, v0, Lf/d/a/o/m/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d/a/o/m/e$a;

    if-nez v1, :cond_6

    .line 18
    iget-object v3, v0, Lf/d/a/o/m/f;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/d/a/o/m/e$a;

    .line 19
    invoke-interface {v5}, Lf/d/a/o/m/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v5

    :cond_6
    if-nez v1, :cond_7

    .line 20
    sget-object v1, Lf/d/a/o/m/f;->b:Lf/d/a/o/m/e$a;

    .line 21
    :cond_7
    invoke-interface {v1, p1}, Lf/d/a/o/m/e$a;->b(Ljava/lang/Object;)Lf/d/a/o/m/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 22
    :try_start_1
    iget v5, p0, Lf/d/a/o/n/i;->l:I

    iget v6, p0, Lf/d/a/o/n/i;->m:I

    new-instance v7, Lf/d/a/o/n/i$b;

    invoke-direct {v7, p0, p2}, Lf/d/a/o/n/i$b;-><init>(Lf/d/a/o/n/i;Lf/d/a/o/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lf/d/a/o/n/u;->a(Lf/d/a/o/m/e;Lf/d/a/o/h;IILf/d/a/o/n/j$a;)Lf/d/a/o/n/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-interface {p1}, Lf/d/a/o/m/e;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lf/d/a/o/m/e;->b()V

    throw p2

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v0

    throw p1
.end method

.method public f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            "Ljava/lang/Object;",
            "Lf/d/a/o/m/d<",
            "*>;",
            "Lf/d/a/o/a;",
            "Lf/d/a/o/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/i;->x:Lf/d/a/o/f;

    .line 2
    iput-object p2, p0, Lf/d/a/o/n/i;->z:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lf/d/a/o/n/i;->B:Lf/d/a/o/m/d;

    .line 4
    iput-object p4, p0, Lf/d/a/o/n/i;->A:Lf/d/a/o/a;

    .line 5
    iput-object p5, p0, Lf/d/a/o/n/i;->y:Lf/d/a/o/f;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lf/d/a/o/n/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, Lf/d/a/o/n/i$f;->c:Lf/d/a/o/n/i$f;

    iput-object p1, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    .line 8
    iget-object p1, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast p1, Lf/d/a/o/n/m;

    invoke-virtual {p1, p0}, Lf/d/a/o/n/m;->i(Lf/d/a/o/n/i;)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/o/n/i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final g()V
    .locals 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    .line 2
    iget-wide v1, p0, Lf/d/a/o/n/i;->t:J

    const-string v3, "data: "

    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lf/d/a/o/n/i;->z:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/d/a/o/n/i;->x:Lf/d/a/o/f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/d/a/o/n/i;->B:Lf/d/a/o/m/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lf/d/a/o/n/i;->j(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lf/d/a/o/n/i;->B:Lf/d/a/o/m/d;

    iget-object v2, p0, Lf/d/a/o/n/i;->z:Ljava/lang/Object;

    iget-object v3, p0, Lf/d/a/o/n/i;->A:Lf/d/a/o/a;

    invoke-virtual {p0, v1, v2, v3}, Lf/d/a/o/n/i;->d(Lf/d/a/o/m/d;Ljava/lang/Object;Lf/d/a/o/a;)Lf/d/a/o/n/w;

    move-result-object v1
    :try_end_0
    .catch Lf/d/a/o/n/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lf/d/a/o/n/i;->y:Lf/d/a/o/f;

    iget-object v3, p0, Lf/d/a/o/n/i;->A:Lf/d/a/o/a;

    .line 5
    iput-object v2, v1, Lf/d/a/o/n/r;->b:Lf/d/a/o/f;

    .line 6
    iput-object v3, v1, Lf/d/a/o/n/r;->c:Lf/d/a/o/a;

    .line 7
    iput-object v0, v1, Lf/d/a/o/n/r;->d:Ljava/lang/Class;

    .line 8
    iget-object v2, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_f

    .line 9
    iget-object v2, p0, Lf/d/a/o/n/i;->A:Lf/d/a/o/a;

    .line 10
    instance-of v3, v1, Lf/d/a/o/n/s;

    if-eqz v3, :cond_1

    .line 11
    move-object v3, v1

    check-cast v3, Lf/d/a/o/n/s;

    invoke-interface {v3}, Lf/d/a/o/n/s;->a()V

    .line 12
    :cond_1
    iget-object v3, p0, Lf/d/a/o/n/i;->f:Lf/d/a/o/n/i$c;

    .line 13
    iget-object v3, v3, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 14
    invoke-static {v1}, Lf/d/a/o/n/v;->a(Lf/d/a/o/n/w;)Lf/d/a/o/n/v;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 15
    :goto_2
    invoke-virtual {p0}, Lf/d/a/o/n/i;->o()V

    .line 16
    iget-object v6, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast v6, Lf/d/a/o/n/m;

    .line 17
    monitor-enter v6

    .line 18
    :try_start_1
    iput-object v1, v6, Lf/d/a/o/n/m;->q:Lf/d/a/o/n/w;

    .line 19
    iput-object v2, v6, Lf/d/a/o/n/m;->r:Lf/d/a/o/a;

    .line 20
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 21
    monitor-enter v6

    .line 22
    :try_start_2
    iget-object v1, v6, Lf/d/a/o/n/m;->b:Lf/d/a/u/j/d;

    invoke-virtual {v1}, Lf/d/a/u/j/d;->a()V

    .line 23
    iget-boolean v1, v6, Lf/d/a/o/n/m;->x:Z

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, v6, Lf/d/a/o/n/m;->q:Lf/d/a/o/n/w;

    invoke-interface {v1}, Lf/d/a/o/n/w;->d()V

    .line 25
    invoke-virtual {v6}, Lf/d/a/o/n/m;->g()V

    .line 26
    monitor-exit v6

    goto :goto_4

    .line 27
    :cond_4
    iget-object v1, v6, Lf/d/a/o/n/m;->a:Lf/d/a/o/n/m$e;

    invoke-virtual {v1}, Lf/d/a/o/n/m$e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 28
    iget-boolean v1, v6, Lf/d/a/o/n/m;->s:Z

    if-nez v1, :cond_d

    .line 29
    iget-object v1, v6, Lf/d/a/o/n/m;->e:Lf/d/a/o/n/m$c;

    iget-object v8, v6, Lf/d/a/o/n/m;->q:Lf/d/a/o/n/w;

    iget-boolean v9, v6, Lf/d/a/o/n/m;->m:Z

    iget-object v11, v6, Lf/d/a/o/n/m;->l:Lf/d/a/o/f;

    iget-object v12, v6, Lf/d/a/o/n/m;->c:Lf/d/a/o/n/q$a;

    if-eqz v1, :cond_c

    .line 30
    new-instance v1, Lf/d/a/o/n/q;

    const/4 v10, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lf/d/a/o/n/q;-><init>(Lf/d/a/o/n/w;ZZLf/d/a/o/f;Lf/d/a/o/n/q$a;)V

    .line 31
    iput-object v1, v6, Lf/d/a/o/n/m;->v:Lf/d/a/o/n/q;

    .line 32
    iput-boolean v4, v6, Lf/d/a/o/n/m;->s:Z

    .line 33
    iget-object v1, v6, Lf/d/a/o/n/m;->a:Lf/d/a/o/n/m$e;

    if-eqz v1, :cond_b

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lf/d/a/o/n/m$e;->a:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    .line 36
    invoke-virtual {v6, v1}, Lf/d/a/o/n/m;->e(I)V

    .line 37
    iget-object v1, v6, Lf/d/a/o/n/m;->l:Lf/d/a/o/f;

    .line 38
    iget-object v7, v6, Lf/d/a/o/n/m;->v:Lf/d/a/o/n/q;

    .line 39
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 40
    iget-object v8, v6, Lf/d/a/o/n/m;->f:Lf/d/a/o/n/n;

    check-cast v8, Lf/d/a/o/n/l;

    invoke-virtual {v8, v6, v1, v7}, Lf/d/a/o/n/l;->e(Lf/d/a/o/n/m;Lf/d/a/o/f;Lf/d/a/o/n/q;)V

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/o/n/m$d;

    .line 43
    iget-object v7, v2, Lf/d/a/o/n/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v8, Lf/d/a/o/n/m$b;

    iget-object v2, v2, Lf/d/a/o/n/m$d;->a:Lf/d/a/s/f;

    invoke-direct {v8, v6, v2}, Lf/d/a/o/n/m$b;-><init>(Lf/d/a/o/n/m;Lf/d/a/s/f;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 44
    :cond_5
    invoke-virtual {v6}, Lf/d/a/o/n/m;->d()V

    .line 45
    :goto_4
    sget-object v1, Lf/d/a/o/n/i$g;->e:Lf/d/a/o/n/i$g;

    iput-object v1, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    .line 46
    :try_start_3
    iget-object v1, p0, Lf/d/a/o/n/i;->f:Lf/d/a/o/n/i$c;

    .line 47
    iget-object v1, v1, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 48
    iget-object v1, p0, Lf/d/a/o/n/i;->f:Lf/d/a/o/n/i$c;

    iget-object v2, p0, Lf/d/a/o/n/i;->d:Lf/d/a/o/n/i$d;

    iget-object v6, p0, Lf/d/a/o/n/i;->o:Lf/d/a/o/h;

    if-eqz v1, :cond_7

    .line 49
    check-cast v2, Lf/d/a/o/n/l$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Lf/d/a/o/n/l$c;->a()Lf/d/a/o/n/c0/a;

    move-result-object v0

    iget-object v2, v1, Lf/d/a/o/n/i$c;->a:Lf/d/a/o/f;

    new-instance v7, Lf/d/a/o/n/f;

    iget-object v8, v1, Lf/d/a/o/n/i$c;->b:Lf/d/a/o/k;

    iget-object v9, v1, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    invoke-direct {v7, v8, v9, v6}, Lf/d/a/o/n/f;-><init>(Lf/d/a/o/d;Ljava/lang/Object;Lf/d/a/o/h;)V

    .line 50
    invoke-interface {v0, v2, v7}, Lf/d/a/o/n/c0/a;->a(Lf/d/a/o/f;Lf/d/a/o/n/c0/a$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :try_start_5
    iget-object v0, v1, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    invoke-virtual {v0}, Lf/d/a/o/n/v;->e()V

    goto :goto_6

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    invoke-virtual {v1}, Lf/d/a/o/n/v;->e()V

    .line 52
    throw v0

    .line 53
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 54
    invoke-virtual {v3}, Lf/d/a/o/n/v;->e()V

    .line 55
    :cond_9
    iget-object v0, p0, Lf/d/a/o/n/i;->g:Lf/d/a/o/n/i$e;

    .line 56
    monitor-enter v0

    .line 57
    :try_start_6
    iput-boolean v4, v0, Lf/d/a/o/n/i$e;->b:Z

    .line 58
    invoke-virtual {v0, v5}, Lf/d/a/o/n/i$e;->a(Z)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_10

    .line 59
    invoke-virtual {p0}, Lf/d/a/o/n/i;->l()V

    goto :goto_7

    :catchall_1
    move-exception v1

    .line 60
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_a

    .line 61
    invoke-virtual {v3}, Lf/d/a/o/n/v;->e()V

    :cond_a
    throw v0

    .line 62
    :cond_b
    :try_start_7
    throw v0

    .line 63
    :cond_c
    throw v0

    .line 64
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 66
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 67
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 68
    :cond_f
    invoke-virtual {p0}, Lf/d/a/o/n/i;->m()V

    :cond_10
    :goto_7
    return-void
.end method

.method public final h()Lf/d/a/o/n/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lf/d/a/o/n/a0;

    iget-object v1, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    invoke-direct {v0, v1, p0}, Lf/d/a/o/n/a0;-><init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lf/d/a/o/n/d;

    iget-object v1, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    invoke-direct {v0, v1, p0}, Lf/d/a/o/n/d;-><init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Lf/d/a/o/n/x;

    iget-object v1, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    invoke-direct {v0, v1, p0}, Lf/d/a/o/n/x;-><init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V

    return-object v0
.end method

.method public final i(Lf/d/a/o/n/i$g;)Lf/d/a/o/n/i$g;
    .locals 4

    .line 1
    sget-object v0, Lf/d/a/o/n/i$g;->b:Lf/d/a/o/n/i$g;

    sget-object v1, Lf/d/a/o/n/i$g;->c:Lf/d/a/o/n/i$g;

    sget-object v2, Lf/d/a/o/n/i$g;->f:Lf/d/a/o/n/i$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    .line 3
    :cond_2
    iget-boolean p1, p0, Lf/d/a/o/n/i;->u:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lf/d/a/o/n/i$g;->d:Lf/d/a/o/n/i$g;

    :goto_1
    return-object v2

    .line 4
    :cond_4
    iget-object p1, p0, Lf/d/a/o/n/i;->n:Lf/d/a/o/n/k;

    invoke-virtual {p1}, Lf/d/a/o/n/k;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0, v1}, Lf/d/a/o/n/i;->i(Lf/d/a/o/n/i$g;)Lf/d/a/o/n/i$g;

    move-result-object v1

    :goto_2
    return-object v1

    .line 6
    :cond_6
    iget-object p1, p0, Lf/d/a/o/n/i;->n:Lf/d/a/o/n/k;

    invoke-virtual {p1}, Lf/d/a/o/n/k;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 7
    :cond_7
    invoke-virtual {p0, v0}, Lf/d/a/o/n/i;->i(Lf/d/a/o/n/i$g;)Lf/d/a/o/n/i$g;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final j(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p1, v0}, Lf/b/a/a/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Lf/d/a/u/e;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/d/a/o/n/i;->k:Lf/d/a/o/n/o;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, ", "

    .line 3
    invoke-static {p2, p4}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf/d/a/o/n/i;->o()V

    .line 2
    new-instance v0, Lf/d/a/o/n/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lf/d/a/o/n/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast v1, Lf/d/a/o/n/m;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iput-object v0, v1, Lf/d/a/o/n/m;->t:Lf/d/a/o/n/r;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, v1, Lf/d/a/o/n/m;->b:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    .line 9
    iget-boolean v0, v1, Lf/d/a/o/n/m;->x:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Lf/d/a/o/n/m;->g()V

    .line 11
    monitor-exit v1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, v1, Lf/d/a/o/n/m;->a:Lf/d/a/o/n/m$e;

    invoke-virtual {v0}, Lf/d/a/o/n/m$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-boolean v0, v1, Lf/d/a/o/n/m;->u:Z

    if-nez v0, :cond_4

    .line 14
    iput-boolean v2, v1, Lf/d/a/o/n/m;->u:Z

    .line 15
    iget-object v0, v1, Lf/d/a/o/n/m;->l:Lf/d/a/o/f;

    .line 16
    iget-object v3, v1, Lf/d/a/o/n/m;->a:Lf/d/a/o/n/m$e;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, v3, Lf/d/a/o/n/m$e;->a:Ljava/util/List;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 19
    invoke-virtual {v1, v3}, Lf/d/a/o/n/m;->e(I)V

    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    iget-object v3, v1, Lf/d/a/o/n/m;->f:Lf/d/a/o/n/n;

    check-cast v3, Lf/d/a/o/n/l;

    invoke-virtual {v3, v1, v0, v4}, Lf/d/a/o/n/l;->e(Lf/d/a/o/n/m;Lf/d/a/o/f;Lf/d/a/o/n/q;)V

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/o/n/m$d;

    .line 24
    iget-object v4, v3, Lf/d/a/o/n/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lf/d/a/o/n/m$a;

    iget-object v3, v3, Lf/d/a/o/n/m$d;->a:Lf/d/a/s/f;

    invoke-direct {v5, v1, v3}, Lf/d/a/o/n/m$a;-><init>(Lf/d/a/o/n/m;Lf/d/a/s/f;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Lf/d/a/o/n/m;->d()V

    .line 26
    :goto_1
    iget-object v0, p0, Lf/d/a/o/n/i;->g:Lf/d/a/o/n/i$e;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_2
    iput-boolean v2, v0, Lf/d/a/o/n/i$e;->c:Z

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lf/d/a/o/n/i$e;->a(Z)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p0}, Lf/d/a/o/n/i;->l()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1

    .line 32
    :cond_3
    :try_start_3
    throw v4

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 36
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->g:Lf/d/a/o/n/i$e;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Lf/d/a/o/n/i$e;->b:Z

    .line 4
    iput-boolean v1, v0, Lf/d/a/o/n/i$e;->a:Z

    .line 5
    iput-boolean v1, v0, Lf/d/a/o/n/i$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lf/d/a/o/n/i;->f:Lf/d/a/o/n/i$c;

    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lf/d/a/o/n/i$c;->a:Lf/d/a/o/f;

    .line 9
    iput-object v2, v0, Lf/d/a/o/n/i$c;->b:Lf/d/a/o/k;

    .line 10
    iput-object v2, v0, Lf/d/a/o/n/i$c;->c:Lf/d/a/o/n/v;

    .line 11
    iget-object v0, p0, Lf/d/a/o/n/i;->a:Lf/d/a/o/n/h;

    .line 12
    iput-object v2, v0, Lf/d/a/o/n/h;->c:Lf/d/a/e;

    .line 13
    iput-object v2, v0, Lf/d/a/o/n/h;->d:Ljava/lang/Object;

    .line 14
    iput-object v2, v0, Lf/d/a/o/n/h;->n:Lf/d/a/o/f;

    .line 15
    iput-object v2, v0, Lf/d/a/o/n/h;->g:Ljava/lang/Class;

    .line 16
    iput-object v2, v0, Lf/d/a/o/n/h;->k:Ljava/lang/Class;

    .line 17
    iput-object v2, v0, Lf/d/a/o/n/h;->i:Lf/d/a/o/h;

    .line 18
    iput-object v2, v0, Lf/d/a/o/n/h;->o:Lf/d/a/f;

    .line 19
    iput-object v2, v0, Lf/d/a/o/n/h;->j:Ljava/util/Map;

    .line 20
    iput-object v2, v0, Lf/d/a/o/n/h;->p:Lf/d/a/o/n/k;

    .line 21
    iget-object v3, v0, Lf/d/a/o/n/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    iput-boolean v1, v0, Lf/d/a/o/n/h;->l:Z

    .line 23
    iget-object v3, v0, Lf/d/a/o/n/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iput-boolean v1, v0, Lf/d/a/o/n/h;->m:Z

    .line 25
    iput-boolean v1, p0, Lf/d/a/o/n/i;->D:Z

    .line 26
    iput-object v2, p0, Lf/d/a/o/n/i;->h:Lf/d/a/e;

    .line 27
    iput-object v2, p0, Lf/d/a/o/n/i;->i:Lf/d/a/o/f;

    .line 28
    iput-object v2, p0, Lf/d/a/o/n/i;->o:Lf/d/a/o/h;

    .line 29
    iput-object v2, p0, Lf/d/a/o/n/i;->j:Lf/d/a/f;

    .line 30
    iput-object v2, p0, Lf/d/a/o/n/i;->k:Lf/d/a/o/n/o;

    .line 31
    iput-object v2, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    .line 32
    iput-object v2, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    .line 33
    iput-object v2, p0, Lf/d/a/o/n/i;->C:Lf/d/a/o/n/g;

    .line 34
    iput-object v2, p0, Lf/d/a/o/n/i;->w:Ljava/lang/Thread;

    .line 35
    iput-object v2, p0, Lf/d/a/o/n/i;->x:Lf/d/a/o/f;

    .line 36
    iput-object v2, p0, Lf/d/a/o/n/i;->z:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, Lf/d/a/o/n/i;->A:Lf/d/a/o/a;

    .line 38
    iput-object v2, p0, Lf/d/a/o/n/i;->B:Lf/d/a/o/m/d;

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lf/d/a/o/n/i;->t:J

    .line 40
    iput-boolean v1, p0, Lf/d/a/o/n/i;->E:Z

    .line 41
    iput-object v2, p0, Lf/d/a/o/n/i;->v:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lf/d/a/o/n/i;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method

.method public final m()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/n/i;->w:Ljava/lang/Thread;

    .line 2
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/d/a/o/n/i;->t:J

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lf/d/a/o/n/i;->E:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lf/d/a/o/n/i;->C:Lf/d/a/o/n/g;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lf/d/a/o/n/i;->C:Lf/d/a/o/n/g;

    .line 4
    invoke-interface {v0}, Lf/d/a/o/n/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    invoke-virtual {p0, v1}, Lf/d/a/o/n/i;->i(Lf/d/a/o/n/i$g;)Lf/d/a/o/n/i$g;

    move-result-object v1

    iput-object v1, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    .line 6
    invoke-virtual {p0}, Lf/d/a/o/n/i;->h()Lf/d/a/o/n/g;

    move-result-object v1

    iput-object v1, p0, Lf/d/a/o/n/i;->C:Lf/d/a/o/n/g;

    .line 7
    iget-object v1, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    sget-object v2, Lf/d/a/o/n/i$g;->d:Lf/d/a/o/n/i$g;

    if-ne v1, v2, :cond_0

    .line 8
    sget-object v0, Lf/d/a/o/n/i$f;->b:Lf/d/a/o/n/i$f;

    iput-object v0, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    .line 9
    iget-object v0, p0, Lf/d/a/o/n/i;->p:Lf/d/a/o/n/i$a;

    check-cast v0, Lf/d/a/o/n/m;

    invoke-virtual {v0, p0}, Lf/d/a/o/n/m;->i(Lf/d/a/o/n/i;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    sget-object v2, Lf/d/a/o/n/i$g;->f:Lf/d/a/o/n/i$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lf/d/a/o/n/i;->E:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lf/d/a/o/n/i;->k()V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/d/a/o/n/i;->g()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/d/a/o/n/i;->s:Lf/d/a/o/n/i$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lf/d/a/o/n/i;->m()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lf/d/a/o/n/i$g;->a:Lf/d/a/o/n/i$g;

    invoke-virtual {p0, v0}, Lf/d/a/o/n/i;->i(Lf/d/a/o/n/i$g;)Lf/d/a/o/n/i$g;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    .line 6
    invoke-virtual {p0}, Lf/d/a/o/n/i;->h()Lf/d/a/o/n/g;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/n/i;->C:Lf/d/a/o/n/g;

    .line 7
    invoke-virtual {p0}, Lf/d/a/o/n/i;->m()V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->c:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    .line 2
    iget-boolean v0, p0, Lf/d/a/o/n/i;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Lf/d/a/o/n/i;->D:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/i;->B:Lf/d/a/o/m/d;

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lf/d/a/o/n/i;->E:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lf/d/a/o/n/i;->k()V
    :try_end_0
    .catch Lf/d/a/o/n/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lf/d/a/o/m/d;->b()V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lf/d/a/o/n/i;->n()V
    :try_end_1
    .catch Lf/d/a/o/n/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lf/d/a/o/m/d;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf/d/a/o/n/i;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v2, p0, Lf/d/a/o/n/i;->r:Lf/d/a/o/n/i$g;

    sget-object v3, Lf/d/a/o/n/i$g;->e:Lf/d/a/o/n/i$g;

    if-eq v2, v3, :cond_4

    .line 10
    iget-object v2, p0, Lf/d/a/o/n/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lf/d/a/o/n/i;->k()V

    .line 12
    :cond_4
    iget-boolean v2, p0, Lf/d/a/o/n/i;->E:Z

    if-nez v2, :cond_5

    .line 13
    throw v1

    .line 14
    :cond_5
    throw v1

    :catch_0
    move-exception v1

    .line 15
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Lf/d/a/o/m/d;->b()V

    .line 17
    :cond_6
    throw v1
.end method
