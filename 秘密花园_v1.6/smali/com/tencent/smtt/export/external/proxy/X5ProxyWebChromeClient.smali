.class public abstract Lcom/tencent/smtt/export/external/proxy/X5ProxyWebChromeClient;
.super Lcom/tencent/smtt/export/external/proxy/ProxyWebChromeClient;
.source "X5ProxyWebChromeClient.java"


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/WebViewWizardBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/proxy/ProxyWebChromeClient;-><init>()V

    const-string v0, "com.tencent.smtt.webkit.WebChromeClient"

    .line 2
    invoke-interface {p1, v0}, Lcom/tencent/smtt/export/external/WebViewWizardBase;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;

    iput-object p1, p0, Lcom/tencent/smtt/export/external/proxy/ProxyWebChromeClient;->mWebChromeClient:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/proxy/ProxyWebChromeClient;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/export/external/proxy/ProxyWebChromeClient;->setWebChromeClient(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;)V

    return-void
.end method
