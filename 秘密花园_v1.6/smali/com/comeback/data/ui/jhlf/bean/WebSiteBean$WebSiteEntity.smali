.class public Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;
.super Ljava/lang/Object;
.source "WebSiteBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSiteEntity"
.end annotation


# instance fields
.field public id:I

.field public logo:Ljava/lang/String;

.field public status:I

.field public final synthetic this$0:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;

.field public website:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->this$0:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->id:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->status:I

    return v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->website:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->id:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->logo:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->status:I

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->website:Ljava/lang/String;

    return-void
.end method
