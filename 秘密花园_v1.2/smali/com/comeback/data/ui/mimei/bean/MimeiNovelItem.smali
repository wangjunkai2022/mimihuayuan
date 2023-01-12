.class public Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;
.super Lf/e/a/f/k;
.source "MimeiNovelItem.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public favorite_stamp:Ljava/lang/String;

.field public filepath:Ljava/lang/String;

.field public filepath_tw:Ljava/lang/String;

.field public id:I

.field public opened_at:Ljava/lang/String;

.field public percent:Ljava/lang/Object;

.field public tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I

.field public view_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->favorite_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/j/f0/j/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilepath_tw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->filepath_tw:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->id:I

    return v0
.end method

.method public getOpened_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->opened_at:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->percent:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->tag:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->type:I

    return v0
.end method

.method public getView_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->view_count:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFavorite_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->favorite_stamp:Ljava/lang/String;

    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->filepath:Ljava/lang/String;

    return-void
.end method

.method public setFilepath_tw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->filepath_tw:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->id:I

    return-void
.end method

.method public setOpened_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->opened_at:Ljava/lang/String;

    return-void
.end method

.method public setPercent(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->percent:Ljava/lang/Object;

    return-void
.end method

.method public setTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->tag:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->type:I

    return-void
.end method

.method public setView_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->view_count:I

    return-void
.end method
