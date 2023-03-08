.class public Lcom/comeback/data/ui/ds/bean/DsItemBean;
.super Lg/a/g0;
.source "DsItemBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/r0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public auther:Ljava/lang/String;

.field public cjid:Ljava/lang/String;

.field public cjname:Ljava/lang/String;

.field public cjstatus:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public create_time:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public diyu_id:Ljava/lang/String;

.field public duzhequn_id:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public isfree:Ljava/lang/String;

.field public ishot:Ljava/lang/String;

.field public isjingpin:Ljava/lang/String;

.field public isnew:Ljava/lang/String;

.field public issole:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field public lanmu_id:Ljava/lang/String;

.field public last_chapter:Ljava/lang/String;

.field public last_chapter_title:Ljava/lang/String;

.field public mark:Ljava/lang/String;

.field public mhstatus:Ljava/lang/String;

.field public pingfen:Ljava/lang/String;

.field public searchnums:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public ticai_id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public tjswitch:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public update_time:Ljava/lang/String;

.field public view:Ljava/lang/String;

.field public vipcanread:Ljava/lang/String;

.field public xianmian:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/ds/bean/DsItemBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$title(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$lanmu_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$create_time(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$update_time(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$sort(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$status(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$view(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$image(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$type(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$auther(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$desc(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$mark(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$ticai_id(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$duzhequn_id(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$diyu_id(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$mhstatus(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$tjswitch(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isfree(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjid(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjstatus(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjname(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$keyword(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$last_chapter_title(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$searchnums(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$last_chapter(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isjingpin(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$xianmian(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cover(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$ishot(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$issole(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isnew(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$h(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$vipcanread(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$pingfen(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$contentType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuther()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$auther()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCjid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCjname()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCjstatus()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$contentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->l0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$create_time()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$desc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiyu_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuzhequn_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullImage()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->l0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getH()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsfree()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isfree()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIshot()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$ishot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsjingpin()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsnew()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isnew()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssole()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$issole()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$keyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanmu_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLast_chapter()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLast_chapter_title()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$mark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMhstatus()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMhstatusString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0szvg9Dg"

    goto :goto_0

    :cond_0
    const-string v0, "3939jNbO"

    :goto_0
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPingfen()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchnums()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$sort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicai_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTjswitch()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$update_time()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$view()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipcanread()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXianmian()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$auther()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->auther:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cjid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjid:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cjname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjname:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cjstatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjstatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$create_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$diyu_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->diyu_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$duzhequn_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->duzhequn_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->h:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isfree()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isfree:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ishot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->ishot:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isjingpin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isjingpin:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isnew()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isnew:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$issole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->issole:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$keyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lanmu_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->lanmu_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$last_chapter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->last_chapter:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$last_chapter_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->last_chapter_title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mhstatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->mhstatus:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$pingfen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->pingfen:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$searchnums()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->searchnums:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$sort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ticai_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->ticai_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tjswitch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->tjswitch:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$update_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$view()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->view:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$vipcanread()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->vipcanread:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$xianmian()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->xianmian:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$auther(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->auther:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cjid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjid:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cjname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjname:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cjstatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cjstatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->contentType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public realmSet$create_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->create_time:Ljava/lang/String;

    return-void
.end method

.method public realmSet$desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public realmSet$diyu_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->diyu_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$duzhequn_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->duzhequn_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->h:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isfree(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isfree:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ishot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->ishot:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isjingpin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isjingpin:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isnew(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->isnew:Ljava/lang/String;

    return-void
.end method

.method public realmSet$issole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->issole:Ljava/lang/String;

    return-void
.end method

.method public realmSet$keyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lanmu_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->lanmu_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$last_chapter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->last_chapter:Ljava/lang/String;

    return-void
.end method

.method public realmSet$last_chapter_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->last_chapter_title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->mark:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mhstatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->mhstatus:Ljava/lang/String;

    return-void
.end method

.method public realmSet$pingfen(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->pingfen:Ljava/lang/String;

    return-void
.end method

.method public realmSet$searchnums(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->searchnums:Ljava/lang/String;

    return-void
.end method

.method public realmSet$sort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->sort:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ticai_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->ticai_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tjswitch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->tjswitch:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$update_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->update_time:Ljava/lang/String;

    return-void
.end method

.method public realmSet$view(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->view:Ljava/lang/String;

    return-void
.end method

.method public realmSet$vipcanread(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->vipcanread:Ljava/lang/String;

    return-void
.end method

.method public realmSet$xianmian(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;->xianmian:Ljava/lang/String;

    return-void
.end method

.method public setAuther(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$auther(Ljava/lang/String;)V

    return-void
.end method

.method public setCjid(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjid(Ljava/lang/String;)V

    return-void
.end method

.method public setCjname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjname(Ljava/lang/String;)V

    return-void
.end method

.method public setCjstatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cjstatus(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$contentType(Ljava/lang/String;)V

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$cover(Ljava/lang/String;)V

    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$create_time(Ljava/lang/String;)V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$desc(Ljava/lang/String;)V

    return-void
.end method

.method public setDiyu_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$diyu_id(Ljava/lang/String;)V

    return-void
.end method

.method public setDuzhequn_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$duzhequn_id(Ljava/lang/String;)V

    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$h(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$image(Ljava/lang/String;)V

    return-void
.end method

.method public setIsfree(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isfree(Ljava/lang/String;)V

    return-void
.end method

.method public setIshot(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$ishot(Ljava/lang/String;)V

    return-void
.end method

.method public setIsjingpin(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isjingpin(Ljava/lang/String;)V

    return-void
.end method

.method public setIsnew(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$isnew(Ljava/lang/String;)V

    return-void
.end method

.method public setIssole(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$issole(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$keyword(Ljava/lang/String;)V

    return-void
.end method

.method public setLanmu_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$lanmu_id(Ljava/lang/String;)V

    return-void
.end method

.method public setLast_chapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$last_chapter(Ljava/lang/String;)V

    return-void
.end method

.method public setLast_chapter_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$last_chapter_title(Ljava/lang/String;)V

    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$mark(Ljava/lang/String;)V

    return-void
.end method

.method public setMhstatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$mhstatus(Ljava/lang/String;)V

    return-void
.end method

.method public setPingfen(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$pingfen(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchnums(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$searchnums(Ljava/lang/String;)V

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$sort(Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$status(Ljava/lang/String;)V

    return-void
.end method

.method public setTicai_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$ticai_id(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setTjswitch(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$tjswitch(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$type(Ljava/lang/String;)V

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$update_time(Ljava/lang/String;)V

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$view(Ljava/lang/String;)V

    return-void
.end method

.method public setVipcanread(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$vipcanread(Ljava/lang/String;)V

    return-void
.end method

.method public setXianmian(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmSet$xianmian(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$create_time()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$update_time()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$sort()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$status()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$view()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$image()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$auther()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$desc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$mark()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isfree()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cjname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$keyword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$searchnums()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$xianmian()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$cover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$ishot()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$issole()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$isnew()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$pingfen()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->realmGet$contentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
