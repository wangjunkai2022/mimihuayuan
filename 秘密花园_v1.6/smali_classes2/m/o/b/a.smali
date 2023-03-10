.class public final Lm/o/b/a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleProducer.java"

# interfaces
.implements Lm/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lm/f;"
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


# direct methods
.method public constructor <init>(Lm/j;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/b/a;->a:Lm/j;

    .line 3
    iput-object p2, p0, Lm/o/b/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lm/o/b/a;->a:Lm/j;

    .line 3
    iget-object p2, p1, Lm/j;->a:Lm/o/d/g;

    .line 4
    iget-boolean p2, p2, Lm/o/d/g;->b:Z

    if-eqz p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lm/o/b/a;->b:Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p1, p2}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p2, p1, Lm/j;->a:Lm/o/d/g;

    .line 8
    iget-boolean p2, p2, Lm/o/d/g;->b:Z

    if-eqz p2, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Lm/j;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0, p1, p2}, Lj/b;->C(Ljava/lang/Throwable;Lm/j;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
