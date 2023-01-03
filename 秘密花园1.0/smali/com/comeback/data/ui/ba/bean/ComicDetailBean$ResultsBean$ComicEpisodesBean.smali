.class public Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComicEpisodesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;
    }
.end annotation


# instance fields
.field public cover_image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public create_time:I

.field public describes:Ljava/lang/String;

.field public detail_id:I

.field public episodes:I

.field public is_end:I

.field public is_paid:I

.field public title:Ljava/lang/String;

.field public update_time:I

.field public vip_info:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover_image()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->cover_image:Ljava/util/List;

    return-object v0
.end method

.method public getCreate_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->create_time:I

    return v0
.end method

.method public getDescribes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->describes:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->detail_id:I

    return v0
.end method

.method public getEpisodes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->episodes:I

    return v0
.end method

.method public getIs_end()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->is_end:I

    return v0
.end method

.method public getIs_paid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->is_paid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->update_time:I

    return v0
.end method

.method public getVip_info()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->vip_info:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;

    return-object v0
.end method

.method public setCover_image(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->cover_image:Ljava/util/List;

    return-void
.end method

.method public setCreate_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->create_time:I

    return-void
.end method

.method public setDescribes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->describes:Ljava/lang/String;

    return-void
.end method

.method public setDetail_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->detail_id:I

    return-void
.end method

.method public setEpisodes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->episodes:I

    return-void
.end method

.method public setIs_end(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->is_end:I

    return-void
.end method

.method public setIs_paid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->is_paid:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->update_time:I

    return-void
.end method

.method public setVip_info(Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->vip_info:Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean$VipInfoBean;

    return-void
.end method
