.class public Lcom/comeback/data/ui/xhl/XHLBrowseActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "XHLBrowseActivity.java"


# instance fields
.field public progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public webView:Lcom/tencent/smtt/sdk/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$a;-><init>(Lcom/comeback/data/ui/xhl/XHLBrowseActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;-><init>(Lcom/comeback/data/ui/xhl/XHLBrowseActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 8
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    const-string v1, "eg0ZDQcfWBxGSARHUCYKBUIaWEQqHV1BHA9QR01EU1AXMS5JLEoJAyNGdhIRBgdEezA7VlonEBMyFkQLHT0GCXwLF0teQA4dQFAUTzMiNyZ7TkMIAhhcEzQDVwwXQ0MoXxAMCQ5cAQNdVhpUQVJURQZQUUQmHFtaHwMUNBkMAhleTVZXXF0KBQ=="

    .line 17
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgent(Ljava/lang/String;)V

    const-wide v3, 0x7fffffffffffffffL

    .line 18
    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    const-string v1, "VhITBwoQUVY="

    .line 19
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-string v1, "UwMXBQkSSlYA"

    .line 20
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const-string v1, "UAcMCAQQWEcaCVo="

    .line 21
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    sget-object v1, Lf/e/a/k/b;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "VgAMER9JW18SCF8="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 5
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeSessionCookies(Lcom/tencent/smtt/sdk/ValueCallback;)V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieManager;->removeAllCookie()V

    .line 8
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieManager;->flush()V

    .line 9
    invoke-static {}, Lcom/tencent/smtt/sdk/WebStorage;->getInstance()Lcom/tencent/smtt/sdk/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebStorage;->deleteAllData()V

    return-void
.end method
