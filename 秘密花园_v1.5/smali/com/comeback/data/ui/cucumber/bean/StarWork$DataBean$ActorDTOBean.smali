.class public Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;
.super Ljava/lang/Object;
.source "StarWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActorDTOBean"
.end annotation


# instance fields
.field public briefIntroduction:Ljava/lang/String;

.field public id:I

.field public nameCn:Ljava/lang/String;

.field public nameEn:Ljava/lang/String;

.field public nameJpn:Ljava/lang/String;

.field public photoUrl:Ljava/lang/String;

.field public videosCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBriefIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->briefIntroduction:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->id:I

    return v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameJpn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameJpn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideosCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->videosCount:I

    return v0
.end method

.method public setBriefIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->briefIntroduction:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->id:I

    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameCn:Ljava/lang/String;

    return-void
.end method

.method public setNameEn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameEn:Ljava/lang/String;

    return-void
.end method

.method public setNameJpn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->nameJpn:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideosCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->videosCount:I

    return-void
.end method
