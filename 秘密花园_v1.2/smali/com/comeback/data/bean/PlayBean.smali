.class public Lcom/comeback/data/bean/PlayBean;
.super Lf/e/a/f/k;
.source "PlayBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/bean/PlayBean;",
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
    new-instance v0, Lcom/comeback/data/bean/PlayBean$a;

    invoke-direct {v0}, Lcom/comeback/data/bean/PlayBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/bean/PlayBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->id:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->resource_big_type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/bean/PlayBean;->duration:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/bean/PlayBean;->likes:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/bean/PlayBean;->dislikes:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->upTime:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/bean/PlayBean;->playCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->line_version:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->image_line_version:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->view:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->big_types:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/bean/PlayBean;->tags:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->types:Ljava/util/List;

    return-void
.end method

.method public static getType()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WjIu"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VgwHFgQaXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v2

    return v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->actors:Ljava/util/List;

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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->authors:Ljava/util/List;

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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->big_types:Ljava/util/List;

    return-object v0
.end method

.method public getCover_full()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->cover_full:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-object v0
.end method

.method public getCover_thumbnails()Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->cover_thumbnails:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->directors:Ljava/util/List;

    return-object v0
.end method

.method public getDislikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/bean/PlayBean;->dislikes:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/bean/PlayBean;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_line_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->image_line_version:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/bean/PlayBean;->likes:I

    return v0
.end method

.method public getLine_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->line_version:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/bean/PlayBean;->playCount:I

    return v0
.end method

.method public getResource_big_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->resource_big_type:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->title:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->types:Ljava/util/List;

    return-object v0
.end method

.method public getUpTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->upTime:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/bean/PlayBean;->view:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->actors:Ljava/util/List;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->authors:Ljava/util/List;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->big_types:Ljava/util/List;

    return-void
.end method

.method public setCover_full(Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->cover_full:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

    return-void
.end method

.method public setCover_thumbnails(Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->cover_thumbnails:Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->directors:Ljava/util/List;

    return-void
.end method

.method public setDislikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/bean/PlayBean;->dislikes:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/bean/PlayBean;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage_line_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->image_line_version:Ljava/lang/String;

    return-void
.end method

.method public setLikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/bean/PlayBean;->likes:I

    return-void
.end method

.method public setLine_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->line_version:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/bean/PlayBean;->playCount:I

    return-void
.end method

.method public setResource_big_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->resource_big_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->types:Ljava/util/List;

    return-void
.end method

.method public setUpTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->upTime:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/bean/PlayBean;->view:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->resource_big_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/comeback/data/bean/PlayBean;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/comeback/data/bean/PlayBean;->likes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/bean/PlayBean;->dislikes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->upTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/comeback/data/bean/PlayBean;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->line_version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->image_line_version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->view:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->big_types:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/bean/PlayBean;->types:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
