.class public final Li/m0/c/e$d;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/c/e;-><init>(Li/m0/h/b;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/m0/c/e;


# direct methods
.method public constructor <init>(Li/m0/c/e;)V
    .locals 0

    iput-object p1, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 3
    iget-boolean v1, v1, Li/m0/c/e;->j:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 5
    iget-boolean v1, v1, Li/m0/c/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    invoke-virtual {v2}, Li/m0/c/e;->N()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 8
    iput-boolean v1, v2, Li/m0/c/e;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    :try_start_3
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 10
    invoke-virtual {v2}, Li/m0/c/e;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    invoke-virtual {v2}, Li/m0/c/e;->L()V

    .line 12
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    const/4 v3, 0x0

    .line 13
    iput v3, v2, Li/m0/c/e;->h:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 14
    :catch_1
    :try_start_4
    iget-object v2, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 15
    iput-boolean v1, v2, Li/m0/c/e;->m:Z

    .line 16
    iget-object v1, p0, Li/m0/c/e$d;->a:Li/m0/c/e;

    .line 17
    new-instance v2, Lj/f;

    invoke-direct {v2}, Lj/f;-><init>()V

    .line 18
    invoke-static {v2}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object v2

    .line 19
    iput-object v2, v1, Li/m0/c/e;->f:Lj/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 21
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method
