.class public Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "VoiceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anchor_id:Ljava/lang/String;

.field public browses:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public thumb:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->thumb:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->browses:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy(Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->id:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->thumb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->getPlays()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->browses:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchor_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowses()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->browses:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchor_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->thumb:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->thumb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;->browses:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
