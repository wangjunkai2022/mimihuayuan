.class public Lf/d/a/j;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lf/d/a/p/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lf/d/a/p/i;",
        "Ljava/lang/Object<",
        "Lf/d/a/i<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final l:Lf/d/a/s/e;


# instance fields
.field public final a:Lf/d/a/c;

.field public final b:Landroid/content/Context;

.field public final c:Lf/d/a/p/h;

.field public final d:Lf/d/a/p/n;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final e:Lf/d/a/p/m;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final f:Lf/d/a/p/o;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroid/os/Handler;

.field public final i:Lf/d/a/p/c;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lf/d/a/s/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lf/d/a/s/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lf/d/a/s/e;

    invoke-direct {v1}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v1, v0}, Lf/d/a/s/a;->e(Ljava/lang/Class;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    .line 3
    invoke-virtual {v0}, Lf/d/a/s/a;->k()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    sput-object v0, Lf/d/a/j;->l:Lf/d/a/s/e;

    .line 4
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 5
    new-instance v1, Lf/d/a/s/e;

    invoke-direct {v1}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v1, v0}, Lf/d/a/s/a;->e(Ljava/lang/Class;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    .line 6
    invoke-virtual {v0}, Lf/d/a/s/a;->k()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    .line 7
    sget-object v0, Lf/d/a/o/n/k;->c:Lf/d/a/o/n/k;

    .line 8
    new-instance v1, Lf/d/a/s/e;

    invoke-direct {v1}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v1, v0}, Lf/d/a/s/a;->f(Lf/d/a/o/n/k;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    .line 9
    sget-object v1, Lf/d/a/f;->d:Lf/d/a/f;

    invoke-virtual {v0, v1}, Lf/d/a/s/a;->r(Lf/d/a/f;)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/d/a/s/a;->v(Z)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    return-void
.end method

.method public constructor <init>(Lf/d/a/c;Lf/d/a/p/h;Lf/d/a/p/m;Landroid/content/Context;)V
    .locals 5
    .param p1    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/p/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lf/d/a/p/n;

    invoke-direct {v0}, Lf/d/a/p/n;-><init>()V

    .line 2
    iget-object v1, p1, Lf/d/a/c;->g:Lf/d/a/p/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Lf/d/a/p/o;

    invoke-direct {v2}, Lf/d/a/p/o;-><init>()V

    iput-object v2, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    .line 5
    new-instance v2, Lf/d/a/j$a;

    invoke-direct {v2, p0}, Lf/d/a/j$a;-><init>(Lf/d/a/j;)V

    iput-object v2, p0, Lf/d/a/j;->g:Ljava/lang/Runnable;

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lf/d/a/j;->h:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lf/d/a/j;->a:Lf/d/a/c;

    .line 8
    iput-object p2, p0, Lf/d/a/j;->c:Lf/d/a/p/h;

    .line 9
    iput-object p3, p0, Lf/d/a/j;->e:Lf/d/a/p/m;

    .line 10
    iput-object v0, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    .line 11
    iput-object p4, p0, Lf/d/a/j;->b:Landroid/content/Context;

    .line 12
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lf/d/a/j$b;

    invoke-direct {p4, p0, v0}, Lf/d/a/j$b;-><init>(Lf/d/a/j;Lf/d/a/p/n;)V

    .line 13
    check-cast v1, Lf/d/a/p/f;

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 14
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    const-string v4, "ConnectivityMonitor"

    .line 15
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Lf/d/a/p/e;

    invoke-direct {v1, p3, p4}, Lf/d/a/p/e;-><init>(Landroid/content/Context;Lf/d/a/p/c$a;)V

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lf/d/a/p/j;

    invoke-direct {v1}, Lf/d/a/p/j;-><init>()V

    .line 18
    :goto_1
    iput-object v1, p0, Lf/d/a/j;->i:Lf/d/a/p/c;

    .line 19
    invoke-static {}, Lf/d/a/u/i;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 20
    iget-object p3, p0, Lf/d/a/j;->h:Landroid/os/Handler;

    iget-object p4, p0, Lf/d/a/j;->g:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 21
    :cond_2
    invoke-interface {p2, p0}, Lf/d/a/p/h;->a(Lf/d/a/p/i;)V

    .line 22
    :goto_2
    iget-object p3, p0, Lf/d/a/j;->i:Lf/d/a/p/c;

    invoke-interface {p2, p3}, Lf/d/a/p/h;->a(Lf/d/a/p/i;)V

    .line 23
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    iget-object p3, p1, Lf/d/a/c;->c:Lf/d/a/e;

    .line 25
    iget-object p3, p3, Lf/d/a/e;->e:Ljava/util/List;

    .line 26
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lf/d/a/j;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iget-object p2, p1, Lf/d/a/c;->c:Lf/d/a/e;

    .line 28
    monitor-enter p2

    .line 29
    :try_start_0
    iget-object p3, p2, Lf/d/a/e;->j:Lf/d/a/s/e;

    if-nez p3, :cond_4

    .line 30
    iget-object p3, p2, Lf/d/a/e;->d:Lf/d/a/c$a;

    check-cast p3, Lf/d/a/d$a;

    if-eqz p3, :cond_3

    .line 31
    new-instance p3, Lf/d/a/s/e;

    invoke-direct {p3}, Lf/d/a/s/e;-><init>()V

    .line 32
    iput-boolean v2, p3, Lf/d/a/s/a;->t:Z

    .line 33
    iput-object p3, p2, Lf/d/a/e;->j:Lf/d/a/s/e;

    goto :goto_3

    .line 34
    :cond_3
    throw v0

    .line 35
    :cond_4
    :goto_3
    iget-object p3, p2, Lf/d/a/e;->j:Lf/d/a/s/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 36
    invoke-virtual {p0, p3}, Lf/d/a/j;->s(Lf/d/a/s/e;)V

    .line 37
    iget-object p3, p1, Lf/d/a/c;->h:Ljava/util/List;

    monitor-enter p3

    .line 38
    :try_start_1
    iget-object p2, p1, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 39
    iget-object p1, p1, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit p3

    return-void

    .line 41
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 43
    monitor-exit p2

    throw p1

    .line 44
    :cond_6
    throw v0
.end method


# virtual methods
.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/j;->q()V

    .line 2
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    invoke-virtual {v0}, Lf/d/a/p/o;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Ljava/lang/Class;)Lf/d/a/i;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lf/d/a/i<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/i;

    iget-object v1, p0, Lf/d/a/j;->a:Lf/d/a/c;

    iget-object v2, p0, Lf/d/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lf/d/a/i;-><init>(Lf/d/a/c;Lf/d/a/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public k()Lf/d/a/i;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d/a/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lf/d/a/j;->j(Ljava/lang/Class;)Lf/d/a/i;

    move-result-object v0

    sget-object v1, Lf/d/a/j;->l:Lf/d/a/s/e;

    invoke-virtual {v0, v1}, Lf/d/a/i;->C(Lf/d/a/s/a;)Lf/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public l()Lf/d/a/i;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d/a/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lf/d/a/j;->j(Ljava/lang/Class;)Lf/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public m(Lf/d/a/s/h/h;)V
    .locals 4
    .param p1    # Lf/d/a/s/h/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/h/h<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lf/d/a/j;->t(Lf/d/a/s/h/h;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lf/d/a/s/h/h;->f()Lf/d/a/s/b;

    move-result-object v1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lf/d/a/j;->a:Lf/d/a/c;

    .line 4
    iget-object v2, v0, Lf/d/a/c;->h:Ljava/util/List;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/j;

    .line 6
    invoke-virtual {v3, p1}, Lf/d/a/j;->t(Lf/d/a/s/h/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 7
    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lf/d/a/s/h/h;->i(Lf/d/a/s/b;)V

    .line 10
    invoke-interface {v1}, Lf/d/a/s/b;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public n(Ljava/lang/Integer;)Lf/d/a/i;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lf/d/a/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/i;->H(Ljava/lang/Integer;)Lf/d/a/i;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;)Lf/d/a/i;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lf/d/a/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/i;->I(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    invoke-virtual {v0}, Lf/d/a/p/o;->onDestroy()V

    .line 2
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    .line 3
    iget-object v0, v0, Lf/d/a/p/o;->a:Ljava/util/Set;

    invoke-static {v0}, Lf/d/a/u/i;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d/a/s/h/h;

    .line 5
    invoke-virtual {p0, v1}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    .line 7
    iget-object v0, v0, Lf/d/a/p/o;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    .line 9
    iget-object v1, v0, Lf/d/a/p/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lf/d/a/u/i;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/s/b;

    .line 10
    invoke-virtual {v0, v2}, Lf/d/a/p/n;->a(Lf/d/a/s/b;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Lf/d/a/p/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lf/d/a/j;->c:Lf/d/a/p/h;

    invoke-interface {v0, p0}, Lf/d/a/p/h;->b(Lf/d/a/p/i;)V

    .line 13
    iget-object v0, p0, Lf/d/a/j;->c:Lf/d/a/p/h;

    iget-object v1, p0, Lf/d/a/j;->i:Lf/d/a/p/c;

    invoke-interface {v0, v1}, Lf/d/a/p/h;->b(Lf/d/a/p/i;)V

    .line 14
    iget-object v0, p0, Lf/d/a/j;->h:Landroid/os/Handler;

    iget-object v1, p0, Lf/d/a/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lf/d/a/j;->a:Lf/d/a/c;

    .line 16
    iget-object v1, v0, Lf/d/a/c;->h:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, v0, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v0, v0, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/j;->r()V

    .line 2
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    invoke-virtual {v0}, Lf/d/a/p/o;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    return-void
.end method

.method public p(Ljava/lang/String;)Lf/d/a/i;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lf/d/a/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/j;->l()Lf/d/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/d/a/i;->J(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized q()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lf/d/a/p/n;->c:Z

    .line 3
    iget-object v1, v0, Lf/d/a/p/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lf/d/a/u/i;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/s/b;

    .line 4
    invoke-interface {v2}, Lf/d/a/s/b;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lf/d/a/s/b;->b()V

    .line 6
    iget-object v3, v0, Lf/d/a/p/n;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lf/d/a/p/n;->c:Z

    .line 3
    iget-object v1, v0, Lf/d/a/p/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lf/d/a/u/i;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d/a/s/b;

    .line 4
    invoke-interface {v2}, Lf/d/a/s/b;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lf/d/a/s/b;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Lf/d/a/s/b;->c()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lf/d/a/p/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s(Lf/d/a/s/e;)V
    .locals 0
    .param p1    # Lf/d/a/s/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lf/d/a/s/a;->d()Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/s/e;

    invoke-virtual {p1}, Lf/d/a/s/a;->b()Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/s/e;

    iput-object p1, p0, Lf/d/a/j;->k:Lf/d/a/s/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized t(Lf/d/a/s/h/h;)Z
    .locals 3
    .param p1    # Lf/d/a/s/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/h/h<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lf/d/a/s/h/h;->f()Lf/d/a/s/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    invoke-virtual {v2, v0}, Lf/d/a/p/n;->a(Lf/d/a/s/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/d/a/j;->f:Lf/d/a/p/o;

    .line 5
    iget-object v0, v0, Lf/d/a/p/o;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lf/d/a/s/h/h;->i(Lf/d/a/s/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d/a/j;->d:Lf/d/a/p/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/d/a/j;->e:Lf/d/a/p/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
