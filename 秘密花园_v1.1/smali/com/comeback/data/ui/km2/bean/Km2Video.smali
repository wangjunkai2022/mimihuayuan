.class public Lcom/comeback/data/ui/km2/bean/Km2Video;
.super Lg/a/g0;
.source "Km2Video.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/w0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cover:Ljava/lang/String;

.field public gold:F

.field public height:I

.field public id:Ljava/lang/String;

.field public is_vip:Ljava/lang/String;

.field public m3u8_url:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public normal_url:Ljava/lang/String;

.field public praise_num:I

.field public thunder_download_tutorial_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public user_id:I

.field public vip_url:Ljava/lang/String;

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/km2/bean/Km2Video$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/km2/bean/Km2Video$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/km2/bean/Km2Video;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$title(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$praise_num(I)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$width(I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$height(I)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$cover(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$nickname(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$type(I)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$normal_url(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$m3u8_url(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$vip_url(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$thunder_download_tutorial_url(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$user_id(I)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$gold(F)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$is_vip(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$cover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGold()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$gold()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$height()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIs_vip()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$is_vip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3u8_url()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$m3u8_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$nickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormal_url()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$normal_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPraise_num()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$praise_num()I

    move-result v0

    return v0
.end method

.method public getThunder_download_tutorial_url()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$thunder_download_tutorial_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getUser_id()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$user_id()I

    move-result v0

    return v0
.end method

.method public getVip_url()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$vip_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$width()I

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public needGold()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$gold()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needVip()Z
    .locals 2

    const-string v0, "Bw=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$is_vip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$gold()F
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->gold:F

    return v0
.end method

.method public realmGet$height()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->height:I

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$is_vip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->is_vip:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$m3u8_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->m3u8_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$nickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$normal_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->normal_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$praise_num()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->praise_num:I

    return v0
.end method

.method public realmGet$thunder_download_tutorial_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->thunder_download_tutorial_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->type:I

    return v0
.end method

.method public realmGet$user_id()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->user_id:I

    return v0
.end method

.method public realmGet$vip_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->vip_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$width()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->width:I

    return v0
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->cover:Ljava/lang/String;

    return-void
.end method

.method public realmSet$gold(F)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->gold:F

    return-void
.end method

.method public realmSet$height(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->height:I

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$is_vip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->is_vip:Ljava/lang/String;

    return-void
.end method

.method public realmSet$m3u8_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->m3u8_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$nickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->nickname:Ljava/lang/String;

    return-void
.end method

.method public realmSet$normal_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->normal_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$praise_num(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->praise_num:I

    return-void
.end method

.method public realmSet$thunder_download_tutorial_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->thunder_download_tutorial_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->type:I

    return-void
.end method

.method public realmSet$user_id(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->user_id:I

    return-void
.end method

.method public realmSet$vip_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->vip_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$width(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km2/bean/Km2Video;->width:I

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$cover(Ljava/lang/String;)V

    return-void
.end method

.method public setGold(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$gold(F)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$height(I)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setIs_vip(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$is_vip(Ljava/lang/String;)V

    return-void
.end method

.method public setM3u8_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$m3u8_url(Ljava/lang/String;)V

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$nickname(Ljava/lang/String;)V

    return-void
.end method

.method public setNormal_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$normal_url(Ljava/lang/String;)V

    return-void
.end method

.method public setPraise_num(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$praise_num(I)V

    return-void
.end method

.method public setThunder_download_tutorial_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$thunder_download_tutorial_url(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$type(I)V

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$user_id(I)V

    return-void
.end method

.method public setVip_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$vip_url(Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmSet$width(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$praise_num()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$width()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$height()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$cover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$nickname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$normal_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$m3u8_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$vip_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$thunder_download_tutorial_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$user_id()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$gold()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 15
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->realmGet$is_vip()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
