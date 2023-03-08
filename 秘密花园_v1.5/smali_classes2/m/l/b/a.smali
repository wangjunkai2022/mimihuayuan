.class public final Lm/l/b/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm/l/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lm/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lm/l/b/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lm/l/a/a;->b:Lm/l/a/a;

    .line 3
    invoke-virtual {v0}, Lm/l/a/a;->a()Lm/l/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lm/l/b/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/l/b/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lm/l/b/a;->a:Lm/g;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public static a()Lm/g;
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Lm/l/b/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l/b/a;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lm/l/b/a;

    invoke-direct {v0}, Lm/l/b/a;-><init>()V

    .line 3
    sget-object v1, Lm/l/b/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :goto_0
    iget-object v0, v0, Lm/l/b/a;->a:Lm/g;

    return-object v0
.end method
