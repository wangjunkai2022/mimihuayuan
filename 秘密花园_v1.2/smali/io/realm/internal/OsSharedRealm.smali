.class public final Lio/realm/internal/OsSharedRealm;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lg/a/f1/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;,
        Lio/realm/internal/OsSharedRealm$InitializationCallback;,
        Lio/realm/internal/OsSharedRealm$MigrationCallback;,
        Lio/realm/internal/OsSharedRealm$a;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE:B = 0x7t

.field public static final FILE_EXCEPTION_KIND_ACCESS_ERROR:B = 0x0t

.field public static final FILE_EXCEPTION_KIND_BAD_HISTORY:B = 0x1t

.field public static final FILE_EXCEPTION_KIND_EXISTS:B = 0x3t

.field public static final FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED:B = 0x6t

.field public static final FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE:B = 0x5t

.field public static final FILE_EXCEPTION_KIND_NOT_FOUND:B = 0x4t

.field public static final FILE_EXCEPTION_KIND_PERMISSION_DENIED:B = 0x2t

.field public static final nativeFinalizerPtr:J

.field public static final sharedRealmsUnderConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lg/a/f1/a;

.field public final context:Lg/a/f1/h;

.field public final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/OsResults$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nativePtr:J

.field public final osRealmConfig:Lio/realm/internal/OsRealmConfig;

.field public final pendingRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lg/a/f1/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field public final schemaInfo:Lio/realm/internal/OsSchemaInfo;

.field public final tempSharedRealmsForCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsSharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JLio/realm/internal/OsRealmConfig;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 30
    iput-wide p1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    .line 31
    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 32
    new-instance p1, Lio/realm/internal/OsSchemaInfo;

    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 33
    iget-object p1, p3, Lio/realm/internal/OsRealmConfig;->d:Lg/a/f1/h;

    .line 34
    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 35
    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    .line 36
    new-instance p1, Lg/a/f1/s/a;

    invoke-direct {p1}, Lg/a/f1/s/a;-><init>()V

    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 38
    iget-wide p1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    .line 39
    sget-object p1, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/OsSharedRealm;

    .line 40
    iget-object v1, p2, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 41
    iget-object v2, p3, Lio/realm/internal/OsRealmConfig;->d:Lg/a/f1/h;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 42
    iget-object p1, p2, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot find the parent \'OsSharedRealm\' which is under construction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/realm/internal/OsRealmConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 5
    new-instance v0, Lg/a/f1/s/a;

    invoke-direct {v0}, Lg/a/f1/s/a;-><init>()V

    .line 6
    new-instance v1, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v1, p0, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lg/a/f1/a;)V

    .line 7
    iget-object v2, p1, Lio/realm/internal/OsRealmConfig;->d:Lg/a/f1/h;

    .line 8
    iput-object v2, p0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    .line 9
    sget-object v2, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :try_start_0
    iget-wide v2, p1, Lio/realm/internal/OsRealmConfig;->c:J

    .line 11
    invoke-static {v2, v3, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v2, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 13
    sget-object v2, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 15
    new-instance p1, Lio/realm/internal/OsSchemaInfo;

    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v2

    invoke-direct {p1, v2, v3, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 16
    iget-object p1, p0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    .line 17
    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    .line 18
    iput-object v1, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 19
    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {v0}, Lg/a/f1/s/a;->a()Z

    move-result p1

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/OsSharedRealm;

    .line 21
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->close()V

    goto :goto_0

    .line 23
    :cond_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 24
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    sget-object v0, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method private detachIterators()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/OsResults$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/OsResults$a;->c()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private executePendingRowQueries()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/f1/l;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v1, Lg/a/f1/l;->a:Lio/realm/internal/OsResults;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \'frontEnd\' has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getInstance(Lg/a/b0;)Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/OsRealmConfig$b;

    invoke-direct {v0, p0}, Lio/realm/internal/OsRealmConfig$b;-><init>(Lg/a/b0;)V

    .line 2
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$b;)Lio/realm/internal/OsSharedRealm;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lio/realm/internal/OsRealmConfig$b;)Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/OsRealmConfig$b;->a()Lio/realm/internal/OsRealmConfig;

    move-result-object p0

    .line 4
    invoke-static {}, Lg/a/f1/j;->b()Lg/a/f1/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v0, p0}, Lio/realm/internal/OsSharedRealm;-><init>(Lio/realm/internal/OsRealmConfig;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static getTemporaryDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static initialize(Ljava/io/File;)V
    .locals 3

    .line 1
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lg/a/f1/f;

    const-string v1, "failed to create temporary directory: "

    invoke-static {v1, v0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/a/f1/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v1, "/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    invoke-static {v0, v1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_3
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 8
    sput-object p0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    return-void
.end method

.method public static native nativeBeginTransaction(J)V
.end method

.method public static native nativeCancelTransaction(J)V
.end method

.method public static native nativeCloseSharedRealm(J)V
.end method

.method public static native nativeCommitTransaction(J)V
.end method

.method public static native nativeCompact(J)Z
.end method

.method public static native nativeCreateTable(JLjava/lang/String;)J
.end method

.method public static native nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;ZZ)J
.end method

.method public static native nativeGetClassPrivileges(JLjava/lang/String;)I
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetObjectPrivileges(JJ)I
.end method

.method public static native nativeGetRealmPrivileges(J)I
.end method

.method public static native nativeGetSchemaInfo(J)J
.end method

.method public static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method public static native nativeGetTable(JLjava/lang/String;)J
.end method

.method public static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method public static native nativeGetVersionID(J)[J
.end method

.method public static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method public static native nativeInit(Ljava/lang/String;)V
.end method

.method public static native nativeIsAutoRefresh(J)Z
.end method

.method public static native nativeIsClosed(J)Z
.end method

.method public static native nativeIsEmpty(J)Z
.end method

.method public static native nativeIsInTransaction(J)Z
.end method

.method public static native nativeIsPartial(J)Z
.end method

.method public static native nativeRefresh(J)V
.end method

.method public static native nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
.end method

.method public static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetAutoRefresh(JZ)V
.end method

.method public static native nativeSize(J)J
.end method

.method public static native nativeStopWaitForChange(J)V
.end method

.method public static native nativeWaitForChange(J)Z
.end method

.method public static native nativeWriteCopy(JLjava/lang/String;[B)V
.end method

.method public static runInitializationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    invoke-interface {p3, v0}, Lio/realm/internal/OsSharedRealm$InitializationCallback;->onInit(Lio/realm/internal/OsSharedRealm;)V

    return-void
.end method

.method public static runMigrationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$MigrationCallback;J)V
    .locals 6

    .line 1
    new-instance v1, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    .line 2
    iget-object p0, p2, Lio/realm/internal/OsRealmConfig;->a:Lg/a/b0;

    .line 3
    iget-wide v4, p0, Lg/a/b0;->f:J

    move-object v0, p3

    move-wide v2, p4

    .line 4
    invoke-interface/range {v0 .. v5}, Lio/realm/internal/OsSharedRealm$MigrationCallback;->onMigrationNeeded(Lio/realm/internal/OsSharedRealm;JJ)V

    return-void
.end method


# virtual methods
.method public addIterator(Lio/realm/internal/OsResults$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPendingRow(Lg/a/f1/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->detachIterators()V

    .line 2
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->executePendingRowQueries()V

    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeBeginTransaction(J)V

    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCancelTransaction(J)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->context:Lg/a/f1/h;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsSharedRealm;->nativeCloseSharedRealm(J)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commitTransaction()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCommitTransaction(J)V

    return-void
.end method

.method public compact()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCompact(J)Z

    move-result v0

    return v0
.end method

.method public createTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 3

    .line 1
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsSharedRealm;->nativeCreateTable(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public createTableWithPrimaryKey(Ljava/lang/String;Ljava/lang/String;ZZ)Lio/realm/internal/Table;
    .locals 7

    .line 1
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsSharedRealm;->nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;ZZ)J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public getConfiguration()Lg/a/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 2
    iget-object v0, v0, Lio/realm/internal/OsRealmConfig;->a:Lg/a/b0;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 2
    iget-object v0, v0, Lio/realm/internal/OsRealmConfig;->a:Lg/a/b0;

    .line 3
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaInfo()Lio/realm/internal/OsSchemaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v0

    .line 2
    new-instance p1, Lio/realm/internal/Table;

    invoke-direct {p1, p0, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVersionID()Lio/realm/internal/OsSharedRealm$a;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    .line 2
    new-instance v1, Lio/realm/internal/OsSharedRealm$a;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/OsSharedRealm$a;-><init>(JJ)V

    return-object v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public invalidateIterators()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/OsResults$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lio/realm/internal/OsResults$a;->a:Lio/realm/internal/OsResults;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isAutoRefresh()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsAutoRefresh(J)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsClosed(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public isPartial()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsPartial(J)Z

    move-result v0

    return v0
.end method

.method public isSyncRealm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 2
    iget-object v0, v0, Lio/realm/internal/OsRealmConfig;->b:Ljava/net/URI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeRefresh(J)V

    return-void
.end method

.method public registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    return-void
.end method

.method public removePendingRow(Lg/a/f1/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/a/f1/l;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public renameTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    check-cast v0, Lg/a/f1/s/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/a/f1/s/a;->b(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopWaitForChange()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeStopWaitForChange(J)V

    return-void
.end method

.method public waitForChange()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeWaitForChange(J)Z

    move-result v0

    return v0
.end method

.method public writeCopy(Ljava/io/File;[B)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The destination file must not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeWriteCopy(JLjava/lang/String;[B)V

    return-void
.end method
