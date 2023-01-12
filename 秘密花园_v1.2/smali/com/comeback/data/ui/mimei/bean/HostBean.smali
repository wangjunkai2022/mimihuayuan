.class public Lcom/comeback/data/ui/mimei/bean/HostBean;
.super Lf/e/a/f/k;
.source "HostBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/HostBean$StreamBean;,
        Lcom/comeback/data/ui/mimei/bean/HostBean$ImgBean;,
        Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;,
        Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;,
        Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;
    }
.end annotation


# instance fields
.field public api:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;",
            ">;"
        }
    .end annotation
.end field

.field public comic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public fiction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;",
            ">;"
        }
    .end annotation
.end field

.field public img:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ImgBean;",
            ">;"
        }
    .end annotation
.end field

.field public stream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$StreamBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->api:Ljava/util/List;

    return-object v0
.end method

.method public getComic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->comic:Ljava/util/List;

    return-object v0
.end method

.method public getFiction()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->fiction:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ImgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->img:Ljava/util/List;

    return-object v0
.end method

.method public getStream()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$StreamBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->stream:Ljava/util/List;

    return-object v0
.end method

.method public setApi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ApiBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->api:Ljava/util/List;

    return-void
.end method

.method public setComic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->comic:Ljava/util/List;

    return-void
.end method

.method public setFiction(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$FictionBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->fiction:Ljava/util/List;

    return-void
.end method

.method public setImg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$ImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->img:Ljava/util/List;

    return-void
.end method

.method public setStream(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/HostBean$StreamBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/HostBean;->stream:Ljava/util/List;

    return-void
.end method
