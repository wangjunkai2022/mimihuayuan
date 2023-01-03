.class public Lcom/comeback/data/ui/fulao2/bean/TokenBean;
.super Lf/e/a/f/j;
.source "TokenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;,
        Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;

.field public status:Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean;->response:Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean;->status:Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean;->response:Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean;->status:Lcom/comeback/data/ui/fulao2/bean/TokenBean$StatusEntity;

    return-void
.end method
