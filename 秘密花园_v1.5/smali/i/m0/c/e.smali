.class public final Li/m0/c/e;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/c/e$c;,
        Li/m0/c/e$a;,
        Li/m0/c/e$b;
    }
.end annotation


# static fields
.field public static final u:Lh/s/c;

# The value of this static final field might be set in the static constructor
.field public static final v:Ljava/lang/String; = "CLEAN"

# The value of this static final field might be set in the static constructor
.field public static final w:Ljava/lang/String; = "DIRTY"

# The value of this static final field might be set in the static constructor
.field public static final x:Ljava/lang/String; = "REMOVE"

# The value of this static final field might be set in the static constructor
.field public static final y:Ljava/lang/String; = "READ"

.field public static final z:Li/m0/c/e;


# instance fields
.field public a:J

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public e:J

.field public f:Lj/i;

.field public final g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Li/m0/c/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:J

.field public final o:Ljava/lang/Runnable;

.field public final p:Li/m0/h/b;

.field public final q:Ljava/io/File;

.field public final r:I

.field public final s:I

.field public final t:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh/s/c;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lh/s/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/m0/c/e;->u:Lh/s/c;

    const-string v0, "CLEAN"

    .line 2
    sput-object v0, Li/m0/c/e;->v:Ljava/lang/String;

    const-string v0, "DIRTY"

    .line 3
    sput-object v0, Li/m0/c/e;->w:Ljava/lang/String;

    const-string v0, "REMOVE"

    .line 4
    sput-object v0, Li/m0/c/e;->x:Ljava/lang/String;

    const-string v0, "READ"

    .line 5
    sput-object v0, Li/m0/c/e;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li/m0/h/b;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iput-object p2, p0, Li/m0/c/e;->q:Ljava/io/File;

    iput p3, p0, Li/m0/c/e;->r:I

    iput p4, p0, Li/m0/c/e;->s:I

    iput-object p7, p0, Li/m0/c/e;->t:Ljava/util/concurrent/Executor;

    .line 2
    iput-wide p5, p0, Li/m0/c/e;->a:J

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p2, 0x0

    const/high16 p3, 0x3f400000    # 0.75f

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    .line 4
    new-instance p1, Li/m0/c/e$d;

    invoke-direct {p1, p0}, Li/m0/c/e$d;-><init>(Li/m0/c/e;)V

    iput-object p1, p0, Li/m0/c/e;->o:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Li/m0/c/e;->q:Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Li/m0/c/e;->b:Ljava/io/File;

    .line 6
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Li/m0/c/e;->q:Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Li/m0/c/e;->c:Ljava/io/File;

    .line 7
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Li/m0/c/e;->q:Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Li/m0/c/e;->d:Ljava/io/File;

    return-void
.end method

.method public static synthetic g(Li/m0/c/e;Ljava/lang/String;JI)Li/m0/c/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Li/m0/c/e;->f(Ljava/lang/String;J)Li/m0/c/e$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized E(Ljava/lang/String;)Li/m0/c/e$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Li/m0/c/e;->F()V

    .line 2
    invoke-virtual {p0}, Li/m0/c/e;->d()V

    .line 3
    invoke-virtual {p0, p1}, Li/m0/c/e;->O(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/m0/c/e$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "lruEntries[key] ?: return null"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v2, v0, Li/m0/c/e$b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 6
    monitor-exit p0

    return-object v1

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Li/m0/c/e$b;->a()Li/m0/c/e$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget v2, p0, Li/m0/c/e;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Li/m0/c/e;->h:I

    .line 9
    iget-object v2, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz v2, :cond_2

    sget-object v1, Li/m0/c/e;->y:Ljava/lang/String;

    invoke-interface {v2, v1}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    const/16 v2, 0x20

    .line 10
    invoke-interface {v1, v2}, Lj/i;->q(I)Lj/i;

    move-result-object v1

    .line 11
    invoke-interface {v1, p1}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object p1

    const/16 v1, 0xa

    .line 12
    invoke-interface {p1, v1}, Lj/i;->q(I)Lj/i;

    .line 13
    invoke-virtual {p0}, Li/m0/c/e;->G()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Li/m0/c/e;->t:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Li/m0/c/e;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-object v0

    .line 16
    :cond_2
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 17
    :cond_3
    monitor-exit p0

    return-object v1

    .line 18
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lh/j;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Assertion failed"

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Li/m0/c/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_2
    :try_start_1
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->a(Ljava/io/File;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->d:Ljava/io/File;

    iget-object v2, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Li/m0/h/b;->g(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :cond_4
    :goto_1
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 9
    :try_start_2
    invoke-virtual {p0}, Li/m0/c/e;->J()V

    .line 10
    invoke-virtual {p0}, Li/m0/c/e;->I()V

    .line 11
    iput-boolean v1, p0, Li/m0/c/e;->j:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 13
    :try_start_3
    sget-object v2, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 14
    sget-object v2, Li/m0/i/f;->a:Li/m0/i/f;

    const/4 v3, 0x5

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Li/m0/c/e;->q:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v3, v4, v0}, Li/m0/i/f;->k(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 17
    :try_start_4
    invoke-virtual {p0}, Li/m0/c/e;->close()V

    .line 18
    iget-object v2, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v3, p0, Li/m0/c/e;->q:Ljava/io/File;

    invoke-interface {v2, v3}, Li/m0/h/b;->d(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    iput-boolean v0, p0, Li/m0/c/e;->k:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Li/m0/c/e;->k:Z

    throw v1

    .line 20
    :cond_5
    :goto_2
    invoke-virtual {p0}, Li/m0/c/e;->L()V

    .line 21
    iput-boolean v1, p0, Li/m0/c/e;->j:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget v0, p0, Li/m0/c/e;->h:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final H()Lj/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->e(Ljava/io/File;)Lj/y;

    move-result-object v0

    .line 2
    new-instance v1, Li/m0/c/f;

    new-instance v2, Li/m0/c/e$e;

    invoke-direct {v2, p0}, Li/m0/c/e$e;-><init>(Li/m0/c/e;)V

    invoke-direct {v1, v0, v2}, Li/m0/c/f;-><init>(Lj/y;Lh/o/b/b;)V

    .line 3
    invoke-static {v1}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object v0

    return-object v0
.end method

.method public final I()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->a(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "i.next()"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li/m0/c/e$b;

    .line 5
    iget-object v2, v1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget v2, p0, Li/m0/c/e;->s:I

    :goto_1
    if-ge v3, v2, :cond_0

    .line 7
    iget-wide v4, p0, Li/m0/c/e;->e:J

    .line 8
    iget-object v6, v1, Li/m0/c/e$b;->a:[J

    .line 9
    aget-wide v7, v6, v3

    add-long/2addr v4, v7

    iput-wide v4, p0, Li/m0/c/e;->e:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 11
    iget v2, p0, Li/m0/c/e;->s:I

    :goto_2
    if-ge v3, v2, :cond_2

    .line 12
    iget-object v4, p0, Li/m0/c/e;->p:Li/m0/h/b;

    .line 13
    iget-object v5, v1, Li/m0/c/e$b;->b:Ljava/util/List;

    .line 14
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Li/m0/h/b;->a(Ljava/io/File;)V

    .line 15
    iget-object v4, p0, Li/m0/c/e;->p:Li/m0/h/b;

    .line 16
    iget-object v5, v1, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 17
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Li/m0/h/b;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final J()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v2, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v1, v2}, Li/m0/h/b;->b(Ljava/io/File;)Lj/a0;

    move-result-object v1

    invoke-static {v1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-static {v7, v2}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    const-string v7, "1"

    invoke-static {v7, v3}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 8
    iget v7, p0, Li/m0/c/e;->r:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 9
    iget v4, p0, Li/m0/c/e;->s:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 10
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_2

    .line 11
    :goto_1
    :try_start_1
    invoke-interface {v1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/m0/c/e;->K(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, p0, Li/m0/c/e;->h:I

    .line 13
    invoke-interface {v1}, Lj/j;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Li/m0/c/e;->L()V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Li/m0/c/e;->H()Lj/i;

    move-result-object v0

    iput-object v0, p0, Li/m0/c/e;->f:Lj/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    .line 16
    invoke-static {v1, v0}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final K(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p1, v0, v1, v1, v2}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    .line 2
    invoke-static {p1, v0, v6, v1, v7}, Lh/s/d;->i(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    const-string v8, "(this as java.lang.String).substring(startIndex)"

    const/4 v9, 0x2

    if-ne v7, v5, :cond_0

    .line 3
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v10, Li/m0/c/e;->x:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_1

    sget-object v10, Li/m0/c/e;->x:Ljava/lang/String;

    invoke-static {p1, v10, v1, v9}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5
    iget-object p1, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v10}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v10, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li/m0/c/e$b;

    if-nez v10, :cond_2

    .line 8
    new-instance v10, Li/m0/c/e$b;

    invoke-direct {v10, p0, v6}, Li/m0/c/e$b;-><init>(Li/m0/c/e;Ljava/lang/String;)V

    .line 9
    iget-object v11, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v7, v5, :cond_4

    .line 10
    sget-object v6, Li/m0/c/e;->v:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_4

    sget-object v6, Li/m0/c/e;->v:Ljava/lang/String;

    invoke-static {p1, v6, v1, v9}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    add-int/2addr v7, v3

    .line 11
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [C

    aput-char v0, v5, v1

    .line 12
    invoke-static {p1, v5, v1, v1, v2}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 13
    iput-boolean v3, v10, Li/m0/c/e$b;->d:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, v10, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v10, Li/m0/c/e$b;->h:Li/m0/c/e;

    .line 16
    iget v2, v2, Li/m0/c/e;->s:I

    if-ne v0, v2, :cond_3

    .line 17
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 18
    iget-object v2, v10, Li/m0/c/e$b;->a:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v7, v5, :cond_5

    .line 21
    sget-object v0, Li/m0/c/e;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_5

    sget-object v0, Li/m0/c/e;->w:Ljava/lang/String;

    invoke-static {p1, v0, v1, v9}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance p1, Li/m0/c/e$a;

    invoke-direct {p1, p0, v10}, Li/m0/c/e$a;-><init>(Li/m0/c/e;Li/m0/c/e$b;)V

    .line 23
    iput-object p1, v10, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    goto :goto_1

    :cond_5
    if-ne v7, v5, :cond_7

    .line 24
    sget-object v0, Li/m0/c/e;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_7

    sget-object v0, Li/m0/c/e;->y:Ljava/lang/String;

    invoke-static {p1, v0, v1, v9}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return-void

    .line 25
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized L()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/y;->close()V

    .line 2
    :cond_0
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->c(Ljava/io/File;)Lj/y;

    move-result-object v0

    invoke-static {v0}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    .line 3
    invoke-interface {v0, v2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lj/i;->q(I)Lj/i;

    const-string v2, "1"

    .line 4
    invoke-interface {v0, v2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v2

    invoke-interface {v2, v3}, Lj/i;->q(I)Lj/i;

    .line 5
    iget v2, p0, Li/m0/c/e;->r:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lj/i;->z(J)Lj/i;

    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;

    .line 6
    iget v2, p0, Li/m0/c/e;->s:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lj/i;->z(J)Lj/i;

    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;

    .line 7
    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;

    .line 8
    iget-object v2, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/m0/c/e$b;

    .line 9
    iget-object v5, v4, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    .line 10
    sget-object v5, Li/m0/c/e;->w:Ljava/lang/String;

    invoke-interface {v0, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v5

    invoke-interface {v5, v6}, Lj/i;->q(I)Lj/i;

    .line 11
    iget-object v4, v4, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v4}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 13
    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v5, Li/m0/c/e;->v:Ljava/lang/String;

    invoke-interface {v0, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v5

    invoke-interface {v5, v6}, Lj/i;->q(I)Lj/i;

    .line 15
    iget-object v5, v4, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 16
    invoke-interface {v0, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 17
    invoke-virtual {v4, v0}, Li/m0/c/e$b;->b(Lj/i;)V

    .line 18
    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_2
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 20
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->b:Ljava/io/File;

    iget-object v2, p0, Li/m0/c/e;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Li/m0/h/b;->g(Ljava/io/File;Ljava/io/File;)V

    .line 22
    :cond_3
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->c:Ljava/io/File;

    iget-object v2, p0, Li/m0/c/e;->b:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Li/m0/h/b;->g(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v0, p0, Li/m0/c/e;->p:Li/m0/h/b;

    iget-object v1, p0, Li/m0/c/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Li/m0/h/b;->a(Ljava/io/File;)V

    .line 24
    invoke-virtual {p0}, Li/m0/c/e;->H()Lj/i;

    move-result-object v0

    iput-object v0, p0, Li/m0/c/e;->f:Lj/i;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Li/m0/c/e;->i:Z

    .line 26
    iput-boolean v0, p0, Li/m0/c/e;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 28
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final M(Li/m0/c/e$b;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/m0/c/e$a;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Li/m0/c/e;->s:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Li/m0/c/e;->p:Li/m0/h/b;

    .line 5
    iget-object v3, p1, Li/m0/c/e$b;->b:Ljava/util/List;

    .line 6
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v2, v3}, Li/m0/h/b;->a(Ljava/io/File;)V

    .line 7
    iget-wide v2, p0, Li/m0/c/e;->e:J

    .line 8
    iget-object v4, p1, Li/m0/c/e$b;->a:[J

    .line 9
    aget-wide v5, v4, v0

    sub-long/2addr v2, v5

    iput-wide v2, p0, Li/m0/c/e;->e:J

    const-wide/16 v2, 0x0

    .line 10
    aput-wide v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Li/m0/c/e;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Li/m0/c/e;->h:I

    .line 12
    iget-object v0, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz v0, :cond_3

    sget-object v2, Li/m0/c/e;->x:Ljava/lang/String;

    invoke-interface {v0, v2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v0

    const/16 v2, 0x20

    .line 13
    invoke-interface {v0, v2}, Lj/i;->q(I)Lj/i;

    move-result-object v0

    .line 14
    iget-object v2, p1, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 15
    invoke-interface {v0, v2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v0

    const/16 v2, 0xa

    .line 16
    invoke-interface {v0, v2}, Lj/i;->q(I)Lj/i;

    .line 17
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    .line 18
    iget-object p1, p1, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Li/m0/c/e;->G()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Li/m0/c/e;->t:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Li/m0/c/e;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1

    .line 22
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final N()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Li/m0/c/e;->e:J

    iget-wide v2, p0, Li/m0/c/e;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lruEntries.values.iterator().next()"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li/m0/c/e$b;

    .line 3
    invoke-virtual {p0, v0}, Li/m0/c/e;->M(Li/m0/c/e$b;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Li/m0/c/e;->l:Z

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Li/m0/c/e;->u:Lh/s/c;

    invoke-virtual {v0, p1}, Lh/s/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/c/e;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Li/m0/c/e;->k:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Li/m0/c/e$b;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, [Li/m0/c/e$b;

    array-length v3, v0

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 4
    iget-object v6, v5, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    if-eqz v6, :cond_2

    .line 5
    iget-object v5, v5, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Li/m0/c/e$a;->a()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Li/m0/c/e;->N()V

    .line 8
    iget-object v0, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lj/y;->close()V

    .line 9
    iput-object v4, p0, Li/m0/c/e;->f:Lj/i;

    .line 10
    iput-boolean v1, p0, Li/m0/c/e;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_4
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 13
    :cond_5
    :try_start_3
    new-instance v0, Lh/f;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lh/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    :goto_2
    iput-boolean v1, p0, Li/m0/c/e;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/c/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Li/m0/c/e$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Li/m0/c/e$a;->c:Li/m0/c/e$b;

    .line 2
    iget-object v1, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 3
    invoke-static {v1, p1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 4
    iget-boolean v3, v0, Li/m0/c/e$b;->d:Z

    if-nez v3, :cond_3

    .line 5
    iget v3, p0, Li/m0/c/e;->s:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6
    iget-object v5, p1, Li/m0/c/e$a;->a:[Z

    if-eqz v5, :cond_2

    .line 7
    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    .line 8
    iget-object v5, p0, Li/m0/c/e;->p:Li/m0/h/b;

    .line 9
    iget-object v6, v0, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 10
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5, v6}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {p1}, Li/m0/c/e$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Li/m0/c/e$a;->a()V

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 16
    :cond_3
    :try_start_2
    iget p1, p0, Li/m0/c/e;->s:I

    :goto_1
    if-ge v1, p1, :cond_6

    .line 17
    iget-object v3, v0, Li/m0/c/e$b;->c:Ljava/util/List;

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_4

    .line 19
    iget-object v4, p0, Li/m0/c/e;->p:Li/m0/h/b;

    invoke-interface {v4, v3}, Li/m0/h/b;->f(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    iget-object v4, v0, Li/m0/c/e$b;->b:Ljava/util/List;

    .line 21
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 22
    iget-object v5, p0, Li/m0/c/e;->p:Li/m0/h/b;

    invoke-interface {v5, v3, v4}, Li/m0/h/b;->g(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v3, v0, Li/m0/c/e$b;->a:[J

    .line 24
    aget-wide v5, v3, v1

    .line 25
    iget-object v3, p0, Li/m0/c/e;->p:Li/m0/h/b;

    invoke-interface {v3, v4}, Li/m0/h/b;->h(Ljava/io/File;)J

    move-result-wide v3

    .line 26
    iget-object v7, v0, Li/m0/c/e$b;->a:[J

    .line 27
    aput-wide v3, v7, v1

    .line 28
    iget-wide v7, p0, Li/m0/c/e;->e:J

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    iput-wide v7, p0, Li/m0/c/e;->e:J

    goto :goto_2

    .line 29
    :cond_4
    iget-object v4, p0, Li/m0/c/e;->p:Li/m0/h/b;

    invoke-interface {v4, v3}, Li/m0/h/b;->a(Ljava/io/File;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30
    :cond_6
    iget p1, p0, Li/m0/c/e;->h:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Li/m0/c/e;->h:I

    .line 31
    iput-object v2, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;

    .line 32
    iget-object p1, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz p1, :cond_c

    .line 33
    iget-boolean v2, v0, Li/m0/c/e$b;->d:Z

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_8

    if-eqz p2, :cond_7

    goto :goto_3

    .line 34
    :cond_7
    iget-object p2, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    .line 35
    iget-object v1, v0, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p2, Li/m0/c/e;->x:Ljava/lang/String;

    invoke-interface {p1, p2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object p2

    invoke-interface {p2, v4}, Lj/i;->q(I)Lj/i;

    .line 38
    iget-object p2, v0, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 39
    invoke-interface {p1, p2}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 40
    invoke-interface {p1, v3}, Lj/i;->q(I)Lj/i;

    goto :goto_4

    .line 41
    :cond_8
    :goto_3
    iput-boolean v1, v0, Li/m0/c/e$b;->d:Z

    .line 42
    sget-object v1, Li/m0/c/e;->v:Ljava/lang/String;

    invoke-interface {p1, v1}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    invoke-interface {v1, v4}, Lj/i;->q(I)Lj/i;

    .line 43
    iget-object v1, v0, Li/m0/c/e$b;->g:Ljava/lang/String;

    .line 44
    invoke-interface {p1, v1}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    .line 45
    invoke-virtual {v0, p1}, Li/m0/c/e$b;->b(Lj/i;)V

    .line 46
    invoke-interface {p1, v3}, Lj/i;->q(I)Lj/i;

    if-eqz p2, :cond_9

    .line 47
    iget-wide v1, p0, Li/m0/c/e;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Li/m0/c/e;->n:J

    .line 48
    iput-wide v1, v0, Li/m0/c/e$b;->f:J

    .line 49
    :cond_9
    :goto_4
    invoke-interface {p1}, Lj/i;->flush()V

    .line 50
    iget-wide p1, p0, Li/m0/c/e;->e:J

    iget-wide v0, p0, Li/m0/c/e;->a:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    invoke-virtual {p0}, Li/m0/c/e;->G()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 51
    :cond_a
    iget-object p1, p0, Li/m0/c/e;->t:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Li/m0/c/e;->o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_b
    monitor-exit p0

    return-void

    .line 53
    :cond_c
    :try_start_3
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_d
    :try_start_4
    const-string p1, "Check failed."

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;J)Li/m0/c/e$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p0}, Li/m0/c/e;->F()V

    .line 2
    invoke-virtual {p0}, Li/m0/c/e;->d()V

    .line 3
    invoke-virtual {p0, p1}, Li/m0/c/e;->O(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/m0/c/e$b;

    const-wide/16 v2, -0x1

    cmp-long v4, p2, v2

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-wide v2, v0, Li/m0/c/e$b;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, p2

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    iget-object p2, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    monitor-exit p0

    return-object v1

    .line 9
    :cond_3
    :try_start_2
    iget-boolean p2, p0, Li/m0/c/e;->l:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Li/m0/c/e;->m:Z

    if-eqz p2, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object p2, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz p2, :cond_7

    .line 11
    sget-object p3, Li/m0/c/e;->w:Ljava/lang/String;

    invoke-interface {p2, p3}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object p3

    const/16 v2, 0x20

    .line 12
    invoke-interface {p3, v2}, Lj/i;->q(I)Lj/i;

    move-result-object p3

    .line 13
    invoke-interface {p3, p1}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object p3

    const/16 v2, 0xa

    .line 14
    invoke-interface {p3, v2}, Lj/i;->q(I)Lj/i;

    .line 15
    invoke-interface {p2}, Lj/i;->flush()V

    .line 16
    iget-boolean p2, p0, Li/m0/c/e;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    .line 17
    monitor-exit p0

    return-object v1

    :cond_5
    if-nez v0, :cond_6

    .line 18
    :try_start_3
    new-instance v0, Li/m0/c/e$b;

    invoke-direct {v0, p0, p1}, Li/m0/c/e$b;-><init>(Li/m0/c/e;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Li/m0/c/e;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_6
    new-instance p1, Li/m0/c/e$a;

    invoke-direct {p1, p0, v0}, Li/m0/c/e$a;-><init>(Li/m0/c/e;Li/m0/c/e$b;)V

    .line 21
    iput-object p1, v0, Li/m0/c/e$b;->e:Li/m0/c/e$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit p0

    return-object p1

    .line 23
    :cond_7
    :try_start_4
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 24
    :cond_8
    :goto_1
    :try_start_5
    iget-object p1, p0, Li/m0/c/e;->t:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Li/m0/c/e;->o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 25
    monitor-exit p0

    return-object v1

    .line 26
    :cond_9
    :try_start_6
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Li/m0/c/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Li/m0/c/e;->d()V

    .line 3
    invoke-virtual {p0}, Li/m0/c/e;->N()V

    .line 4
    iget-object v0, p0, Li/m0/c/e;->f:Lj/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
