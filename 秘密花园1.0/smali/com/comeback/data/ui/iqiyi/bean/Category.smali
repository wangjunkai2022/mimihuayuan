.class public Lcom/comeback/data/ui/iqiyi/bean/Category;
.super Lf/e/a/f/j;
.source "Category.java"


# instance fields
.field public catId:Ljava/lang/String;

.field public cateId:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public indexShow:Ljava/lang/String;

.field public isPoint:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public orderBy:Ljava/lang/Object;

.field public vipLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->catId:Ljava/lang/String;

    return-object v0
.end method

.method public getCateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->cateId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexShow()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->indexShow:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->isPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->orderBy:Ljava/lang/Object;

    return-object v0
.end method

.method public getVipLevel()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->vipLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->vipLevel:Ljava/lang/String;

    const-string v1, "Bg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ezRN"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->vipLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public setCatId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->catId:Ljava/lang/String;

    return-void
.end method

.method public setCateId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->cateId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->description:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->img:Ljava/lang/String;

    return-void
.end method

.method public setIndexShow(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->indexShow:Ljava/lang/String;

    return-void
.end method

.method public setIsPoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->isPoint:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrderBy(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->orderBy:Ljava/lang/Object;

    return-void
.end method

.method public setVipLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/Category;->vipLevel:Ljava/lang/String;

    return-void
.end method
