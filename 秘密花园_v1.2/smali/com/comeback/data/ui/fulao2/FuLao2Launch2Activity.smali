.class public Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;
.super Lcom/comeback/data/base/BaseActivity;
.source "FuLao2Launch2Activity.java"


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public webView:Lcom/tencent/smtt/sdk/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->g:Z

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V
    .locals 11

    if-eqz p0, :cond_3

    .line 1
    invoke-static {}, Lf/e/a/j/l/h/f;->a()V

    const-string v0, "aD08OzQ="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance v0, Li/a0$a;

    invoke-direct {v0}, Li/a0$a;-><init>()V

    sget-object v1, Li/a0;->h:Li/z;

    invoke-virtual {v0, v1}, Li/a0$a;->d(Li/z;)Li/a0$a;

    const-string v1, "XwMQDA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/a0$a;

    const-string v1, "Rw4CEA0cS14="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QAcB"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Li/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/a0$a;

    const-string v1, "QhYOOxgcTEEQAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QxcRCgkSWlg="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Li/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/a0$a;

    .line 8
    invoke-virtual {v0}, Li/a0$a;->c()Li/a0;

    move-result-object v0

    .line 9
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->b:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->f:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->f:Ljava/lang/String;

    const-string v5, "EQ=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    const-string v9, "Cg=="

    .line 14
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 15
    invoke-static {v9}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 16
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 17
    aget-object v8, v8, v6

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_0
    aget-object v9, v8, v6

    aget-object v8, v8, v10

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {v1, v2, v3, v0}, Lf/e/a/j/l/h/b;->g(Ljava/lang/String;Ljava/util/HashMap;Li/g0;)Lm/e;

    move-result-object v0

    .line 20
    new-instance v1, Lf/e/a/j/l/f;

    invoke-direct {v1, p0}, Lf/e/a/j/l/f;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c004d

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/l/h/b;->b()Lm/e;

    move-result-object v0

    .line 3
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v1

    invoke-interface {v1}, Lf/e/a/j/l/h/b;->m()Lm/e;

    move-result-object v1

    .line 4
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v2

    invoke-interface {v2}, Lf/e/a/j/l/h/b;->k()Lm/e;

    move-result-object v2

    .line 5
    new-instance v3, Lf/e/a/j/l/c;

    invoke-direct {v3, p0}, Lf/e/a/j/l/c;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 7
    new-instance v0, Lf/e/a/j/l/c;

    invoke-direct {v0, p0}, Lf/e/a/j/l/c;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 9
    new-instance v0, Lf/e/a/j/l/c;

    invoke-direct {v0, p0}, Lf/e/a/j/l/c;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "GQ=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->c:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lf/e/a/j/l/d;

    invoke-direct {v1, p0}, Lf/e/a/j/l/d;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lf/e/a/j/l/e;

    invoke-direct {v1, p0}, Lf/e/a/j/l/e;-><init>(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v3, 0x2

    .line 24
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 28
    invoke-static {}, Lc/a/a/b/g/h;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgent(Ljava/lang/String;)V

    const-wide v3, 0x7fffffffffffffffL

    .line 29
    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    const-string v1, "VhITBwoQUVY="

    .line 30
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-string v1, "UwMXBQkSSlYA"

    .line 31
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const-string v1, "UAcMCAQQWEcaCVo="

    .line 32
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->d:Ljava/util/HashMap;

    const-string v1, "T08FCxkEWEEXA1BKHgUR"

    .line 38
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->webView:Lcom/tencent/smtt/sdk/WebView;

    sget-object v1, Lf/e/a/k/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    invoke-static {p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 41
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lf/e/a/j/l/h/f;->a()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "VgAMER9JW18SCF8="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-static {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 6
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeSessionCookies(Lcom/tencent/smtt/sdk/ValueCallback;)V

    .line 8
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieManager;->removeAllCookie()V

    .line 9
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieManager;->flush()V

    .line 10
    invoke-static {}, Lcom/tencent/smtt/sdk/WebStorage;->getInstance()Lcom/tencent/smtt/sdk/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebStorage;->deleteAllData()V

    return-void
.end method
