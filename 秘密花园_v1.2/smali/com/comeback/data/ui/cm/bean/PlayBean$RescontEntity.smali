.class public Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;
.super Ljava/lang/Object;
.source "PlayBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/PlayBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RescontEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity$LablsEntity;
    }
.end annotation


# instance fields
.field public artist:I

.field public auther:Ljava/lang/String;

.field public auther_no:Ljava/lang/String;

.field public authername:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public id:I

.field public introduction:Ljava/lang/String;

.field public is_like:I

.field public is_vip:I

.field public labls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity$LablsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public pageviews:I

.field public playtimes:Ljava/lang/String;

.field public short_video_path:Ljava/lang/String;

.field public sort_id:I

.field public final synthetic this$0:Lcom/comeback/data/ui/cm/bean/PlayBean;

.field public title:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public videopath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/PlayBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->this$0:Lcom/comeback/data/ui/cm/bean/PlayBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->artist:I

    return v0
.end method

.method public getAuther()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->auther:Ljava/lang/String;

    return-object v0
.end method

.method public getAuther_no()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->auther_no:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->authername:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->id:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_like()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->is_like:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->is_vip:I

    return v0
.end method

.method public getLabls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity$LablsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->labls:Ljava/util/List;

    return-object v0
.end method

.method public getPageviews()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->pageviews:I

    return v0
.end method

.method public getPlaytimes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->playtimes:Ljava/lang/String;

    return-object v0
.end method

.method public getShort_video_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->short_video_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSort_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->sort_id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideopath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->videopath:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->artist:I

    return-void
.end method

.method public setAuther(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->auther:Ljava/lang/String;

    return-void
.end method

.method public setAuther_no(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->auther_no:Ljava/lang/String;

    return-void
.end method

.method public setAuthername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->authername:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->id:I

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIs_like(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->is_like:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->is_vip:I

    return-void
.end method

.method public setLabls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity$LablsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->labls:Ljava/util/List;

    return-void
.end method

.method public setPageviews(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->pageviews:I

    return-void
.end method

.method public setPlaytimes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->playtimes:Ljava/lang/String;

    return-void
.end method

.method public setShort_video_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->short_video_path:Ljava/lang/String;

    return-void
.end method

.method public setSort_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->sort_id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVideopath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/PlayBean$RescontEntity;->videopath:Ljava/lang/String;

    return-void
.end method
