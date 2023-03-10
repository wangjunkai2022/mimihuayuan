.class public Lm/o/d/d$a;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/n/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/o/d/d;->g(Lm/g;)Lm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/n/c<",
        "Lm/n/a;",
        "Lm/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm/o/c/c;


# direct methods
.method public constructor <init>(Lm/o/d/d;Lm/o/c/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/o/d/d$a;->a:Lm/o/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lm/n/a;

    .line 2
    iget-object v0, p0, Lm/o/d/d$a;->a:Lm/o/c/c;

    .line 3
    iget-object v0, v0, Lm/o/c/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/o/c/c$b;

    invoke-virtual {v0}, Lm/o/c/c$b;->a()Lm/o/c/c$c;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lm/o/c/f;->e(Lm/n/a;JLjava/util/concurrent/TimeUnit;)Lm/o/c/g;

    move-result-object p1

    return-object p1
.end method
