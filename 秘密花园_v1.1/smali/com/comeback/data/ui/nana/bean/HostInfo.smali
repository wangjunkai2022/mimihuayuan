.class public Lcom/comeback/data/ui/nana/bean/HostInfo;
.super Lf/e/a/f/j;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;,
        Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;,
        Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;,
        Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;,
        Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;
    }
.end annotation


# instance fields
.field public api:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public api_pwa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public assistiveTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;

.field public checkversion:Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;

.field public comment:Ljava/lang/String;

.field public comment_pwa:Ljava/lang/String;

.field public community:Ljava/lang/String;

.field public iconIndex:I

.field public img:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public img_pwa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public potato:Ljava/lang/String;

.field public returnTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;

.field public sharelihi:Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;

.field public stream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public stream_pwa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public vip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public wifi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->api:Ljava/util/List;

    return-object v0
.end method

.method public getApi_pwa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->api_pwa:Ljava/util/List;

    return-object v0
.end method

.method public getAssistiveTouchImage()Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->assistiveTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;

    return-object v0
.end method

.method public getCheckversion()Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->checkversion:Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_pwa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->comment_pwa:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->community:Ljava/lang/String;

    return-object v0
.end method

.method public getIconIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->iconIndex:I

    return v0
.end method

.method public getImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->img:Ljava/util/List;

    return-object v0
.end method

.method public getImg_pwa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->img_pwa:Ljava/util/List;

    return-object v0
.end method

.method public getPotato()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->potato:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnTouchImage()Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->returnTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;

    return-object v0
.end method

.method public getSharelihi()Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->sharelihi:Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;

    return-object v0
.end method

.method public getStream()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->stream:Ljava/util/List;

    return-object v0
.end method

.method public getStream_pwa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->stream_pwa:Ljava/util/List;

    return-object v0
.end method

.method public getVip()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->vip:Ljava/util/List;

    return-object v0
.end method

.method public getWifi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->wifi:Ljava/lang/String;

    return-object v0
.end method

.method public setApi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->api:Ljava/util/List;

    return-void
.end method

.method public setApi_pwa(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->api_pwa:Ljava/util/List;

    return-void
.end method

.method public setAssistiveTouchImage(Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->assistiveTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$AssistiveTouchImageEntity;

    return-void
.end method

.method public setCheckversion(Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->checkversion:Lcom/comeback/data/ui/nana/bean/HostInfo$CheckversionEntity;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->comment:Ljava/lang/String;

    return-void
.end method

.method public setComment_pwa(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->comment_pwa:Ljava/lang/String;

    return-void
.end method

.method public setCommunity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->community:Ljava/lang/String;

    return-void
.end method

.method public setIconIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->iconIndex:I

    return-void
.end method

.method public setImg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->img:Ljava/util/List;

    return-void
.end method

.method public setImg_pwa(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->img_pwa:Ljava/util/List;

    return-void
.end method

.method public setPotato(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->potato:Ljava/lang/String;

    return-void
.end method

.method public setReturnTouchImage(Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->returnTouchImage:Lcom/comeback/data/ui/nana/bean/HostInfo$ReturnTouchImageEntity;

    return-void
.end method

.method public setSharelihi(Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->sharelihi:Lcom/comeback/data/ui/nana/bean/HostInfo$SharelihiEntity;

    return-void
.end method

.method public setStream(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->stream:Ljava/util/List;

    return-void
.end method

.method public setStream_pwa(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/HostInfo$ApiEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->stream_pwa:Ljava/util/List;

    return-void
.end method

.method public setVip(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->vip:Ljava/util/List;

    return-void
.end method

.method public setWifi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/HostInfo;->wifi:Ljava/lang/String;

    return-void
.end method
