.class public Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;
.super Ljava/lang/Object;
.source "ArtistList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListEntity"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public id:I

.field public image:Ljava/lang/String;

.field public imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public isHot:I

.field public letter:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->this$2:Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->image:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->image:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsHot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->isHot:I

    return v0
.end method

.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->artist:Ljava/lang/String;

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->image:Ljava/lang/String;

    return-void
.end method

.method public setIsHot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->isHot:I

    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;->letter:Ljava/lang/String;

    return-void
.end method
