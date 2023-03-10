.class public final Lf/i/a/a/n0;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/n0$a;,
        Lf/i/a/a/n0$b;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/n0$b;

.field public final b:Lf/i/a/a/n0$a;

.field public final c:Lf/i/a/a/u0;

.field public d:I

.field public e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/os/Handler;

.field public g:I

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/n0$a;Lf/i/a/a/n0$b;Lf/i/a/a/u0;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/n0;->b:Lf/i/a/a/n0$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/n0;->a:Lf/i/a/a/n0$b;

    .line 4
    iput-object p3, p0, Lf/i/a/a/n0;->c:Lf/i/a/a/u0;

    .line 5
    iput-object p5, p0, Lf/i/a/a/n0;->f:Landroid/os/Handler;

    .line 6
    iput p4, p0, Lf/i/a/a/n0;->g:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lf/i/a/a/n0;->h:J

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lf/i/a/a/n0;->i:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/i/a/a/n0;->k:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lf/i/a/a/n0;->k:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/i/a/a/n0;->l:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lf/i/a/a/n0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/n0;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-wide v2, p0, Lf/i/a/a/n0;->h:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lf/i/a/a/n0;->i:Z

    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lf/i/a/a/n0;->j:Z

    .line 5
    iget-object v0, p0, Lf/i/a/a/n0;->b:Lf/i/a/a/n0$a;

    check-cast v0, Lf/i/a/a/z;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, v0, Lf/i/a/a/z;->w:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lf/i/a/a/n0;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    iget-object v1, v0, Lf/i/a/a/z;->g:Lf/i/a/a/m1/c0;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Lf/i/a/a/m1/c0;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
