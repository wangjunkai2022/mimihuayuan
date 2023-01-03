.class public Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;
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
    name = "AddressBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _$1080P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "1080P"
    .end annotation
.end field

.field public _$240P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "240P"
    .end annotation
.end field

.field public _$360P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "360P"
    .end annotation
.end field

.field public _$480P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "480P"
    .end annotation
.end field

.field public _$720P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "720P"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$1080P:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$720P:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$360P:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$240P:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$480P:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$1080P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$720P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$480P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$360P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$240P:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get_$1080P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$1080P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$240P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$240P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$360P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$360P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$480P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$480P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$720P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$720P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set_$1080P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$1080P:Ljava/lang/String;

    return-void
.end method

.method public set_$240P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$240P:Ljava/lang/String;

    return-void
.end method

.method public set_$360P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$360P:Ljava/lang/String;

    return-void
.end method

.method public set_$480P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$480P:Ljava/lang/String;

    return-void
.end method

.method public set_$720P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$720P:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$1080P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$720P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$360P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$240P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/NvshenBean$Video$AddressBean;->_$480P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
