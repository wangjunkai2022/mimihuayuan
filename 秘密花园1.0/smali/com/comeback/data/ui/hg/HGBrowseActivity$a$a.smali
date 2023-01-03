.class public Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;
.super Ljava/lang/Object;
.source "HGBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

.field public final synthetic b:Lcom/comeback/data/ui/hg/HGBrowseActivity$a;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hg/HGBrowseActivity$a;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity$a;

    iput-object p2, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;->a:Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity$a;

    iget-object v0, v0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a;->b:Lcom/comeback/data/ui/hg/HGBrowseActivity;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$a;->a:Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-static {v1}, Lf/e/a/j/n/d/a;->c(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lf/e/a/j/n/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->n(Landroid/content/Context;Lf/e/a/j/n/c/a;)V

    return-void
.end method
