.class public final Lcom/tencent/smtt/sdk/QbSdk$7;
.super Ljava/lang/Object;
.source "QbSdk.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/QbSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownloadDecoupleCore()Z

    move-result v0

    const-string v1, "QbSdk"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "onDownloadFinish needDownloadDecoupleCore is true"

    .line 2
    invoke-static {v1, p1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_0

    :cond_0
    const-string v0, "onDownloadFinish needDownloadDecoupleCore is false"

    .line 4
    invoke-static {v1, v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    const/16 v0, 0x64

    .line 6
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    :cond_1
    return-void
.end method

.method public onInstallFinish(I)V
    .locals 2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdc

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    .line 2
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    .line 3
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDecoupleCoreIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_0

    .line 5
    :cond_1
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    .line 6
    :goto_0
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->c()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->d()Lcom/tencent/smtt/sdk/TbsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    :cond_3
    return-void
.end method
