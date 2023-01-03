.class public Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;
.super Lf/e/a/f/j;
.source "RecordsEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public anonymous:Z

.field public cityCode:I

.field public cityCodeReadable:Ljava/lang/String;

.field public consumeAllNight:Ljava/lang/String;

.field public consumeLv:Ljava/lang/String;

.field public coverPicture:Ljava/lang/String;

.field public createdAt:J

.field public desc:Ljava/lang/String;

.field public environment:Ljava/lang/String;

.field public girlAge:Ljava/lang/String;

.field public girlBeauty:Ljava/lang/String;

.field public girlNum:Ljava/lang/String;

.field public guestView:Ljava/lang/String;

.field public id:I

.field public ip:Ljava/lang/String;

.field public isExpired:Z

.field public isFavorite:Ljava/lang/String;

.field public isRecommend:Z

.field public phone:Ljava/lang/String;

.field public picture:Ljava/lang/String;

.field public publishedAt:J

.field public publisher:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public score:I

.field public serveList:Ljava/lang/String;

.field public serveLv:Ljava/lang/String;

.field public source:I

.field public status:I

.field public tags:Ljava/lang/String;

.field public telegram:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public userId:I

.field public userName:Ljava/lang/String;

.field public userReputation:Ljava/lang/String;

.field public userStatus:Ljava/lang/String;

.field public userView:Ljava/lang/String;

.field public viewCount:I

.field public vipProfileStatus:Ljava/lang/String;

.field public vipView:Ljava/lang/String;

.field public wechat:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isRecommend:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeLv:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userStatus:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlAge:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCode:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->source:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipProfileStatus:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->type:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->title:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlNum:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userReputation:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->guestView:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userView:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->score:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->createdAt:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlBeauty:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->id:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->viewCount:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->qq:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->address:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publishedAt:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveList:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->ip:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->wechat:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->telegram:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userId:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeAllNight:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->tags:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->environment:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->phone:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->anonymous:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publisher:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveLv:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isExpired:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipView:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->status:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->desc:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isFavorite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCode:I

    return v0
.end method

.method public getCityCodeReadable()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCodeReadable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    iget v1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCodeReadable:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCodeReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeAllNight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeAllNight:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeLv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeLv:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverPicture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_picture()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwAVBoWCgMODBkaGh5EGldVHElEDhseFhlSTQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->createdAt:J

    return-wide v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getGirlAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlAge:Ljava/lang/String;

    return-object v0
.end method

.method public getGirlBeauty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlBeauty:Ljava/lang/String;

    return-object v0
.end method

.method public getGirlNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlNum:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->guestView:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->id:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isFavorite:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureList()Ljava/util/List;
    .locals 8
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
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    const-string v2, "Gw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, "XxYXFA=="

    .line 5
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "GE0="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XxYXFFE="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v6, "XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"

    .line 7
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lf/e/a/k/b;->n0:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 9
    :cond_1
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XxYXFBhJFhwAVBoWCgMODBkaGh5EGldVHElEDhseFhlSTQ=="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPublishedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publishedAt:J

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->score:I

    return v0
.end method

.method public getServeList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveList:Ljava/lang/String;

    return-object v0
.end method

.method public getServeLv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveLv:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->source:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->status:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTelegram()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->telegram:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->type:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserReputation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userReputation:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userView:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->viewCount:I

    return v0
.end method

.method public getVipProfileStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipProfileStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getVipView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipView:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->anonymous:Z

    return v0
.end method

.method public isIsExpired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isExpired:Z

    return v0
.end method

.method public isIsRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isRecommend:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->address:Ljava/lang/String;

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->anonymous:Z

    return-void
.end method

.method public setCityCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCode:I

    return-void
.end method

.method public setConsumeAllNight(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeAllNight:Ljava/lang/String;

    return-void
.end method

.method public setConsumeLv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeLv:Ljava/lang/String;

    return-void
.end method

.method public setCoverPicture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->createdAt:J

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->environment:Ljava/lang/String;

    return-void
.end method

.method public setGirlAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlAge:Ljava/lang/String;

    return-void
.end method

.method public setGirlBeauty(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlBeauty:Ljava/lang/String;

    return-void
.end method

.method public setGirlNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlNum:Ljava/lang/String;

    return-void
.end method

.method public setGuestView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->guestView:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->id:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIsExpired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isExpired:Z

    return-void
.end method

.method public setIsFavorite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isFavorite:Ljava/lang/String;

    return-void
.end method

.method public setIsRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isRecommend:Z

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    return-void
.end method

.method public setPublishedAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publishedAt:J

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publisher:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->qq:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->score:I

    return-void
.end method

.method public setServeList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveList:Ljava/lang/String;

    return-void
.end method

.method public setServeLv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveLv:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->source:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->status:I

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->tags:Ljava/lang/String;

    return-void
.end method

.method public setTelegram(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->telegram:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->type:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserReputation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userReputation:Ljava/lang/String;

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userStatus:Ljava/lang/String;

    return-void
.end method

.method public setUserView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userView:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->viewCount:I

    return-void
.end method

.method public setVipProfileStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipProfileStatus:Ljava/lang/String;

    return-void
.end method

.method public setVipView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipView:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->wechat:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isRecommend:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeLv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->coverPicture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlAge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->cityCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->source:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipProfileStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userReputation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->guestView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->score:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-wide v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->createdAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->girlBeauty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->viewCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->qq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-wide v0, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publishedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->wechat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->telegram:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->consumeAllNight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->picture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->tags:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->environment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-boolean p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->anonymous:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->publisher:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->serveLv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-boolean p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isExpired:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->vipView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/RecordsEntity;->isFavorite:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
