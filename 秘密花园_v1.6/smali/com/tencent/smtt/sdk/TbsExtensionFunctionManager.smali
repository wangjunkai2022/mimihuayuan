.class public Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;
.super Ljava/lang/Object;
.source "TbsExtensionFunctionManager.java"


# static fields
.field public static final BUGLY_SWITCH_FILE_NAME:Ljava/lang/String; = "bugly_switch.txt"

.field public static final COOKIE_SWITCH_FILE_NAME:Ljava/lang/String; = "cookie_switch.txt"

.field public static final DISABLE_GET_APK_VERSION_SWITCH_FILE_NAME:Ljava/lang/String; = "disable_get_apk_version_switch.txt"

.field public static final DISABLE_UNPREINIT:Ljava/lang/String; = "disable_unpreinit.txt"

.field public static final DISABLE_USE_HOST_BACKUP_CORE:Ljava/lang/String; = "disable_use_host_backup_core.txt"

.field public static final SP_KEY_COOKIE_DB_VERSION:Ljava/lang/String; = "cookie_db_version"

.field public static final SP_NAME_FOR_COOKIE:Ljava/lang/String; = "cookie_compatiable"

.field public static final SWITCH_BYTE_COOKIE:I = 0x1

.field public static final SWITCH_BYTE_DISABLE_GET_APK_VERSION:I = 0x2

.field public static final SWITCH_BYTE_DISABLE_UNPREINIT:I = 0x4

.field public static final SWITCH_BYTE_DISABLE_USE_HOST_BACKUPCORE:I = 0x8

.field public static final USEX5_FILE_NAME:Ljava/lang/String; = "usex5.txt"

.field public static b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRomCookieDBVersion(Landroid/content/Context;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "cookie_compatiable"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v1, "cookie_db_version"

    .line 3
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initTbsBuglyIfNeed(Landroid/content/Context;)V
    .locals 13

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "bugly_switch.txt"

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly is forbiden!!"

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/l;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "TbsExtensionFunMana"

    const-string v3, "getTbsCoreShareDir is null"

    .line 9
    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_4

    goto/16 :goto_1

    .line 11
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly init ,corePath is null"

    .line 13
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/l;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_6

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly init ,optDir is null"

    .line 16
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_6
    :try_start_4
    new-instance v3, Ljava/io/File;

    const-string v4, "tbs_bugly_dex.jar"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :try_start_5
    new-instance v4, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v8, v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v10

    move-object v5, v4

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "com.tencent.smtt.tbs.bugly.TBSBuglyManager"

    .line 20
    invoke-virtual {v4, v2}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "initBugly"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 21
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v12

    aput-object v0, v5, v11

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v7, 0x3

    aput-object v0, v5, v7

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v12

    aput-object v1, v0, v11

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v2, v3, v5, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    :try_start_6
    iput-boolean v11, p0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->a:Z

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "initTbsBuglyIfNeed success!"

    .line 23
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    const-string v0, "TbsExtensionFunMana"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugly init ,try init bugly failed(need new core):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 26
    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    :try_start_8
    const-string p1, "TbsExtensionFunMana"

    const-string v0, "getTbsCoreShareDir is empty!"

    .line 27
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 28
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_3

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 5
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "TbsExtensionFunMana"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFunctionEnable,createNewFile fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    .line 9
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_2

    .line 11
    monitor-exit p0

    return p1

    :cond_2
    :try_start_4
    const-string p1, "TbsExtensionFunMana"

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFunctionEnable,file.delete fail:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    monitor-exit p0

    return v0

    .line 14
    :cond_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
