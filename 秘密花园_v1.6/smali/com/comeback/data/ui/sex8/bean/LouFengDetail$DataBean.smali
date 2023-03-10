.class public Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;
.super Ljava/lang/Object;
.source "LouFengDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/LouFengDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;,
        Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;
    }
.end annotation


# instance fields
.field public age:Ljava/lang/String;

.field public area_name:Ljava/lang/String;

.field public check_date:Ljava/lang/String;

.field public city_id:Ljava/lang/String;

.field public city_name:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public grade:Ljava/lang/String;

.field public hits:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public input_date:Ljava/lang/String;

.field public is_share:Ljava/lang/String;

.field public isneedpay:Ljava/lang/String;

.field public item:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;",
            ">;"
        }
    .end annotation
.end field

.field public pic_id:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public price1:Ljava/lang/String;

.field public prov_id:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public server_num:Ljava/lang/String;

.field public share:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;

.field public title:Ljava/lang/String;

.field public up_date:Ljava/lang/String;

.field public up_sign:Ljava/lang/String;

.field public v_sign:I

.field public verif_live:Ljava/lang/String;

.field public verif_mode:Ljava/lang/String;

.field public view_type:Ljava/lang/String;

.field public wechat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->area_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCheck_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->check_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->grade:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->hits:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->input_date:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getIsneedpay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->isneedpay:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getArea_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "9dU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getCity_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0tDi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0PbWjMTu1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->pic:Ljava/util/List;

    return-object v0
.end method

.method public getPicList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getPic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;

    .line 3
    invoke-virtual {v2}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPic_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->pic_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "09nUgsvP1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->price1:Ljava/lang/String;

    return-object v0
.end method

.method public getProv_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->prov_id:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZjOM2PE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->qq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer_num()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0f7ugeHS3YnJgKHXl9b5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->server_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare()Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUp_date()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fnXgv3D36TFj6PTl9b5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->up_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUp_sign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->up_sign:Ljava/lang/String;

    return-object v0
.end method

.method public getV_sign()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->v_sign:I

    return v0
.end method

.method public getVerif_live()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->verif_live:Ljava/lang/String;

    return-object v0
.end method

.method public getVerif_mode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->verif_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getView_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->view_type:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0tzNgNTS1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->wechat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->age:Ljava/lang/String;

    return-void
.end method

.method public setArea_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->area_name:Ljava/lang/String;

    return-void
.end method

.method public setCheck_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->check_date:Ljava/lang/String;

    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->city_id:Ljava/lang/String;

    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->city_name:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setGrade(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->grade:Ljava/lang/String;

    return-void
.end method

.method public setHits(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->hits:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setInput_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->input_date:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setIsneedpay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->isneedpay:Ljava/lang/String;

    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->item:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$PicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->pic:Ljava/util/List;

    return-void
.end method

.method public setPic_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->pic_id:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setPrice1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->price1:Ljava/lang/String;

    return-void
.end method

.method public setProv_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->prov_id:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->qq:Ljava/lang/String;

    return-void
.end method

.method public setServer_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->server_num:Ljava/lang/String;

    return-void
.end method

.method public setShare(Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean$ShareBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUp_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->up_date:Ljava/lang/String;

    return-void
.end method

.method public setUp_sign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->up_sign:Ljava/lang/String;

    return-void
.end method

.method public setV_sign(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->v_sign:I

    return-void
.end method

.method public setVerif_live(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->verif_live:Ljava/lang/String;

    return-void
.end method

.method public setVerif_mode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->verif_mode:Ljava/lang/String;

    return-void
.end method

.method public setView_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->view_type:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->wechat:Ljava/lang/String;

    return-void
.end method
