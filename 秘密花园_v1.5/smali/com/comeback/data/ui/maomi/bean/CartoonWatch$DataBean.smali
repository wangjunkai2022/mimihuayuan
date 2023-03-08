.class public Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;
.super Ljava/lang/Object;
.source "CartoonWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/CartoonWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public comic_id:I

.field public create_at:Ljava/lang/String;

.field public id:I

.field public image:Ljava/lang/String;

.field public list_id:I

.field public sort:I

.field public update_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComic_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->comic_id:I

    return v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getList_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->list_id:I

    return v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->sort:I

    return v0
.end method

.method public getUpdate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->update_at:Ljava/lang/String;

    return-object v0
.end method

.method public setComic_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->comic_id:I

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setList_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->list_id:I

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->sort:I

    return-void
.end method

.method public setUpdate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->update_at:Ljava/lang/String;

    return-void
.end method
