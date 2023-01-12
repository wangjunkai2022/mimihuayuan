.class public Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;
.super Ljava/lang/Object;
.source "FilmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/FilmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;
    }
.end annotation


# instance fields
.field public actor:Ljava/lang/String;

.field public download_url:Ljava/lang/String;

.field public encryption_url:Ljava/lang/String;

.field public file_name:Ljava/lang/String;

.field public id:I

.field public img_url:Ljava/lang/String;

.field public introduction:Ljava/lang/String;

.field public level_constraint:I

.field public love_number:Ljava/lang/String;

.field public movie_time:Ljava/lang/String;

.field public play_count:I

.field public publish_at:Ljava/lang/String;

.field public score:D

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/fruitPie/bean/FilmInfo;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/FilmInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->this$0:Lcom/comeback/data/ui/fruitPie/bean/FilmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryption_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->encryption_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->id:I

    return v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel_constraint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->level_constraint:I

    return v0
.end method

.method public getLove_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->love_number:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->movie_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->play_count:I

    return v0
.end method

.method public getPublish_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->publish_at:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->score:D

    return-wide v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->actor:Ljava/lang/String;

    return-void
.end method

.method public setDownload_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->download_url:Ljava/lang/String;

    return-void
.end method

.method public setEncryption_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->encryption_url:Ljava/lang/String;

    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->id:I

    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->img_url:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setLevel_constraint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->level_constraint:I

    return-void
.end method

.method public setLove_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->love_number:Ljava/lang/String;

    return-void
.end method

.method public setMovie_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->movie_time:Ljava/lang/String;

    return-void
.end method

.method public setPlay_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->play_count:I

    return-void
.end method

.method public setPublish_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->publish_at:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->score:D

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity$TagsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/FilmInfo$DataEntity;->url:Ljava/lang/String;

    return-void
.end method
