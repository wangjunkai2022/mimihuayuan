.class public final Li/d;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/d$c;,
        Li/d$b;,
        Li/d$a;
    }
.end annotation


# instance fields
.field public final a:Li/m0/c/e;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 13

    .line 1
    sget-object v1, Li/m0/h/b;->a:Li/m0/h/b;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Li/m0/c/e;->z:Li/m0/c/e;

    const v3, 0x31191

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    cmp-long v2, p2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v2, "OkHttp DiskLruCache"

    invoke-static {v2, v0}, Li/m0/b;->A(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v12

    .line 6
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 7
    new-instance v8, Li/m0/c/e;

    const/4 v4, 0x2

    move-object v0, v8

    move-object v2, p1

    move-wide v5, p2

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Li/m0/c/e;-><init>(Li/m0/h/b;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    move-object v0, p0

    .line 8
    iput-object v8, v0, Li/d;->a:Li/m0/c/e;

    return-void

    :cond_1
    move-object v0, p0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final e(Li/w;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/w;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/w;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-virtual {p0, v3}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lh/s/d;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/TreeSet;

    .line 5
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v7, "java.lang.String.CASE_INSENSITIVE_ORDER"

    invoke-static {v5, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    new-array v5, v6, [C

    const/16 v6, 0x2c

    aput-char v6, v5, v1

    const/4 v6, 0x6

    .line 7
    invoke-static {v4, v5, v1, v1, v6}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 8
    invoke-static {v5}, Lh/s/d;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Lh/f;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    sget-object v2, Lh/k/k;->a:Lh/k/k;

    :goto_3
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/d;->a:Li/m0/c/e;

    invoke-virtual {v0}, Li/m0/c/e;->close()V

    return-void
.end method

.method public final d(Li/e0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Li/d;->a:Li/m0/c/e;

    .line 2
    iget-object p1, p1, Li/e0;->b:Li/x;

    if-eqz p1, :cond_2

    .line 3
    sget-object v1, Lj/k;->e:Lj/k$a;

    .line 4
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Lj/k$a;->b(Ljava/lang/String;)Lj/k;

    move-result-object p1

    const-string v1, "MD5"

    .line 6
    invoke-virtual {p1, v1}, Lj/k;->a(Ljava/lang/String;)Lj/k;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lj/c0/a;->j(Lj/k;)Ljava/lang/String;

    move-result-object p1

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Li/m0/c/e;->F()V

    .line 10
    invoke-virtual {v0}, Li/m0/c/e;->d()V

    .line 11
    invoke-virtual {v0, p1}, Li/m0/c/e;->O(Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/m0/c/e$b;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "lruEntries[key] ?: return false"

    invoke-static {p1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Li/m0/c/e;->M(Li/m0/c/e$b;)Z

    .line 14
    iget-wide v2, v0, Li/m0/c/e;->e:J

    iget-wide v4, v0, Li/m0/c/e;->a:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    iput-boolean v1, v0, Li/m0/c/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 16
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1

    :cond_2
    const-string p1, "url"

    .line 18
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_3
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/d;->a:Li/m0/c/e;

    invoke-virtual {v0}, Li/m0/c/e;->flush()V

    return-void
.end method
