.class public final Lf/d/a/u/j/a$c;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/u/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/u/j/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/u/j/a$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lf/d/a/u/j/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/u/j/a$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;Lf/d/a/u/j/a$b;Lf/d/a/u/j/a$e;)V
    .locals 0
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/u/j/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/u/j/a$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lf/d/a/u/j/a$b<",
            "TT;>;",
            "Lf/d/a/u/j/a$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/u/j/a$c;->c:Landroidx/core/util/Pools$Pool;

    .line 3
    iput-object p2, p0, Lf/d/a/u/j/a$c;->a:Lf/d/a/u/j/a$b;

    .line 4
    iput-object p3, p0, Lf/d/a/u/j/a$c;->b:Lf/d/a/u/j/a$e;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/u/j/a$c;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/d/a/u/j/a$c;->a:Lf/d/a/u/j/a$b;

    invoke-interface {v0}, Lf/d/a/u/j/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Created new "

    .line 4
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_0
    instance-of v1, v0, Lf/d/a/u/j/a$d;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lf/d/a/u/j/a$d;

    invoke-interface {v1}, Lf/d/a/u/j/a$d;->c()Lf/d/a/u/j/d;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v1, Lf/d/a/u/j/d$b;

    .line 7
    iput-boolean v2, v1, Lf/d/a/u/j/d$b;->a:Z

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lf/d/a/u/j/a$d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lf/d/a/u/j/a$d;

    invoke-interface {v0}, Lf/d/a/u/j/a$d;->c()Lf/d/a/u/j/d;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lf/d/a/u/j/d$b;

    .line 3
    iput-boolean v1, v0, Lf/d/a/u/j/d$b;->a:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lf/d/a/u/j/a$c;->b:Lf/d/a/u/j/a$e;

    invoke-interface {v0, p1}, Lf/d/a/u/j/a$e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lf/d/a/u/j/a$c;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
