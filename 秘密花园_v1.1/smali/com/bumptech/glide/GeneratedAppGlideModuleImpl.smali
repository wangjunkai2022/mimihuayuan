.class public final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field public final appGlideModule:Lcom/comeback/data/net/glide/OkHttpAppGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    new-instance p1, Lcom/comeback/data/net/glide/OkHttpAppGlideModule;

    invoke-direct {p1}, Lcom/comeback/data/net/glide/OkHttpAppGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/comeback/data/net/glide/OkHttpAppGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lf/d/a/d;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/comeback/data/net/glide/OkHttpAppGlideModule;

    invoke-virtual {v0, p1, p2}, Lf/d/a/q/a;->applyOptions(Landroid/content/Context;Lf/d/a/d;)V

    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestManagerFactory()Lf/d/a/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lf/d/a/a;

    invoke-direct {v0}, Lf/d/a/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getRequestManagerFactory()Lf/d/a/p/l$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lf/d/a/a;

    move-result-object v0

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/comeback/data/net/glide/OkHttpAppGlideModule;

    invoke-virtual {v0}, Lf/d/a/q/a;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lf/d/a/n/a/a;

    invoke-direct {v0}, Lf/d/a/n/a/a;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lf/d/a/n/a/a;->registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/comeback/data/net/glide/OkHttpAppGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/comeback/data/net/glide/OkHttpAppGlideModule;->registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V

    return-void
.end method
