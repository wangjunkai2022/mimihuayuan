.class public Lf/i/a/a/l1/k0/u;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# instance fields
.field public final synthetic a:Landroid/os/ConditionVariable;

.field public final synthetic b:Lf/i/a/a/l1/k0/v;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/v;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/l1/k0/u;->b:Lf/i/a/a/l1/k0/v;

    iput-object p3, p0, Lf/i/a/a/l1/k0/u;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/k0/u;->b:Lf/i/a/a/l1/k0/v;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/i/a/a/l1/k0/u;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/k0/u;->b:Lf/i/a/a/l1/k0/v;

    invoke-static {v1}, Lf/i/a/a/l1/k0/v;->l(Lf/i/a/a/l1/k0/v;)V

    .line 4
    iget-object v1, p0, Lf/i/a/a/l1/k0/u;->b:Lf/i/a/a/l1/k0/v;

    .line 5
    iget-object v1, v1, Lf/i/a/a/l1/k0/v;->b:Lf/i/a/a/l1/k0/g;

    .line 6
    invoke-interface {v1}, Lf/i/a/a/l1/k0/g;->d()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
