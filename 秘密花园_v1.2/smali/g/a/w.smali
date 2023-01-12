.class public Lg/a/w;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/a/b0;

.field public final synthetic b:Lg/a/x$a;

.field public final synthetic c:Z

.field public final synthetic d:Lg/a/x$a$b;

.field public final synthetic e:Lio/realm/internal/RealmNotifier;

.field public final synthetic f:Lg/a/x$a$a;

.field public final synthetic g:Lg/a/x;


# direct methods
.method public constructor <init>(Lg/a/x;Lg/a/b0;Lg/a/x$a;ZLg/a/x$a$b;Lio/realm/internal/RealmNotifier;Lg/a/x$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/w;->g:Lg/a/x;

    iput-object p2, p0, Lg/a/w;->a:Lg/a/b0;

    iput-object p3, p0, Lg/a/w;->b:Lg/a/x$a;

    iput-boolean p4, p0, Lg/a/w;->c:Z

    iput-object p5, p0, Lg/a/w;->d:Lg/a/x$a$b;

    iput-object p6, p0, Lg/a/w;->e:Lio/realm/internal/RealmNotifier;

    iput-object p7, p0, Lg/a/w;->f:Lg/a/x$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg/a/w;->a:Lg/a/b0;

    if-eqz v0, :cond_9

    .line 3
    const-class v1, Lg/a/x;

    invoke-static {v0, v1}, Lg/a/z;->b(Lg/a/b0;Ljava/lang/Class;)Lg/a/a;

    move-result-object v0

    check-cast v0, Lg/a/x;

    .line 4
    invoke-virtual {v0}, Lg/a/a;->d()V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lg/a/w;->b:Lg/a/x$a;

    invoke-interface {v2, v0}, Lg/a/x$a;->a(Lg/a/x;)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lg/a/a;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lg/a/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lg/a/a;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lg/a/a;->close()V

    throw v1

    .line 10
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lg/a/a;->g()V

    .line 11
    iget-object v2, v0, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    invoke-virtual {v0}, Lg/a/a;->I()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lg/a/a;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :cond_3
    invoke-virtual {v0}, Lg/a/a;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lg/a/a;->close()V

    throw v1

    :catchall_2
    move-exception v2

    .line 15
    :try_start_4
    invoke-virtual {v0}, Lg/a/a;->I()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v0}, Lg/a/a;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 17
    :cond_4
    invoke-virtual {v0}, Lg/a/a;->close()V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 18
    :goto_0
    iget-boolean v0, p0, Lg/a/w;->c:Z

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    .line 19
    iget-object v0, p0, Lg/a/w;->d:Lg/a/x$a$b;

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lg/a/w;->e:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lg/a/w$a;

    invoke-direct {v1, p0, v2}, Lg/a/w$a;-><init>(Lg/a/w;Lio/realm/internal/OsSharedRealm$a;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    .line 21
    iget-object v0, p0, Lg/a/w;->e:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lg/a/w$b;

    invoke-direct {v2, p0, v1}, Lg/a/w$b;-><init>(Lg/a/w;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-nez v1, :cond_8

    :cond_7
    :goto_1
    return-void

    .line 22
    :cond_8
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v2, "Async transaction failed"

    invoke-direct {v0, v2, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_3
    move-exception v1

    .line 23
    invoke-virtual {v0}, Lg/a/a;->close()V

    throw v1

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
