.class public Lcom/comeback/data/ui/hm/bean/ItemInfo;
.super Lg/a/g0;
.source "ItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/u0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/hm/bean/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public update:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hm/bean/ItemInfo$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$type(I)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$image(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$title(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$desc(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$author(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$update(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$author()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$desc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$update()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$type()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public realmGet$author()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->type:I

    return v0
.end method

.method public realmGet$update()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->update:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$author(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public realmSet$desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->type:I

    return-void
.end method

.method public realmSet$update(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ItemInfo;->update:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$author(Ljava/lang/String;)V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$desc(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "XxYXFA=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$image(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/j/q/f/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lf/e/a/j/q/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lf/e/a/j/q/f/a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$image(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$type(I)V

    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmSet$update(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$image()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$desc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$author()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->realmGet$update()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
