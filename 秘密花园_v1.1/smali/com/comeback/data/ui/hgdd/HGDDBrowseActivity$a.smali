.class public Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity$a;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "HGDDBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity$a;->b:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    const-string p1, "URI8DQ8="

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0frdg8/J"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity$a;->b:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 5
    iget-boolean p2, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->b:Z

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean p1, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->b:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, p1

    int-to-double v4, v1

    .line 9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 10
    iget-object v3, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-static {v3, p1, v1, p2, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 11
    iget-object p2, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 14
    iget-object v1, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, p1

    int-to-double v4, v1

    .line 15
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 16
    iget-object v3, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    invoke-static {v3, p1, v1, v2, p2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 17
    new-instance p2, Lf/e/a/j/o/a;

    invoke-direct {p2, v0}, Lf/e/a/j/o/a;-><init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity$a;->b:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity$a;->b:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 0

    .line 2
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

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
