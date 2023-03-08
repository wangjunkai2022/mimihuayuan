.class public Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;
.super Ljava/lang/Object;
.source "TiktopBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/test/bean/TiktopBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;
    }
.end annotation


# instance fields
.field public engine:I

.field public more:Z

.field public pageNum:I

.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;",
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
.method public getEngine()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->engine:I

    return v0
.end method

.method public getPageNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->pageNum:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->videos:Ljava/util/List;

    return-object v0
.end method

.method public isMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->more:Z

    return v0
.end method

.method public setEngine(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->engine:I

    return-void
.end method

.method public setMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->more:Z

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->pageNum:I

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->videos:Ljava/util/List;

    return-void
.end method
