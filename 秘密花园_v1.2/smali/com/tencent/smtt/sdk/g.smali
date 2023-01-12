.class public Lcom/tencent/smtt/sdk/g;
.super Lcom/tencent/smtt/export/external/proxy/X5ProxyWebViewClient;
.source "SmttWebViewClient.java"


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public a:Lcom/tencent/smtt/sdk/WebViewClient;

.field public b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/smtt/export/external/proxy/X5ProxyWebViewClient;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;)V

    .line 2
    iput-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    .line 3
    iput-object p3, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    .line 4
    iput-object p0, p3, Lcom/tencent/smtt/sdk/WebViewClient;->a:Lcom/tencent/smtt/sdk/g;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/g;)Lcom/tencent/smtt/sdk/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 7
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->c()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;->onPageStarted(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public countPVContentCacheCallBack(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    iget v0, p1, Lcom/tencent/smtt/sdk/WebView;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/smtt/sdk/WebView;->a:I

    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->doUpdateVisitedHistory(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDetectedBlankScreen(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onDetectedBlankScreen(Ljava/lang/String;I)V

    return-void
.end method

.method public onFormResubmission(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onFormResubmission(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onLoadResource(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageCommitVisible(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageCommitVisible(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/smtt/utils/o;->a()Lcom/tencent/smtt/utils/o;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/o;->a(Z)V

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/g;->c:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    iget v1, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/smtt/sdk/WebView;->a:I

    .line 7
    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-virtual {v1, v0, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/content/Context;)V

    .line 10
    :cond_1
    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SmttWebViewClient"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->app_extra(Ljava/lang/String;Landroid/content/Context;)V

    .line 11
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;->onPageFinished(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    :goto_0
    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->d()V

    .line 13
    sget-boolean p1, Lcom/tencent/smtt/sdk/TbsShareManager;->mHasQueryed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->mHasQueryed:Z

    .line 15
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/tencent/smtt/sdk/g$1;

    invoke-direct {p2, p0}, Lcom/tencent/smtt/sdk/g$1;-><init>(Lcom/tencent/smtt/sdk/g;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getShouldUploadEventReport()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setShouldUploadEventReport(Z)V

    .line 18
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->dailyReport()V

    :cond_3
    return-void
.end method

.method public onPageFinished(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tencent/smtt/sdk/g;->onPageFinished(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, p2, p4, p5}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/g;->onPageStarted(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/ClientCertRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedClientCertRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/ClientCertRequest;)V

    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, -0xf

    if-ge p2, v0, :cond_1

    const/16 v0, -0x11

    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpAuthRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedLoginRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedLoginRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V

    return-void
.end method

.method public onScaleChanged(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onScaleChanged(Lcom/tencent/smtt/sdk/WebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onUnhandledKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 11
    iget-object v2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v2, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p2, "wtai://wp/mc;"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v2, "tel:"

    if-eqz p2, :cond_2

    .line 15
    new-instance p1, Landroid/content/Intent;

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16
    iget-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 17
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/g;->a(Ljava/lang/String;)V

    return v1

    :cond_3
    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, p2}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/smtt/sdk/g;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1, v1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string v1, "wtai://wp/mc;"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "tel:"

    if-eqz v1, :cond_1

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    iget-object p2, p0, Lcom/tencent/smtt/sdk/g;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 7
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/g;->a(Ljava/lang/String;)V

    return v0

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method
