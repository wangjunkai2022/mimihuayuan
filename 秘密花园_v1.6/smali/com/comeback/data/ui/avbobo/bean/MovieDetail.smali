.class public Lcom/comeback/data/ui/avbobo/bean/MovieDetail;
.super Lf/e/a/f/k;
.source "MovieDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/avbobo/bean/MovieDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public actors_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public big_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cover_full:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

.field public cover_thumbnails:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

.field public directors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public dislikes:I

.field public duration:I

.field public id:Ljava/lang/String;

.field public image_line_version:Ljava/lang/String;

.field public likes:I

.field public line_version:Ljava/lang/String;

.field public playCount:I

.field public resource_big_type:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public upTime:Ljava/lang/String;

.field public view:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->id:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->resource_big_type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->duration:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->likes:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->dislikes:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->upTime:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->playCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->line_version:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->image_line_version:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->view:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->big_types:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->tags:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getActors_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->actors_info:Ljava/util/List;

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getBig_types()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->big_types:Ljava/util/List;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;->get_$01()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;->get_$01()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;->getLocal()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;->get_$01()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;->getLocal()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->cover_full:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-object v0
.end method

.method public getCover_thumbnails()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->cover_thumbnails:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-object v0
.end method

.method public getDirectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->directors:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->dislikes:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_line_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->image_line_version:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->likes:I

    return v0
.end method

.method public getLine_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->line_version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RQcQSR1C"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->line_version:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->playCount:I

    return v0
.end method

.method public getResource_big_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->resource_big_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->types:Ljava/util/List;

    return-object v0
.end method

.method public getUpTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->upTime:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->view:Ljava/lang/String;

    return-object v0
.end method

.method public setActors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->actors:Ljava/util/List;

    return-void
.end method

.method public setActors_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->actors_info:Ljava/util/List;

    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->authors:Ljava/util/List;

    return-void
.end method

.method public setBig_types(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->big_types:Ljava/util/List;

    return-void
.end method

.method public setCover_full(Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->cover_full:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-void
.end method

.method public setCover_thumbnails(Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->cover_thumbnails:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-void
.end method

.method public setDirectors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->directors:Ljava/util/List;

    return-void
.end method

.method public setDislikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->dislikes:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage_line_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->image_line_version:Ljava/lang/String;

    return-void
.end method

.method public setLikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->likes:I

    return-void
.end method

.method public setLine_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->line_version:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->playCount:I

    return-void
.end method

.method public setResource_big_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->resource_big_type:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->title:Ljava/lang/String;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->types:Ljava/util/List;

    return-void
.end method

.method public setUpTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->upTime:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->view:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->resource_big_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->likes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->dislikes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->upTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->line_version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->image_line_version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->view:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->big_types:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;->types:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
