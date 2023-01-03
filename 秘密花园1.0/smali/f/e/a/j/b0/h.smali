.class public Lf/e/a/j/b0/h;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "AppActivity.java"


# instance fields
.field public final synthetic b:Lcom/comeback/data/ui/main/AppActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/AppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/main/AppActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "GQMTDw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/main/AppActivity;

    new-instance v1, Lf/e/a/j/b0/h$a;

    invoke-direct {v1, p0, p2}, Lf/e/a/j/b0/h$a;-><init>(Lf/e/a/j/b0/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "XQMVBRgQS1oDEg4QEQQHBEBMCQUdEmZcEQwaAB0eJQJbBxBMTE9RVhICCkBTDgwIQg8GCh9dXlYHI1gCFQ8NH0QgGjAKFHdSHgMcQBAeDgcQSzhUNl1QXR0DRi8sJy9AEF5MDA4SXQ1UTw8="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lf/e/a/j/b0/h;->b:Lcom/comeback/data/ui/main/AppActivity;

    new-instance v1, Lf/e/a/j/b0/h$b;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/b0/h$b;-><init>(Lf/e/a/j/b0/h;Lcom/tencent/smtt/sdk/WebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "GAoMCQ5cBg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
