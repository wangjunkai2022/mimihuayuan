.class public Lm/o/a/h;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lm/f;


# instance fields
.field public final synthetic a:Lm/o/a/i$a;


# direct methods
.method public constructor <init>(Lm/o/a/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/a/h;->a:Lm/o/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-object v0, p0, Lm/o/a/h;->a:Lm/o/a/i$a;

    iget-object v0, v0, Lm/o/a/i$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lj/b;->k(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object p1, p0, Lm/o/a/h;->a:Lm/o/a/i$a;

    invoke-virtual {p1}, Lm/o/a/i$a;->k()V

    :cond_0
    return-void
.end method
