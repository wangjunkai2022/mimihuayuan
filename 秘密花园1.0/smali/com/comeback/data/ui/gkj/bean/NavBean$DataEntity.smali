.class public Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;
.super Ljava/lang/Object;
.source "NavBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/NavBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;
    }
.end annotation


# instance fields
.field public articleVOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;"
        }
    .end annotation
.end field

.field public commonly:I

.field public commonlySort:I

.field public count:I

.field public createTime:Ljava/lang/String;

.field public haveMore:Z

.field public horizontal:I

.field public id:I

.field public refIdCon:I

.field public refIds:Ljava/lang/String;

.field public sort:I

.field public specialName:Ljava/lang/String;

.field public specialNameEn:Ljava/lang/String;

.field public status:I

.field public style:I

.field public total:I

.field public type:I

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleVOS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->articleVOS:Ljava/util/List;

    return-object v0
.end method

.method public getCommonly()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->commonly:I

    return v0
.end method

.method public getCommonlySort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->commonlySort:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->count:I

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHorizontal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->horizontal:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->id:I

    return v0
.end method

.method public getRefIdCon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->refIdCon:I

    return v0
.end method

.method public getRefIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->refIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->sort:I

    return v0
.end method

.method public getSpecialName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->specialName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->specialNameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->status:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->style:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->total:I

    return v0
.end method

.method public getTotalText()Ljava/lang/String;
    .locals 4

    const-string v0, "0f3Gg/f436jHg5D9UE9SD97hy00="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->total:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->type:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->haveMore:Z

    return v0
.end method

.method public setArticleVOS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->articleVOS:Ljava/util/List;

    return-void
.end method

.method public setCommonly(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->commonly:I

    return-void
.end method

.method public setCommonlySort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->commonlySort:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->count:I

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setHaveMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->haveMore:Z

    return-void
.end method

.method public setHorizontal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->horizontal:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->id:I

    return-void
.end method

.method public setRefIdCon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->refIdCon:I

    return-void
.end method

.method public setRefIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->refIds:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->sort:I

    return-void
.end method

.method public setSpecialName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->specialName:Ljava/lang/String;

    return-void
.end method

.method public setSpecialNameEn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->specialNameEn:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->status:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->style:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->total:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->type:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->updateTime:Ljava/lang/String;

    return-void
.end method
