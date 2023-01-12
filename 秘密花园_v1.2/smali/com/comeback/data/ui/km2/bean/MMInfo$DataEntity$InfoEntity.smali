.class public Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;
.super Ljava/lang/Object;
.source "MMInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;
    }
.end annotation


# instance fields
.field public age:Ljava/lang/String;

.field public area_id:Ljava/lang/String;

.field public area_name:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public base64_txt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public comment_num:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public create_at:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fee_gold:Ljava/lang/String;

.field public fee_num:Ljava/lang/String;

.field public image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_certification:Ljava/lang/String;

.field public is_collect:I

.field public is_exclusive_vip:I

.field public is_pay:I

.field public is_vip:I

.field public nickname:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public read_num:Ljava/lang/String;

.field public relation:I

.field public tag_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;

.field public title:Ljava/lang/String;

.field public total_post:I

.field public user_id:Ljava/lang/String;

.field public user_is_vip:I

.field public vip_unlock_num:Ljava/lang/String;

.field public wechat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->this$1:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->area_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArea_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->area_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64_txt()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->base64_txt:Ljava/util/List;

    return-object v0
.end method

.method public getComment_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->comment_num:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFee_gold()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->fee_gold:Ljava/lang/String;

    return-object v0
.end method

.method public getFee_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->fee_num:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->image:Ljava/util/List;

    return-object v0
.end method

.method public getIs_certification()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_certification:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_collect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_collect:I

    return v0
.end method

.method public getIs_exclusive_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_exclusive_vip:I

    return v0
.end method

.method public getIs_pay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_pay:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_vip:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getRead_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->read_num:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->relation:I

    return v0
.end method

.method public getTag_id()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->tag_id:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_post()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->total_post:I

    return v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_is_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->user_is_vip:I

    return v0
.end method

.method public getVip_unlock_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->vip_unlock_num:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->age:Ljava/lang/String;

    return-void
.end method

.method public setArea_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->area_id:Ljava/lang/String;

    return-void
.end method

.method public setArea_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->area_name:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBase64_txt(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->base64_txt:Ljava/util/List;

    return-void
.end method

.method public setComment_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->comment_num:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setFee_gold(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->fee_gold:Ljava/lang/String;

    return-void
.end method

.method public setFee_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->fee_num:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->image:Ljava/util/List;

    return-void
.end method

.method public setIs_certification(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_certification:Ljava/lang/String;

    return-void
.end method

.method public setIs_collect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_collect:I

    return-void
.end method

.method public setIs_exclusive_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_exclusive_vip:I

    return-void
.end method

.method public setIs_pay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_pay:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->is_vip:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->num:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->price:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->qq:Ljava/lang/String;

    return-void
.end method

.method public setRead_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->read_num:Ljava/lang/String;

    return-void
.end method

.method public setRelation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->relation:I

    return-void
.end method

.method public setTag_id(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->tag_id:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal_post(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->total_post:I

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setUser_is_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->user_is_vip:I

    return-void
.end method

.method public setVip_unlock_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->vip_unlock_num:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;->wechat:Ljava/lang/String;

    return-void
.end method
