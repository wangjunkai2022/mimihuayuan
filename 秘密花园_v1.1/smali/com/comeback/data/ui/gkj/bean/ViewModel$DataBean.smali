.class public Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;
.super Ljava/lang/Object;
.source "ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MAdDataBean;,
        Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;,
        Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;
    }
.end annotation


# instance fields
.field public client_limit:I

.field public client_module:Ljava/lang/String;

.field public client_style:Ljava/lang/String;

.field public id:I

.field public m_ad_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MAdDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public m_banner_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public m_comic_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public module:Ljava/lang/String;

.field public options:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_limit:I

    return v0
.end method

.method public getClient_module()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_module:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_style()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_style:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->id:I

    return v0
.end method

.method public getM_ad_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MAdDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_ad_data:Ljava/util/List;

    return-object v0
.end method

.method public getM_banner_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_banner_data:Ljava/util/List;

    return-object v0
.end method

.method public getM_comic_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_comic_data:Ljava/util/List;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setClient_limit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_limit:I

    return-void
.end method

.method public setClient_module(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_module:Ljava/lang/String;

    return-void
.end method

.method public setClient_style(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->client_style:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->id:I

    return-void
.end method

.method public setM_ad_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MAdDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_ad_data:Ljava/util/List;

    return-void
.end method

.method public setM_banner_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_banner_data:Ljava/util/List;

    return-void
.end method

.method public setM_comic_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MComicDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->m_comic_data:Ljava/util/List;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->options:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->title:Ljava/lang/String;

    return-void
.end method
