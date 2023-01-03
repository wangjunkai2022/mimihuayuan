.class public Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;
.super Ljava/lang/Object;
.source "ComicDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ComicDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;,
        Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;
    }
.end annotation


# instance fields
.field public addTime:J

.field public chapterPrice:I

.field public chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public coverH:Ljava/lang/String;

.field public coverS:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public discount:I

.field public finish:I

.field public free:I

.field public grade:D

.field public haveNew:Z

.field public id:I

.field public info:Ljava/lang/String;

.field public language:I

.field public likeIs:Z

.field public name:Ljava/lang/String;

.field public nameCn:Ljava/lang/String;

.field public playPre:I

.field public playSum:D

.field public recommend:I

.field public someDay:I

.field public src:Ljava/lang/String;

.field public status:I

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public updateBy:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public vip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->addTime:J

    return-wide v0
.end method

.method public getChapterPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->chapterPrice:I

    return v0
.end method

.method public getChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->count:I

    return v0
.end method

.method public getCoverH()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->coverH:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->coverS:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->discount:I

    return v0
.end method

.method public getFinish()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->finish:I

    return v0
.end method

.method public getFree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->free:I

    return v0
.end method

.method public getGrade()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->grade:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->id:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->language:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->nameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPre()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->playPre:I

    return v0
.end method

.method public getPlaySum()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->playSum:D

    return-wide v0
.end method

.method public getRecommend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->recommend:I

    return v0
.end method

.method public getSomeDay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->someDay:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->status:I

    return v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fnXgv3D0bTA"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "383+"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->updateBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->vip:I

    return v0
.end method

.method public isHaveNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->haveNew:Z

    return v0
.end method

.method public isLikeIs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->likeIs:Z

    return v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->addTime:J

    return-void
.end method

.method public setChapterPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->chapterPrice:I

    return-void
.end method

.method public setChapters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->chapters:Ljava/util/List;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->count:I

    return-void
.end method

.method public setCoverH(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->coverH:Ljava/lang/String;

    return-void
.end method

.method public setCoverS(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->coverS:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDiscount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->discount:I

    return-void
.end method

.method public setFinish(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->finish:I

    return-void
.end method

.method public setFree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->free:I

    return-void
.end method

.method public setGrade(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->grade:D

    return-void
.end method

.method public setHaveNew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->haveNew:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->id:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->info:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->language:I

    return-void
.end method

.method public setLikeIs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->likeIs:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->nameCn:Ljava/lang/String;

    return-void
.end method

.method public setPlayPre(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->playPre:I

    return-void
.end method

.method public setPlaySum(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->playSum:D

    return-void
.end method

.method public setRecommend(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->recommend:I

    return-void
.end method

.method public setSomeDay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->someDay:I

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->src:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->status:I

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->tags:Ljava/util/List;

    return-void
.end method

.method public setUpdateBy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->updateBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setVip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->vip:I

    return-void
.end method
