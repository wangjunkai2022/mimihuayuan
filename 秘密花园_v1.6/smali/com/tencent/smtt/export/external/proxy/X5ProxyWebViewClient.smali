.class public abstract Lcom/tencent/smtt/export/external/proxy/X5ProxyWebViewClient;
.super Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;
.source "X5ProxyWebViewClient.java"


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/WebViewWizardBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;-><init>()V

    const-string v0, "com.tencent.smtt.webkit.WebViewClient"

    .line 2
    invoke-interface {p1, v0}, Lcom/tencent/smtt/export/external/WebViewWizardBase;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    iput-object p1, p0, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;->mWebViewClient:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tencent/smtt/export/external/proxy/ProxyWebViewClient;->mWebViewClient:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    return-void
.end method
