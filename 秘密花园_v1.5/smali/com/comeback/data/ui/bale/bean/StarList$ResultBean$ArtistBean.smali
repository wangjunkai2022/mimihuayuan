.class public Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;
.super Ljava/lang/Object;
.source "StarList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistBean"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public id:I

.field public image:Ljava/lang/String;

.field public imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public isHot:I

.field public letter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->isHot:I

    return v0
.end method

.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->artist:Ljava/lang/String;

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->imagebase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setIsHot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->isHot:I

    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->letter:Ljava/lang/String;

    return-void
.end method
