.class public final Lf/d/a/o/n/v;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lf/d/a/o/n/w;
.implements Lf/d/a/u/j/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/w<",
        "TZ;>;",
        "Lf/d/a/u/j/a$d;"
    }
.end annotation


# static fields
.field public static final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lf/d/a/o/n/v<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/d/a/u/j/d;

.field public b:Lf/d/a/o/n/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/w<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/d/a/o/n/v$a;

    invoke-direct {v0}, Lf/d/a/o/n/v$a;-><init>()V

    const/16 v1, 0x14

    .line 2
    invoke-static {v1, v0}, Lf/d/a/u/j/a;->a(ILf/d/a/u/j/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lf/d/a/o/n/v;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/u/j/d$b;

    invoke-direct {v0}, Lf/d/a/u/j/d$b;-><init>()V

    .line 3
    iput-object v0, p0, Lf/d/a/o/n/v;->a:Lf/d/a/u/j/d;

    return-void
.end method

.method public static a(Lf/d/a/o/n/w;)Lf/d/a/o/n/v;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d/a/o/n/w<",
            "TZ;>;)",
            "Lf/d/a/o/n/v<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/n/v;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/o/n/v;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lf/d/a/o/n/v;->d:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lf/d/a/o/n/v;->c:Z

    .line 5
    iput-object p0, v0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c()Lf/d/a/u/j/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/v;->a:Lf/d/a/u/j/d;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/o/n/v;->a:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/d/a/o/n/v;->d:Z

    .line 3
    iget-boolean v0, p0, Lf/d/a/o/n/v;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->d()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    .line 6
    sget-object v0, Lf/d/a/o/n/v;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/o/n/v;->a:Lf/d/a/u/j/d;

    invoke-virtual {v0}, Lf/d/a/u/j/d;->a()V

    .line 2
    iget-boolean v0, p0, Lf/d/a/o/n/v;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/d/a/o/n/v;->c:Z

    .line 4
    iget-boolean v0, p0, Lf/d/a/o/n/v;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lf/d/a/o/n/v;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/v;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->getSize()I

    move-result v0

    return v0
.end method
