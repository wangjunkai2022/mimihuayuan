.class public Lf/d/a/h;
.super Ljava/lang/Object;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/h$b;,
        Lf/d/a/h$a;,
        Lf/d/a/h$e;,
        Lf/d/a/h$d;,
        Lf/d/a/h$c;
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/p;

.field public final b:Lf/d/a/r/a;

.field public final c:Lf/d/a/r/e;

.field public final d:Lf/d/a/r/f;

.field public final e:Lf/d/a/o/m/f;

.field public final f:Lf/d/a/o/p/h/f;

.field public final g:Lf/d/a/r/b;

.field public final h:Lf/d/a/r/d;

.field public final i:Lf/d/a/r/c;

.field public final j:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/r/d;

    invoke-direct {v0}, Lf/d/a/r/d;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->h:Lf/d/a/r/d;

    .line 3
    new-instance v0, Lf/d/a/r/c;

    invoke-direct {v0}, Lf/d/a/r/c;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->i:Lf/d/a/r/c;

    .line 4
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance v1, Lf/d/a/u/j/b;

    invoke-direct {v1}, Lf/d/a/u/j/b;-><init>()V

    new-instance v2, Lf/d/a/u/j/c;

    invoke-direct {v2}, Lf/d/a/u/j/c;-><init>()V

    .line 5
    new-instance v3, Lf/d/a/u/j/a$c;

    invoke-direct {v3, v0, v1, v2}, Lf/d/a/u/j/a$c;-><init>(Landroidx/core/util/Pools$Pool;Lf/d/a/u/j/a$b;Lf/d/a/u/j/a$e;)V

    .line 6
    iput-object v3, p0, Lf/d/a/h;->j:Landroidx/core/util/Pools$Pool;

    .line 7
    new-instance v0, Lf/d/a/o/o/p;

    invoke-direct {v0, v3}, Lf/d/a/o/o/p;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v0, p0, Lf/d/a/h;->a:Lf/d/a/o/o/p;

    .line 8
    new-instance v0, Lf/d/a/r/a;

    invoke-direct {v0}, Lf/d/a/r/a;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->b:Lf/d/a/r/a;

    .line 9
    new-instance v0, Lf/d/a/r/e;

    invoke-direct {v0}, Lf/d/a/r/e;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->c:Lf/d/a/r/e;

    .line 10
    new-instance v0, Lf/d/a/r/f;

    invoke-direct {v0}, Lf/d/a/r/f;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->d:Lf/d/a/r/f;

    .line 11
    new-instance v0, Lf/d/a/o/m/f;

    invoke-direct {v0}, Lf/d/a/o/m/f;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->e:Lf/d/a/o/m/f;

    .line 12
    new-instance v0, Lf/d/a/o/p/h/f;

    invoke-direct {v0}, Lf/d/a/o/p/h/f;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->f:Lf/d/a/o/p/h/f;

    .line 13
    new-instance v0, Lf/d/a/r/b;

    invoke-direct {v0}, Lf/d/a/r/b;-><init>()V

    iput-object v0, p0, Lf/d/a/h;->g:Lf/d/a/r/b;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    .line 14
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "legacy_prepend_all"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "legacy_append"

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lf/d/a/h;->c:Lf/d/a/r/e;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lf/d/a/r/e;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iget-object v3, v0, Lf/d/a/r/e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iget-object v3, v0, Lf/d/a/r/e;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 27
    iget-object v4, v0, Lf/d/a/r/e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lf/d/a/o/d;)Lf/d/a/h;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lf/d/a/o/d<",
            "TData;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->b:Lf/d/a/r/a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/r/a;->a:Ljava/util/List;

    new-instance v2, Lf/d/a/r/a$a;

    invoke-direct {v2, p1, p2}, Lf/d/a/r/a$a;-><init>(Ljava/lang/Class;Lf/d/a/o/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b(Ljava/lang/Class;Lf/d/a/o/k;)Lf/d/a/h;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lf/d/a/o/k<",
            "TTResource;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->d:Lf/d/a/r/f;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/r/f;->a:Ljava/util/List;

    new-instance v2, Lf/d/a/r/f$a;

    invoke-direct {v2, p1, p2}, Lf/d/a/r/f$a;-><init>(Ljava/lang/Class;Lf/d/a/o/k;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/o/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lf/d/a/o/o/o<",
            "TModel;TData;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->a:Lf/d/a/o/o/p;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/o/o/p;->a:Lf/d/a/o/o/r;

    invoke-virtual {v1, p1, p2, p3}, Lf/d/a/o/o/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)V

    .line 4
    iget-object p1, v0, Lf/d/a/o/o/p;->b:Lf/d/a/o/o/p$a;

    .line 5
    iget-object p1, p1, Lf/d/a/o/o/p$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lf/d/a/o/j<",
            "TData;TTResource;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->c:Lf/d/a/r/e;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lf/d/a/r/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lf/d/a/r/e$a;

    invoke-direct {v1, p2, p3, p4}, Lf/d/a/r/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->g:Lf/d/a/r/b;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/r/b;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Lf/d/a/h$b;

    invoke-direct {v0}, Lf/d/a/h$b;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lf/d/a/o/o/n<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->a:Lf/d/a/o/o/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v3, v0, Lf/d/a/o/o/p;->b:Lf/d/a/o/o/p$a;

    .line 5
    iget-object v3, v3, Lf/d/a/o/o/p$a;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/o/o/p$a$a;

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v3, Lf/d/a/o/o/p$a$a;->a:Ljava/util/List;

    :goto_0
    if-nez v1, :cond_2

    .line 7
    iget-object v1, v0, Lf/d/a/o/o/p;->a:Lf/d/a/o/o/r;

    invoke-virtual {v1, v2}, Lf/d/a/o/o/r;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v3, v0, Lf/d/a/o/o/p;->b:Lf/d/a/o/o/p$a;

    .line 9
    iget-object v3, v3, Lf/d/a/o/o/p$a;->a:Ljava/util/Map;

    new-instance v4, Lf/d/a/o/o/p$a$a;

    invoke-direct {v4, v1}, Lf/d/a/o/o/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/o/o/p$a$a;

    if-nez v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already cached loaders for model: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_1
    monitor-exit v0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    .line 14
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/d/a/o/o/n;

    .line 15
    invoke-interface {v6, p1}, Lf/d/a/o/o/n;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 17
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    .line 19
    :cond_6
    new-instance v0, Lf/d/a/h$c;

    invoke-direct {v0, p1}, Lf/d/a/h$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    .line 21
    :cond_7
    throw v1
.end method

.method public g(Lf/d/a/o/m/e$a;)Lf/d/a/h;
    .locals 3
    .param p1    # Lf/d/a/o/m/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/m/e$a<",
            "*>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->e:Lf/d/a/o/m/f;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/o/m/f;->a:Ljava/util/Map;

    invoke-interface {p1}, Lf/d/a/o/m/e$a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)Lf/d/a/h;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/p/h/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lf/d/a/o/p/h/e<",
            "TTResource;TTranscode;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->f:Lf/d/a/o/p/h/f;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/o/p/h/f;->a:Ljava/util/List;

    new-instance v2, Lf/d/a/o/p/h/f$a;

    invoke-direct {v2, p1, p2, p3}, Lf/d/a/o/p/h/f$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/o/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lf/d/a/o/o/o<",
            "+TModel;+TData;>;)",
            "Lf/d/a/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/h;->a:Lf/d/a/o/o/p;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lf/d/a/o/o/p;->a:Lf/d/a/o/o/r;

    .line 4
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lf/d/a/o/o/r;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v1, p1, p2, p3}, Lf/d/a/o/o/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/d/a/o/o/o;

    .line 9
    invoke-interface {p2}, Lf/d/a/o/o/o;->c()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, v0, Lf/d/a/o/o/p;->b:Lf/d/a/o/o/p$a;

    .line 11
    iget-object p1, p1, Lf/d/a/o/o/p$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit v1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
