.class public abstract Lio/realm/internal/RealmNotifier;
.super Ljava/lang/Object;
.source "RealmNotifier.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/RealmNotifier$b;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field public finishedSendingNotificationsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final onChangeCallBack:Lg/a/f1/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k$a<",
            "Lio/realm/internal/RealmNotifier$b;",
            ">;"
        }
    .end annotation
.end field

.field public realmObserverPairs:Lg/a/f1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/f1/k<",
            "Lio/realm/internal/RealmNotifier$b;",
            ">;"
        }
    .end annotation
.end field

.field public sharedRealm:Lio/realm/internal/OsSharedRealm;

.field public startSendingNotificationsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public transactionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a/f1/k;

    invoke-direct {v0}, Lg/a/f1/k;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    .line 3
    new-instance v0, Lio/realm/internal/RealmNotifier$a;

    invoke-direct {v0, p0}, Lio/realm/internal/RealmNotifier$a;-><init>(Lio/realm/internal/RealmNotifier;)V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lg/a/f1/k$a;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-void
.end method

.method public static synthetic access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-object p0
.end method

.method private removeAllChangeListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lg/a/f1/k;->b:Z

    .line 3
    iget-object v0, v0, Lg/a/f1/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addBeginSendingNotificationsCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChangeListener(Ljava/lang/Object;Lg/a/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lg/a/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/internal/RealmNotifier$b;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmNotifier$b;-><init>(Ljava/lang/Object;Lg/a/a0;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    invoke-virtual {p1, v0}, Lg/a/f1/k;->a(Lg/a/f1/k$b;)V

    return-void
.end method

.method public addFinishedSendingNotificationsCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransactionCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeNotify()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->invalidateIterators()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/internal/RealmNotifier;->removeAllChangeListeners()V

    .line 2
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public didChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lg/a/f1/k$a;

    invoke-virtual {v0, v1}, Lg/a/f1/k;->b(Lg/a/f1/k$a;)V

    .line 2
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didSendNotifications()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getListenersListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    .line 2
    iget-object v0, v0, Lg/a/f1/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public removeChangeListener(Ljava/lang/Object;Lg/a/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lg/a/a0<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    invoke-virtual {v0, p1, p2}, Lg/a/f1/k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeChangeListeners(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lg/a/f1/k;

    invoke-virtual {v0, p1}, Lg/a/f1/k;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public willSendNotifications()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
