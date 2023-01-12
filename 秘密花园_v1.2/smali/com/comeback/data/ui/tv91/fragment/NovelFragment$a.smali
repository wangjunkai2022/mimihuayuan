.class public Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "NovelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/NovelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;->b:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;->b:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    iget-object p1, p1, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment$a;->b:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    iget-object p1, p1, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
