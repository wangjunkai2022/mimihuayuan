.class public Lf/e/a/j/k/d$a;
.super Ljava/lang/Object;
.source "FuLao2Launch2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/j/k/d;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/e/a/j/k/d;


# direct methods
.method public constructor <init>(Lf/e/a/j/k/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/k/d$a;->a:Lf/e/a/j/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/k/d$a;->a:Lf/e/a/j/k/d;

    iget-object v0, v0, Lf/e/a/j/k/d;->b:Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;

    invoke-static {v0}, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->l(Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;)V

    return-void
.end method
