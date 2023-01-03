.class public final Lcom/tencent/smtt/sdk/QbSdk$6;
.super Ljava/lang/Object;
.source "QbSdk.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNeedDownloadFinish(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    .line 3
    :cond_0
    sget-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->initTbsBuglyIfNeed(Landroid/content/Context;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$6;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    return-void
.end method
