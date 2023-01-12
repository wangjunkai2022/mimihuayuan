.class public Lcom/comeback/data/ui/isiyu/bean/HomeBean;
.super Lf/e/a/f/k;
.source "HomeBean.java"


# instance fields
.field public client_limit:I

.field public client_module:Ljava/lang/String;

.field public client_style:Ljava/lang/String;

.field public id:I

.field public m_video_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/Video;",
            ">;"
        }
    .end annotation
.end field

.field public module:Ljava/lang/String;

.field public options:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_limit:I

    return v0
.end method

.method public getClient_module()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_module:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_style()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_style:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->id:I

    return v0
.end method

.method public getM_video_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/Video;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->m_video_data:Ljava/util/List;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setClient_limit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_limit:I

    return-void
.end method

.method public setClient_module(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_module:Ljava/lang/String;

    return-void
.end method

.method public setClient_style(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->client_style:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->id:I

    return-void
.end method

.method public setM_video_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/isiyu/bean/Video;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->m_video_data:Ljava/util/List;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->options:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/isiyu/bean/HomeBean;->title:Ljava/lang/String;

    return-void
.end method
