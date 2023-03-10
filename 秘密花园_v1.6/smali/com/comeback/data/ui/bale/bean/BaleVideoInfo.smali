.class public Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;
.super Lf/e/a/f/k;
.source "BaleVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public artist:Ljava/lang/String;

.field public barrage:I

.field public code:Ljava/lang/String;

.field public comments:I

.field public coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

.field public created_at:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public downloads:I

.field public id:I

.field public image:Ljava/lang/String;

.field public isAd:Z

.field public is_recommend:I

.field public operator:Ljava/lang/Object;

.field public sort:I

.field public status:I

.field public sync_status:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public ts_time:I

.field public updated_at:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public views:I

.field public vip_only:I

.field public zans:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->id:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->artist:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->code:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->url:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->desc:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->image:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sort:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->tag:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->views:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->zans:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->downloads:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->comments:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->barrage:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->vip_only:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->is_recommend:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->created_at:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->updated_at:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->status:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sync_status:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->ts_time:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->isAd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBarrage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->barrage:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->comments:I

    return v0
.end method

.method public getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->downloads:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_recommend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->is_recommend:I

    return v0
.end method

.method public getOperator()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->operator:Ljava/lang/Object;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sort:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->status:I

    return v0
.end method

.method public getSync_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sync_status:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTs_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->ts_time:I

    return v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->views:I

    div-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "09rk"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViews()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->views:I

    return v0
.end method

.method public getVip_only()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->vip_only:I

    return v0
.end method

.method public getZans()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->zans:I

    return v0
.end method

.method public isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->isAd:Z

    return v0
.end method

.method public setAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->isAd:Z

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setBarrage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->barrage:I

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->code:Ljava/lang/String;

    return-void
.end method

.method public setComments(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->comments:I

    return-void
.end method

.method public setCoverBase64(Lcom/comeback/data/ui/cm/bean/CoverBase64;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDownloads(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->downloads:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->image:Ljava/lang/String;

    return-void
.end method

.method public setIs_recommend(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->is_recommend:I

    return-void
.end method

.method public setOperator(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->operator:Ljava/lang/Object;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sort:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->status:I

    return-void
.end method

.method public setSync_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sync_status:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTs_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->ts_time:I

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setViews(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->views:I

    return-void
.end method

.method public setVip_only(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->vip_only:I

    return-void
.end method

.method public setZans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->zans:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->views:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->zans:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->downloads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->comments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->barrage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->vip_only:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->is_recommend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->created_at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->updated_at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->sync_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->ts_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-boolean v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->isAd:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->coverbase64:Lcom/comeback/data/ui/cm/bean/CoverBase64;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
