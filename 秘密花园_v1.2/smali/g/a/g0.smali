.class public abstract Lg/a/g0;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lg/a/e0;


# static fields
.field public static final MSG_DELETED_OBJECT:Ljava/lang/String; = "the object is already deleted."

.field public static final MSG_DYNAMIC_OBJECT:Ljava/lang/String; = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

.field public static final MSG_NULL_OBJECT:Ljava/lang/String; = "\'model\' is null."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lg/a/e0;Lg/a/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;",
            "Lg/a/a0<",
            "TE;>;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lg/a/v$c;

    invoke-direct {v0, p1}, Lg/a/v$c;-><init>(Lg/a/a0;)V

    invoke-static {p0, v0}, Lg/a/g0;->addChangeListener(Lg/a/e0;Lg/a/h0;)V

    return-void
.end method

.method public static addChangeListener(Lg/a/e0;Lg/a/h0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;",
            "Lg/a/h0<",
            "TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 3
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Lg/a/f1/n;

    .line 5
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 7
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 8
    iget-object v0, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lg/a/f1/a;

    check-cast v0, Lg/a/f1/s/a;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-virtual {v0, v1}, Lg/a/f1/s/a;->b(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 10
    iget-object v0, p0, Lg/a/v;->c:Lg/a/f1/p;

    instance-of v1, v0, Lg/a/f1/l;

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lg/a/v;->g:Lg/a/f1/k;

    new-instance v1, Lio/realm/internal/OsObject$b;

    iget-object p0, p0, Lg/a/v;->a:Lg/a/e0;

    invoke-direct {v1, p0, p1}, Lio/realm/internal/OsObject$b;-><init>(Lg/a/e0;Lg/a/h0;)V

    invoke-virtual {v0, v1}, Lg/a/f1/k;->a(Lg/a/f1/k$b;)V

    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lg/a/v;->a()V

    .line 14
    iget-object v0, p0, Lg/a/v;->d:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_1

    .line 15
    iget-object p0, p0, Lg/a/v;->a:Lg/a/e0;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsObject;->addListener(Lg/a/e0;Lg/a/h0;)V

    :cond_1
    :goto_0
    return-void

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asChangesetObservable(Lg/a/e0;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    .line 4
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 6
    instance-of v1, v0, Lg/a/x;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lg/a/a;->b:Lg/a/b0;

    invoke-virtual {v1}, Lg/a/b0;->c()Lg/a/m1/b;

    move-result-object v1

    check-cast v0, Lg/a/x;

    check-cast v1, Lg/a/m1/a;

    invoke-virtual {v1, v0, p0}, Lg/a/m1/a;->b(Lg/a/x;Lg/a/e0;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    instance-of v1, v0, Lg/a/i;

    if-eqz v1, :cond_1

    .line 9
    move-object v1, v0

    check-cast v1, Lg/a/i;

    .line 10
    check-cast p0, Lio/realm/DynamicRealmObject;

    .line 11
    iget-object v0, v0, Lg/a/a;->b:Lg/a/b0;

    invoke-virtual {v0}, Lg/a/b0;->c()Lg/a/m1/b;

    move-result-object v0

    check-cast v0, Lg/a/m1/a;

    invoke-virtual {v0, v1, p0}, Lg/a/m1/a;->a(Lg/a/i;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asFlowable(Lg/a/e0;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    .line 4
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 6
    instance-of v1, v0, Lg/a/x;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lg/a/a;->b:Lg/a/b0;

    invoke-virtual {v1}, Lg/a/b0;->c()Lg/a/m1/b;

    move-result-object v1

    check-cast v0, Lg/a/x;

    check-cast v1, Lg/a/m1/a;

    invoke-virtual {v1, v0, p0}, Lg/a/m1/a;->d(Lg/a/x;Lg/a/e0;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    instance-of v1, v0, Lg/a/i;

    if-eqz v1, :cond_1

    .line 9
    move-object v1, v0

    check-cast v1, Lg/a/i;

    .line 10
    check-cast p0, Lio/realm/DynamicRealmObject;

    .line 11
    iget-object v0, v0, Lg/a/a;->b:Lg/a/b0;

    invoke-virtual {v0}, Lg/a/b0;->c()Lg/a/m1/b;

    move-result-object v0

    check-cast v0, Lg/a/m1/a;

    invoke-virtual {v0, v1, p0}, Lg/a/m1/a;->c(Lg/a/i;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteFromRealm(Lg/a/e0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lg/a/f1/n;

    .line 4
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 10
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 11
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 13
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v2

    .line 14
    invoke-virtual {v1}, Lio/realm/internal/Table;->a()V

    .line 15
    iget-wide v4, v1, Lio/realm/internal/Table;->a:J

    invoke-virtual {v1, v4, v5, v2, v3}, Lio/realm/internal/Table;->nativeMoveLastOver(JJ)V

    .line 16
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    sget-object v0, Lg/a/f1/g;->a:Lg/a/f1/g;

    .line 17
    iput-object v0, p0, Lg/a/v;->c:Lg/a/f1/p;

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealm(Lg/a/e0;)Lg/a/x;
    .locals 1

    if-eqz p0, :cond_3

    .line 2
    instance-of v0, p0, Lio/realm/DynamicRealmObject;

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p0, Lg/a/f1/n;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 6
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 7
    invoke-static {p0}, Lg/a/g0;->isValid(Lg/a/e0;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    check-cast v0, Lg/a/x;

    return-object v0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the object is already deleted."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'model\' is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLoaded(Lg/a/e0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lg/a/f1/n;

    .line 4
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 6
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 7
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lg/a/v;->c:Lg/a/f1/p;

    instance-of p0, p0, Lg/a/f1/l;

    xor-int/2addr p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public static isManaged(Lg/a/e0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 2
    instance-of p0, p0, Lg/a/f1/n;

    return p0
.end method

.method public static isValid(Lg/a/e0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lg/a/f1/n;

    .line 4
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lg/a/v;->c:Lg/a/f1/p;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lg/a/f1/p;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static load(Lg/a/e0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lg/a/g0;->isLoaded(Lg/a/e0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Lg/a/f1/n;

    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lg/a/v;->c:Lg/a/f1/p;

    instance-of v0, p0, Lg/a/f1/l;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lg/a/f1/l;

    .line 7
    iget-object p0, p0, Lg/a/f1/l;->a:Lio/realm/internal/OsResults;

    if-nez p0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The \'frontEnd\' has not been set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static removeAllChangeListeners(Lg/a/e0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lg/a/f1/n;

    .line 4
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 6
    invoke-virtual {v0}, Lg/a/a;->H()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    iget-object v0, v0, Lg/a/a;->b:Lg/a/b0;

    .line 8
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 9
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 11
    iget-object v0, p0, Lg/a/v;->d:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_1

    .line 12
    iget-object p0, p0, Lg/a/v;->a:Lg/a/e0;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsObject;->removeListener(Lg/a/e0;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lg/a/v;->g:Lg/a/f1/k;

    .line 14
    iput-boolean v2, p0, Lg/a/f1/k;->b:Z

    .line 15
    iget-object p0, p0, Lg/a/f1/k;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeChangeListener(Lg/a/e0;Lg/a/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;",
            "Lg/a/a0<",
            "TE;>;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lg/a/v$c;

    invoke-direct {v0, p1}, Lg/a/v$c;-><init>(Lg/a/a0;)V

    invoke-static {p0, v0}, Lg/a/g0;->removeChangeListener(Lg/a/e0;Lg/a/h0;)V

    return-void
.end method

.method public static removeChangeListener(Lg/a/e0;Lg/a/h0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(TE;",
            "Lg/a/h0;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 3
    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Lg/a/f1/n;

    .line 5
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 7
    invoke-virtual {v0}, Lg/a/a;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    iget-object v0, v0, Lg/a/a;->b:Lg/a/b0;

    .line 9
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    aput-object v0, v1, v2

    const-string v0, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 10
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-interface {p0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 12
    iget-object v0, p0, Lg/a/v;->d:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lg/a/v;->a:Lg/a/e0;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsObject;->removeListener(Lg/a/e0;Lg/a/h0;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lg/a/v;->g:Lg/a/f1/k;

    iget-object p0, p0, Lg/a/v;->a:Lg/a/e0;

    invoke-virtual {v0, p0, p1}, Lg/a/f1/k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addChangeListener(Lg/a/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/a0<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lg/a/g0;->addChangeListener(Lg/a/e0;Lg/a/a0;)V

    return-void
.end method

.method public final addChangeListener(Lg/a/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lg/a/e0;",
            ">(",
            "Lg/a/h0<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lg/a/g0;->addChangeListener(Lg/a/e0;Lg/a/h0;)V

    return-void
.end method

.method public final asChangesetObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lg/a/g0;",
            ">()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lg/a/g0;->asChangesetObservable(Lg/a/e0;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lg/a/g0;",
            ">()",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lg/a/g0;->asFlowable(Lg/a/e0;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    .line 1
    invoke-static {p0}, Lg/a/g0;->deleteFromRealm(Lg/a/e0;)V

    return-void
.end method

.method public getRealm()Lg/a/x;
    .locals 1

    .line 1
    invoke-static {p0}, Lg/a/g0;->getRealm(Lg/a/e0;)Lg/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lg/a/g0;->isLoaded(Lg/a/e0;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lg/a/g0;->isManaged(Lg/a/e0;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lg/a/g0;->isValid(Lg/a/e0;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lg/a/g0;->load(Lg/a/e0;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .locals 0

    .line 1
    invoke-static {p0}, Lg/a/g0;->removeAllChangeListeners(Lg/a/e0;)V

    return-void
.end method

.method public final removeChangeListener(Lg/a/a0;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lg/a/g0;->removeChangeListener(Lg/a/e0;Lg/a/a0;)V

    return-void
.end method

.method public final removeChangeListener(Lg/a/h0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lg/a/g0;->removeChangeListener(Lg/a/e0;Lg/a/h0;)V

    return-void
.end method
