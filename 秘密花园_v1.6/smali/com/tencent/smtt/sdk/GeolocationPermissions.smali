.class public Lcom/tencent/smtt/sdk/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# static fields
.field public static a:Lcom/tencent/smtt/sdk/GeolocationPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/sdk/GeolocationPermissions;
    .locals 2

    const-class v0, Lcom/tencent/smtt/sdk/GeolocationPermissions;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/smtt/sdk/GeolocationPermissions;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/GeolocationPermissions;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a:Lcom/tencent/smtt/sdk/GeolocationPermissions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/GeolocationPermissions;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/GeolocationPermissions;->a()Lcom/tencent/smtt/sdk/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/u;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/u;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->o()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    :goto_0
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/u;->c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public getOrigins(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/u;->b(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method
