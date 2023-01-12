.class public Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfigBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$DefaultSearchKeywordBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;
    }
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public android:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;

.field public cdnConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;

.field public codePushUrl:Ljava/lang/String;

.field public comicAndroidInstallUrl:Ljava/lang/String;

.field public comicIosInstallUrl:Ljava/lang/String;

.field public defaultSearchKeyword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$DefaultSearchKeywordBean;",
            ">;"
        }
    .end annotation
.end field

.field public getJpMovieDataUrl:Ljava/lang/String;

.field public ios:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;

.field public potato:Ljava/lang/String;

.field public pushUrl:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public tips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public updateServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid()Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->android:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;

    return-object v0
.end method

.method public getCdnConfig()Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->cdnConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;

    return-object v0
.end method

.method public getCodePushUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->codePushUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComicAndroidInstallUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->comicAndroidInstallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComicIosInstallUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->comicIosInstallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSearchKeyword()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$DefaultSearchKeywordBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->defaultSearchKeyword:Ljava/util/List;

    return-object v0
.end method

.method public getGetJpMovieDataUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->getJpMovieDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIos()Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->ios:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;

    return-object v0
.end method

.method public getPotato()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->potato:Ljava/lang/String;

    return-object v0
.end method

.method public getPushUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->pushUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->tips:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateServerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->updateServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid(Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->android:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$AndroidBean;

    return-void
.end method

.method public setCdnConfig(Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->cdnConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$CdnConfigBean;

    return-void
.end method

.method public setCodePushUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->codePushUrl:Ljava/lang/String;

    return-void
.end method

.method public setComicAndroidInstallUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->comicAndroidInstallUrl:Ljava/lang/String;

    return-void
.end method

.method public setComicIosInstallUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->comicIosInstallUrl:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSearchKeyword(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$DefaultSearchKeywordBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->defaultSearchKeyword:Ljava/util/List;

    return-void
.end method

.method public setGetJpMovieDataUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->getJpMovieDataUrl:Ljava/lang/String;

    return-void
.end method

.method public setIos(Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->ios:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean$IosBean;

    return-void
.end method

.method public setPotato(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->potato:Ljava/lang/String;

    return-void
.end method

.method public setPushUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->pushUrl:Ljava/lang/String;

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->tips:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->updateServerUrl:Ljava/lang/String;

    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;->_id:Ljava/lang/String;

    return-void
.end method
