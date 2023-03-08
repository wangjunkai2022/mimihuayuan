.class public Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendEntity"
.end annotation


# instance fields
.field public id:I

.field public img_url:Ljava/lang/String;

.field public library_id:I

.field public ltype:Ljava/lang/String;

.field public movie_time:Ljava/lang/String;

.field public play_time_num_hand:I

.field public play_time_num_self:I

.field public play_time_num_total:I

.field public play_time_sgin:I

.field public subtitle:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->this$1:Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->id:I

    return v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrary_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->library_id:I

    return v0
.end method

.method public getLtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->ltype:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->movie_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time_num_hand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_hand:I

    return v0
.end method

.method public getPlay_time_num_self()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_self:I

    return v0
.end method

.method public getPlay_time_num_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_total:I

    return v0
.end method

.method public getPlay_time_sgin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_sgin:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->library_id:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->id:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->id:I

    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->img_url:Ljava/lang/String;

    return-void
.end method

.method public setLibrary_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->library_id:I

    return-void
.end method

.method public setLtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->ltype:Ljava/lang/String;

    return-void
.end method

.method public setMovie_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->movie_time:Ljava/lang/String;

    return-void
.end method

.method public setPlay_time_num_hand(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_hand:I

    return-void
.end method

.method public setPlay_time_num_self(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_self:I

    return-void
.end method

.method public setPlay_time_num_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_num_total:I

    return-void
.end method

.method public setPlay_time_sgin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->play_time_sgin:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/DiscoverBean$DataEntity$RecommendEntity;->title:Ljava/lang/String;

    return-void
.end method
