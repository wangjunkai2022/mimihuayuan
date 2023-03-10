.class public Lcom/comeback/data/ui/ba/bean/BaComicsBean;
.super Lg/a/g0;
.source "BaComicsBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/p0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/ba/bean/BaComicsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;

.field public describes:Ljava/lang/String;

.field public follow_num:D

.field public heat:I

.field public is_adult:I

.field public is_end:I

.field public operate_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public show_id:Ljava/lang/String;

.field public small_picture:Ljava/lang/String;

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

.field public total:I

.field public update_episodes:I

.field public update_time:I

.field public watch_num:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/ba/bean/BaComicsBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 2

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

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$author(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$describes(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$follow_num(D)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$heat(I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$is_adult(I)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$is_end(I)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$show_id(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$small_picture(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$title(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$total(I)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$update_episodes(I)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$update_time(I)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$watch_num(I)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->operate_tags:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "09//jOv21o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$author()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescribes()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$describes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollow_num()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$follow_num()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHeat()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$heat()I

    move-result v0

    return v0
.end method

.method public getIs_adult()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$is_adult()I

    move-result v0

    return v0
.end method

.method public getIs_end()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$is_end()I

    move-result v0

    return v0
.end method

.method public getOperate_tags()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->operate_tags:Ljava/util/List;

    return-object v0
.end method

.method public getShow_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$show_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmall_picture()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$small_picture()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$small_picture()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lf/e/a/k/b;->Z:Ljava/lang/String;

    sget-object v2, Lf/e/a/k/b;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$small_picture(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$small_picture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getOperate_tags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getOperate_tags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Sw=="

    .line 4
    invoke-static {v0, v2, v3}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

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
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$total()I

    move-result v0

    return v0
.end method

.method public getUpdate_episodes()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$update_episodes()I

    move-result v0

    return v0
.end method

.method public getUpdate_time()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$update_time()I

    move-result v0

    return v0
.end method

.method public getWatch_num()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$watch_num()I

    move-result v0

    return v0
.end method

.method public realmGet$author()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$describes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->describes:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$follow_num()D
    .locals 2

    iget-wide v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->follow_num:D

    return-wide v0
.end method

.method public realmGet$heat()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->heat:I

    return v0
.end method

.method public realmGet$is_adult()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->is_adult:I

    return v0
.end method

.method public realmGet$is_end()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->is_end:I

    return v0
.end method

.method public realmGet$show_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->show_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$small_picture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->small_picture:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$total()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->total:I

    return v0
.end method

.method public realmGet$update_episodes()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->update_episodes:I

    return v0
.end method

.method public realmGet$update_time()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->update_time:I

    return v0
.end method

.method public realmGet$watch_num()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->watch_num:I

    return v0
.end method

.method public realmSet$author(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->author:Ljava/lang/String;

    return-void
.end method

.method public realmSet$describes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->describes:Ljava/lang/String;

    return-void
.end method

.method public realmSet$follow_num(D)V
    .locals 0

    iput-wide p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->follow_num:D

    return-void
.end method

.method public realmSet$heat(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->heat:I

    return-void
.end method

.method public realmSet$is_adult(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->is_adult:I

    return-void
.end method

.method public realmSet$is_end(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->is_end:I

    return-void
.end method

.method public realmSet$show_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->show_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$small_picture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->small_picture:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$total(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->total:I

    return-void
.end method

.method public realmSet$update_episodes(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->update_episodes:I

    return-void
.end method

.method public realmSet$update_time(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->update_time:I

    return-void
.end method

.method public realmSet$watch_num(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->watch_num:I

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$author(Ljava/lang/String;)V

    return-void
.end method

.method public setDescribes(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$describes(Ljava/lang/String;)V

    return-void
.end method

.method public setFollow_num(D)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$follow_num(D)V

    return-void
.end method

.method public setHeat(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$heat(I)V

    return-void
.end method

.method public setIs_adult(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$is_adult(I)V

    return-void
.end method

.method public setIs_end(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$is_end(I)V

    return-void
.end method

.method public setOperate_tags(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->operate_tags:Ljava/util/List;

    return-void
.end method

.method public setShow_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$show_id(Ljava/lang/String;)V

    return-void
.end method

.method public setSmall_picture(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$small_picture(Ljava/lang/String;)V

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
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$total(I)V

    return-void
.end method

.method public setUpdate_episodes(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$update_episodes(I)V

    return-void
.end method

.method public setUpdate_time(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$update_time(I)V

    return-void
.end method

.method public setWatch_num(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmSet$watch_num(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$author()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$describes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$follow_num()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$heat()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$is_adult()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$is_end()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$show_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$small_picture()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$total()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$update_episodes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$update_time()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->realmGet$watch_num()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->operate_tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15
    iget-object p2, p0, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
