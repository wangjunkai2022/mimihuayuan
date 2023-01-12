.class public final Lf/d/a/s/g;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lf/d/a/s/b;
.implements Lf/d/a/s/h/g;
.implements Lf/d/a/s/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/s/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/s/b;",
        "Lf/d/a/s/h/g;",
        "Lf/d/a/s/f;"
    }
.end annotation


# static fields
.field public static final D:Z


# instance fields
.field public A:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public B:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public C:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lf/d/a/u/j/d;

.field public final c:Ljava/lang/Object;

.field public final d:Lf/d/a/s/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/s/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Lf/d/a/s/c;

.field public final f:Landroid/content/Context;

.field public final g:Lf/d/a/e;

.field public final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:Lf/d/a/s/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/s/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Lf/d/a/f;

.field public final n:Lf/d/a/s/h/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/s/h/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:Lf/d/a/s/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/s/i/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lf/d/a/o/n/w;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/w<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Lf/d/a/o/n/l$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public t:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile u:Lf/d/a/o/n/l;

.field public v:Lf/d/a/s/g$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public w:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lf/d/a/s/g;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/d/a/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lf/d/a/s/a;IILf/d/a/f;Lf/d/a/s/h/h;Lf/d/a/s/d;Ljava/util/List;Lf/d/a/s/c;Lf/d/a/o/n/l;Lf/d/a/s/i/c;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lf/d/a/s/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/d/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lf/d/a/s/a<",
            "*>;II",
            "Lf/d/a/f;",
            "Lf/d/a/s/h/h<",
            "TR;>;",
            "Lf/d/a/s/d<",
            "TR;>;",
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "TR;>;>;",
            "Lf/d/a/s/c;",
            "Lf/d/a/o/n/l;",
            "Lf/d/a/s/i/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v2, Lf/d/a/s/g;->D:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lf/d/a/s/g;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Lf/d/a/u/j/d$b;

    invoke-direct {v2}, Lf/d/a/u/j/d$b;-><init>()V

    .line 4
    iput-object v2, v0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    move-object v2, p1

    .line 6
    iput-object v2, v0, Lf/d/a/s/g;->f:Landroid/content/Context;

    .line 7
    iput-object v1, v0, Lf/d/a/s/g;->g:Lf/d/a/e;

    move-object v2, p4

    .line 8
    iput-object v2, v0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    move-object v2, p5

    .line 9
    iput-object v2, v0, Lf/d/a/s/g;->i:Ljava/lang/Class;

    move-object v2, p6

    .line 10
    iput-object v2, v0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    move v2, p7

    .line 11
    iput v2, v0, Lf/d/a/s/g;->k:I

    move v2, p8

    .line 12
    iput v2, v0, Lf/d/a/s/g;->l:I

    move-object v2, p9

    .line 13
    iput-object v2, v0, Lf/d/a/s/g;->m:Lf/d/a/f;

    move-object v2, p10

    .line 14
    iput-object v2, v0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    move-object v2, p11

    .line 15
    iput-object v2, v0, Lf/d/a/s/g;->d:Lf/d/a/s/d;

    move-object v2, p12

    .line 16
    iput-object v2, v0, Lf/d/a/s/g;->o:Ljava/util/List;

    move-object/from16 v2, p13

    .line 17
    iput-object v2, v0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    move-object/from16 v2, p14

    .line 18
    iput-object v2, v0, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    move-object/from16 v2, p15

    .line 19
    iput-object v2, v0, Lf/d/a/s/g;->p:Lf/d/a/s/i/c;

    move-object/from16 v2, p16

    .line 20
    iput-object v2, v0, Lf/d/a/s/g;->q:Ljava/util/concurrent/Executor;

    .line 21
    sget-object v2, Lf/d/a/s/g$a;->a:Lf/d/a/s/g$a;

    iput-object v2, v0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 22
    iget-object v2, v0, Lf/d/a/s/g;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 23
    iget-boolean v1, v1, Lf/d/a/e;->h:Z

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lf/d/a/s/g;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v2, Lf/d/a/s/g$a;->f:Lf/d/a/s/g$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/s/g;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/d/a/s/g;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 5

    .line 1
    sget-object v0, Lf/d/a/s/g$a;->c:Lf/d/a/s/g$a;

    sget-object v1, Lf/d/a/s/g$a;->b:Lf/d/a/s/g$a;

    iget-object v2, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/s/g;->f()V

    .line 3
    iget-object v3, p0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v3}, Lf/d/a/u/j/d;->a()V

    .line 4
    invoke-static {}, Lf/d/a/u/e;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lf/d/a/s/g;->t:J

    .line 5
    iget-object v3, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 6
    iget v0, p0, Lf/d/a/s/g;->k:I

    iget v1, p0, Lf/d/a/s/g;->l:I

    invoke-static {v0, v1}, Lf/d/a/u/i;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lf/d/a/s/g;->k:I

    iput v0, p0, Lf/d/a/s/g;->z:I

    .line 8
    iget v0, p0, Lf/d/a/s/g;->l:I

    iput v0, p0, Lf/d/a/s/g;->A:I

    .line 9
    :cond_0
    invoke-virtual {p0}, Lf/d/a/s/g;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 10
    :goto_0
    new-instance v1, Lf/d/a/o/n/r;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, Lf/d/a/o/n/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lf/d/a/s/g;->m(Lf/d/a/o/n/r;I)V

    .line 11
    monitor-exit v2

    return-void

    .line 12
    :cond_2
    iget-object v3, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    if-eq v3, v1, :cond_a

    .line 13
    iget-object v3, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v4, Lf/d/a/s/g$a;->d:Lf/d/a/s/g$a;

    if-ne v3, v4, :cond_3

    .line 14
    iget-object v0, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    sget-object v1, Lf/d/a/o/a;->e:Lf/d/a/o/a;

    invoke-virtual {p0, v0, v1}, Lf/d/a/s/g;->n(Lf/d/a/o/n/w;Lf/d/a/o/a;)V

    .line 15
    monitor-exit v2

    return-void

    .line 16
    :cond_3
    iput-object v0, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 17
    iget v3, p0, Lf/d/a/s/g;->k:I

    iget v4, p0, Lf/d/a/s/g;->l:I

    invoke-static {v3, v4}, Lf/d/a/u/i;->m(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget v3, p0, Lf/d/a/s/g;->k:I

    iget v4, p0, Lf/d/a/s/g;->l:I

    invoke-virtual {p0, v3, v4}, Lf/d/a/s/g;->e(II)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v3, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-interface {v3, p0}, Lf/d/a/s/h/h;->h(Lf/d/a/s/h/g;)V

    .line 20
    :goto_1
    iget-object v3, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    if-eq v3, v1, :cond_5

    iget-object v1, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    if-ne v1, v0, :cond_8

    .line 21
    :cond_5
    iget-object v0, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lf/d/a/s/c;->c(Lf/d/a/s/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-virtual {p0}, Lf/d/a/s/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/d/a/s/h/h;->e(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_8
    sget-boolean v0, Lf/d/a/s/g;->D:Z

    if-eqz v0, :cond_9

    .line 24
    iget-wide v0, p0, Lf/d/a/s/g;->t:J

    invoke-static {v0, v1}, Lf/d/a/u/e;->a(J)D

    .line 25
    :cond_9
    monitor-exit v2

    return-void

    .line 26
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 5

    .line 1
    sget-object v0, Lf/d/a/s/g$a;->f:Lf/d/a/s/g$a;

    .line 2
    iget-object v1, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lf/d/a/s/g;->f()V

    .line 4
    iget-object v2, p0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v2}, Lf/d/a/u/j/d;->a()V

    .line 5
    iget-object v2, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    if-ne v2, v0, :cond_0

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lf/d/a/s/g;->g()V

    .line 8
    iget-object v2, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    .line 10
    iput-object v3, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    move-object v3, v2

    .line 11
    :cond_1
    iget-object v2, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lf/d/a/s/c;->f(Lf/d/a/s/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-virtual {p0}, Lf/d/a/s/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Lf/d/a/s/h/h;->g(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_4
    iput-object v0, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 15
    iget-object v0, p0, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    invoke-virtual {v0, v3}, Lf/d/a/o/n/l;->f(Lf/d/a/o/n/w;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v2, Lf/d/a/s/g$a;->d:Lf/d/a/s/g$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(II)V
    .locals 23

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    sget-object v14, Lf/d/a/s/g$a;->b:Lf/d/a/s/g$a;

    iget-object v2, v15, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v2}, Lf/d/a/u/j/d;->a()V

    .line 2
    iget-object v13, v15, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v13

    .line 3
    :try_start_0
    sget-boolean v2, Lf/d/a/s/g;->D:Z

    if-eqz v2, :cond_0

    .line 4
    iget-wide v2, v15, Lf/d/a/s/g;->t:J

    invoke-static {v2, v3}, Lf/d/a/u/e;->a(J)D

    .line 5
    :cond_0
    iget-object v2, v15, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v3, Lf/d/a/s/g$a;->c:Lf/d/a/s/g$a;

    if-eq v2, v3, :cond_1

    .line 6
    monitor-exit v13

    return-void

    .line 7
    :cond_1
    iput-object v14, v15, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 8
    iget-object v2, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 9
    iget v2, v2, Lf/d/a/s/a;->b:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11
    :goto_0
    iput v0, v15, Lf/d/a/s/g;->z:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 12
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 13
    :goto_1
    iput v0, v15, Lf/d/a/s/g;->A:I

    .line 14
    sget-boolean v0, Lf/d/a/s/g;->D:Z

    if-eqz v0, :cond_4

    .line 15
    iget-wide v0, v15, Lf/d/a/s/g;->t:J

    invoke-static {v0, v1}, Lf/d/a/u/e;->a(J)D

    .line 16
    :cond_4
    iget-object v1, v15, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    iget-object v2, v15, Lf/d/a/s/g;->g:Lf/d/a/e;

    iget-object v3, v15, Lf/d/a/s/g;->h:Ljava/lang/Object;

    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 17
    iget-object v4, v0, Lf/d/a/s/a;->l:Lf/d/a/o/f;

    .line 18
    iget v5, v15, Lf/d/a/s/g;->z:I

    iget v6, v15, Lf/d/a/s/g;->A:I

    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 19
    iget-object v7, v0, Lf/d/a/s/a;->s:Ljava/lang/Class;

    .line 20
    iget-object v8, v15, Lf/d/a/s/g;->i:Ljava/lang/Class;

    iget-object v9, v15, Lf/d/a/s/g;->m:Lf/d/a/f;

    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 21
    iget-object v10, v0, Lf/d/a/s/a;->c:Lf/d/a/o/n/k;

    .line 22
    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 23
    iget-object v11, v0, Lf/d/a/s/a;->r:Ljava/util/Map;

    .line 24
    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 25
    iget-boolean v12, v0, Lf/d/a/s/a;->m:Z

    .line 26
    iget-object v0, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 27
    iget-boolean v0, v0, Lf/d/a/s/a;->y:Z

    move-object/from16 v16, v14

    .line 28
    iget-object v14, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 29
    iget-object v14, v14, Lf/d/a/s/a;->q:Lf/d/a/o/h;

    move-object/from16 v17, v14

    .line 30
    iget-object v14, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 31
    iget-boolean v14, v14, Lf/d/a/s/a;->i:Z

    move/from16 v18, v14

    .line 32
    iget-object v14, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 33
    iget-boolean v14, v14, Lf/d/a/s/a;->w:Z

    move/from16 v19, v14

    .line 34
    iget-object v14, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 35
    iget-boolean v14, v14, Lf/d/a/s/a;->z:Z

    move/from16 v20, v14

    .line 36
    iget-object v14, v15, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 37
    iget-boolean v14, v14, Lf/d/a/s/a;->x:Z

    move/from16 p1, v14

    .line 38
    iget-object v14, v15, Lf/d/a/s/g;->q:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v21, v13

    move v13, v0

    move-object/from16 v22, v16

    move/from16 v0, v18

    move/from16 v16, v19

    move/from16 v18, v20

    move/from16 v19, p1

    move-object/from16 v20, v14

    move-object/from16 v14, v17

    move v15, v0

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, p0

    .line 39
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lf/d/a/o/n/l;->b(Lf/d/a/e;Ljava/lang/Object;Lf/d/a/o/f;IILjava/lang/Class;Ljava/lang/Class;Lf/d/a/f;Lf/d/a/o/n/k;Ljava/util/Map;ZZLf/d/a/o/h;ZZZZLf/d/a/s/f;Ljava/util/concurrent/Executor;)Lf/d/a/o/n/l$d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    .line 40
    iget-object v0, v1, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 41
    iput-object v0, v1, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    .line 42
    :cond_5
    sget-boolean v0, Lf/d/a/s/g;->D:Z

    if-eqz v0, :cond_6

    .line 43
    iget-wide v2, v1, Lf/d/a/s/g;->t:J

    invoke-static {v2, v3}, Lf/d/a/u/e;->a(J)D

    .line 44
    :cond_6
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v13

    move-object v1, v15

    :goto_2
    move-object/from16 v13, v21

    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public final f()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/d/a/s/g;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/s/g;->f()V

    .line 2
    iget-object v0, p0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    .line 3
    iget-object v0, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-interface {v0, p0}, Lf/d/a/s/h/h;->a(Lf/d/a/s/h/g;)V

    .line 4
    iget-object v0, p0, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lf/d/a/o/n/l$d;->c:Lf/d/a/o/n/l;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lf/d/a/o/n/l$d;->a:Lf/d/a/o/n/m;

    iget-object v0, v0, Lf/d/a/o/n/l$d;->b:Lf/d/a/s/f;

    invoke-virtual {v2, v0}, Lf/d/a/o/n/m;->h(Lf/d/a/s/f;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 3
    iget-object v1, v0, Lf/d/a/s/a;->o:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lf/d/a/s/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lf/d/a/s/a;->p:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lf/d/a/s/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/s/g;->y:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lf/d/a/s/g;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 3
    iget-object v1, v0, Lf/d/a/s/a;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lf/d/a/s/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lf/d/a/s/a;->h:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lf/d/a/s/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/s/g;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lf/d/a/s/g;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v2, Lf/d/a/s/g$a;->b:Lf/d/a/s/g$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    sget-object v2, Lf/d/a/s/g$a;->c:Lf/d/a/s/g$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Lf/d/a/s/b;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lf/d/a/s/g;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v1, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v4, v1, Lf/d/a/s/g;->k:I

    .line 4
    iget v5, v1, Lf/d/a/s/g;->l:I

    .line 5
    iget-object v6, v1, Lf/d/a/s/g;->h:Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Lf/d/a/s/g;->i:Ljava/lang/Class;

    .line 7
    iget-object v8, v1, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 8
    iget-object v9, v1, Lf/d/a/s/g;->m:Lf/d/a/f;

    .line 9
    iget-object v10, v1, Lf/d/a/s/g;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lf/d/a/s/g;->o:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 10
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast v0, Lf/d/a/s/g;

    .line 12
    iget-object v11, v0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_1
    iget v2, v0, Lf/d/a/s/g;->k:I

    .line 14
    iget v12, v0, Lf/d/a/s/g;->l:I

    .line 15
    iget-object v13, v0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    .line 16
    iget-object v14, v0, Lf/d/a/s/g;->i:Ljava/lang/Class;

    .line 17
    iget-object v15, v0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 18
    iget-object v3, v0, Lf/d/a/s/g;->m:Lf/d/a/f;

    .line 19
    iget-object v1, v0, Lf/d/a/s/g;->o:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lf/d/a/s/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    .line 21
    invoke-static {v6, v13}, Lf/d/a/u/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v8, v15}, Lf/d/a/s/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_0
    move-exception v0

    .line 24
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final k()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/d/a/s/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final l(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 2
    iget-object v0, v0, Lf/d/a/s/a;->u:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/d/a/s/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lf/d/a/s/g;->g:Lf/d/a/e;

    .line 5
    invoke-static {v1, v1, p1, v0}, Lf/d/a/o/p/e/a;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lf/d/a/o/n/r;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    .line 2
    iget-object v0, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 3
    :try_start_0
    iget-object v2, p0, Lf/d/a/s/g;->g:Lf/d/a/e;

    .line 4
    iget v2, v2, Lf/d/a/e;->i:I

    const/4 v3, 0x0

    if-gt v2, p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load failed for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with size ["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf/d/a/s/g;->z:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf/d/a/s/g;->A:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p2, 0x4

    if-gt v2, p2, :cond_0

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1, p1, p2}, Lf/d/a/o/n/r;->a(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 9
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    move v4, v5

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    .line 11
    sget-object p2, Lf/d/a/s/g$a;->e:Lf/d/a/s/g$a;

    iput-object p2, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lf/d/a/s/g;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v1, p0, Lf/d/a/s/g;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lf/d/a/s/g;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/d/a/s/d;

    .line 15
    iget-object v5, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    iget-object v6, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    .line 16
    invoke-virtual {p0}, Lf/d/a/s/g;->k()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lf/d/a/s/d;->b(Lf/d/a/o/n/r;Ljava/lang/Object;Lf/d/a/s/h/h;Z)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 17
    :cond_2
    iget-object v1, p0, Lf/d/a/s/g;->d:Lf/d/a/s/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lf/d/a/s/g;->d:Lf/d/a/s/d;

    iget-object v4, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    iget-object v5, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    .line 18
    invoke-virtual {p0}, Lf/d/a/s/g;->k()Z

    move-result v6

    invoke-interface {v1, p1, v4, v5, v6}, Lf/d/a/s/d;->b(Lf/d/a/o/n/r;Ljava/lang/Object;Lf/d/a/s/h/h;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    or-int p1, v2, p2

    if-nez p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lf/d/a/s/g;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_4
    :try_start_2
    iput-boolean v3, p0, Lf/d/a/s/g;->B:Z

    .line 21
    iget-object p1, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz p1, :cond_5

    .line 22
    invoke-interface {p1, p0}, Lf/d/a/s/c;->a(Lf/d/a/s/b;)V

    .line 23
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iput-boolean v3, p0, Lf/d/a/s/g;->B:Z

    throw p1

    .line 25
    :cond_6
    throw v1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public n(Lf/d/a/o/n/w;Lf/d/a/o/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/w<",
            "*>;",
            "Lf/d/a/o/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->b:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/s/g;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-object v0, p0, Lf/d/a/s/g;->s:Lf/d/a/o/n/l$d;

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lf/d/a/o/n/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/d/a/s/g;->i:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/d/a/o/n/r;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v2}, Lf/d/a/s/g;->m(Lf/d/a/o/n/r;I)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lf/d/a/o/n/w;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    iget-object v4, p0, Lf/d/a/s/g;->i:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lf/d/a/s/c;->d(Lf/d/a/s/b;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 10
    :try_start_2
    iput-object v0, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    .line 11
    sget-object p2, Lf/d/a/s/g$a;->d:Lf/d/a/s/g$a;

    iput-object p2, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p2, p0, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    invoke-virtual {p2, p1}, Lf/d/a/o/n/l;->f(Lf/d/a/o/n/w;)V

    return-void

    .line 14
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, v3, p2}, Lf/d/a/s/g;->o(Lf/d/a/o/n/w;Ljava/lang/Object;Lf/d/a/o/a;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_5
    :goto_2
    :try_start_4
    iput-object v0, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    .line 17
    new-instance p2, Lf/d/a/o/n/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/d/a/s/g;->i:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lf/d/a/o/n/r;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2, v2}, Lf/d/a/s/g;->m(Lf/d/a/o/n/r;I)V

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object p2, p0, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    invoke-virtual {p2, p1}, Lf/d/a/o/n/l;->f(Lf/d/a/o/n/w;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 23
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 24
    iget-object p2, p0, Lf/d/a/s/g;->u:Lf/d/a/o/n/l;

    invoke-virtual {p2, v0}, Lf/d/a/o/n/l;->f(Lf/d/a/o/n/w;)V

    :cond_8
    throw p1
.end method

.method public final o(Lf/d/a/o/n/w;Ljava/lang/Object;Lf/d/a/o/a;)V
    .locals 10
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/w<",
            "TR;>;TR;",
            "Lf/d/a/o/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/d/a/s/g;->k()Z

    move-result v6

    .line 2
    sget-object v0, Lf/d/a/s/g$a;->d:Lf/d/a/s/g$a;

    iput-object v0, p0, Lf/d/a/s/g;->v:Lf/d/a/s/g$a;

    .line 3
    iput-object p1, p0, Lf/d/a/s/g;->r:Lf/d/a/o/n/w;

    .line 4
    iget-object p1, p0, Lf/d/a/s/g;->g:Lf/d/a/e;

    .line 5
    iget p1, p1, Lf/d/a/e;->i:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 6
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/d/a/s/g;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/d/a/s/g;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lf/d/a/s/g;->t:J

    .line 8
    invoke-static {v0, v1}, Lf/d/a/u/e;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lf/d/a/s/g;->B:Z

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v0, p0, Lf/d/a/s/g;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lf/d/a/s/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/s/d;

    .line 12
    iget-object v2, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 13
    invoke-interface/range {v0 .. v5}, Lf/d/a/s/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/o/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 14
    :cond_2
    iget-object v0, p0, Lf/d/a/s/g;->d:Lf/d/a/s/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/d/a/s/g;->d:Lf/d/a/s/d;

    iget-object v2, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 15
    invoke-interface/range {v0 .. v5}, Lf/d/a/s/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lf/d/a/s/h/h;Lf/d/a/o/a;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lf/d/a/s/g;->p:Lf/d/a/s/i/c;

    check-cast p1, Lf/d/a/s/i/a$a;

    if-eqz p1, :cond_4

    .line 17
    sget-object p1, Lf/d/a/s/i/a;->a:Lf/d/a/s/i/a;

    .line 18
    iget-object p3, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-interface {p3, p2, p1}, Lf/d/a/s/h/h;->b(Ljava/lang/Object;Lf/d/a/s/i/b;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 19
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    :goto_2
    iput-boolean v7, p0, Lf/d/a/s/g;->B:Z

    .line 21
    iget-object p1, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1, p0}, Lf/d/a/s/c;->e(Lf/d/a/s/b;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 23
    iput-boolean v7, p0, Lf/d/a/s/g;->B:Z

    throw p1
.end method

.method public final p()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/s/g;->e:Lf/d/a/s/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lf/d/a/s/c;->c(Lf/d/a/s/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf/d/a/s/g;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lf/d/a/s/g;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lf/d/a/s/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lf/d/a/s/g;->j:Lf/d/a/s/a;

    .line 6
    iget-object v1, v0, Lf/d/a/s/a;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lf/d/a/s/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 8
    iget v0, v0, Lf/d/a/s/a;->f:I

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lf/d/a/s/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/s/g;->w:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_4
    iget-object v0, p0, Lf/d/a/s/g;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lf/d/a/s/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    :cond_6
    iget-object v1, p0, Lf/d/a/s/g;->n:Lf/d/a/s/h/h;

    invoke-interface {v1, v0}, Lf/d/a/s/h/h;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
