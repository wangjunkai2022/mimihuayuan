.class public Lcom/comeback/data/ui/fulao2/bean/VideoList;
.super Lf/e/a/f/k;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;,
        Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

.field public status:Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoList;->response:Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/VideoList;->status:Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoList;->response:Lcom/comeback/data/ui/fulao2/bean/VideoList$ResponseBean;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/VideoList;->status:Lcom/comeback/data/ui/fulao2/bean/VideoList$StatusBean;

    return-void
.end method
