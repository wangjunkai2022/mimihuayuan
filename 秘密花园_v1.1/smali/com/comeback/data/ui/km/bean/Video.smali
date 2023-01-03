.class public Lcom/comeback/data/ui/km/bean/Video;
.super Lg/a/g0;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/a/y0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/km/bean/Video;",
            ">;"
        }
    .end annotation
.end field

.field public static targetUrl:Ljava/lang/String;

.field public static targetUrlDetail:Ljava/lang/String;


# instance fields
.field public is_cat_ads:I

.field public mu_avatar:Ljava/lang/String;

.field public mu_id:Ljava/lang/String;

.field public mu_name:Ljava/lang/String;

.field public mv_comment:Ljava/lang/String;

.field public mv_created:Ljava/lang/String;

.field public mv_id:Ljava/lang/String;

.field public mv_img_url:Ljava/lang/String;

.field public mv_like:Ljava/lang/String;

.field public mv_play_height:I

.field public mv_play_url:Ljava/lang/String;

.field public mv_play_width:I

.field public mv_title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "XxYXFBhJFhwFD1ACF0QIBgASVEoTCkM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    const-string v0, "0v7Tgfbz3YvzRkIOCEpDS18WFxRRXBZFGhYaXk8BFgpeDwILRRBWXkleBF9BYIb3h4f+5I/JtdXqyN3n4koLH0MSEF5EXFJeXV8DDA0LCgZWDU0HBB4zOXkFUAmd9tOOquJDREsbTUcDXBtIDgMTRVQGBQABGRdQHAs+bRsODVkXQgsQHwMDHFwQXQMdBU0IUwQHDgFdWlwe"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/km/bean/Video$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/km/bean/Video$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/km/bean/Video;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_avatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_id(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_comment(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_created(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_id(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_img_url(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_like(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_play_height(I)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_play_url(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_play_width(I)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_title(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$is_cat_ads(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMuName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0u3ygdPw0bP2iYj9"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMu_avatar()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMu_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMu_name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_comment()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_created()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_img_url()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_like()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_play_height()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_height()I

    move-result v0

    return v0
.end method

.method public getMv_play_url()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A1VNVl9HFwpLSAVQQVBbWw9b"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XxYXFFFcFgdESAZTTERaUxlTVF1RSwkLSg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XxYXFBhJFhwFEBpTTF9WGF9MAAsG"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XxYXFFFcFgJCXxpVQERRWwNMUFI="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMv_play_width()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_width()I

    move-result v0

    return v0
.end method

.method public getMv_title()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAd()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$is_cat_ads()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLandscape()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_width()I

    move-result v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_height()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_width()I

    move-result v0

    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->getMv_play_height()I

    move-result v2

    div-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public realmGet$is_cat_ads()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km/bean/Video;->is_cat_ads:I

    return v0
.end method

.method public realmGet$mu_avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mu_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mu_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_created()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_created:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_img_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_img_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_like()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_like:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_play_height()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_height:I

    return v0
.end method

.method public realmGet$mv_play_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mv_play_width()I
    .locals 1

    iget v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_width:I

    return v0
.end method

.method public realmGet$mv_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$is_cat_ads(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km/bean/Video;->is_cat_ads:I

    return-void
.end method

.method public realmSet$mu_avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_avatar:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mu_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mu_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mu_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_created(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_created:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_img_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_img_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_like(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_like:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_play_height(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_height:I

    return-void
.end method

.method public realmSet$mv_play_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mv_play_width(I)V
    .locals 0

    iput p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_play_width:I

    return-void
.end method

.method public realmSet$mv_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/Video;->mv_title:Ljava/lang/String;

    return-void
.end method

.method public setMu_avatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_avatar(Ljava/lang/String;)V

    return-void
.end method

.method public setMu_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_id(Ljava/lang/String;)V

    return-void
.end method

.method public setMu_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mu_name(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_comment(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_comment(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_created(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_created(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_id(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_img_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_img_url(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_like(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_like(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_play_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_play_url(Ljava/lang/String;)V

    return-void
.end method

.method public setMv_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/km/bean/Video;->realmSet$mv_title(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mu_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_created()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_like()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_height()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_play_width()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$mv_title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/km/bean/Video;->realmGet$is_cat_ads()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
