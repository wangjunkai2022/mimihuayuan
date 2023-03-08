.class public final Lg/a/f0;
.super Lg/a/o;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/a/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/a/o;-><init>(Lg/a/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 2
    iput-object p4, p0, Lg/a/f0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lg/a/e0;

    invoke-virtual {p0, p1}, Lg/a/f0;->h(Lg/a/e0;)Lg/a/e0;

    move-result-object p1

    check-cast p1, Lg/a/f1/n;

    .line 2
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    invoke-interface {p1}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 4
    invoke-interface {p1}, Lg/a/f1/p;->l()J

    move-result-wide v1

    .line 5
    iget-wide v3, v0, Lio/realm/internal/OsList;->a:J

    invoke-static {v3, v4, v1, v2}, Lio/realm/internal/OsList;->nativeAddRow(JJ)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lg/a/e0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.lang.String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 4
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RealmList does not accept null values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/o;->a:Lg/a/a;

    iget-object v1, p0, Lg/a/o;->c:Ljava/lang/Class;

    iget-object v2, p0, Lg/a/f0;->d:Ljava/lang/String;

    iget-object v3, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v4, p1

    .line 2
    iget-object p1, v3, Lio/realm/internal/OsList;->c:Lio/realm/internal/Table;

    iget-wide v6, v3, Lio/realm/internal/OsList;->a:J

    invoke-static {v6, v7, v4, v5}, Lio/realm/internal/OsList;->nativeGetRow(JJ)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lio/realm/internal/Table;->m(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 3
    invoke-virtual {v0, v1, v2, p1}, Lg/a/a;->F(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lg/a/e0;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    if-ltz p1, :cond_1

    if-lt v1, p1, :cond_1

    .line 2
    check-cast p2, Lg/a/e0;

    invoke-virtual {p0, p2}, Lg/a/f0;->h(Lg/a/e0;)Lg/a/e0;

    move-result-object p2

    check-cast p2, Lg/a/f1/n;

    .line 3
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v3, p1

    invoke-interface {p2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 5
    invoke-interface {p1}, Lg/a/f1/p;->l()J

    move-result-wide v5

    .line 6
    iget-wide v1, v0, Lio/realm/internal/OsList;->a:J

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsList;->nativeInsertRow(JJJ)V

    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid index "

    const-string v1, ", size is "

    invoke-static {v0, p1, v1}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not reach here."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(ILjava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lg/a/e0;

    invoke-virtual {p0, p2}, Lg/a/f0;->h(Lg/a/e0;)Lg/a/e0;

    move-result-object p2

    check-cast p2, Lg/a/f1/n;

    .line 2
    iget-object v0, p0, Lg/a/o;->b:Lio/realm/internal/OsList;

    int-to-long v3, p1

    invoke-interface {p2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 4
    invoke-interface {p1}, Lg/a/f1/p;->l()J

    move-result-wide v5

    .line 5
    iget-wide v1, v0, Lio/realm/internal/OsList;->a:J

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsList;->nativeSetRow(JJJ)V

    return-void
.end method

.method public final h(Lg/a/e0;)Lg/a/e0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lg/a/f1/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lg/a/f1/n;

    .line 3
    instance-of v3, v0, Lio/realm/DynamicRealmObject;

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, p0, Lg/a/f0;->d:Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    .line 7
    iget-object v5, p0, Lg/a/o;->a:Lg/a/a;

    if-ne v4, v5, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Lio/realm/DynamicRealmObject;

    invoke-virtual {v0}, Lio/realm/DynamicRealmObject;->getType()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v0, v5, v1

    const-string v0, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    iget-wide v1, v5, Lg/a/a;->a:J

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lg/a/v;->e:Lg/a/a;

    .line 13
    iget-wide v3, p1, Lg/a/a;->a:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 17
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    if-eqz v3, :cond_5

    .line 18
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 19
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    .line 20
    iget-object v3, v3, Lg/a/a;->b:Lg/a/b0;

    .line 21
    iget-object v3, v3, Lg/a/b0;->c:Ljava/lang/String;

    .line 22
    iget-object v4, p0, Lg/a/o;->a:Lg/a/a;

    .line 23
    iget-object v4, v4, Lg/a/a;->b:Lg/a/b0;

    .line 24
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 26
    iget-object v1, p0, Lg/a/o;->a:Lg/a/a;

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    if-ne v1, v0, :cond_4

    return-object p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot copy an object from another Realm instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_5
    iget-object v0, p0, Lg/a/o;->a:Lg/a/a;

    check-cast v0, Lg/a/x;

    .line 30
    iget-object v3, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    .line 31
    iget-object v4, v0, Lg/a/a;->b:Lg/a/b0;

    .line 32
    iget-object v4, v4, Lg/a/b0;->j:Lg/a/f1/o;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg/a/f1/o;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    new-array v2, v2, [Lg/a/m;

    .line 35
    invoke-virtual {v0, p1}, Lg/a/x;->J(Lg/a/e0;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 37
    iget-object v4, v0, Lg/a/a;->b:Lg/a/b0;

    .line 38
    iget-object v4, v4, Lg/a/b0;->j:Lg/a/f1/o;

    .line 39
    invoke-virtual {v4, v3}, Lg/a/f1/o;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v5, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v5}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v4

    .line 41
    iget-wide v5, v4, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    invoke-static {v5, v6}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    const/4 v4, 0x0

    goto :goto_0

    .line 42
    :cond_6
    new-instance v5, Lio/realm/internal/Property;

    iget-wide v6, v4, Lio/realm/internal/OsObjectSchemaInfo;->a:J

    invoke-static {v6, v7}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lio/realm/internal/Property;-><init>(J)V

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_7

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lio/realm/internal/Util;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v3, v2}, Lg/a/x;->K(Lg/a/e0;ZLjava/util/Map;Ljava/util/Set;)Lg/a/e0;

    move-result-object p1

    return-object p1

    .line 44
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v1, v2, [Lg/a/m;

    .line 45
    invoke-virtual {v0, p1, v1}, Lg/a/x;->L(Lg/a/e0;[Lg/a/m;)Lg/a/e0;

    move-result-object p1

    return-object p1
.end method
