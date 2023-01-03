.class public Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xiami/bean/Category$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public categoryId:Ljava/lang/String;

.field public childGategoryType:Ljava/lang/String;

.field public childId:I

.field public childTitle:Ljava/lang/String;

.field public childType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childId:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childGategoryType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->categoryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getChildGategoryType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childGategoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getChildId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childId:I

    return v0
.end method

.method public getChildTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getChildType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childType:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setChildGategoryType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childGategoryType:Ljava/lang/String;

    return-void
.end method

.method public setChildId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childId:I

    return-void
.end method

.method public setChildTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childTitle:Ljava/lang/String;

    return-void
.end method

.method public setChildType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->childGategoryType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/Category$DataBean$InfoBean;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
