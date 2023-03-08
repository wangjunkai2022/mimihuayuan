.class public Lf/e/a/j/l/d;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "FuLao2Launch2Activity.java"


# instance fields
.field public final synthetic b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 5

    .line 2
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "T08FCxkEWEEXA1BKHgUR"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 3
    iget-object v2, v2, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->c:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBAGAwIATVYBSUAIEw8N"

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RQcEDRgHXEEmFFg="

    .line 7
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 8
    iget-object v1, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    const-string v2, "XwMQDFY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 9
    iput-object v2, v1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->e:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 11
    iget-object v1, v1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->e:Ljava/lang/String;

    const-string v2, "EQ=="

    .line 12
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 14
    iget-object v4, v1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->e:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 16
    iput-object v2, v1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->e:Ljava/lang/String;

    .line 17
    :cond_0
    iget-object v1, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    const-string v2, "a10="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    .line 18
    iput-object v0, v1, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->f:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    new-instance v1, Lf/e/a/j/l/d$a;

    invoke-direct {v1, p0}, Lf/e/a/j/l/d$a;-><init>(Lf/e/a/j/l/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/l/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->d:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
