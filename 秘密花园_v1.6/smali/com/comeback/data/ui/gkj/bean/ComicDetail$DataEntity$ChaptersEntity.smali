.class public Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;
.super Ljava/lang/Object;
.source "ComicDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChaptersEntity"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public index:I

.field public name:Ljava/lang/String;

.field public playIs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->playIs:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->index:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->id:I

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
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayIs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->playIs:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlayIs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->playIs:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->playIs:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
