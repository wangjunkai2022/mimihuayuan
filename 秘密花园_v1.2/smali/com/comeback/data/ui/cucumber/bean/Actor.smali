.class public Lcom/comeback/data/ui/cucumber/bean/Actor;
.super Lf/e/a/f/k;
.source "Actor.java"


# instance fields
.field public actorsId:I

.field public briefIntroduction:Ljava/lang/String;

.field public bust:I

.field public cup:Ljava/lang/String;

.field public height:I

.field public hips:I

.field public id:I

.field public movNumber:I

.field public name:Ljava/lang/String;

.field public nameCn:Ljava/lang/String;

.field public nameEn:Ljava/lang/String;

.field public nameJpn:Ljava/lang/String;

.field public photoUrl:Ljava/lang/String;

.field public starLevel:Ljava/lang/String;

.field public videosCount:I

.field public waist:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getBriefIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->briefIntroduction:Ljava/lang/String;

    return-object v0
.end method

.method public getBust()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->bust:I

    return v0
.end method

.method public getCup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->cup:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->height:I

    return v0
.end method

.method public getHips()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->hips:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->actorsId:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->id:I

    :cond_0
    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "39jIjcDrAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "VA9DRI/LsNbo0g4="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->bust:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->waist:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->hips:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "VA9DRIzOkNXuyQ4="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->cup:Ljava/lang/String;

    const-string v2, "0f/M"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameCn:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameJpn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameJpn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->starLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getVideosCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->movNumber:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->videosCount:I

    :cond_0
    return v0
.end method

.method public getWaist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->waist:I

    return v0
.end method

.method public setBriefIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->briefIntroduction:Ljava/lang/String;

    return-void
.end method

.method public setBust(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->bust:I

    return-void
.end method

.method public setCup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->cup:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->height:I

    return-void
.end method

.method public setHips(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->hips:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->id:I

    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameCn:Ljava/lang/String;

    return-void
.end method

.method public setNameEn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameEn:Ljava/lang/String;

    return-void
.end method

.method public setNameJpn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->nameJpn:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setStarLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->starLevel:Ljava/lang/String;

    return-void
.end method

.method public setVideosCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->videosCount:I

    return-void
.end method

.method public setWaist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Actor;->waist:I

    return-void
.end method
