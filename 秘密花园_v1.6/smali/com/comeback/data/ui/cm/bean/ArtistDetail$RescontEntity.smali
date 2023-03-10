.class public Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;
.super Ljava/lang/Object;
.source "ArtistDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ArtistDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RescontEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;
    }
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public cup:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public height:I

.field public id:I

.field public image:Ljava/lang/String;

.field public measurement:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/cm/bean/ArtistDetail;

.field public videoList:Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ArtistDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->this$0:Lcom/comeback/data/ui/cm/bean/ArtistDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->cup:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->image:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->image:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeasurement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->measurement:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoList()Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->videoList:Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->artist:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->country:Ljava/lang/String;

    return-void
.end method

.method public setCup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->cup:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->height:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->image:Ljava/lang/String;

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->measurement:Ljava/lang/String;

    return-void
.end method

.method public setVideoList(Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->videoList:Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

    return-void
.end method
