.class public Lio/realm/BaseModuleMediator;
.super Lg/a/f1/o;
.source "BaseModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v1, Lio/realm/sync/Subscription;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/BaseModuleMediator;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/a/f1/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lg/a/x;Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/x;",
            "TE;Z",
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
    instance-of v0, p2, Lg/a/f1/n;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 4
    const-class v2, Lio/realm/sync/permissions/PermissionUser;

    .line 5
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 6
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 7
    move-object v3, v1

    check-cast v3, Lg/a/j1$a;

    .line 8
    move-object v4, p2

    check-cast v4, Lio/realm/sync/permissions/PermissionUser;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/j1;->copyOrUpdate(Lg/a/x;Lg/a/j1$a;Lio/realm/sync/permissions/PermissionUser;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 9
    :cond_1
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 11
    const-class v2, Lio/realm/sync/permissions/RealmPermissions;

    .line 12
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 13
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 14
    move-object v3, v1

    check-cast v3, Lg/a/k1$a;

    .line 15
    move-object v4, p2

    check-cast v4, Lio/realm/sync/permissions/RealmPermissions;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/k1;->copyOrUpdate(Lg/a/x;Lg/a/k1$a;Lio/realm/sync/permissions/RealmPermissions;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/permissions/RealmPermissions;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 16
    :cond_2
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 18
    const-class v2, Lio/realm/sync/permissions/ClassPermissions;

    .line 19
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 20
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 21
    move-object v3, v1

    check-cast v3, Lg/a/h1$a;

    .line 22
    move-object v4, p2

    check-cast v4, Lio/realm/sync/permissions/ClassPermissions;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/h1;->copyOrUpdate(Lg/a/x;Lg/a/h1$a;Lio/realm/sync/permissions/ClassPermissions;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 23
    :cond_3
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 25
    const-class v2, Lio/realm/sync/permissions/Permission;

    .line 26
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 27
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 28
    move-object v3, v1

    check-cast v3, Lg/a/i1$a;

    .line 29
    move-object v4, p2

    check-cast v4, Lio/realm/sync/permissions/Permission;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/i1;->copyOrUpdate(Lg/a/x;Lg/a/i1$a;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/permissions/Permission;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 30
    :cond_4
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 32
    const-class v2, Lio/realm/sync/permissions/Role;

    .line 33
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 34
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 35
    move-object v3, v1

    check-cast v3, Lg/a/l1$a;

    .line 36
    move-object v4, p2

    check-cast v4, Lio/realm/sync/permissions/Role;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/l1;->copyOrUpdate(Lg/a/x;Lg/a/l1$a;Lio/realm/sync/permissions/Role;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/permissions/Role;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 37
    :cond_5
    const-class v1, Lio/realm/sync/Subscription;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    iget-object v1, p1, Lg/a/x;->j:Lg/a/k0;

    .line 39
    const-class v2, Lio/realm/sync/Subscription;

    .line 40
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 41
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    .line 42
    move-object v3, v1

    check-cast v3, Lg/a/g1$a;

    .line 43
    move-object v4, p2

    check-cast v4, Lio/realm/sync/Subscription;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lg/a/g1;->copyOrUpdate(Lg/a/x;Lg/a/g1$a;Lio/realm/sync/Subscription;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/sync/Subscription;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;

    return-object p1

    .line 44
    :cond_6
    invoke-static {v0}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lg/a/f1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lg/a/f1/c;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lg/a/j1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/j1$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lg/a/k1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/k1$a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Lg/a/h1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/h1$a;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2}, Lg/a/i1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/i1$a;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2}, Lg/a/l1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/l1$a;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lio/realm/sync/Subscription;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2}, Lg/a/g1;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lg/a/g1$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {}, Lg/a/j1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {}, Lg/a/k1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {}, Lg/a/h1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-static {}, Lg/a/i1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-static {}, Lg/a/l1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lio/realm/sync/Subscription;

    invoke-static {}, Lg/a/g1;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/BaseModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "__User"

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "__Realm"

    return-object p1

    .line 4
    :cond_1
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "__Class"

    return-object p1

    .line 5
    :cond_2
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "__Permission"

    return-object p1

    .line 6
    :cond_3
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "__Role"

    return-object p1

    .line 7
    :cond_4
    const-class v0, Lio/realm/sync/Subscription;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "__ResultSets"

    return-object p1

    .line 8
    :cond_5
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public i(Ljava/lang/Class;Ljava/lang/Object;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)Lg/a/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lg/a/f1/p;",
            "Lg/a/f1/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 2
    :try_start_0
    move-object v2, p2

    check-cast v2, Lg/a/a;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lg/a/a$c;->b(Lg/a/a;Lg/a/f1/p;Lg/a/f1/c;ZLjava/util/List;)V

    .line 3
    invoke-static {p1}, Lg/a/f1/o;->a(Ljava/lang/Class;)V

    .line 4
    const-class p2, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lg/a/j1;

    invoke-direct {p2}, Lg/a/j1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    const-class p2, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lg/a/k1;

    invoke-direct {p2}, Lg/a/k1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 10
    :cond_1
    :try_start_2
    const-class p2, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lg/a/h1;

    invoke-direct {p2}, Lg/a/h1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 13
    :cond_2
    :try_start_3
    const-class p2, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lg/a/i1;

    invoke-direct {p2}, Lg/a/i1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 16
    :cond_3
    :try_start_4
    const-class p2, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Lg/a/l1;

    invoke-direct {p2}, Lg/a/l1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 19
    :cond_4
    :try_start_5
    const-class p2, Lio/realm/sync/Subscription;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    new-instance p2, Lg/a/g1;

    invoke-direct {p2}, Lg/a/g1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a/e0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p1

    .line 22
    :cond_5
    :try_start_6
    invoke-static {p1}, Lg/a/f1/o;->e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    throw p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
