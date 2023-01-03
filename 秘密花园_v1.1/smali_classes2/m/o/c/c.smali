.class public final Lm/o/c/c;
.super Lm/g;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lm/o/c/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/o/c/c$c;,
        Lm/o/c/c$a;,
        Lm/o/c/c$b;
    }
.end annotation


# static fields
.field public static final c:I

.field public static final d:Lm/o/c/c$c;

.field public static final e:Lm/o/c/c$b;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadFactory;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lm/o/c/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "rx.scheduler.max-computation-threads"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    if-lez v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 3
    :cond_1
    sput v0, Lm/o/c/c;->c:I

    .line 4
    new-instance v0, Lm/o/c/c$c;

    sget-object v2, Lm/o/d/c;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v2}, Lm/o/c/c$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lm/o/c/c;->d:Lm/o/c/c$c;

    .line 5
    invoke-virtual {v0}, Lm/o/c/f;->c()V

    .line 6
    new-instance v0, Lm/o/c/c$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lm/o/c/c$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lm/o/c/c;->e:Lm/o/c/c$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm/g;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/c/c;->a:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lm/o/c/c;->e:Lm/o/c/c$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lm/o/c/c$b;

    iget-object v0, p0, Lm/o/c/c;->a:Ljava/util/concurrent/ThreadFactory;

    sget v1, Lm/o/c/c;->c:I

    invoke-direct {p1, v0, v1}, Lm/o/c/c$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 5
    iget-object v0, p0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lm/o/c/c;->e:Lm/o/c/c$b;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p1, Lm/o/c/c$b;->b:[Lm/o/c/c$c;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v2}, Lm/o/c/f;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lm/g$a;
    .locals 2

    .line 1
    new-instance v0, Lm/o/c/c$a;

    iget-object v1, p0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/o/c/c$b;

    invoke-virtual {v1}, Lm/o/c/c$b;->a()Lm/o/c/c$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/o/c/c$a;-><init>(Lm/o/c/c$c;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/o/c/c$b;

    .line 2
    sget-object v1, Lm/o/c/c;->e:Lm/o/c/c$b;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lm/o/c/c$b;->b:[Lm/o/c/c$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3}, Lm/o/c/f;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
