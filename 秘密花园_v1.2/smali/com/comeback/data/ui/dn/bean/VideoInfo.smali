.class public Lcom/comeback/data/ui/dn/bean/VideoInfo;
.super Lf/e/a/f/k;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/dn/bean/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ad_locate:Ljava/lang/String;

.field public ad_min_time:Ljava/lang/String;

.field public ad_type:Ljava/lang/String;

.field public ad_url:Ljava/lang/String;

.field public addtime:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public clicks:Ljava/lang/String;

.field public comments:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public downloads:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_ad:Ljava/lang/String;

.field public isattent:Ljava/lang/String;

.field public isdel:Ljava/lang/String;

.field public islike:Ljava/lang/String;

.field public isstep:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public likes:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public music_id:Ljava/lang/String;

.field public nopass_time:Ljava/lang/String;

.field public previewed_href:Ljava/lang/String;

.field public shares:Ljava/lang/String;

.field public show_val:Ljava/lang/String;

.field public steps:Ljava/lang/String;

.field public strighttype:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public thumb_s:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public userinfo:Lcom/comeback/data/ui/dn/bean/UserInfo;

.field public videoid:Ljava/lang/String;

.field public views:Ljava/lang/String;

.field public watch_ok:Ljava/lang/String;

.field public xiajia_reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/dn/bean/VideoInfo$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/dn/bean/VideoInfo$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_locate:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_min_time:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_type:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_url:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->addtime:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->city:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->clicks:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->comments:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->datetime:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->downloads:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->href:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->id:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->is_ad:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isattent:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isdel:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->islike:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isstep:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lat:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->likes:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lng:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->music_id:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->nopass_time:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->previewed_href:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->shares:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->show_val:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->steps:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->strighttype:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb_s:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->title:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->uid:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/comeback/data/ui/dn/bean/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/dn/bean/UserInfo;

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->userinfo:Lcom/comeback/data/ui/dn/bean/UserInfo;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->views:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->watch_ok:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->xiajia_reason:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->videoid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAd_locate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_locate:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_min_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_min_time:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_type:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_url:Ljava/lang/String;

    return-object v0
.end method

.method public getAddtime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->addtime:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getClicks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->clicks:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->downloads:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->is_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getIsattent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isattent:Ljava/lang/String;

    return-object v0
.end method

.method public getIsdel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isdel:Ljava/lang/String;

    return-object v0
.end method

.method public getIslike()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->islike:Ljava/lang/String;

    return-object v0
.end method

.method public getIsstep()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isstep:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->likes:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->music_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNopass_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->nopass_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewed_href()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->previewed_href:Ljava/lang/String;

    return-object v0
.end method

.method public getShares()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->shares:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->show_val:Ljava/lang/String;

    return-object v0
.end method

.method public getSteps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->steps:Ljava/lang/String;

    return-object v0
.end method

.method public getStrighttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->strighttype:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb_s:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserinfo()Lcom/comeback/data/ui/dn/bean/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->userinfo:Lcom/comeback/data/ui/dn/bean/UserInfo;

    return-object v0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->videoid:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->views:Ljava/lang/String;

    return-object v0
.end method

.method public getWatch_ok()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->watch_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getXiajia_reason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->xiajia_reason:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_locate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_locate:Ljava/lang/String;

    return-void
.end method

.method public setAd_min_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_min_time:Ljava/lang/String;

    return-void
.end method

.method public setAd_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_type:Ljava/lang/String;

    return-void
.end method

.method public setAd_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_url:Ljava/lang/String;

    return-void
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->addtime:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setClicks(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->clicks:Ljava/lang/String;

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->comments:Ljava/lang/String;

    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->datetime:Ljava/lang/String;

    return-void
.end method

.method public setDownloads(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->downloads:Ljava/lang/String;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->href:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->is_ad:Ljava/lang/String;

    return-void
.end method

.method public setIsattent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isattent:Ljava/lang/String;

    return-void
.end method

.method public setIsdel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isdel:Ljava/lang/String;

    return-void
.end method

.method public setIslike(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->islike:Ljava/lang/String;

    return-void
.end method

.method public setIsstep(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isstep:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLikes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->likes:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lng:Ljava/lang/String;

    return-void
.end method

.method public setMusic_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->music_id:Ljava/lang/String;

    return-void
.end method

.method public setNopass_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->nopass_time:Ljava/lang/String;

    return-void
.end method

.method public setPreviewed_href(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->previewed_href:Ljava/lang/String;

    return-void
.end method

.method public setShares(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->shares:Ljava/lang/String;

    return-void
.end method

.method public setShow_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->show_val:Ljava/lang/String;

    return-void
.end method

.method public setSteps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->steps:Ljava/lang/String;

    return-void
.end method

.method public setStrighttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->strighttype:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setThumb_s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb_s:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUserinfo(Lcom/comeback/data/ui/dn/bean/UserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->userinfo:Lcom/comeback/data/ui/dn/bean/UserInfo;

    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->videoid:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->views:Ljava/lang/String;

    return-void
.end method

.method public setWatch_ok(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->watch_ok:Ljava/lang/String;

    return-void
.end method

.method public setXiajia_reason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->xiajia_reason:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_locate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_min_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->ad_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->addtime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->clicks:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->comments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->datetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->downloads:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->href:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->is_ad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isattent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isdel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->islike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->isstep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->likes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->lng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->music_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->nopass_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->previewed_href:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->shares:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->show_val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->steps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->strighttype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->thumb_s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->userinfo:Lcom/comeback/data/ui/dn/bean/UserInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget-object p2, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->views:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->watch_ok:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->xiajia_reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/comeback/data/ui/dn/bean/VideoInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
