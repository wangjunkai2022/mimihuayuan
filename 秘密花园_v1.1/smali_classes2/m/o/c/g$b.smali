.class public final Lm/o/c/g$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lm/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lm/o/c/g;

.field public final b:Lm/o/d/g;


# direct methods
.method public constructor <init>(Lm/o/c/g;Lm/o/d/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/c/g$b;->a:Lm/o/c/g;

    .line 3
    iput-object p2, p0, Lm/o/c/g$b;->b:Lm/o/d/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/g$b;->a:Lm/o/c/g;

    .line 2
    iget-object v0, v0, Lm/o/c/g;->a:Lm/o/d/g;

    .line 3
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lm/o/c/g$b;->b:Lm/o/d/g;

    iget-object v1, p0, Lm/o/c/g$b;->a:Lm/o/c/g;

    .line 3
    iget-boolean v2, v0, Lm/o/d/g;->b:Z

    if-nez v2, :cond_2

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Lm/o/d/g;->a:Ljava/util/List;

    .line 6
    iget-boolean v3, v0, Lm/o/d/g;->b:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lm/o/c/g;->c()V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
