.class public Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;
.super Ljava/lang/Object;
.source "NvshenBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllJCoversBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public horizontal_large:Ljava/lang/String;

.field public horizontal_small:Ljava/lang/String;

.field public vertical_large:Ljava/lang/String;

.field public vertical_small:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_large:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_small:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_small:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_large:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal_large()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_large:Ljava/lang/String;

    return-object v0
.end method

.method public getHorizontal_small()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_small:Ljava/lang/String;

    return-object v0
.end method

.method public getVertical_large()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_large:Ljava/lang/String;

    return-object v0
.end method

.method public getVertical_small()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_small:Ljava/lang/String;

    return-object v0
.end method

.method public setHorizontal_large(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_large:Ljava/lang/String;

    return-void
.end method

.method public setHorizontal_small(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_small:Ljava/lang/String;

    return-void
.end method

.method public setVertical_large(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_large:Ljava/lang/String;

    return-void
.end method

.method public setVertical_small(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_small:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_large:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_small:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->horizontal_small:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AllJCoversBean;->vertical_large:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
