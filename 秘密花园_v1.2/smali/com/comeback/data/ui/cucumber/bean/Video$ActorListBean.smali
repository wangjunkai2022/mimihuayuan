.class public Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActorListBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public nameCn:Ljava/lang/String;

.field public nameEn:Ljava/lang/String;

.field public nameJpn:Ljava/lang/String;

.field public photoUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->id:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameCn:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameEn:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameJpn:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->photoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->id:I

    return v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameJpn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameJpn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->id:I

    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameCn:Ljava/lang/String;

    return-void
.end method

.method public setNameEn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameEn:Ljava/lang/String;

    return-void
.end method

.method public setNameJpn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameJpn:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameCn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameEn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->nameJpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->photoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
