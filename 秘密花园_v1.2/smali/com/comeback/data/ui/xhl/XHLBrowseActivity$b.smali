.class public Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "XHLBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

.field public final synthetic d:Lcom/comeback/data/ui/xhl/XHLBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xhl/XHLBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->d:Lcom/comeback/data/ui/xhl/XHLBrowseActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->c:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->c:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->d:Lcom/comeback/data/ui/xhl/XHLBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->d:Lcom/comeback/data/ui/xhl/XHLBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->d:Lcom/comeback/data/ui/xhl/XHLBrowseActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iput-object p1, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->a:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->b:Landroid/view/View;

    .line 7
    iput-object p2, p0, Lcom/comeback/data/ui/xhl/XHLBrowseActivity$b;->c:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    return-void
.end method
