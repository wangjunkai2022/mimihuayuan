.class public Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "ShortOriginal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public collects:Ljava/lang/String;

.field public comments:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public create_at:Ljava/lang/String;

.field public down:Ljava/lang/String;

.field public height:I

.field public id:I

.field public is_hot:Ljava/lang/String;

.field public m3u8:Ljava/lang/String;

.field public plays:Ljava/lang/String;

.field public praises:Ljava/lang/String;

.field public shares:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_id:I

.field public video:Ljava/lang/String;

.field public video_img:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->type:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCollects()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->collects:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDown()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->down:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->id:I

    return v0
.end method

.method public getIs_hot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->is_hot:Ljava/lang/String;

    return-object v0
.end method

.method public getM3u8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->m3u8:Ljava/lang/String;

    return-object v0
.end method

.method public getPlays()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->plays:Ljava/lang/String;

    return-object v0
.end method

.method public getPraises()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->praises:Ljava/lang/String;

    return-object v0
.end method

.method public getShares()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->shares:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FEI="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->user_id:I

    return v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->video_img:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->width:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setDown(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->down:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->height:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->id:I

    return-void
.end method

.method public setM3u8(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->m3u8:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->user_id:I

    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->video:Ljava/lang/String;

    return-void
.end method

.method public setVideo_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->video_img:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->width:I

    return-void
.end method
