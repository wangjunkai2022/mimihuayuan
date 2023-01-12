.class public Lcom/comeback/data/ui/hg/HGBrowseActivity$a;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "HGBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hg/HGBrowseActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/comeback/data/ui/hg/HGBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hg/HGBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hg/HGBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hg/HGBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 5

    .line 2
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "T08FCxkEWEEXA1BKHgUR"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    .line 3
    iget-object v2, v2, Lcom/comeback/data/ui/hg/HGBrowseActivity;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lf/e/a/j/o/d/a;->a(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)I

    move-result v0

    .line 6
    sget v1, Lf/e/a/j/o/d/a;->d:I

    if-ne v1, v0, :cond_0

    .line 7
    new-instance v0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;-><init>(Lcom/comeback/data/ui/hg/HGBrowseActivity$a;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lf/e/a/j/o/d/a;->f:I

    if-ne v1, v0, :cond_1

    .line 9
    new-instance v0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$b;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$b;-><init>(Lcom/comeback/data/ui/hg/HGBrowseActivity$a;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget v1, Lf/e/a/j/o/d/a;->e:I

    if-ne v1, v0, :cond_2

    .line 11
    new-instance v0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$c;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$c;-><init>(Lcom/comeback/data/ui/hg/HGBrowseActivity$a;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 13
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VBEQ"

    .line 16
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "UAsF"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "UwMXBVEaVFIUAxsXFg1YCVYRBlJf"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "RwwE"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "XRIE"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v3, "XxYXFA=="

    .line 17
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "cCc3"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Zy0wMA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    :cond_4
    new-instance v2, Li/e0$a;

    invoke-direct {v2}, Li/e0$a;-><init>()V

    .line 19
    invoke-virtual {v2, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Li/e0$a;->c(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_1

    :cond_5
    :try_start_0
    const-string v0, "QhYFSVM="

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    .line 24
    iget-object v1, v1, Lcom/comeback/data/ui/hg/HGBrowseActivity;->d:Li/b0;

    .line 25
    invoke-virtual {v2}, Li/e0$a;->b()Li/e0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Li/d0;

    :try_start_1
    invoke-virtual {v1}, Li/d0;->T()Li/h0;

    move-result-object v1

    .line 26
    iget v2, v1, Li/h0;->e:I

    const/16 v3, 0x190

    if-le v2, v3, :cond_6

    .line 27
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 28
    :cond_6
    iget-object v2, v1, Li/h0;->h:Li/i0;

    .line 29
    invoke-virtual {v2}, Li/i0;->E()Li/z;

    move-result-object v2

    .line 30
    iget-object v2, v2, Li/z;->b:Ljava/lang/String;

    .line 31
    new-instance v3, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    .line 32
    iget-object v4, v1, Li/h0;->h:Li/i0;

    .line 33
    invoke-virtual {v4}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 34
    iget-object v0, v1, Li/h0;->g:Li/w;

    .line 35
    invoke-virtual {v0}, Li/w;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :goto_2
    move-object v2, v0

    check-cast v2, Lh/o/c/a;

    :try_start_2
    invoke-virtual {v2}, Lh/o/c/a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 38
    invoke-virtual {v2}, Lh/o/c/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/c;

    .line 39
    iget-object v4, v2, Lh/c;->a:Ljava/lang/Object;

    .line 40
    iget-object v2, v2, Lh/c;->b:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_7
    invoke-virtual {v3, v1}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    const-string v0, "aD08OzQsZg=="

    .line 43
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 46
    :cond_9
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 0

    .line 47
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
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/hg/HGBrowseActivity;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
