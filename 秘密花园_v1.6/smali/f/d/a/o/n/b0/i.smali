.class public final Lf/d/a/o/n/b0/i;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lf/d/a/o/n/b0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/n/b0/i$a;,
        Lf/d/a/o/n/b0/i$b;
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/b0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/b0/g<",
            "Lf/d/a/o/n/b0/i$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/d/a/o/n/b0/i$b;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/d/a/o/n/b0/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/n/b0/g;

    invoke-direct {v0}, Lf/d/a/o/n/b0/g;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/b0/i;->a:Lf/d/a/o/n/b0/g;

    .line 3
    new-instance v0, Lf/d/a/o/n/b0/i$b;

    invoke-direct {v0}, Lf/d/a/o/n/b0/i$b;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/b0/i;->b:Lf/d/a/o/n/b0/i$b;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/b0/i;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/d/a/o/n/b0/i;->d:Ljava/util/Map;

    .line 6
    iput p1, p0, Lf/d/a/o/n/b0/i;->e:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lf/d/a/o/n/b0/i;->i(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to decrement empty size, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(I)V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lf/d/a/o/n/b0/i;->f:I

    if-le v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lf/d/a/o/n/b0/i;->a:Lf/d/a/o/n/b0/g;

    invoke-virtual {v0}, Lf/d/a/o/n/b0/g;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 3
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/d/a/o/n/b0/i;->g(Ljava/lang/Class;)Lf/d/a/o/n/b0/a;

    move-result-object v1

    .line 5
    iget v2, p0, Lf/d/a/o/n/b0/i;->f:I

    invoke-interface {v1, v0}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lf/d/a/o/n/b0/a;->c()I

    move-result v4

    mul-int v4, v4, v3

    sub-int/2addr v2, v4

    iput v2, p0, Lf/d/a/o/n/b0/i;->f:I

    .line 6
    invoke-interface {v1, v0}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lf/d/a/o/n/b0/i;->a(ILjava/lang/Class;)V

    .line 7
    invoke-interface {v1}, Lf/d/a/o/n/b0/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Lf/d/a/o/n/b0/a;->a()Ljava/lang/String;

    invoke-interface {v1, v0}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lf/d/a/o/n/b0/i;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/d/a/o/n/b0/i;->b:Lf/d/a/o/n/b0/i$b;

    .line 2
    invoke-virtual {v0}, Lf/d/a/o/n/b0/c;->b()Lf/d/a/o/n/b0/l;

    move-result-object v0

    check-cast v0, Lf/d/a/o/n/b0/i$a;

    .line 3
    iput p1, v0, Lf/d/a/o/n/b0/i$a;->b:I

    .line 4
    iput-object p2, v0, Lf/d/a/o/n/b0/i$a;->c:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, v0, p2}, Lf/d/a/o/n/b0/i;->h(Lf/d/a/o/n/b0/i$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lf/d/a/o/n/b0/i;->g(Ljava/lang/Class;)Lf/d/a/o/n/b0/a;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-interface {v1}, Lf/d/a/o/n/b0/a;->c()I

    move-result v1

    mul-int v1, v1, v2

    .line 5
    iget v3, p0, Lf/d/a/o/n/b0/i;->e:I

    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object v3, p0, Lf/d/a/o/n/b0/i;->b:Lf/d/a/o/n/b0/i$b;

    invoke-virtual {v3, v2, v0}, Lf/d/a/o/n/b0/i$b;->d(ILjava/lang/Class;)Lf/d/a/o/n/b0/i$a;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lf/d/a/o/n/b0/i;->a:Lf/d/a/o/n/b0/g;

    invoke-virtual {v3, v2, p1}, Lf/d/a/o/n/b0/g;->b(Lf/d/a/o/n/b0/l;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lf/d/a/o/n/b0/i;->i(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 10
    iget v0, v2, Lf/d/a/o/n/b0/i$a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 11
    iget v2, v2, Lf/d/a/o/n/b0/i$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget p1, p0, Lf/d/a/o/n/b0/i;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lf/d/a/o/n/b0/i;->f:I

    .line 13
    iget p1, p0, Lf/d/a/o/n/b0/i;->e:I

    invoke-virtual {p0, p1}, Lf/d/a/o/n/b0/i;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lf/d/a/o/n/b0/i;->i(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v3, p0, Lf/d/a/o/n/b0/i;->f:I

    if-eqz v3, :cond_1

    iget v4, p0, Lf/d/a/o/n/b0/i;->e:I

    div-int/2addr v4, v3

    const/4 v3, 0x2

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, p1, 0x8

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 4
    iget-object p1, p0, Lf/d/a/o/n/b0/i;->b:Lf/d/a/o/n/b0/i$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lf/d/a/o/n/b0/i$b;->d(ILjava/lang/Class;)Lf/d/a/o/n/b0/i$a;

    move-result-object p1

    goto :goto_3

    .line 5
    :cond_4
    iget-object v0, p0, Lf/d/a/o/n/b0/i;->b:Lf/d/a/o/n/b0/i$b;

    .line 6
    invoke-virtual {v0}, Lf/d/a/o/n/b0/c;->b()Lf/d/a/o/n/b0/l;

    move-result-object v0

    check-cast v0, Lf/d/a/o/n/b0/i$a;

    .line 7
    iput p1, v0, Lf/d/a/o/n/b0/i$a;->b:I

    .line 8
    iput-object p2, v0, Lf/d/a/o/n/b0/i$a;->c:Ljava/lang/Class;

    move-object p1, v0

    .line 9
    :goto_3
    invoke-virtual {p0, p1, p2}, Lf/d/a/o/n/b0/i;->h(Lf/d/a/o/n/b0/i$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Ljava/lang/Class;)Lf/d/a/o/n/b0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lf/d/a/o/n/b0/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/b0/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/o/n/b0/a;

    if-nez v0, :cond_2

    .line 2
    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lf/d/a/o/n/b0/h;

    invoke-direct {v0}, Lf/d/a/o/n/b0/h;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lf/d/a/o/n/b0/f;

    invoke-direct {v0}, Lf/d/a/o/n/b0/f;-><init>()V

    .line 6
    :goto_0
    iget-object v1, p0, Lf/d/a/o/n/b0/i;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No array pool found for: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final h(Lf/d/a/o/n/b0/i$a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d/a/o/n/b0/i$a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lf/d/a/o/n/b0/i;->g(Ljava/lang/Class;)Lf/d/a/o/n/b0/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/d/a/o/n/b0/i;->a:Lf/d/a/o/n/b0/g;

    invoke-virtual {v1, p1}, Lf/d/a/o/n/b0/g;->a(Lf/d/a/o/n/b0/l;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v2, p0, Lf/d/a/o/n/b0/i;->f:I

    invoke-interface {v0, v1}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lf/d/a/o/n/b0/a;->c()I

    move-result v4

    mul-int v4, v4, v3

    sub-int/2addr v2, v4

    iput v2, p0, Lf/d/a/o/n/b0/i;->f:I

    .line 4
    invoke-interface {v0, v1}, Lf/d/a/o/n/b0/a;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lf/d/a/o/n/b0/i;->a(ILjava/lang/Class;)V

    :cond_0
    if-nez v1, :cond_2

    .line 5
    invoke-interface {v0}, Lf/d/a/o/n/b0/a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {v0}, Lf/d/a/o/n/b0/a;->a()Ljava/lang/String;

    .line 7
    :cond_1
    iget p1, p1, Lf/d/a/o/n/b0/i$a;->b:I

    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/a;->newArray(I)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final i(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/b0/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    iget-object v1, p0, Lf/d/a/o/n/b0/i;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1}, Lf/d/a/o/n/b0/i;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 4
    :cond_1
    iget p1, p0, Lf/d/a/o/n/b0/i;->e:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lf/d/a/o/n/b0/i;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
