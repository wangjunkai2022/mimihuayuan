.class public Lcom/comeback/data/ui/fengliu/bean/MMInfo;
.super Lf/e/a/f/k;
.source "MMInfo.java"


# instance fields
.field public address:Ljava/lang/String;

.field public anonymous:I

.field public cityCodeReadable:Ljava/lang/String;

.field public city_code:Ljava/lang/String;

.field public consume_lv:Ljava/lang/String;

.field public coverPictureHrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cover_picture:Ljava/lang/String;

.field public createdAtReadable:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public descToHtml:Ljava/lang/String;

.field public environment:Ljava/lang/Object;

.field public girl_age:Ljava/lang/String;

.field public girl_beauty:Ljava/lang/String;

.field public girl_num:Ljava/lang/String;

.field public id:I

.field public is_expired:Z

.field public is_recommend:Z

.field public phone:Ljava/lang/String;

.field public picture:Ljava/lang/String;

.field public pictureHrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public publishedAtReadable:Ljava/lang/String;

.field public published_at:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public score:I

.field public serve_list:Ljava/lang/String;

.field public serve_lv:Ljava/lang/Object;

.field public status:I

.field public statusReadable:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public updated_at:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userReputation:I

.field public userStatus:I

.field public user_id:I

.field public view_count:I

.field public vipProfileStatus:I

.field public wechat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAnonymous()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->anonymous:I

    return v0
.end method

.method public getCityCodeReadable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cityCodeReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_lv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->consume_lv:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverPictureHrefs()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->coverPictureHrefs:Ljava/util/List;

    return-object v0
.end method

.method public getCover_picture()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZSBEEBQQYEgoHHwZLVlw="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAtReadable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->createdAtReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDescToHtml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->descToHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->environment:Ljava/lang/Object;

    return-object v0
.end method

.method public getGirl_age()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_age:Ljava/lang/String;

    return-object v0
.end method

.method public getGirl_beauty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_beauty:Ljava/lang/String;

    return-object v0
.end method

.method public getGirl_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_num:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->id:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureHrefs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->pictureHrefs:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->pictureHrefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->pictureHrefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "XxYXFA=="

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XxYXFBhJ"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->pictureHrefs:Ljava/util/List;

    return-object v0
.end method

.method public getPublishedAtReadable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->publishedAtReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->published_at:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->score:I

    return v0
.end method

.method public getServe_list()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->serve_list:Ljava/lang/String;

    return-object v0
.end method

.method public getServe_lv()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->serve_lv:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->status:I

    return v0
.end method

.method public getStatusReadable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->statusReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->type:I

    return v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserReputation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userReputation:I

    return v0
.end method

.method public getUserStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userStatus:I

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->user_id:I

    return v0
.end method

.method public getView_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->view_count:I

    return v0
.end method

.method public getVipProfileStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->vipProfileStatus:I

    return v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_expired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->is_expired:Z

    return v0
.end method

.method public isIs_recommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->is_recommend:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setAnonymous(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->anonymous:I

    return-void
.end method

.method public setCityCodeReadable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cityCodeReadable:Ljava/lang/String;

    return-void
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->city_code:Ljava/lang/String;

    return-void
.end method

.method public setConsume_lv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->consume_lv:Ljava/lang/String;

    return-void
.end method

.method public setCoverPictureHrefs(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->coverPictureHrefs:Ljava/util/List;

    return-void
.end method

.method public setCover_picture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->cover_picture:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAtReadable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->createdAtReadable:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDescToHtml(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->descToHtml:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->environment:Ljava/lang/Object;

    return-void
.end method

.method public setGirl_age(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_age:Ljava/lang/String;

    return-void
.end method

.method public setGirl_beauty(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_beauty:Ljava/lang/String;

    return-void
.end method

.method public setGirl_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->girl_num:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->id:I

    return-void
.end method

.method public setIs_expired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->is_expired:Z

    return-void
.end method

.method public setIs_recommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->is_recommend:Z

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->picture:Ljava/lang/String;

    return-void
.end method

.method public setPictureHrefs(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->pictureHrefs:Ljava/util/List;

    return-void
.end method

.method public setPublishedAtReadable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->publishedAtReadable:Ljava/lang/String;

    return-void
.end method

.method public setPublished_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->published_at:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->qq:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->score:I

    return-void
.end method

.method public setServe_list(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->serve_list:Ljava/lang/String;

    return-void
.end method

.method public setServe_lv(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->serve_lv:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->status:I

    return-void
.end method

.method public setStatusReadable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->statusReadable:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->type:I

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserReputation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userReputation:I

    return-void
.end method

.method public setUserStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->userStatus:I

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->user_id:I

    return-void
.end method

.method public setView_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->view_count:I

    return-void
.end method

.method public setVipProfileStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->vipProfileStatus:I

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo;->wechat:Ljava/lang/String;

    return-void
.end method
