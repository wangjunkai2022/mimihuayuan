.class public Lcom/umeng/commonsdk/service/UMGlobalContext;
.super Ljava/lang/Object;
.source "UMGlobalContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/service/UMGlobalContext$b;,
        Lcom/umeng/commonsdk/service/UMGlobalContext$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UMGlobalContext"


# instance fields
.field public mAppVersion:Ljava/lang/String;

.field public mAppkey:Ljava/lang/String;

.field public mApplicationContext:Landroid/content/Context;

.field public mChannel:Ljava/lang/String;

.field public mDeviceType:I

.field public mIsDebugMode:Z

.field public mIsMainProcess:Z

.field public mModules:Ljava/lang/String;

.field public mProcessName:Ljava/lang/String;

.field public mPushSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 3
    iput-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/service/UMGlobalContext$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;-><init>()V

    return-void
.end method

.method public static getAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p0

    iget-object p0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    return-object v0
.end method

.method public static newUMGlobalContext(Lcom/umeng/commonsdk/service/UMGlobalContext$a;)Lcom/umeng/commonsdk/service/UMGlobalContext;
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    .line 2
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->b:I

    iput v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mDeviceType:I

    .line 3
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mPushSecret:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mAppkey:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mChannel:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-boolean v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->g:Z

    iput-boolean v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mIsDebugMode:Z

    .line 8
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mProcessName:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mAppVersion:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-boolean v1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->j:Z

    iput-boolean v1, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mIsMainProcess:Z

    .line 11
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object p0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    .line 13
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppContextDirectly()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mDeviceType:I

    return v0
.end method

.method public getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mProcessName:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p1

    iget-object p1, p1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mProcessName:Ljava/lang/String;

    return-object p1
.end method

.method public getPushSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mPushSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnalyticsSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasErrorSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasInternalModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasOplusModule()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasPushSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasShareSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasVisualDebugSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasVisualSdk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mModules:Ljava/lang/String;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mIsDebugMode:Z

    return v0
.end method

.method public isMainProcess(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mIsMainProcess:Z

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p1

    iget-boolean p1, p1, Lcom/umeng/commonsdk/service/UMGlobalContext;->mIsMainProcess:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext$b;->a()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "devType:"

    .line 3
    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appkey:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "uninitialized."

    return-object v0
.end method
