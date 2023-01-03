.class public Lcom/tencent/smtt/export/external/DexClassLoaderProvider;
.super Ldalvik/system/DexClassLoader;
.source "DexClassLoaderProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;
    }
.end annotation


# static fields
.field public static final IS_FIRST_LOAD_DEX_FLAG_FILE:Ljava/lang/String; = "is_first_load_dex_flag_file"

.field public static final LAST_DEX_NAME:Ljava/lang/String; = "tbs_jars_fusion_dex.jar"

.field public static final LOAD_DEX_DELAY:J = 0xbb8L

.field public static final LOGTAG:Ljava/lang/String; = "dexloader"

.field public static mClassLoaderOriginal:Ldalvik/system/DexClassLoader; = null

.field public static mContext:Landroid/content/Context; = null

.field public static mForceLoadDexFlag:Z = false

.field public static mInstance:Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

.field public static mRealDexPath:Ljava/lang/String;

.field public static mService:Landroid/app/Service;


# instance fields
.field public mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    if-eqz p5, :cond_0

    .line 3
    sget-object p2, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mRealDexPath:Ljava/lang/String;

    .line 4
    new-instance p5, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-direct {p5, p2, p1, p3, p4}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p5, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    :goto_0
    return-void
.end method

.method public static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mForceLoadDexFlag:Z

    return v0
.end method

.method public static createDexClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new DexClassLoaderDelegate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mContext:Landroid/content/Context;

    .line 3
    sput-object p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mRealDexPath:Ljava/lang/String;

    const-string v0, "/"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fake_dex.jar"

    .line 6
    invoke-static {v2, v3}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->supportSpeedyClassLoader()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->is_first_load_tbs_dex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {p1, v0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->set_first_load_tbs_dex(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v8, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

    const/4 v7, 0x1

    move-object v2, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    sput-object v8, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mInstance:Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

    .line 11
    invoke-static {v0, p0, p1, p2, p3}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->doAsyncDexLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v6, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    sput-object v6, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mInstance:Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

    .line 13
    :goto_0
    sget-object v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mInstance:Lcom/tencent/smtt/export/external/DexClassLoaderProvider;

    return-object v0
.end method

.method public static doAsyncDexLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->shouldUseDexLoaderService()Z

    move-result v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_0

    .line 2
    new-instance p4, Ljava/util/Timer;

    invoke-direct {p4}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v9, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$2;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static is_first_load_tbs_dex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mForceLoadDexFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "_"

    const-string v2, "is_first_load_dex_flag_file"

    .line 2
    invoke-static {p1, v0, v2}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setForceLoadDexFlag(ZLandroid/app/Service;)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mForceLoadDexFlag:Z

    .line 2
    sput-object p1, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mService:Landroid/app/Service;

    return-void
.end method

.method public static set_first_load_tbs_dex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "_"

    const-string v1, "is_first_load_dex_flag_file"

    .line 1
    invoke-static {p1, v0, v1}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static shouldUseDexLoaderService()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mForceLoadDexFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/tencent/smtt/export/external/DexLoader;->mCanUseDexLoaderProviderService:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static supportSpeedyClassLoader()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/tencent/smtt/export/external/DexLoader;->mCanUseDexLoaderProviderService:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private useSelfClassloader()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ldalvik/system/DexClassLoader;->clearAssertionStatus()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->clearAssertionStatus()V

    :goto_0
    return-void
.end method

.method public definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p8}, Ldalvik/system/DexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 3
    iget-object v1, v0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPackages()[Ljava/lang/Package;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ldalvik/system/DexClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1, p2}, Ldalvik/system/BaseDexClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->setDefaultAssertionStatus(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->setDefaultAssertionStatus(Z)V

    :goto_0
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0, p1, p2}, Ldalvik/system/BaseDexClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->useSelfClassloader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ldalvik/system/DexClassLoader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mClassLoader:Lcom/tencent/smtt/export/external/DexClassLoaderProvider$SpeedyDexClassLoader;

    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
