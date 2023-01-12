.class public Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity$TagsEntity;
    }
.end annotation


# instance fields
.field public columnist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;"
        }
    .end annotation
.end field

.field public date_number:I

.field public img_url:Ljava/lang/String;

.field public library_id:I

.field public show_time:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity$TagsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->this$1:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->columnist:Ljava/util/List;

    return-object v0
.end method

.method public getDate_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->date_number:I

    return v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrary_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->library_id:I

    return v0
.end method

.method public getShow_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->show_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity$TagsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/Columnist;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->columnist:Ljava/util/List;

    return-void
.end method

.method public setDate_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->date_number:I

    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->img_url:Ljava/lang/String;

    return-void
.end method

.method public setLibrary_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->library_id:I

    return-void
.end method

.method public setShow_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->show_time:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity$TagsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->title:Ljava/lang/String;

    return-void
.end method
