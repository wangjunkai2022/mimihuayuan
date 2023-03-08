.class public Lcom/comeback/data/ui/slf/bean/SLFItemBean;
.super Lg/a/g0;
.source "SLFItemBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/e1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/slf/bean/SLFItemBean$CategoryBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/slf/bean/SLFItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;

.field public category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/SLFItemBean$CategoryBean;",
            ">;"
        }
    .end annotation
.end field

.field public click:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public favorite:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isVideo:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public point:I

.field public sale:I

.field public status:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public tagStr:Ljava/lang/String;

.field public type:I

.field public updateTime:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/slf/bean/SLFItemBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/a/g0;-><init>()V

    instance-of v0, p0, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realm$injectObjectContext()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$click(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$favorite(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$img(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$sale(I)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$updateTime(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$description(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$summary(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$point(I)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$status(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$type(I)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$tagStr(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$author(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$isVideo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$author()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/SLFItemBean$CategoryBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->category:Ljava/util/List;

    return-object v0
.end method

.method public getClick()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F4TPxYLrvNvc3Q=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorite()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$favorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F4bZ3o3nj9vk6Q=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$img()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsVideo()Z
    .locals 2

    const-string v0, "Tg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$isVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$point()I

    move-result v0

    return v0
.end method

.method public getSale()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$sale()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$summary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagStr()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$tagStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$updateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$author()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$click()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->click:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$favorite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->favorite:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$img()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isVideo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->isVideo:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$point()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->point:I

    return v0
.end method

.method public realmGet$sale()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->sale:I

    return v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$summary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tagStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->tagStr:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->type:I

    return v0
.end method

.method public realmGet$updateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$author(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->author:Ljava/lang/String;

    return-void
.end method

.method public realmSet$click(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->click:Ljava/lang/String;

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$favorite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->favorite:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$img(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->img:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isVideo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->isVideo:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$point(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->point:I

    return-void
.end method

.method public realmSet$sale(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->sale:I

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$summary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->summary:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tagStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->tagStr:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->type:I

    return-void
.end method

.method public realmSet$updateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$author(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/SLFItemBean$CategoryBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->category:Ljava/util/List;

    return-void
.end method

.method public setClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$click(Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$description(Ljava/lang/String;)V

    return-void
.end method

.method public setFavorite(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$favorite(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$img(Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$isVideo(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setPoint(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$point(I)V

    return-void
.end method

.method public setSale(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$sale(I)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$status(Ljava/lang/String;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$summary(Ljava/lang/String;)V

    return-void
.end method

.method public setTagStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$tagStr(Ljava/lang/String;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$type(I)V

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmSet$updateTime(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$click()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$favorite()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$img()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$sale()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$updateTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$description()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$summary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$point()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$status()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$tagStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$author()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->realmGet$isVideo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
