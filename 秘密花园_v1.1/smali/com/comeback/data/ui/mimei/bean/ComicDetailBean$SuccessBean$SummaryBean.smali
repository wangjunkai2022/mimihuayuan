.class public Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBean"
.end annotation


# instance fields
.field public apitimestamp:Ljava/lang/String;

.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public chapter:I

.field public cover_path:Ljava/lang/String;

.field public end:Ljava/lang/String;

.field public favorite_stamp:Ljava/lang/String;

.field public full_cover_path:Ljava/lang/String;

.field public id:I

.field public last_page:Ljava/lang/Object;

.field public last_stamp:Ljava/lang/String;

.field public lock_stamp:Ljava/lang/String;

.field public max_chapter:I

.field public max_volume:I

.field public name:Ljava/lang/String;

.field public opened_at:Ljava/lang/String;

.field public ori_series:Ljava/lang/Object;

.field public pages:I

.field public season:Ljava/lang/Object;

.field public series:Ljava/lang/String;

.field public series_hash_key:Ljava/lang/String;

.field public series_number:I

.field public series_stamp:Ljava/lang/String;

.field public tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I

.field public view_count:I

.field public volume:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApitimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->apitimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->author:Ljava/util/List;

    return-object v0
.end method

.method public getChapter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->chapter:I

    return v0
.end method

.method public getCover_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->cover_path:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->favorite_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getFull_cover_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->full_cover_path:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->id:I

    return v0
.end method

.method public getLast_page()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->last_page:Ljava/lang/Object;

    return-object v0
.end method

.method public getLast_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->last_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLock_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->lock_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_chapter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->max_chapter:I

    return v0
.end method

.method public getMax_volume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->max_volume:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpened_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->opened_at:Ljava/lang/String;

    return-object v0
.end method

.method public getOri_series()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->ori_series:Ljava/lang/Object;

    return-object v0
.end method

.method public getPages()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->pages:I

    return v0
.end method

.method public getSeason()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->season:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeries()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series:Ljava/lang/String;

    return-object v0
.end method

.method public getSeries_hash_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_hash_key:Ljava/lang/String;

    return-object v0
.end method

.method public getSeries_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_number:I

    return v0
.end method

.method public getSeries_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_stamp:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->tag:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->type:I

    return v0
.end method

.method public getView_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->view_count:I

    return v0
.end method

.method public getVolume()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->volume:Ljava/lang/Object;

    return-object v0
.end method

.method public setApitimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->apitimestamp:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->author:Ljava/util/List;

    return-void
.end method

.method public setChapter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->chapter:I

    return-void
.end method

.method public setCover_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->cover_path:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setFavorite_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->favorite_stamp:Ljava/lang/String;

    return-void
.end method

.method public setFull_cover_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->full_cover_path:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->id:I

    return-void
.end method

.method public setLast_page(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->last_page:Ljava/lang/Object;

    return-void
.end method

.method public setLast_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->last_stamp:Ljava/lang/String;

    return-void
.end method

.method public setLock_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->lock_stamp:Ljava/lang/String;

    return-void
.end method

.method public setMax_chapter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->max_chapter:I

    return-void
.end method

.method public setMax_volume(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->max_volume:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpened_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->opened_at:Ljava/lang/String;

    return-void
.end method

.method public setOri_series(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->ori_series:Ljava/lang/Object;

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->pages:I

    return-void
.end method

.method public setSeason(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->season:Ljava/lang/Object;

    return-void
.end method

.method public setSeries(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series:Ljava/lang/String;

    return-void
.end method

.method public setSeries_hash_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_hash_key:Ljava/lang/String;

    return-void
.end method

.method public setSeries_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_number:I

    return-void
.end method

.method public setSeries_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->series_stamp:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->tag:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->type:I

    return-void
.end method

.method public setView_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->view_count:I

    return-void
.end method

.method public setVolume(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;->volume:Ljava/lang/Object;

    return-void
.end method
