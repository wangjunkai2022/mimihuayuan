.class public final Li/m0/c/e$a;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:[Z

.field public b:Z

.field public final c:Li/m0/c/e$b;

.field public final synthetic d:Li/m0/c/e;


# direct methods
.method public constructor <init>(Li/m0/c/e;Li/m0/c/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/m0/c/e$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 2
    iget-boolean p2, p2, Li/m0/c/e$b;->d:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Li/m0/c/e;->s:I

    .line 4
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Li/m0/c/e$a;->a:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/m0/c/e$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 4
    iget-object v1, v1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 5
    invoke-static {v1, p0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Li/m0/c/e;->e(Li/m0/c/e$a;Z)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Li/m0/c/e$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/m0/c/e$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 4
    iget-object v1, v1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 5
    invoke-static {v1, p0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    invoke-virtual {v1, p0, v2}, Li/m0/c/e;->e(Li/m0/c/e$a;Z)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Li/m0/c/e$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 2
    iget-object v0, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 3
    invoke-static {v0, p0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    .line 5
    iget v1, v1, Li/m0/c/e;->s:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    :try_start_0
    iget-object v2, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    .line 7
    iget-object v2, v2, Li/m0/c/e;->p:Li/m0/h/b;

    .line 8
    iget-object v3, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 9
    iget-object v3, v3, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 10
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v2, v3}, Li/m0/h/b;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    :cond_1
    return-void
.end method

.method public final d(I)Lj/y;
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/m0/c/e$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 4
    iget-object v1, v1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 5
    invoke-static {v1, p0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lj/f;

    invoke-direct {p1}, Lj/f;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 9
    iget-boolean v1, v1, Li/m0/c/e$b;->d:Z

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Li/m0/c/e$a;->a:[Z

    if-eqz v1, :cond_1

    aput-boolean v2, v1, p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 12
    iget-object v1, v1, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    iget-object v2, p0, Li/m0/c/e$a;->d:Li/m0/c/e;

    .line 15
    iget-object v2, v2, Li/m0/c/e;->p:Li/m0/h/b;

    .line 16
    invoke-interface {v2, v1}, Li/m0/h/b;->c(Ljava/io/File;)Lj/y;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :try_start_4
    new-instance v2, Li/m0/c/f;

    new-instance v3, Li/m0/c/e$a$a;

    invoke-direct {v3, p0, p1}, Li/m0/c/e$a$a;-><init>(Li/m0/c/e$a;I)V

    invoke-direct {v2, v1, v3}, Li/m0/c/f;-><init>(Lj/y;Lh/o/b/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v2

    .line 18
    :catch_0
    :try_start_5
    new-instance p1, Lj/f;

    invoke-direct {p1}, Lj/f;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    monitor-exit v0

    return-object p1

    :cond_3
    :try_start_6
    const-string p1, "Check failed."

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0

    throw p1
.end method
