.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LabelListBeanX;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdInRadioListBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdBean;
    }
.end annotation


# instance fields
.field public ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdBean;",
            ">;"
        }
    .end annotation
.end field

.field public ad_in_radio_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdInRadioListBean;",
            ">;"
        }
    .end annotation
.end field

.field public categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;

.field public cover_img:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public host:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

.field public host_id:Ljava/lang/String;

.field public hot_number:Ljava/lang/String;

.field public isPay:I

.field public is_best:Ljava/lang/String;

.field public is_finished:Ljava/lang/String;

.field public is_share:Ljava/lang/String;

.field public label_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LabelListBeanX;",
            ">;"
        }
    .end annotation
.end field

.field public likeAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public price:I

.field public radio_album_id:Ljava/lang/String;

.field public radio_count:Ljava/lang/String;

.field public radio_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;",
            ">;"
        }
    .end annotation
.end field

.field public radio_trial_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public recomm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public views:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->ad:Ljava/util/List;

    return-object v0
.end method

.method public getAd_in_radio_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdInRadioListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->ad_in_radio_list:Ljava/util/List;

    return-object v0
.end method

.method public getCategorys()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;

    return-object v0
.end method

.method public getCover_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->cover_img:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Lcom/comeback/data/ui/sex8/bean/YXHostBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->host:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    return-object v0
.end method

.method public getHost_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->host_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHot_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->hot_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->isPay:I

    return v0
.end method

.method public getIs_best()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_best:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_finished()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_finished:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LabelListBeanX;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->label_list:Ljava/util/List;

    return-object v0
.end method

.method public getLikeAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->likeAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->price:I

    return v0
.end method

.method public getRadio_album_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_count:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_list:Ljava/util/List;

    return-object v0
.end method

.method public getRadio_trial_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_trial_list:Ljava/util/List;

    return-object v0
.end method

.method public getRecomm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->recomm:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->views:Ljava/lang/String;

    return-object v0
.end method

.method public setAd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->ad:Ljava/util/List;

    return-void
.end method

.method public setAd_in_radio_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$AdInRadioListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->ad_in_radio_list:Ljava/util/List;

    return-void
.end method

.method public setCategorys(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$CategorysBean;

    return-void
.end method

.method public setCover_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->cover_img:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHost(Lcom/comeback/data/ui/sex8/bean/YXHostBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->host:Lcom/comeback/data/ui/sex8/bean/YXHostBean;

    return-void
.end method

.method public setHost_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->host_id:Ljava/lang/String;

    return-void
.end method

.method public setHot_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->hot_number:Ljava/lang/String;

    return-void
.end method

.method public setIsPay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->isPay:I

    return-void
.end method

.method public setIs_best(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_best:Ljava/lang/String;

    return-void
.end method

.method public setIs_finished(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_finished:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setLabel_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LabelListBeanX;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->label_list:Ljava/util/List;

    return-void
.end method

.method public setLikeAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$LikeAlbumListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->likeAlbumList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->price:I

    return-void
.end method

.method public setRadio_album_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_album_id:Ljava/lang/String;

    return-void
.end method

.method public setRadio_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_count:Ljava/lang/String;

    return-void
.end method

.method public setRadio_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_list:Ljava/util/List;

    return-void
.end method

.method public setRadio_trial_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->radio_trial_list:Ljava/util/List;

    return-void
.end method

.method public setRecomm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->recomm:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;->views:Ljava/lang/String;

    return-void
.end method
