.class public Lcom/comeback/data/ui/nana/bean/AuthBean;
.super Lf/e/a/f/j;
.source "AuthBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;,
        Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;

.field public status:Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/AuthBean;->response:Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/AuthBean;->status:Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/AuthBean;->response:Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/AuthBean;->status:Lcom/comeback/data/ui/nana/bean/AuthBean$StatusEntity;

    return-void
.end method
