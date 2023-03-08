.class public final Lf/i/a/a/h1/t0/j;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/t0/j$a;,
        Lf/i/a/a/h1/t0/j$c;,
        Lf/i/a/a/h1/t0/j$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/e;

.field public final b:Lf/i/a/a/h1/t0/j$b;

.field public final c:Lf/i/a/a/d1/g/b;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lf/i/a/a/h1/t0/k/b;

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/k/b;Lf/i/a/a/h1/t0/j$b;Lf/i/a/a/l1/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/t0/j;->f:Lf/i/a/a/h1/t0/k/b;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/t0/j;->b:Lf/i/a/a/h1/t0/j$b;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/t0/j;->a:Lf/i/a/a/l1/e;

    .line 5
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    .line 6
    invoke-static {p0}, Lf/i/a/a/m1/h0;->s(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/h1/t0/j;->d:Landroid/os/Handler;

    .line 7
    new-instance p1, Lf/i/a/a/d1/g/b;

    invoke-direct {p1}, Lf/i/a/a/d1/g/b;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/t0/j;->c:Lf/i/a/a/d1/g/b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lf/i/a/a/h1/t0/j;->h:J

    .line 9
    iput-wide p1, p0, Lf/i/a/a/h1/t0/j;->i:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lf/i/a/a/h1/t0/j;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lf/i/a/a/h1/t0/j;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/h1/t0/j;->j:Z

    .line 3
    iget-wide v0, p0, Lf/i/a/a/h1/t0/j;->h:J

    iput-wide v0, p0, Lf/i/a/a/h1/t0/j;->i:J

    .line 4
    iget-object v0, p0, Lf/i/a/a/h1/t0/j;->b:Lf/i/a/a/h1/t0/j$b;

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/h1/t0/j;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/h1/t0/j$a;

    .line 4
    iget-wide v2, p1, Lf/i/a/a/h1/t0/j$a;->a:J

    iget-wide v4, p1, Lf/i/a/a/h1/t0/j$a;->b:J

    .line 5
    iget-object p1, p0, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_3

    .line 8
    iget-object p1, p0, Lf/i/a/a/h1/t0/j;->e:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return v1
.end method
