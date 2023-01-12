.class public Lcom/tencent/smtt/sdk/r;
.super Ljava/lang/Object;
.source "TbsWizard.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Lcom/tencent/smtt/export/external/DexLoader;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "use_sandbox"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    .line 3
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    .line 4
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "TbsDexOpt"

    .line 7
    iput-object v2, p0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    const-string v1, "TbsWizard"

    const-string v2, "construction start..."

    .line 9
    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    .line 10
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p5, :cond_7

    array-length v2, p5

    if-eqz v2, :cond_7

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    goto :goto_0

    .line 14
    :cond_1
    iput-object p2, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    .line 15
    :goto_0
    iput-object p3, p0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 p5, 0x0

    .line 18
    :goto_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge p5, v2, :cond_2

    const-string v2, "#2 mDexFileList["

    const-string v3, "]: "

    .line 19
    invoke-static {v2, p5, v3}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    aget-object v3, v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 20
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new DexLoader #2 libraryPath is "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCallerAppContext is "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dexOutPutDir is "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p5, Lcom/tencent/smtt/export/external/DexLoader;

    iget-object v4, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    sget-object v7, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    move-object v2, p5

    move-object v3, p6

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p5, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)V

    .line 24
    iget-object p4, p0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p4, "com.nd.android.pandahome2"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    .line 26
    iget-object p2, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p5, p4, [Ljava/lang/Class;

    const-class p6, Landroid/content/Context;

    aput-object p6, p5, p3

    new-array p6, p4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    aput-object v2, p6, p3

    const-string v2, "com.tencent.tbs.common.beacon.X5CoreBeaconUploader"

    const-string v3, "getInstance"

    invoke-virtual {p2, v2, v3, p5, p6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_3
    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 28
    :try_start_0
    iget-object p2, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getTbsCoreSandboxModeEnable()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const/4 p2, 0x0

    .line 29
    :goto_2
    :try_start_1
    sget-object p5, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    const-string p6, "true"

    .line 30
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p5

    .line 31
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p5, 0x0

    .line 32
    :goto_3
    sget-object p6, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p5, p4, [Ljava/lang/Class;

    const-class p6, Ljava/util/Map;

    aput-object p6, p5, p3

    new-array p4, p4, [Ljava/lang/Object;

    sget-object p6, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    aput-object p6, p4, p3

    const-string p3, "com.tencent.tbs.tbsshell.TBSShell"

    const-string p6, "initTbsSettings"

    invoke-virtual {p2, p3, p6, p5, p4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_5
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/r;->b(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_6

    const-string p1, "construction end..."

    .line 35
    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_6
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "TbsWizard init error: "

    const-string p4, "; msg: "

    invoke-static {p3, p1, p4}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_7
    new-instance p4, Ljava/lang/Exception;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TbsWizard paramter error:-1callerContext:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "hostcontext"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "isEmpty"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "dexfileList"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private b(Landroid/content/Context;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-class v2, Lcom/tencent/smtt/export/external/DexLoader;

    const-class v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    const v5, 0xaab1

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "4.3.0.1148"

    const-string v7, "initTesRuntimeEnvironment"

    const-string v8, "com.tencent.tbs.tbsshell.TBSShell"

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v4, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, v0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/16 v15, 0x9

    new-array v9, v15, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    aput-object v17, v9, v14

    const-class v17, Landroid/content/Context;

    aput-object v17, v9, v13

    aput-object v2, v9, v12

    aput-object v3, v9, v11

    aput-object v3, v9, v10

    const/16 v16, 0x5

    aput-object v3, v9, v16

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x6

    aput-object v17, v9, v18

    const/16 v17, 0x7

    aput-object v3, v9, v17

    const/16 v17, 0x8

    aput-object v3, v9, v17

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v14

    iget-object v14, v0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    aput-object v14, v15, v13

    aput-object v4, v15, v12

    iget-object v14, v0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    aput-object v14, v15, v11

    iget-object v14, v0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    aput-object v14, v15, v10

    const/4 v14, 0x5

    aput-object v6, v15, v14

    const/4 v6, 0x6

    aput-object v5, v15, v6

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v15, v6

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v15, v6

    invoke-virtual {v4, v8, v7, v9, v15}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initTesRuntimeEnvironment callerContext is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mHostContext is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mDexLoader is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mtbsInstallLocation is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mDexOptPath is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "TbsWizard"

    invoke-static {v9, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v4, v0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v14, v9, v15

    const-class v14, Landroid/content/Context;

    aput-object v14, v9, v13

    aput-object v2, v9, v12

    aput-object v3, v9, v11

    aput-object v3, v9, v10

    const/4 v14, 0x5

    aput-object v3, v9, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v14, v9, v17

    const/4 v14, 0x7

    aput-object v3, v9, v14

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v15

    iget-object v15, v0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    aput-object v15, v14, v13

    aput-object v4, v14, v12

    iget-object v15, v0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    aput-object v15, v14, v11

    iget-object v15, v0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    aput-object v15, v14, v10

    const/4 v15, 0x5

    aput-object v6, v14, v15

    const/4 v6, 0x6

    aput-object v5, v14, v6

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v14, v6

    invoke-virtual {v4, v8, v7, v9, v14}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/r;->c()V

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/r;->d()V

    .line 9
    iget-object v4, v0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v9, v6, v14

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v13

    aput-object v2, v6, v12

    aput-object v3, v6, v11

    aput-object v3, v6, v10

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v14

    iget-object v1, v0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    aput-object v1, v2, v13

    aput-object v4, v2, v12

    iget-object v1, v0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    aput-object v1, v2, v11

    iget-object v1, v0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    aput-object v1, v2, v10

    invoke-virtual {v4, v8, v7, v6, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    const/4 v1, -0x3

    goto :goto_1

    .line 10
    :cond_2
    instance-of v1, v4, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 11
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 12
    :cond_3
    instance-of v1, v4, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    const/16 v3, 0x148

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 v1, -0x5

    goto :goto_1

    :cond_4
    const/4 v1, -0x4

    :goto_1
    if-gez v1, :cond_6

    .line 14
    iget-object v2, v0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "getLoadFailureDetails"

    invoke-virtual {v2, v8, v5, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 16
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "#"

    .line 17
    invoke-static {v4}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; th: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    .line 18
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 19
    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    :cond_7
    :goto_2
    return v1
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "4.3.0.1148"

    aput-object v3, v1, v4

    const-string v3, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v4, "setTesSdkVersionName"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const v1, 0xaab1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v3, "VERSION"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/smtt/export/external/DexLoader;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 9

    .line 17
    const-class v0, Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, [Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    const-class v0, [Ljava/lang/Object;

    const/4 v8, 0x4

    aput-object v0, v3, v8

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v5

    const-string v2, "com.tencent.smtt.util.CrashTracker"

    aput-object v2, v0, v4

    const-string v4, "getCrashExtraInfo"

    aput-object v4, v0, v6

    const/4 v6, 0x0

    aput-object v6, v0, v7

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v7, v0, v8

    const-string v7, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v8, "invokeStaticMethod"

    invoke-virtual {v1, v7, v8, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v6, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ReaderPackName="

    .line 21
    invoke-static {v0, v1}, Lf/b/a/a/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ReaderPackVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    const-string v6, "X5 core get nothing..."

    :cond_2
    return-object v6
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "check_tbs_validity"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/tencent/smtt/utils/m;->b(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/tencent/smtt/sdk/r;->a:Landroid/content/Context;

    .line 7
    iget-object p6, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    if-eqz p6, :cond_0

    .line 8
    iget-object p6, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/tencent/smtt/sdk/r;->b:Landroid/content/Context;

    .line 9
    :cond_0
    iput-object p3, p0, Lcom/tencent/smtt/sdk/r;->c:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/tencent/smtt/sdk/r;->d:[Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/tencent/smtt/sdk/r;->f:Ljava/lang/String;

    .line 12
    invoke-static {p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 14
    iget-object p3, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 p4, 0x1

    new-array p5, p4, [Ljava/lang/Class;

    const-class p6, Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p6, p5, v0

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, v0

    const-string p2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string p6, "initTbsSettings"

    invoke-virtual {p3, p2, p6, p5, p4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/r;->b(Landroid/content/Context;)I

    move-result p1

    if-ltz p1, :cond_2

    return-void

    .line 16
    :cond_2
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "continueInit init error: "

    const-string p4, "; msg: "

    invoke-static {p3, p1, p4}, Lf/b/a/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/tencent/smtt/sdk/r;->g:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    .line 22
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, Landroid/os/Bundle;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object p2, v0, v4

    aput-object p3, v0, v6

    aput-object p4, v0, v7

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "installLocalQbApk"

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v5

    .line 23
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/smtt/sdk/r;->e:Lcom/tencent/smtt/export/external/DexLoader;

    return-object v0
.end method
