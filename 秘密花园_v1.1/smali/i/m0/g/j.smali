.class public final Li/m0/g/j;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li/m0/g/f;

.field public final synthetic c:I

.field public final synthetic d:Li/m0/g/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m0/g/f;ILi/m0/g/b;)V
    .locals 0

    iput-object p1, p0, Li/m0/g/j;->a:Ljava/lang/String;

    iput-object p2, p0, Li/m0/g/j;->b:Li/m0/g/f;

    iput p3, p0, Li/m0/g/j;->c:I

    iput-object p4, p0, Li/m0/g/j;->d:Li/m0/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/m0/g/j;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 3
    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Li/m0/g/j;->b:Li/m0/g/f;

    .line 6
    iget-object v0, v0, Li/m0/g/f;->j:Li/m0/g/q;

    .line 7
    iget v3, p0, Li/m0/g/j;->c:I

    iget-object v4, p0, Li/m0/g/j;->d:Li/m0/g/b;

    invoke-interface {v0, v3, v4}, Li/m0/g/q;->c(ILi/m0/g/b;)V

    .line 8
    iget-object v0, p0, Li/m0/g/j;->b:Li/m0/g/f;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v3, p0, Li/m0/g/j;->b:Li/m0/g/f;

    .line 10
    iget-object v3, v3, Li/m0/g/f;->u:Ljava/util/Set;

    .line 11
    iget v4, p0, Li/m0/g/j;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    .line 14
    :try_start_3
    monitor-exit v0

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
