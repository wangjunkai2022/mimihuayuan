.class public final Li/m0/g/g;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li/m0/g/f;

.field public final synthetic c:I

.field public final synthetic d:Lj/g;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m0/g/f;ILj/g;IZ)V
    .locals 0

    iput-object p1, p0, Li/m0/g/g;->a:Ljava/lang/String;

    iput-object p2, p0, Li/m0/g/g;->b:Li/m0/g/f;

    iput p3, p0, Li/m0/g/g;->c:I

    iput-object p4, p0, Li/m0/g/g;->d:Lj/g;

    iput p5, p0, Li/m0/g/g;->e:I

    iput-boolean p6, p0, Li/m0/g/g;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Li/m0/g/g;->a:Ljava/lang/String;

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
    iget-object v0, p0, Li/m0/g/g;->b:Li/m0/g/f;

    .line 6
    iget-object v0, v0, Li/m0/g/f;->j:Li/m0/g/q;

    .line 7
    iget v3, p0, Li/m0/g/g;->c:I

    iget-object v4, p0, Li/m0/g/g;->d:Lj/g;

    iget v5, p0, Li/m0/g/g;->e:I

    iget-boolean v6, p0, Li/m0/g/g;->f:Z

    invoke-interface {v0, v3, v4, v5, v6}, Li/m0/g/q;->d(ILj/j;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, p0, Li/m0/g/g;->b:Li/m0/g/f;

    .line 9
    iget-object v3, v3, Li/m0/g/f;->s:Li/m0/g/n;

    .line 10
    iget v4, p0, Li/m0/g/g;->c:I

    sget-object v5, Li/m0/g/b;->g:Li/m0/g/b;

    invoke-virtual {v3, v4, v5}, Li/m0/g/n;->G(ILi/m0/g/b;)V

    :cond_0
    if-nez v0, :cond_1

    .line 11
    iget-boolean v0, p0, Li/m0/g/g;->f:Z

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    iget-object v0, p0, Li/m0/g/g;->b:Li/m0/g/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v3, p0, Li/m0/g/g;->b:Li/m0/g/f;

    .line 14
    iget-object v3, v3, Li/m0/g/f;->u:Ljava/util/Set;

    .line 15
    iget v4, p0, Li/m0/g/g;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0

    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method
