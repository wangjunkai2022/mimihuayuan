.class public Lg/a/w$a;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/w;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/realm/internal/OsSharedRealm$a;

.field public final synthetic b:Lg/a/w;


# direct methods
.method public constructor <init>(Lg/a/w;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/w$a;->b:Lg/a/w;

    iput-object p2, p0, Lg/a/w$a;->a:Lio/realm/internal/OsSharedRealm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->g:Lg/a/x;

    invoke-virtual {v0}, Lg/a/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->d:Lg/a/x$a$b;

    invoke-interface {v0}, Lg/a/x$a$b;->a()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->g:Lg/a/x;

    iget-object v0, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    move-result-object v0

    iget-object v1, p0, Lg/a/w$a;->a:Lio/realm/internal/OsSharedRealm$a;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsSharedRealm$a;->a(Lio/realm/internal/OsSharedRealm$a;)I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iget-object v0, p0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->g:Lg/a/x;

    iget-object v0, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lg/a/w$a$a;

    invoke-direct {v1, p0}, Lg/a/w$a$a;-><init>(Lg/a/w$a;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addTransactionCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lg/a/w$a;->b:Lg/a/w;

    iget-object v0, v0, Lg/a/w;->d:Lg/a/x$a$b;

    invoke-interface {v0}, Lg/a/x$a$b;->a()V

    :goto_0
    return-void
.end method
