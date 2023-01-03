.class public abstract Lg/a/a;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/a$d;,
        Lg/a/a$c;
    }
.end annotation


# static fields
.field public static volatile g:Landroid/content/Context;

.field public static final h:Lg/a/f1/t/d;

.field public static final i:Lg/a/a$d;


# instance fields
.field public final a:J

.field public final b:Lg/a/b0;

.field public c:Lg/a/z;

.field public d:Lio/realm/internal/OsSharedRealm;

.field public e:Z

.field public f:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/a/f1/t/d;

    sget v1, Lg/a/f1/t/d;->c:I

    invoke-direct {v0, v1, v1}, Lg/a/f1/t/d;-><init>(II)V

    .line 2
    sput-object v0, Lg/a/a;->h:Lg/a/f1/t/d;

    .line 3
    new-instance v0, Lg/a/a$d;

    invoke-direct {v0}, Lg/a/a$d;-><init>()V

    sput-object v0, Lg/a/a;->i:Lg/a/a$d;

    return-void
.end method

.method public constructor <init>(Lg/a/z;Lio/realm/internal/OsSchemaInfo;)V
    .locals 6

    .line 8
    iget-object v0, p1, Lg/a/z;->c:Lg/a/b0;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v1, Lg/a/a$a;

    invoke-direct {v1, p0}, Lg/a/a$a;-><init>(Lg/a/a;)V

    iput-object v1, p0, Lg/a/a;->f:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lg/a/a;->a:J

    .line 12
    iput-object v0, p0, Lg/a/a;->b:Lg/a/b0;

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lg/a/a;->c:Lg/a/z;

    if-eqz p2, :cond_0

    .line 14
    iget-object v2, v0, Lg/a/b0;->g:Lg/a/d0;

    if-eqz v2, :cond_0

    .line 15
    new-instance v3, Lg/a/c;

    invoke-direct {v3, v2}, Lg/a/c;-><init>(Lg/a/d0;)V

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 16
    :goto_0
    iget-object v2, v0, Lg/a/b0;->l:Lg/a/x$a;

    if-eqz v2, :cond_1

    .line 17
    new-instance v1, Lg/a/b;

    invoke-direct {v1, p0, v2}, Lg/a/b;-><init>(Lg/a/a;Lg/a/x$a;)V

    .line 18
    :cond_1
    new-instance v2, Lio/realm/internal/OsRealmConfig$b;

    invoke-direct {v2, v0}, Lio/realm/internal/OsRealmConfig$b;-><init>(Lg/a/b0;)V

    new-instance v0, Ljava/io/File;

    sget-object v4, Lg/a/a;->g:Landroid/content/Context;

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".realm.temp"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, v2, Lio/realm/internal/OsRealmConfig$b;->e:Z

    .line 22
    iput-object v3, v2, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 23
    iput-object p2, v2, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    .line 24
    iput-object v1, v2, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 25
    invoke-static {v2}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$b;)Lio/realm/internal/OsSharedRealm;

    move-result-object p2

    iput-object p2, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 26
    iput-boolean v0, p0, Lg/a/a;->e:Z

    .line 27
    iget-object v0, p0, Lg/a/a;->f:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    invoke-virtual {p2, v0}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    .line 28
    iput-object p1, p0, Lg/a/a;->c:Lg/a/z;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/a$a;

    invoke-direct {v0, p0}, Lg/a/a$a;-><init>(Lg/a/a;)V

    iput-object v0, p0, Lg/a/a;->f:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lg/a/a;->a:J

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lg/a/b0;

    move-result-object v0

    iput-object v0, p0, Lg/a/a;->b:Lg/a/b0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg/a/a;->c:Lg/a/z;

    .line 6
    iput-object p1, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lg/a/a;->e:Z

    return-void
.end method

.method public static E(Lg/a/b0;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2
    new-instance v1, Lg/a/a$b;

    invoke-direct {v1, p0, v0}, Lg/a/a$b;-><init>(Lg/a/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 3
    iget-object v2, p0, Lg/a/b0;->c:Ljava/lang/String;

    .line 4
    invoke-static {v2, v1}, Lio/realm/internal/OsObjectStore;->nativeCallWithLock(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object p0, p0, Lg/a/b0;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public F(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lg/a/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    new-instance p1, Lio/realm/DynamicRealmObject;

    .line 2
    new-instance p2, Lio/realm/internal/CheckedRow;

    invoke-direct {p2, p3}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    .line 3
    invoke-direct {p1, p0, p2}, Lio/realm/DynamicRealmObject;-><init>(Lg/a/a;Lg/a/f1/p;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lg/a/a;->b:Lg/a/b0;

    .line 5
    iget-object v0, p2, Lg/a/b0;->j:Lg/a/f1/o;

    .line 6
    invoke-virtual {p0}, Lg/a/a;->G()Lg/a/k0;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lg/a/k0;->a()V

    .line 8
    iget-object p2, p2, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {p2, p1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Lg/a/f1/o;->i(Ljava/lang/Class;Ljava/lang/Object;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)Lg/a/e0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public abstract G()Lg/a/k0;
.end method

.method public H()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lg/a/a;->a:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lg/a/a;->a:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    .line 2
    iget-object v0, p0, Lg/a/a;->c:Lg/a/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lg/a/a;->b:Lg/a/b0;

    .line 5
    iget-object v2, v2, Lg/a/b0;->c:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lg/a/z;->a:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lg/a/z$a;->a(Ljava/lang/Class;)Lg/a/z$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/a/z$b;

    .line 7
    iget-object v4, v3, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 8
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-gtz v6, :cond_1

    const-string v1, "%s has been closed already. refCount is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v4, v3, v7

    .line 11
    invoke-static {v1, v3}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    goto/16 :goto_1

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    .line 15
    iget-object v4, v3, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    iget-object v4, v3, Lg/a/z$b;->a:Ljava/lang/ThreadLocal;

    .line 18
    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    iget v4, v3, Lg/a/z$b;->c:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lg/a/z$b;->c:I

    if-ltz v4, :cond_5

    .line 20
    iput-object v1, p0, Lg/a/a;->c:Lg/a/z;

    .line 21
    iget-object v2, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lg/a/a;->e:Z

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 23
    iput-object v1, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 24
    :cond_2
    invoke-virtual {v0}, Lg/a/z;->e()I

    move-result v2

    if-nez v2, :cond_7

    .line 25
    iput-object v1, v0, Lg/a/z;->c:Lg/a/b0;

    .line 26
    iget-object v2, p0, Lg/a/a;->b:Lg/a/b0;

    if-eqz v2, :cond_4

    .line 27
    invoke-static {v5}, Lg/a/f1/j;->a(Z)Lg/a/f1/j;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    throw v1

    .line 29
    :cond_4
    throw v1

    .line 30
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global reference counter of Realm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got corrupted."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_6
    iget-object v1, v3, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_7
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 34
    :cond_8
    iput-object v1, p0, Lg/a/a;->c:Lg/a/z;

    .line 35
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_9

    iget-boolean v2, p0, Lg/a/a;->e:Z

    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 37
    iput-object v1, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    :cond_9
    :goto_1
    return-void

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p0, Lg/a/a;->a:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/a/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lg/a/a;->b:Lg/a/b0;

    .line 3
    iget-object v3, v3, Lg/a/b0;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    .line 4
    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lg/a/a;->c:Lg/a/z;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v1, Lg/a/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lg/a/z;->f:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method
