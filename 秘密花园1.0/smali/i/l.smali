.class public final Li/l;
.super Ljava/lang/Object;
.source "ConnectionPool.kt"


# instance fields
.field public final a:Li/m0/d/i;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Li/m0/d/i;

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    invoke-direct {v1, v2, v3, v4, v0}, Li/m0/d/i;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Li/l;->a:Li/m0/d/i;

    return-void

    :cond_0
    const-string v0, "timeUnit"

    .line 4
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
