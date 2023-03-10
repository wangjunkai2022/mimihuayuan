.class public Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;
.super Ljava/lang/Object;
.source "LouFengList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/LouFengList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;
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

.field public pic:Ljava/lang/String;

.field public pic_id:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public price1:I

.field public prov_id:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public server_num:Ljava/lang/String;

.field public share:Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;

.field public title:Ljava/lang/String;

.field public up_date:Ljava/lang/String;

.field public up_sign:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->area_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCheck_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->check_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getArea_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "9dU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getCity_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0tDiSw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->getServer_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "09jZ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGrade()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->grade:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->hits:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInput_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->input_date:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getIsneedpay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->isneedpay:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->pic_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->price1:I

    return v0
.end method

.method public getProv_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->prov_id:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->server_num:Ljava/lang/String;

    return-object v0
.end method

.method public getShare()Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUp_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->up_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUp_sign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->up_sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVerif_live()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->verif_live:Ljava/lang/String;

    return-object v0
.end method

.method public getVerif_mode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->verif_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getView_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->view_type:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->age:Ljava/lang/String;

    return-void
.end method

.method public setArea_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->area_name:Ljava/lang/String;

    return-void
.end method

.method public setCheck_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->check_date:Ljava/lang/String;

    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->city_id:Ljava/lang/String;

    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->city_name:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setGrade(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->grade:Ljava/lang/String;

    return-void
.end method

.method public setHits(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->hits:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setInput_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->input_date:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setIsneedpay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->isneedpay:Ljava/lang/String;

    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->item:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPic_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->pic_id:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setPrice1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->price1:I

    return-void
.end method

.method public setProv_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->prov_id:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->qq:Ljava/lang/String;

    return-void
.end method

.method public setServer_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->server_num:Ljava/lang/String;

    return-void
.end method

.method public setShare(Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean$ShareBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUp_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->up_date:Ljava/lang/String;

    return-void
.end method

.method public setUp_sign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->up_sign:Ljava/lang/String;

    return-void
.end method

.method public setVerif_live(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->verif_live:Ljava/lang/String;

    return-void
.end method

.method public setVerif_mode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->verif_mode:Ljava/lang/String;

    return-void
.end method

.method public setView_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->view_type:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/LouFengList$DataBean;->wechat:Ljava/lang/String;

    return-void
.end method
