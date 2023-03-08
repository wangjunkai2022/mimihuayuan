.class public Lc/a/a/b/b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/a/a/b/a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field public final a:Lc/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/b/b;->a:Lc/a/a/b/a;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/a/a/b/b;->a:Lc/a/a/b/a;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 2
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v1, :cond_3

    .line 3
    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$d;

    .line 4
    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    .line 5
    check-cast v2, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const-string v4, "extra_service_version"

    .line 6
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string v3, "extra_messenger"

    .line 7
    invoke-static {v2, v3}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    new-instance v4, Landroid/support/v4/media/MediaBrowserCompat$h;

    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->c:Landroid/os/Bundle;

    invoke-direct {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$h;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$h;

    .line 9
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    .line 10
    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v4, v3}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 11
    :try_start_0
    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$h;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->a:Landroid/content/Context;

    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 12
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "data_package_name"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$h;->b:Landroid/os/Bundle;

    const-string v7, "data_root_hints"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x6

    .line 15
    invoke-virtual {v3, v4, v6, v5}, Landroid/support/v4/media/MediaBrowserCompat$h;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 16
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    :cond_2
    :goto_0
    const-string v3, "extra_session_binder"

    .line 17
    invoke-static {v2, v3}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 18
    invoke-static {v2}, Lc/a/a/b/g/b$a;->i(Landroid/os/IBinder;)Lc/a/a/b/g/b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->b:Ljava/lang/Object;

    .line 20
    check-cast v3, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 21
    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Ljava/lang/Object;Lc/a/a/b/g/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 22
    :cond_3
    :goto_1
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnected()V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/b/b;->a:Lc/a/a/b/a;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 2
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$d;

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnectionFailed()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/b/b;->a:Lc/a/a/b/a;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;

    .line 2
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$b;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$d;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->f:Landroid/support/v4/media/MediaBrowserCompat$h;

    .line 5
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->g:Landroid/os/Messenger;

    .line 6
    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$d;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 8
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$b$b;->a:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnectionSuspended()V

    return-void
.end method
