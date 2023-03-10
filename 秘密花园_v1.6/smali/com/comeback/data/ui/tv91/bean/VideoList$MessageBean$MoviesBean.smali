.class public Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoviesBean"
.end annotation


# instance fields
.field public CoverImg:Ljava/lang/String;

.field public CreateTime:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public Imgbase64:Ljava/lang/String;

.field public MovieID:I

.field public Name:Ljava/lang/String;

.field public SourceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->CoverImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "09rpgvXF36TFj6PTl9b5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->CreateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgbase64()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Imgbase64:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->MovieID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->SourceId:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->MovieID:I

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public setCoverImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->CoverImg:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->CreateTime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Description:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Img:Ljava/lang/String;

    return-void
.end method

.method public setImgbase64(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Imgbase64:Ljava/lang/String;

    return-void
.end method

.method public setMovieID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->MovieID:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->Name:Ljava/lang/String;

    return-void
.end method
