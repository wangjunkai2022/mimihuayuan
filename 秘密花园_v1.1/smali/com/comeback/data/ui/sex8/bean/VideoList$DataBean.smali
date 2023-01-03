.class public Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;,
        Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$LableBean;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public days:Ljava/lang/String;

.field public down_url:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public is_share:Ljava/lang/String;

.field public lable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$LableBean;",
            ">;"
        }
    .end annotation
.end field

.field public num_times:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public price:I

.field public publish_time:Ljava/lang/String;

.field public share:Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;

.field public title:Ljava/lang/String;

.field public trysee:I

.field public url:Ljava/lang/String;

.field public video_duration:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDays()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->days:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->is_share:Ljava/lang/String;

    return-object v0
.end method

.method public getLable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$LableBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->lable:Ljava/util/List;

    return-object v0
.end method

.method public getNum_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->num_times:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->price:I

    return v0
.end method

.method public getPublish_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->publish_time:Ljava/lang/String;

    return-object v0
.end method

.method public getShare()Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrysee()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->trysee:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->video_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setDays(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->days:Ljava/lang/String;

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->duration:Ljava/lang/String;

    return-void
.end method

.method public setIs_share(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->is_share:Ljava/lang/String;

    return-void
.end method

.method public setLable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$LableBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->lable:Ljava/util/List;

    return-void
.end method

.method public setNum_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->num_times:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->price:I

    return-void
.end method

.method public setPublish_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->publish_time:Ljava/lang/String;

    return-void
.end method

.method public setShare(Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->share:Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean$ShareBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTrysee(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->trysee:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->video_duration:Ljava/lang/String;

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/bean/VideoList$DataBean;->video_id:Ljava/lang/String;

    return-void
.end method
