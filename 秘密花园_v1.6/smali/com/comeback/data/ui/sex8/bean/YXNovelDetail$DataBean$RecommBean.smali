.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$LabelListBean;,
        Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;
    }
.end annotation


# instance fields
.field public album_id:Ljava/lang/String;

.field public album_name:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;

.field public cover_img:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public host_id:Ljava/lang/String;

.field public host_name:Ljava/lang/String;

.field public hot_number:Ljava/lang/String;

.field public is_best:Ljava/lang/String;

.field public is_share:Ljava/lang/String;

.field public isfinished:Ljava/lang/String;

.field public label_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$LabelListBean;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public price:I

.field public radio_album_id:Ljava/lang/String;

.field public radio_count:Ljava/lang/String;

.field public radio_types:Ljava/lang/String;

.field public views:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->album_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorys()Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;

    return-object v0
.end method

.method public getCover_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->cover_img:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHost_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->host_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHost_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->host_name:Ljava/lang/String;

    return-object v0
.end method

.method public getHot_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->hot_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_best()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->is_best:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getIsfinished()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->isfinished:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$LabelListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->label_list:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->price:I

    return v0
.end method

.method public getRadio_album_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_count:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_types()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_types:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->views:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->album_id:Ljava/lang/String;

    return-void
.end method

.method public setAlbum_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->album_name:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCategorys(Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->categorys:Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$CategorysBeanX;

    return-void
.end method

.method public setCover_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->cover_img:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHost_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->host_id:Ljava/lang/String;

    return-void
.end method

.method public setHost_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->host_name:Ljava/lang/String;

    return-void
.end method

.method public setHot_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->hot_number:Ljava/lang/String;

    return-void
.end method

.method public setIs_best(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->is_best:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setIsfinished(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->isfinished:Ljava/lang/String;

    return-void
.end method

.method public setLabel_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean$LabelListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->label_list:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->price:I

    return-void
.end method

.method public setRadio_album_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_album_id:Ljava/lang/String;

    return-void
.end method

.method public setRadio_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_count:Ljava/lang/String;

    return-void
.end method

.method public setRadio_types(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->radio_types:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RecommBean;->views:Ljava/lang/String;

    return-void
.end method
