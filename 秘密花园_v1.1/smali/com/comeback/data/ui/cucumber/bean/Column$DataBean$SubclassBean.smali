.class public Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/Column$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubclassBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clsId:Ljava/lang/Object;

.field public intro:Ljava/lang/String;

.field public lastUpdateTime:Ljava/lang/String;

.field public navCls:I

.field public navId:I

.field public navImage:Ljava/lang/String;

.field public navLink:Ljava/lang/String;

.field public navName:Ljava/lang/String;

.field public navOrder:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->intro:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->lastUpdateTime:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navCls:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navId:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navImage:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navLink:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navOrder:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClsId()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->clsId:Ljava/lang/Object;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->lastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNavCls()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navCls:I

    return v0
.end method

.method public getNavId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navId:I

    return v0
.end method

.method public getNavImage()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navLink:Ljava/lang/String;

    return-object v0
.end method

.method public getNavName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navName:Ljava/lang/String;

    return-object v0
.end method

.method public getNavOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navOrder:I

    return v0
.end method

.method public setClsId(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->clsId:Ljava/lang/Object;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->lastUpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setNavCls(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navCls:I

    return-void
.end method

.method public setNavId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navId:I

    return-void
.end method

.method public setNavImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navImage:Ljava/lang/String;

    return-void
.end method

.method public setNavLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navLink:Ljava/lang/String;

    return-void
.end method

.method public setNavName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navName:Ljava/lang/String;

    return-void
.end method

.method public setNavOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navOrder:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->lastUpdateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navCls:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;->navOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
