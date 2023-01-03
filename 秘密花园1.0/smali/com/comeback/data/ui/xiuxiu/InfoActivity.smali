.class public Lcom/comeback/data/ui/xiuxiu/InfoActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "InfoActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation
.end field

.field public flLoad:Landroid/widget/FrameLayout;
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


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "QhAP"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00c2

    return v0
.end method

.method public e()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/h0/c;->a()Lf/e/a/j/h0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->b:Ljava/lang/String;

    sget-object v2, Lf/e/a/k/b;->S:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lf/e/a/j/h0/a;->j(Ljava/lang/String;Ljava/lang/String;)Ll/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->c:Ll/d;

    .line 3
    new-instance v1, Lcom/comeback/data/ui/xiuxiu/InfoActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/xiuxiu/InfoActivity$a;-><init>(Lcom/comeback/data/ui/xiuxiu/InfoActivity;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lf/e/a/j/q0/a;

    invoke-direct {v1, p0}, Lf/e/a/j/q0/a;-><init>(Lcom/comeback/data/ui/xiuxiu/InfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 7
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xiuxiu/InfoActivity;->c:Ll/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ll/d;->cancel()V

    :cond_0
    return-void
.end method
