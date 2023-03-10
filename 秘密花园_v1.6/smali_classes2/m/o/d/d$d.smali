.class public final Lm/o/d/d$d;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/f;
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lm/f;",
        "Lm/n/a;"
    }
.end annotation


# instance fields
.field public final a:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "Lm/n/a;",
            "Lm/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/j;Ljava/lang/Object;Lm/n/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;TT;",
            "Lm/n/c<",
            "Lm/n/a;",
            "Lm/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/d/d$d;->a:Lm/j;

    .line 3
    iput-object p2, p0, Lm/o/d/d$d;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lm/o/d/d$d;->c:Lm/n/c;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lm/o/d/d$d;->a:Lm/j;

    iget-object p2, p0, Lm/o/d/d$d;->c:Lm/n/c;

    invoke-interface {p2, p0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm/k;

    invoke-virtual {p1, p2}, Lm/j;->b(Lm/k;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required but it was "

    invoke-static {v1, p1, p2}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/o/d/d$d;->a:Lm/j;

    .line 2
    iget-object v1, v0, Lm/j;->a:Lm/o/d/g;

    .line 3
    iget-boolean v1, v1, Lm/o/d/g;->b:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lm/o/d/d$d;->b:Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, v0, Lm/j;->a:Lm/o/d/g;

    .line 7
    iget-boolean v1, v1, Lm/o/d/g;->b:Z

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lm/j;->d()V

    return-void

    :catchall_0
    move-exception v2

    .line 9
    invoke-static {v2, v0, v1}, Lj/b;->C(Ljava/lang/Throwable;Lm/j;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ScalarAsyncProducer["

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/o/d/d$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
