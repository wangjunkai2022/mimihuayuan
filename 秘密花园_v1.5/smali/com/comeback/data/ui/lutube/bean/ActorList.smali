.class public Lcom/comeback/data/ui/lutube/bean/ActorList;
.super Lf/e/a/f/k;
.source "ActorList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;,
        Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;

.field public status:Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/ActorList;->response:Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/ActorList;->status:Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/ActorList;->response:Lcom/comeback/data/ui/lutube/bean/ActorList$ResponseBean;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/ActorList;->status:Lcom/comeback/data/ui/lutube/bean/ActorList$StatusBean;

    return-void
.end method
