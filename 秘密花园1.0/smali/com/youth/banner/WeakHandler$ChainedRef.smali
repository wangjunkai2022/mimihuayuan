.class public Lcom/youth/banner/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChainedRef"
.end annotation


# instance fields
.field public lock:Ljava/util/concurrent/locks/Lock;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public next:Lcom/youth/banner/WeakHandler$ChainedRef;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public prev:Lcom/youth/banner/WeakHandler$ChainedRef;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final runnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/locks/Lock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 4
    new-instance p1, Lcom/youth/banner/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/youth/banner/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/youth/banner/WeakHandler$ChainedRef;)V
    .locals 1
    .param p1    # Lcom/youth/banner/WeakHandler$ChainedRef;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object p1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v0, p1, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 5
    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 6
    iput-object p0, p1, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public remove()Lcom/youth/banner/WeakHandler$WeakRunnable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 7
    iput-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/youth/banner/WeakHandler$ChainedRef;->remove()Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
