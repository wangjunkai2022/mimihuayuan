.class public Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/md/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/md/bean/VideoList$DataEntity$TagsEntity;
    }
.end annotation


# instance fields
.field public comefrom:I

.field public comefrom_title:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:I

.field public is_bloger:I

.field public is_vip:I

.field public panorama:Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public status:I

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public test_video_url:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/md/bean/VideoList;

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public try_second:I

.field public video_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/md/bean/VideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->this$0:Lcom/comeback/data/ui/md/bean/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComefrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->comefrom:I

    return v0
.end method

.method public getComefrom_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->comefrom_title:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->id:I

    return v0
.end method

.method public getIs_bloger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->is_bloger:I

    return v0
.end method

.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->is_vip:I

    return v0
.end method

.method public getPanorama()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->panorama:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->status:I

    return v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity$TagsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTest_video_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->test_video_url:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTry_second()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->try_second:I

    return v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->video_url:Ljava/lang/String;

    return-object v0
.end method

.method public setComefrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->comefrom:I

    return-void
.end method

.method public setComefrom_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->comefrom_title:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->id:I

    return-void
.end method

.method public setIs_bloger(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->is_bloger:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->is_vip:I

    return-void
.end method

.method public setPanorama(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->panorama:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->preview:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->status:I

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity$TagsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->tags:Ljava/util/List;

    return-void
.end method

.method public setTest_video_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->test_video_url:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTry_second(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->try_second:I

    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->video_url:Ljava/lang/String;

    return-void
.end method
