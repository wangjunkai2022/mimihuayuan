.class public Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/lutube/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseBean"
.end annotation


# instance fields
.field public actor_cup:Ljava/lang/String;

.field public actor_name:Ljava/lang/String;

.field public page:I

.field public total_results:I

.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/lutube/bean/LVideosBean;",
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
.method public getActor_cup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->actor_cup:Ljava/lang/String;

    return-object v0
.end method

.method public getActor_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->actor_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->page:I

    return v0
.end method

.method public getTotal_results()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->total_results:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/lutube/bean/LVideosBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/lutube/bean/LVideosBean;

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/lutube/bean/LVideosBean;->getMain_tag()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "YSsz"

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->videos:Ljava/util/List;

    return-object v0
.end method

.method public setActor_cup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->actor_cup:Ljava/lang/String;

    return-void
.end method

.method public setActor_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->actor_name:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->page:I

    return-void
.end method

.method public setTotal_results(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->total_results:I

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/lutube/bean/LVideosBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->videos:Ljava/util/List;

    return-void
.end method
