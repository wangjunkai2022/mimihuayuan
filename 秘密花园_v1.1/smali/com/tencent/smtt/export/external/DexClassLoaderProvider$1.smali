.class public final Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;
.super Ljava/util/TimerTask;
.source "DexClassLoaderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->doAsyncDexLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$dexName:Ljava/lang/String;

.field public final synthetic val$dexPath:Ljava/lang/String;

.field public final synthetic val$libraryPath:Ljava/lang/String;

.field public final synthetic val$optimizedDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$optimizedDirectory:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$libraryPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$optimizedDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 5
    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$libraryPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->access$000()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/smtt/export/external/DexClassLoaderProviderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "dex2oat"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldUseDexLoaderService("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "after shouldUseDexLoaderService exception: "

    .line 10
    invoke-static {v1, v0}, Lf/b/a/a/a;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :goto_0
    return-void
.end method
