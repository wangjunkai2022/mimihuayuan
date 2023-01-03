.class public Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity$b;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "XXBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity$b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity$b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity$b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
