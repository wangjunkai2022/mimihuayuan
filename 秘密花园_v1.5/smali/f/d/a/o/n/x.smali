.class public Lf/d/a/o/n/x;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

# interfaces
.implements Lf/d/a/o/n/g;
.implements Lf/d/a/o/m/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/g;",
        "Lf/d/a/o/m/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/g$a;

.field public final b:Lf/d/a/o/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/h<",
            "*>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Lf/d/a/o/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/o/o/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Lf/d/a/o/o/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;

.field public j:Lf/d/a/o/n/y;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/h<",
            "*>;",
            "Lf/d/a/o/n/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/d/a/o/n/x;->d:I

    .line 3
    iput-object p1, p0, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 4
    iput-object p2, p0, Lf/d/a/o/n/x;->a:Lf/d/a/o/n/g$a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/x;->a:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/x;->j:Lf/d/a/o/n/y;

    iget-object v2, p0, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    iget-object v2, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    sget-object v3, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lf/d/a/o/n/g$a;->b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v0}, Lf/d/a/o/m/d;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/x;->a:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/x;->e:Lf/d/a/o/f;

    iget-object v2, p0, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    iget-object v3, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    sget-object v4, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    iget-object v5, p0, Lf/d/a/o/n/x;->j:Lf/d/a/o/n/y;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lf/d/a/o/n/g$a;->f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V

    return-void
.end method

.method public e()Z
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    invoke-virtual {v0}, Lf/d/a/o/n/h;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v2, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 4
    iget-object v4, v2, Lf/d/a/o/n/h;->c:Lf/d/a/e;

    .line 5
    iget-object v4, v4, Lf/d/a/e;->b:Lf/d/a/h;

    .line 6
    iget-object v5, v2, Lf/d/a/o/n/h;->d:Ljava/lang/Object;

    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Lf/d/a/o/n/h;->g:Ljava/lang/Class;

    iget-object v2, v2, Lf/d/a/o/n/h;->k:Ljava/lang/Class;

    .line 8
    iget-object v7, v4, Lf/d/a/h;->h:Lf/d/a/r/d;

    .line 9
    iget-object v8, v7, Lf/d/a/r/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/d/a/u/h;

    if-nez v8, :cond_1

    .line 10
    new-instance v8, Lf/d/a/u/h;

    invoke-direct {v8, v5, v6, v2}, Lf/d/a/u/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_1
    iput-object v5, v8, Lf/d/a/u/h;->a:Ljava/lang/Class;

    .line 12
    iput-object v6, v8, Lf/d/a/u/h;->b:Ljava/lang/Class;

    .line 13
    iput-object v2, v8, Lf/d/a/u/h;->c:Ljava/lang/Class;

    .line 14
    :goto_0
    iget-object v10, v7, Lf/d/a/r/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v10

    .line 15
    :try_start_0
    iget-object v11, v7, Lf/d/a/r/d;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v11, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 16
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    iget-object v7, v7, Lf/d/a/r/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    .line 18
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v7, v4, Lf/d/a/h;->a:Lf/d/a/o/o/p;

    .line 20
    monitor-enter v7

    .line 21
    :try_start_1
    iget-object v8, v7, Lf/d/a/o/o/p;->a:Lf/d/a/o/o/r;

    invoke-virtual {v8, v5}, Lf/d/a/o/o/r;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 22
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 23
    iget-object v10, v4, Lf/d/a/h;->c:Lf/d/a/r/e;

    .line 24
    invoke-virtual {v10, v8, v6}, Lf/d/a/r/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 25
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 26
    iget-object v12, v4, Lf/d/a/h;->f:Lf/d/a/o/p/h/f;

    .line 27
    invoke-virtual {v12, v10, v2}, Lf/d/a/o/p/h/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 28
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 29
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_4
    iget-object v4, v4, Lf/d/a/h;->h:Lf/d/a/r/d;

    .line 31
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 32
    iget-object v8, v4, Lf/d/a/r/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v8

    .line 33
    :try_start_2
    iget-object v4, v4, Lf/d/a/r/d;->b:Landroidx/collection/ArrayMap;

    new-instance v10, Lf/d/a/u/h;

    invoke-direct {v10, v5, v6, v2}, Lf/d/a/u/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 35
    monitor-exit v7

    throw v0

    .line 36
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    const-class v0, Ljava/io/File;

    iget-object v2, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 38
    iget-object v2, v2, Lf/d/a/o/n/h;->k:Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 40
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find any load path from "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 41
    iget-object v3, v3, Lf/d/a/o/n/h;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 43
    iget-object v3, v3, Lf/d/a/o/n/h;->k:Ljava/lang/Class;

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_7
    :goto_3
    iget-object v2, v1, Lf/d/a/o/n/x;->f:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 46
    iget v4, v1, Lf/d/a/o/n/x;->g:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    goto :goto_7

    .line 47
    :cond_9
    iput-object v9, v1, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    const/4 v0, 0x0

    :cond_a
    :goto_5
    if-nez v0, :cond_c

    .line 48
    iget v2, v1, Lf/d/a/o/n/x;->g:I

    iget-object v3, v1, Lf/d/a/o/n/x;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 49
    iget-object v2, v1, Lf/d/a/o/n/x;->f:Ljava/util/List;

    iget v3, v1, Lf/d/a/o/n/x;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lf/d/a/o/n/x;->g:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/o/o/n;

    .line 50
    iget-object v3, v1, Lf/d/a/o/n/x;->i:Ljava/io/File;

    iget-object v4, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 51
    iget v5, v4, Lf/d/a/o/n/h;->e:I

    .line 52
    iget v6, v4, Lf/d/a/o/n/h;->f:I

    .line 53
    iget-object v4, v4, Lf/d/a/o/n/h;->i:Lf/d/a/o/h;

    .line 54
    invoke-interface {v2, v3, v5, v6, v4}, Lf/d/a/o/o/n;->a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;

    move-result-object v2

    iput-object v2, v1, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    .line 55
    iget-object v2, v1, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    iget-object v3, v1, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    iget-object v3, v3, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v3}, Lf/d/a/o/m/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/d/a/o/n/h;->g(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 56
    iget-object v0, v1, Lf/d/a/o/n/x;->h:Lf/d/a/o/o/n$a;

    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    iget-object v2, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 57
    iget-object v2, v2, Lf/d/a/o/n/h;->o:Lf/d/a/f;

    .line 58
    invoke-interface {v0, v2, v1}, Lf/d/a/o/m/d;->f(Lf/d/a/f;Lf/d/a/o/m/d$a;)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    return v0

    .line 59
    :cond_d
    :goto_7
    iget v2, v1, Lf/d/a/o/n/x;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lf/d/a/o/n/x;->d:I

    .line 60
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 61
    iget v2, v1, Lf/d/a/o/n/x;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lf/d/a/o/n/x;->c:I

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_e

    return v3

    .line 63
    :cond_e
    iput v3, v1, Lf/d/a/o/n/x;->d:I

    .line 64
    :cond_f
    iget v2, v1, Lf/d/a/o/n/x;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/o/f;

    .line 65
    iget v4, v1, Lf/d/a/o/n/x;->d:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 66
    iget-object v5, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    invoke-virtual {v5, v4}, Lf/d/a/o/n/h;->f(Ljava/lang/Class;)Lf/d/a/o/l;

    move-result-object v18

    .line 67
    new-instance v5, Lf/d/a/o/n/y;

    iget-object v6, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 68
    iget-object v7, v6, Lf/d/a/o/n/h;->c:Lf/d/a/e;

    .line 69
    iget-object v13, v7, Lf/d/a/e;->a:Lf/d/a/o/n/b0/b;

    .line 70
    iget-object v15, v6, Lf/d/a/o/n/h;->n:Lf/d/a/o/f;

    .line 71
    iget v7, v6, Lf/d/a/o/n/h;->e:I

    .line 72
    iget v8, v6, Lf/d/a/o/n/h;->f:I

    .line 73
    iget-object v6, v6, Lf/d/a/o/n/h;->i:Lf/d/a/o/h;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    .line 74
    invoke-direct/range {v12 .. v20}, Lf/d/a/o/n/y;-><init>(Lf/d/a/o/n/b0/b;Lf/d/a/o/f;Lf/d/a/o/f;IILf/d/a/o/l;Ljava/lang/Class;Lf/d/a/o/h;)V

    iput-object v5, v1, Lf/d/a/o/n/x;->j:Lf/d/a/o/n/y;

    .line 75
    iget-object v4, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    invoke-virtual {v4}, Lf/d/a/o/n/h;->b()Lf/d/a/o/n/c0/a;

    move-result-object v4

    iget-object v5, v1, Lf/d/a/o/n/x;->j:Lf/d/a/o/n/y;

    invoke-interface {v4, v5}, Lf/d/a/o/n/c0/a;->b(Lf/d/a/o/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lf/d/a/o/n/x;->i:Ljava/io/File;

    if-eqz v4, :cond_7

    .line 76
    iput-object v2, v1, Lf/d/a/o/n/x;->e:Lf/d/a/o/f;

    .line 77
    iget-object v2, v1, Lf/d/a/o/n/x;->b:Lf/d/a/o/n/h;

    .line 78
    iget-object v2, v2, Lf/d/a/o/n/h;->c:Lf/d/a/e;

    .line 79
    iget-object v2, v2, Lf/d/a/e;->b:Lf/d/a/h;

    .line 80
    invoke-virtual {v2, v4}, Lf/d/a/h;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 81
    iput-object v2, v1, Lf/d/a/o/n/x;->f:Ljava/util/List;

    .line 82
    iput v3, v1, Lf/d/a/o/n/x;->g:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    .line 83
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
