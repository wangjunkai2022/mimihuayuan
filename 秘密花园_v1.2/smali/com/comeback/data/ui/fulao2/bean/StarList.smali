.class public Lcom/comeback/data/ui/fulao2/bean/StarList;
.super Lf/e/a/f/k;
.source "StarList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;,
        Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;

.field public status:Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/StarList;->response:Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/StarList;->status:Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/StarList;->response:Lcom/comeback/data/ui/fulao2/bean/StarList$ResponseBean;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/StarList;->status:Lcom/comeback/data/ui/fulao2/bean/StarList$StatusBean;

    return-void
.end method
