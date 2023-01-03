.class public Lf/d/a/o/o/m$a;
.super Lf/d/a/u/f;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/o/o/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/u/f<",
        "Lf/d/a/o/o/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/d/a/o/o/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lf/d/a/u/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/o/m$b;

    if-eqz p1, :cond_0

    .line 2
    sget-object p2, Lf/d/a/o/o/m$b;->d:Ljava/util/Queue;

    monitor-enter p2

    .line 3
    :try_start_0
    sget-object v0, Lf/d/a/o/o/m$b;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
