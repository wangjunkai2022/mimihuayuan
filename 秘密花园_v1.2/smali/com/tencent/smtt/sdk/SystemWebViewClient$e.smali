.class public Lcom/tencent/smtt/sdk/SystemWebViewClient$e;
.super Ljava/lang/Object;
.source "SystemWebViewClient.java"

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/SystemWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/SystemWebViewClient;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/SystemWebViewClient;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->a:Lcom/tencent/smtt/sdk/SystemWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->b:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->c:Z

    .line 4
    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->d:Z

    .line 5
    iput-boolean p5, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->e:Z

    .line 6
    iput-object p6, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->f:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->e:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->c:Z

    return v0
.end method

.method public isRedirect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/SystemWebViewClient$e;->d:Z

    return v0
.end method
