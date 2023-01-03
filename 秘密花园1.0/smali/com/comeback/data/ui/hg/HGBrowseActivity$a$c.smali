.class public Lcom/comeback/data/ui/hg/HGBrowseActivity$a$c;
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


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hg/HGBrowseActivity$a;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$c;->a:Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/HGBrowseActivity$a$c;->a:Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-static {v0}, Lf/e/a/j/n/d/a;->b(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)V

    return-void
.end method
