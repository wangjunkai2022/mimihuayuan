.class public Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;
.super Ljava/lang/Object;
.source "KMVideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/KMVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;"
        }
    .end annotation
.end field

.field public video_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKm2Video_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->video_list:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->video_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->needGold()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->needVip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->video_list:Ljava/util/List;

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->list:Ljava/util/List;

    :cond_4
    return-object v0
.end method

.method public setKm2Video_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/Km2Video;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/KMVideoList$DataBean;->video_list:Ljava/util/List;

    return-void
.end method
