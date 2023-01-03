.class public Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;
.super Ljava/lang/Object;
.source "YXNovelDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioListBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album_price:Ljava/lang/String;

.field public default_play_times:Ljava/lang/String;

.field public default_view_times:Ljava/lang/String;

.field public down_url:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public hits:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isPay:I

.field public is_free:Ljava/lang/String;

.field public is_share:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public play_times:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public radio_album_list_id:Ljava/lang/String;

.field public radio_id:Ljava/lang/String;

.field public single_price:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public views:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->album_price:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_play_times:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_view_times:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->down_url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->duration:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->hits:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->img:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->isPay:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_free:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_share:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->play_times:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->price:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_album_list_id:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_id:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->single_price:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->url:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->views:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum_price()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->album_price:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_play_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_play_times:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_view_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_view_times:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->hits:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->isPay:I

    return v0
.end method

.method public getIs_free()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_free:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->play_times:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_album_list_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_album_list_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSingle_price()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->single_price:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->views:D

    return-wide v0
.end method

.method public setAlbum_price(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->album_price:Ljava/lang/String;

    return-void
.end method

.method public setDefault_play_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_play_times:Ljava/lang/String;

    return-void
.end method

.method public setDefault_view_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_view_times:Ljava/lang/String;

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->duration:Ljava/lang/String;

    return-void
.end method

.method public setHits(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->hits:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsPay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->isPay:I

    return-void
.end method

.method public setIs_free(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_free:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlay_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->play_times:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setRadio_album_list_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_album_list_id:Ljava/lang/String;

    return-void
.end method

.method public setRadio_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_id:Ljava/lang/String;

    return-void
.end method

.method public setSingle_price(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->single_price:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setViews(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->views:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->album_price:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_play_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->default_view_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->down_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->hits:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->isPay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_free:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->is_share:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->play_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->price:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_album_list_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->radio_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->single_price:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-wide v0, p0, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;->views:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
