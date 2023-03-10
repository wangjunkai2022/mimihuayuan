.class public Lcom/comeback/data/ui/nana/bean/ActorBean;
.super Lf/e/a/f/k;
.source "ActorBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;,
        Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;

.field public status:Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean;->response:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean;->status:Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean;->response:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean;->status:Lcom/comeback/data/ui/nana/bean/ActorBean$StatusEntity;

    return-void
.end method
