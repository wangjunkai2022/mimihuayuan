.class public Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/VideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideosBean;,
        Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;,
        Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$LabelBean;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public comments:I

.field public create_at:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:I

.field public is_vip:I

.field public label:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$LabelBean;",
            ">;"
        }
    .end annotation
.end field

.field public label_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public plays:I

.field public rate:D

.field public rate_num:I

.field public video_item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideosBean;",
            ">;"
        }
    .end annotation
.end field

.field public ximage:Ljava/lang/Object;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->create_at:Ljava/lang/String;

    const-string v2, "Gg=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->plays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0c7Cgvne36fN"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->rate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "0url"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->comments:I

    return v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->id:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->is_vip:I

    return v0
.end method

.method public getLabel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$LabelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->label:Ljava/util/List;

    return-object v0
.end method

.method public getLabel_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->label_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->plays:I

    return v0
.end method

.method public getRate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->rate:D

    return-wide v0
.end method

.method public getRate_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->rate_num:I

    return v0
.end method

.method public getVideo_item()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->video_item:Ljava/util/List;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideosBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->videos:Ljava/util/List;

    return-object v0
.end method

.method public getXimage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->ximage:Ljava/lang/Object;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->year:I

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setComments(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->comments:I

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->id:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->is_vip:I

    return-void
.end method

.method public setLabel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$LabelBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->label:Ljava/util/List;

    return-void
.end method

.method public setLabel_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->label_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->plays:I

    return-void
.end method

.method public setRate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->rate:D

    return-void
.end method

.method public setRate_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->rate_num:I

    return-void
.end method

.method public setVideo_item(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->video_item:Ljava/util/List;

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideosBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->videos:Ljava/util/List;

    return-void
.end method

.method public setXimage(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->ximage:Ljava/lang/Object;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;->year:I

    return-void
.end method
