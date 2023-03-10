.class public Lcom/comeback/data/ui/fengliu/bean/MMInfo2;
.super Lf/e/a/f/k;
.source "MMInfo2.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/fengliu/bean/MMInfo2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public cha_id:Ljava/lang/String;

.field public cityCodeReadable:Ljava/lang/String;

.field public city_code:I

.field public consume_lv:Ljava/lang/String;

.field public coverPictureHrefs:Ljava/lang/String;

.field public created_at:I

.field public desc:Ljava/lang/String;

.field public girl_age:Ljava/lang/String;

.field public girl_beauty:Ljava/lang/String;

.field public id:I

.field public phone:Ljava/lang/String;

.field public pictureHrefs:Ljava/lang/String;

.field public published_at:I

.field public qq:Ljava/lang/String;

.field public score:I

.field public serve_list:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updated_at:I

.field public wechat:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/fengliu/bean/MMInfo2$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->qq:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->address:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->serve_list:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->wechat:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->city_code:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->created_at:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->title:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->score:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_age:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->updated_at:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->phone:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->consume_lv:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->id:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_beauty:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->published_at:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cityCodeReadable:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->desc:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cha_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCha_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cha_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCodeReadable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cityCodeReadable:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->city_code:I

    return v0
.end method

.method public getConsume_lv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->consume_lv:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverPictureHrefs()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    const-string v1, "XxYXFA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    const-string v1, "XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf/e/a/k/b;->n0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFFE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated_at()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->created_at:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGirl_age()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_age:Ljava/lang/String;

    return-object v0
.end method

.method public getGirl_beauty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_beauty:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->id:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureHrefs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    const-string v2, "Gw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "XxYXFA=="

    .line 5
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GE0="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XxYXFFE="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v5, "XxYXFBhJFhwaC1UAHUQaDlEHDQMHGkwdEAlZ"

    .line 7
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lf/e/a/k/b;->n0:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 9
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPublished_at()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->published_at:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->Q0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->score:I

    return v0
.end method

.method public getServe_list()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->serve_list:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->updated_at:I

    return v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public isChaImage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cha_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->address:Ljava/lang/String;

    return-void
.end method

.method public setCha_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cha_id:Ljava/lang/String;

    return-void
.end method

.method public setCityCodeReadable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cityCodeReadable:Ljava/lang/String;

    return-void
.end method

.method public setCity_code(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->city_code:I

    return-void
.end method

.method public setConsume_lv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->consume_lv:Ljava/lang/String;

    return-void
.end method

.method public setCoverPictureHrefs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->created_at:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGirl_age(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_age:Ljava/lang/String;

    return-void
.end method

.method public setGirl_beauty(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_beauty:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->id:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPictureHrefs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    return-void
.end method

.method public setPublished_at(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->published_at:I

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->qq:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->score:I

    return-void
.end method

.method public setServe_list(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->serve_list:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->updated_at:I

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->wechat:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->qq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->serve_list:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->wechat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->city_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->created_at:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->pictureHrefs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->score:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_age:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->updated_at:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->coverPictureHrefs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->consume_lv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->girl_beauty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->published_at:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cityCodeReadable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/comeback/data/ui/fengliu/bean/MMInfo2;->cha_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
