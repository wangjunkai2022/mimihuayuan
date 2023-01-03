.class public final Lm/o/c/g$c;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lm/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lm/o/c/g;

.field public final b:Lm/s/a;


# direct methods
.method public constructor <init>(Lm/o/c/g;Lm/s/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/c/g$c;->a:Lm/o/c/g;

    .line 3
    iput-object p2, p0, Lm/o/c/g$c;->b:Lm/s/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/g$c;->a:Lm/o/c/g;

    .line 2
    iget-object v0, v0, Lm/o/c/g;->a:Lm/o/d/g;

    .line 3
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm/o/c/g$c;->b:Lm/s/a;

    iget-object v1, p0, Lm/o/c/g$c;->a:Lm/o/c/g;

    invoke-virtual {v0, v1}, Lm/s/a;->e(Lm/k;)V

    :cond_0
    return-void
.end method
