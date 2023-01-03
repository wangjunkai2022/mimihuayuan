.class public final Lg/a/z;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/z$a;,
        Lg/a/z$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lg/a/z;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lg/a/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lg/a/z$a;",
            "Lg/a/z$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Lg/a/b0;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/a/z;->e:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lg/a/z;->f:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg/a/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lg/a/z;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lg/a/z$a;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lg/a/z;->a:Ljava/util/EnumMap;

    .line 5
    invoke-static {}, Lg/a/z$a;->values()[Lg/a/z$a;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Lg/a/z;->a:Ljava/util/EnumMap;

    new-instance v4, Lg/a/z$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lg/a/z$b;-><init>(Lg/a/y;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lg/a/a;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_4

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x1000

    :try_start_2
    new-array p1, p1, [B

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    if-nez v0, :cond_2

    move-object v0, p0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    :goto_3
    return-void

    .line 8
    :cond_3
    new-instance p0, Lio/realm/exceptions/RealmFileException;

    sget-object p1, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {p0, p1, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    .line 9
    :cond_4
    :try_start_5
    new-instance p1, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input stream to the asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_4
    move-object v0, v1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v2, v0

    :goto_5
    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v2, v0

    .line 10
    :goto_6
    :try_start_6
    new-instance v1, Lio/realm/exceptions/RealmFileException;

    sget-object v3, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve the path to the asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0, p1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v0, :cond_5

    .line 11
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    nop

    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 12
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 13
    :catch_6
    :cond_6
    throw p0
.end method

.method public static b(Lg/a/b0;Ljava/lang/Class;)Lg/a/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lg/a/a;",
            ">(",
            "Lg/a/b0;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/b0;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lg/a/z;->d(Ljava/lang/String;Z)Lg/a/z;

    move-result-object v0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, v0, Lg/a/z;->a:Ljava/util/EnumMap;

    invoke-static {p1}, Lg/a/z$a;->a(Ljava/lang/Class;)Lg/a/z$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/a/z$b;

    .line 5
    invoke-virtual {v0}, Lg/a/z;->e()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    .line 6
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lg/a/b0;->c:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    xor-int/2addr v6, v1

    if-eqz v3, :cond_9

    .line 7
    iget-object v3, p0, Lg/a/b0;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    xor-int/2addr v3, v1

    if-eqz v3, :cond_3

    .line 9
    new-instance v3, Ljava/io/File;

    .line 10
    iget-object v7, p0, Lg/a/b0;->a:Ljava/io/File;

    .line 11
    iget-object v8, p0, Lg/a/b0;->b:Ljava/lang/String;

    .line 12
    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v3, v5

    .line 13
    :goto_3
    invoke-static {v4}, Lg/a/f1/j;->a(Z)Lg/a/f1/j;

    move-result-object v7

    if-eqz v7, :cond_8

    if-nez v3, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    new-instance v7, Lg/a/y;

    invoke-direct {v7, v3, p0, v4, v5}, Lg/a/y;-><init>(Ljava/io/File;Lg/a/b0;ZLjava/lang/String;)V

    .line 15
    iget-object v3, p0, Lg/a/b0;->c:Ljava/lang/String;

    .line 16
    invoke-static {v3, v7}, Lio/realm/internal/OsObjectStore;->nativeCallWithLock(Ljava/lang/String;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_4
    if-nez v6, :cond_6

    .line 17
    :try_start_1
    invoke-static {p0}, Lio/realm/internal/OsSharedRealm;->getInstance(Lg/a/b0;)Lio/realm/internal/OsSharedRealm;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    invoke-static {v3}, Lio/realm/internal/Table;->n(Lio/realm/internal/OsSharedRealm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v5, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v5, :cond_5

    .line 19
    :try_start_3
    invoke-virtual {v5}, Lio/realm/internal/OsSharedRealm;->close()V

    :cond_5
    throw p0

    :cond_6
    move-object v3, v5

    :goto_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 20
    :cond_7
    iput-object p0, v0, Lg/a/z;->c:Lg/a/b0;

    goto :goto_7

    .line 21
    :cond_8
    throw v5

    .line 22
    :cond_9
    invoke-virtual {v0, p0}, Lg/a/z;->f(Lg/a/b0;)V

    .line 23
    :goto_7
    iget-object p0, v2, Lg/a/z$b;->a:Ljava/lang/ThreadLocal;

    .line 24
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    .line 25
    const-class p0, Lg/a/x;

    if-ne p1, p0, :cond_b

    .line 26
    new-instance p0, Lg/a/x;

    invoke-direct {p0, v0}, Lg/a/x;-><init>(Lg/a/z;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_c

    .line 27
    :try_start_4
    invoke-static {}, Lg/a/f1/j;->b()Lg/a/f1/j;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_8

    .line 28
    :cond_a
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 29
    :catchall_2
    :try_start_5
    invoke-virtual {p0}, Lg/a/a;->close()V

    .line 30
    iget-object p1, p0, Lg/a/a;->b:Lg/a/b0;

    .line 31
    invoke-static {p1}, Lg/a/z;->c(Lg/a/b0;)V

    goto :goto_8

    .line 32
    :cond_b
    const-class p0, Lg/a/i;

    if-ne p1, p0, :cond_d

    .line 33
    new-instance p0, Lg/a/i;

    invoke-direct {p0, v0}, Lg/a/i;-><init>(Lg/a/z;)V

    .line 34
    :cond_c
    :goto_8
    iget-object p1, v2, Lg/a/z$b;->a:Ljava/lang/ThreadLocal;

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 36
    iget-object p0, v2, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 38
    iget p0, v2, Lg/a/z$b;->c:I

    add-int/2addr p0, v1

    iput p0, v2, Lg/a/z$b;->c:I

    goto :goto_9

    .line 39
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_e
    :goto_9
    iget-object p0, v2, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 41
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 42
    iget-object p1, v2, Lg/a/z$b;->b:Ljava/lang/ThreadLocal;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 44
    iget-object p0, v2, Lg/a/z$b;->a:Ljava/lang/ThreadLocal;

    .line 45
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/a/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v0

    return-object p0

    :catchall_3
    move-exception p0

    .line 46
    monitor-exit v0

    throw p0
.end method

.method public static c(Lg/a/b0;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0}, Lg/a/a;->E(Lg/a/b0;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    const-string v3, "Sync server still holds a reference to the Realm. It cannot be deleted. Retrying "

    const-string v4, " more times"

    .line 2
    invoke-static {v3, v1, v4}, Lf/b/a/a/a;->K(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_0

    const-wide/16 v3, 0xf

    .line 3
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v1, "Failed to delete the underlying Realm file: "

    .line 4
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object p0, p0, Lg/a/b0;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;Z)Lg/a/z;
    .locals 5

    .line 1
    sget-object v0, Lg/a/z;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lg/a/z;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/a/z;

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, v3, Lg/a/z;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 7
    new-instance v2, Lg/a/z;

    invoke-direct {v2, p0}, Lg/a/z;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lg/a/z;->e:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lg/a/z;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/a/z$b;

    .line 2
    iget v2, v2, Lg/a/z$b;->c:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final f(Lg/a/b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/a/z;->c:Lg/a/b0;

    invoke-virtual {v0, p1}, Lg/a/b0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg/a/z;->c:Lg/a/b0;

    invoke-virtual {v0}, Lg/a/b0;->a()[B

    move-result-object v0

    invoke-virtual {p1}, Lg/a/b0;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lg/a/b0;->g:Lg/a/d0;

    .line 4
    iget-object v1, p0, Lg/a/z;->c:Lg/a/b0;

    .line 5
    iget-object v1, v1, Lg/a/b0;->g:Lg/a/d0;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object p1, p1, Lg/a/b0;->g:Lg/a/d0;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lg/a/z;->c:Lg/a/b0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong key used to decrypt Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
