.class public Lg/a/x;
.super Lg/a/a;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/x$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;

.field public static l:Lg/a/b0;


# instance fields
.field public final j:Lg/a/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/a/x;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/a/z;)V
    .locals 5

    .line 5
    iget-object v0, p1, Lg/a/z;->c:Lg/a/b0;

    .line 6
    iget-object v0, v0, Lg/a/b0;->j:Lg/a/f1/o;

    .line 7
    new-instance v1, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v0}, Lg/a/f1/o;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-direct {p0, p1, v1}, Lg/a/a;-><init>(Lg/a/z;Lio/realm/internal/OsSchemaInfo;)V

    .line 9
    new-instance p1, Lg/a/l;

    new-instance v0, Lg/a/f1/b;

    iget-object v1, p0, Lg/a/a;->b:Lg/a/b0;

    .line 10
    iget-object v1, v1, Lg/a/b0;->j:Lg/a/f1/o;

    .line 11
    iget-object v2, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/a/f1/b;-><init>(Lg/a/f1/o;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {p1, p0, v0}, Lg/a/l;-><init>(Lg/a/a;Lg/a/f1/b;)V

    iput-object p1, p0, Lg/a/x;->j:Lg/a/k0;

    .line 12
    iget-object p1, p0, Lg/a/a;->b:Lg/a/b0;

    .line 13
    iget-boolean v0, p1, Lg/a/b0;->m:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object p1, p1, Lg/a/b0;->j:Lg/a/f1/o;

    .line 15
    invoke-virtual {p1}, Lg/a/f1/o;->f()Ljava/util/Set;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 17
    invoke-virtual {p1, v1}, Lg/a/f1/o;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/Table;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2, v1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 20
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    iget-object v0, p0, Lg/a/a;->b:Lg/a/b0;

    .line 21
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    .line 22
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 23
    invoke-static {v1}, Lio/realm/internal/Table;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Cannot open the read only Realm. \'%s\' is missing."

    .line 24
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lg/a/a;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 2
    new-instance v0, Lg/a/l;

    new-instance v1, Lg/a/f1/b;

    iget-object v2, p0, Lg/a/a;->b:Lg/a/b0;

    .line 3
    iget-object v2, v2, Lg/a/b0;->j:Lg/a/f1/o;

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lg/a/f1/b;-><init>(Lg/a/f1/o;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lg/a/l;-><init>(Lg/a/a;Lg/a/f1/b;)V

    iput-object v0, p0, Lg/a/x;->j:Lg/a/k0;

    return-void
.end method

.method public static P()Lg/a/x;
    .locals 2

    .line 1
    sget-object v0, Lg/a/x;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lg/a/x;->l:Lg/a/b0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3
    sget-object v0, Lg/a/a;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call `Realm.init(Context)` before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    const-class v0, Lg/a/x;

    invoke-static {v1, v0}, Lg/a/z;->b(Lg/a/b0;Ljava/lang/Class;)Lg/a/a;

    move-result-object v0

    check-cast v0, Lg/a/x;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Q()Ljava/lang/Object;
    .locals 5

    const-string v0, "Could not create an instance of "

    const-string v1, "io.realm.DefaultRealmModule"

    const-string v2, "io.realm.DefaultRealmModule"

    .line 1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Lio/realm/exceptions/RealmException;

    invoke-static {v0, v1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    .line 6
    new-instance v3, Lio/realm/exceptions/RealmException;

    invoke-static {v0, v1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    .line 7
    new-instance v3, Lio/realm/exceptions/RealmException;

    invoke-static {v0, v1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized R(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lg/a/x;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 1
    invoke-static {p0, v1}, Lg/a/x;->S(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static S(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object p1, Lg/a/a;->g:Landroid/content/Context;

    if-nez p1, :cond_a

    if-eqz p0, :cond_9

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [J

    .line 6
    fill-array-data p1, :array_0

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget-wide v5, p1, v5

    .line 9
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-lez v5, :cond_3

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    :goto_1
    invoke-static {p0}, Lg/a/f1/m;->a(Landroid/content/Context;)V

    .line 12
    new-instance p1, Lg/a/b0$a;

    invoke-direct {p1, p0}, Lg/a/b0$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lg/a/b0$a;->a()Lg/a/b0;

    move-result-object p1

    invoke-static {p1}, Lg/a/x;->T(Lg/a/b0;)V

    .line 13
    invoke-static {}, Lg/a/f1/j;->b()Lg/a/f1/j;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lg/a/a;->g:Landroid/content/Context;

    goto :goto_2

    .line 16
    :cond_6
    sput-object p0, Lg/a/a;->g:Landroid/content/Context;

    .line 17
    :goto_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, ".realm.temp"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    .line 18
    throw p0

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context.getFilesDir() returns "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-null context required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    return-void

    :array_0
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method

.method public static T(Lg/a/b0;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/x;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lg/a/x;->l:Lg/a/b0;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public G()Lg/a/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/a/x;->j:Lg/a/k0;

    return-object v0
.end method

.method public final J(Lg/a/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be copied into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    invoke-virtual {p0}, Lg/a/a;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/a/a;->b:Lg/a/b0;

    .line 4
    iget-object v1, v0, Lg/a/b0;->j:Lg/a/f1/o;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 5
    invoke-virtual/range {v1 .. v6}, Lg/a/f1/o;->b(Lg/a/x;Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Attempting to create an object of type"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_0
    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "`copyOrUpdate` can only be called inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs L(Lg/a/e0;[Lg/a/m;)Lg/a/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;[",
            "Lg/a/m;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/a/x;->J(Lg/a/e0;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lio/realm/internal/Util;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lg/a/x;->K(Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lg/a/e0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v0, p1}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg/a/a;->b:Lg/a/b0;

    .line 3
    iget-object v2, v1, Lg/a/b0;->j:Lg/a/f1/o;

    .line 4
    invoke-static {v0, p2}, Lio/realm/internal/OsObject;->createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-object p2, p0, Lg/a/x;->j:Lg/a/k0;

    .line 5
    invoke-virtual {p2}, Lg/a/k0;->a()V

    .line 6
    iget-object p2, p2, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {p2, p1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v6

    move-object v3, p1

    move-object v4, p0

    move v7, p3

    move-object v8, p4

    .line 7
    invoke-virtual/range {v2 .. v8}, Lg/a/f1/o;->i(Ljava/lang/Class;Ljava/lang/Object;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)Lg/a/e0;

    move-result-object p1

    return-object p1
.end method

.method public N(Lg/a/x$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/a/a;->d()V

    .line 2
    :try_start_0
    invoke-interface {p1, p0}, Lg/a/x$a;->a(Lg/a/x;)V

    .line 3
    invoke-virtual {p0}, Lg/a/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Lg/a/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lg/a/a;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not cancel transaction, not currently in a transaction."

    .line 6
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    throw p1
.end method

.method public O(Lg/a/x$a;Lg/a/x$a$b;)Lg/a/f1/t/b;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lg/a/a;->f()V

    .line 2
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    check-cast v0, Lg/a/f1/s/a;

    invoke-virtual {v0}, Lg/a/f1/s/a;->a()Z

    move-result v5

    .line 3
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    check-cast v0, Lg/a/f1/s/a;

    const-string v1, "Callback cannot be delivered on current thread."

    invoke-virtual {v0, v1}, Lg/a/f1/s/a;->b(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lg/a/a;->b:Lg/a/b0;

    .line 5
    iget-object v0, p0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v7, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 6
    sget-object v0, Lg/a/a;->h:Lg/a/f1/t/d;

    new-instance v9, Lg/a/w;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lg/a/w;-><init>(Lg/a/x;Lg/a/b0;Lg/a/x$a;ZLg/a/x$a$b;Lio/realm/internal/RealmNotifier;Lg/a/x$a$a;)V

    invoke-virtual {v0, v9}, Lg/a/f1/t/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 7
    new-instance p2, Lg/a/f1/t/b;

    sget-object v0, Lg/a/a;->h:Lg/a/f1/t/d;

    invoke-direct {p2, p1, v0}, Lg/a/f1/t/b;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object p2
.end method
