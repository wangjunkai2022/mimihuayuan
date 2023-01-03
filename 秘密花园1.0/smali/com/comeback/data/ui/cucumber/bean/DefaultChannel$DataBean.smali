.class public Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;
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
            "Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public add:Ljava/lang/Object;

.field public channelType:I

.field public hasSelection:Z

.field public id:I

.field public name:Ljava/lang/String;

.field public parentModule:I

.field public showType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->channelType:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->hasSelection:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->id:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->parentModule:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->showType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->add:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->channelType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentModule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->parentModule:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->showType:I

    return v0
.end method

.method public isHasSelection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->hasSelection:Z

    return v0
.end method

.method public setAdd(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->add:Ljava/lang/Object;

    return-void
.end method

.method public setChannelType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->channelType:I

    return-void
.end method

.method public setHasSelection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->hasSelection:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentModule(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->parentModule:I

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->showType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->channelType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->hasSelection:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->parentModule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/DefaultChannel$DataBean;->showType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
