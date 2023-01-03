.class public Lcom/comeback/data/ui/lutube/bean/VideoType;
.super Lf/e/a/f/j;
.source "VideoType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;,
        Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;
    }
.end annotation


# instance fields
.field public response:Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;

.field public status:Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoType;->response:Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoType;->status:Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;

    return-object v0
.end method

.method public setResponse(Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoType;->response:Lcom/comeback/data/ui/lutube/bean/VideoType$ResponseBean;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoType;->status:Lcom/comeback/data/ui/lutube/bean/VideoType$StatusBean;

    return-void
.end method
