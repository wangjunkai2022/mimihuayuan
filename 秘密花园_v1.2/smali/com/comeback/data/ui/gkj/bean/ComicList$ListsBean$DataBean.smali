.class public Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;
.super Ljava/lang/Object;
.source "ComicList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;
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
            "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banner_oss_filename:Ljava/lang/Object;

.field public cover_url:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public deleted_at:Ljava/lang/Object;

.field public dump_status:I

.field public dump_week:I

.field public global_type:Ljava/lang/String;

.field public height:I

.field public hot:I

.field public id:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public is_new:I

.field public is_pay:I

.field public is_recommend:I

.field public resource_total:I

.field public score:Ljava/lang/String;

.field public status:I

.field public title:Ljava/lang/String;

.field public updated_at:Ljava/lang/String;

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->width:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->height:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->intro:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_status:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_week:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->score:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->status:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_pay:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->hot:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->created_at:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getComic_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getGlobal_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getGlobal_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getCover_oss_filename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getGlobal_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getCover_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getDump_status()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_status:I

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIntro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->intro:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getDump_week()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_week:I

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->score:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->status:I

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIs_pay()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_pay:I

    .line 12
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIs_new()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getIs_recommend()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getHot()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->hot:I

    .line 15
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getResource_total()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    .line 16
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getCreated_at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->created_at:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;->getUpdated_at()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->updated_at:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBanner_oss_filename()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->banner_oss_filename:Ljava/lang/Object;

    return-object v0
.end method

.method public getCover_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted_at()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->deleted_at:Ljava/lang/Object;

    return-object v0
.end method

.method public getDump_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_status:I

    return v0
.end method

.method public getDump_week()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_week:I

    return v0
.end method

.method public getGlobal_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->height:I

    return v0
.end method

.method public getHot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->hot:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    return v0
.end method

.method public getIs_pay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_pay:I

    return v0
.end method

.method public getIs_recommend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    return v0
.end method

.method public getResource_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    return v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->score:Ljava/lang/String;

    const-string v2, "0url"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fnXgv3D0bTA"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "383+"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->width:I

    return v0
.end method

.method public isNew()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRecommend()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBanner_oss_filename(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->banner_oss_filename:Ljava/lang/Object;

    return-void
.end method

.method public setCover_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDeleted_at(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->deleted_at:Ljava/lang/Object;

    return-void
.end method

.method public setDump_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_status:I

    return-void
.end method

.method public setDump_week(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_week:I

    return-void
.end method

.method public setGlobal_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->height:I

    return-void
.end method

.method public setHot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->hot:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setIs_new(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    return-void
.end method

.method public setIs_pay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_pay:I

    return-void
.end method

.method public setIs_recommend(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    return-void
.end method

.method public setResource_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->global_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->cover_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->dump_week:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->score:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_pay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_new:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->is_recommend:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->hot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->resource_total:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->created_at:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->updated_at:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
