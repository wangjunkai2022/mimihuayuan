.class public Lcom/comeback/data/ui/tv91/fragment/NovelFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "NovelFragment.java"


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
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c013f

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;-><init>(Lcom/comeback/data/ui/tv91/fragment/NovelFragment;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$b;-><init>(Lcom/comeback/data/ui/tv91/fragment/NovelFragment;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 5
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    const-wide v1, 0x7fffffffffffffffL

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 15
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    sget-object v1, Lf/e/a/j/o0/i/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
