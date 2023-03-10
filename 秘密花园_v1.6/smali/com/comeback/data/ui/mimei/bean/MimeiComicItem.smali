.class public Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;
.super Lg/a/g0;
.source "MimeiComicItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/d1;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apitimestamp:Ljava/lang/String;

.field public author:Ljava/lang/Object;

.field public chapter:Ljava/lang/Object;

.field public cover_path:Ljava/lang/String;

.field public end:Ljava/lang/String;

.field public full_cover_path:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public last_page:Ljava/lang/Object;

.field public max_chapter:I

.field public max_volume:I

.field public name:Ljava/lang/String;

.field public opened_at:Ljava/lang/String;

.field public ori_series:Ljava/lang/Object;

.field public pages:I

.field public season:Ljava/lang/Object;

.field public series:Ljava/lang/String;

.field public series_hash_key:Ljava/lang/String;

.field public series_number:I

.field public series_stamp:Ljava/lang/String;

.field public tag:Ljava/lang/Object;

.field public type:I

.field public view_count:I

.field public volume:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_hash_key(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_stamp(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$cover_path(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$full_cover_path(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$view_count(I)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$pages(I)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$type(I)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$max_chapter(I)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$max_volume(I)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$end(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$apitimestamp(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_number(I)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$opened_at(Ljava/lang/String;)V

    return-void
.end method

.method private getPageString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getPages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0t7DgfDN"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApitimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$apitimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->author:Ljava/lang/Object;

    return-object v0
.end method

.method public getChapter()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->chapter:Ljava/lang/Object;

    return-object v0
.end method

.method public getChapterState()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getPageString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->isEnd()Z

    move-result v0

    const-string v1, "0MnD"

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0ufS"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3939jNbO0bTA"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCover_path()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$cover_path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$end()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFull_cover_path()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$full_cover_path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLast_page()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->last_page:Ljava/lang/Object;

    return-object v0
.end method

.method public getMax_chapter()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result v0

    return v0
.end method

.method public getMax_volume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_volume()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpened_at()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$opened_at()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOri_series()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->ori_series:Ljava/lang/Object;

    return-object v0
.end method

.method public getPages()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$pages()I

    move-result v0

    return v0
.end method

.method public getSeason()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->season:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeries()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeries_hash_key()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_hash_key()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeries_number()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_number()I

    move-result v0

    return v0
.end method

.method public getSeries_stamp()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_stamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public getView_count()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$view_count()I

    move-result v0

    return v0
.end method

.method public getVolume()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->volume:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "bg=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$end()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public realmGet$apitimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->apitimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cover_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->cover_path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$end()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->end:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$full_cover_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->full_cover_path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$max_chapter()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->max_chapter:I

    return v0
.end method

.method public realmGet$max_volume()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->max_volume:I

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$opened_at()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->opened_at:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$pages()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->pages:I

    return v0
.end method

.method public realmGet$series()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$series_hash_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_hash_key:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$series_number()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_number:I

    return v0
.end method

.method public realmGet$series_stamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->type:I

    return v0
.end method

.method public realmGet$view_count()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->view_count:I

    return v0
.end method

.method public realmSet$apitimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->apitimestamp:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cover_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->cover_path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$end(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->end:Ljava/lang/String;

    return-void
.end method

.method public realmSet$full_cover_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->full_cover_path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$max_chapter(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->max_chapter:I

    return-void
.end method

.method public realmSet$max_volume(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->max_volume:I

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$opened_at(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->opened_at:Ljava/lang/String;

    return-void
.end method

.method public realmSet$pages(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->pages:I

    return-void
.end method

.method public realmSet$series(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series:Ljava/lang/String;

    return-void
.end method

.method public realmSet$series_hash_key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_hash_key:Ljava/lang/String;

    return-void
.end method

.method public realmSet$series_number(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_number:I

    return-void
.end method

.method public realmSet$series_stamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->series_stamp:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->type:I

    return-void
.end method

.method public realmSet$view_count(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->view_count:I

    return-void
.end method

.method public setApitimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$apitimestamp(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthor(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->author:Ljava/lang/Object;

    return-void
.end method

.method public setChapter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->chapter:Ljava/lang/Object;

    return-void
.end method

.method public setCover_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$cover_path(Ljava/lang/String;)V

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$end(Ljava/lang/String;)V

    return-void
.end method

.method public setFull_cover_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$full_cover_path(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setLast_page(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->last_page:Ljava/lang/Object;

    return-void
.end method

.method public setMax_chapter(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$max_chapter(I)V

    return-void
.end method

.method public setMax_volume(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$max_volume(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setOpened_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$opened_at(Ljava/lang/String;)V

    return-void
.end method

.method public setOri_series(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->ori_series:Ljava/lang/Object;

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$pages(I)V

    return-void
.end method

.method public setSeason(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->season:Ljava/lang/Object;

    return-void
.end method

.method public setSeries(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series(Ljava/lang/String;)V

    return-void
.end method

.method public setSeries_hash_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_hash_key(Ljava/lang/String;)V

    return-void
.end method

.method public setSeries_number(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_number(I)V

    return-void
.end method

.method public setSeries_stamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$series_stamp(Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$type(I)V

    return-void
.end method

.method public setView_count(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmSet$view_count(I)V

    return-void
.end method

.method public setVolume(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->volume:Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_hash_key()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_stamp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$cover_path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$full_cover_path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$view_count()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$pages()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_chapter()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$max_volume()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$end()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$apitimestamp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$series_number()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {p0}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->realmGet$opened_at()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
