.class public Lf/d/a/o/n/m$b;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/d/a/s/f;

.field public final synthetic b:Lf/d/a/o/n/m;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/m;Lf/d/a/s/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/d/a/o/n/m$b;->a:Lf/d/a/s/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/m$b;->a:Lf/d/a/s/f;

    check-cast v0, Lf/d/a/s/g;

    .line 2
    iget-object v1, v0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v1}, Lf/d/a/u/j/d;->a()V

    .line 3
    iget-object v0, v0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    iget-object v2, v2, Lf/d/a/o/n/m;->a:Lf/d/a/o/n/m$e;

    iget-object v3, p0, Lf/d/a/o/n/m$b;->a:Lf/d/a/s/f;

    .line 7
    iget-object v2, v2, Lf/d/a/o/n/m$e;->a:Ljava/util/List;

    .line 8
    new-instance v4, Lf/d/a/o/n/m$d;

    .line 9
    sget-object v5, Lf/d/a/u/d;->b:Ljava/util/concurrent/Executor;

    .line 10
    invoke-direct {v4, v3, v5}, Lf/d/a/o/n/m$d;-><init>(Lf/d/a/s/f;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    iget-object v2, v2, Lf/d/a/o/n/m;->v:Lf/d/a/o/n/q;

    invoke-virtual {v2}, Lf/d/a/o/n/q;->a()V

    .line 13
    iget-object v2, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    iget-object v3, p0, Lf/d/a/o/n/m$b;->a:Lf/d/a/s/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 14
    :try_start_2
    iget-object v4, v2, Lf/d/a/o/n/m;->v:Lf/d/a/o/n/q;

    iget-object v2, v2, Lf/d/a/o/n/m;->r:Lf/d/a/o/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast v3, Lf/d/a/s/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, v4, v2}, Lf/d/a/s/g;->n(Lf/d/a/o/n/w;Lf/d/a/o/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    iget-object v2, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    iget-object v3, p0, Lf/d/a/o/n/m$b;->a:Lf/d/a/s/f;

    invoke-virtual {v2, v3}, Lf/d/a/o/n/m;->h(Lf/d/a/s/f;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 16
    new-instance v3, Lf/d/a/o/n/c;

    invoke-direct {v3, v2}, Lf/d/a/o/n/c;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    .line 17
    throw v2

    .line 18
    :cond_1
    :goto_0
    iget-object v2, p0, Lf/d/a/o/n/m$b;->b:Lf/d/a/o/n/m;

    invoke-virtual {v2}, Lf/d/a/o/n/m;->d()V

    .line 19
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 21
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :catchall_2
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method
