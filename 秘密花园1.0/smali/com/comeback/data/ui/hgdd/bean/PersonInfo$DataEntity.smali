.class public Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;
.super Ljava/lang/Object;
.source "PersonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hgdd/bean/PersonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity$Car_report_listEntity;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public age:Ljava/lang/String;

.field public btn_type:Ljava/lang/String;

.field public business_hours:Ljava/lang/String;

.field public car_report_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity$Car_report_listEntity;",
            ">;"
        }
    .end annotation
.end field

.field public city:Ljava/lang/String;

.field public count:Ljava/lang/String;

.field public cup:Ljava/lang/String;

.field public file_path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fp_id:Ljava/lang/String;

.field public has_next:I

.field public height:Ljava/lang/String;

.field public introduction:Ljava/lang/String;

.field public is_favorites:Ljava/lang/String;

.field public is_release:Ljava/lang/String;

.field public is_show_btn:Ljava/lang/String;

.field public is_unlock_social_account:Ljava/lang/String;

.field public is_vip:I

.field public mobile:Ljava/lang/String;

.field public page:I

.field public page_count:I

.field public page_size:I

.field public price:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public service_items:Ljava/lang/String;

.field public sister_num:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/hgdd/bean/PersonInfo;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public unlock_num:Ljava/lang/String;

.field public wechat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgdd/bean/PersonInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->this$0:Lcom/comeback/data/ui/hgdd/bean/PersonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getBtn_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->btn_type:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness_hours()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->business_hours:Ljava/lang/String;

    return-object v0
.end method

.method public getCar_report_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity$Car_report_listEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->car_report_list:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getCup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->cup:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_path()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->file_path:Ljava/util/List;

    return-object v0
.end method

.method public getFp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->fp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHas_next()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->has_next:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_favorites()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_favorites:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_release:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_show_btn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_show_btn:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_unlock_social_account()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_unlock_social_account:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_vip:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page:I

    return v0
.end method

.method public getPage_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page_count:I

    return v0
.end method

.method public getPage_size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page_size:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getService_items()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->service_items:Ljava/lang/String;

    return-object v0
.end method

.method public getSister_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->sister_num:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlock_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->unlock_num:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->address:Ljava/lang/String;

    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->age:Ljava/lang/String;

    return-void
.end method

.method public setBtn_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->btn_type:Ljava/lang/String;

    return-void
.end method

.method public setBusiness_hours(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->business_hours:Ljava/lang/String;

    return-void
.end method

.method public setCar_report_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity$Car_report_listEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->car_report_list:Ljava/util/List;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->city:Ljava/lang/String;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->count:Ljava/lang/String;

    return-void
.end method

.method public setCup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->cup:Ljava/lang/String;

    return-void
.end method

.method public setFile_path(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->file_path:Ljava/util/List;

    return-void
.end method

.method public setFp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->fp_id:Ljava/lang/String;

    return-void
.end method

.method public setHas_next(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->has_next:I

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->height:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIs_favorites(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_favorites:Ljava/lang/String;

    return-void
.end method

.method public setIs_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_release:Ljava/lang/String;

    return-void
.end method

.method public setIs_show_btn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_show_btn:Ljava/lang/String;

    return-void
.end method

.method public setIs_unlock_social_account(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_unlock_social_account:Ljava/lang/String;

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->is_vip:I

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page:I

    return-void
.end method

.method public setPage_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page_count:I

    return-void
.end method

.method public setPage_size(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->page_size:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->price:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->qq:Ljava/lang/String;

    return-void
.end method

.method public setService_items(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->service_items:Ljava/lang/String;

    return-void
.end method

.method public setSister_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->sister_num:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnlock_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->unlock_num:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgdd/bean/PersonInfo$DataEntity;->wechat:Ljava/lang/String;

    return-void
.end method
