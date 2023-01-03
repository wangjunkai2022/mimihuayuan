.class public Lcom/comeback/data/ui/main/bean/ConfigBean;
.super Lf/e/a/f/j;
.source "ConfigBean.java"


# instance fields
.field public banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;"
        }
    .end annotation
.end field

.field public config:Lcom/comeback/data/ui/main/bean/ChannelConfig;

.field public dialogNotice:Ljava/lang/String;

.field public extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/HomeBean;",
            ">;"
        }
    .end annotation
.end field

.field public force:Z

.field public iosShare:Ljava/lang/String;

.field public lanzou:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public launch:Lcom/comeback/data/ui/main/bean/AD;

.field public launchs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;"
        }
    .end annotation
.end field

.field public newShareTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public newUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public notice:Ljava/lang/String;

.field public noticeNo:I

.field public shareText:Ljava/lang/String;

.field public shareTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public task:Lcom/comeback/data/ui/main/bean/InstallTask;

.field public tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/InstallTask;",
            ">;"
        }
    .end annotation
.end field

.field public updateNotice:Ljava/lang/String;

.field public updateUrl:Ljava/lang/String;

.field public updateUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;

.field public versionNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method

.method public static getTestData()Lcom/comeback/data/ui/main/bean/ConfigBean;
    .locals 6

    .line 1
    new-instance v0, Lcom/comeback/data/ui/main/bean/ConfigBean;

    invoke-direct {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;-><init>()V

    const-string v1, "3/vdg9rAbWVVCFYUCFFpV1UQXYbr59uz54S085rq94m39oHk/5G5p5HmoIX4/oHro4Dj8InzrdHuwtvf92BfCUVchOfGmq6bkeaIiMDlhPCDhPHJifOF3Mvp0/vzjers1eLfi9P83Lv1gYXcmurfhI/ti8PtmpuikeaIiMDlgeuLjdvrjeOl1MfEPlsaGF2OssqF8tuXgbmU3IuIxOaH07yK3tmOw4ja8+fS18CO2u5hKzNuVxFLDZbjuY/M04fTvIre2YTPtdb2zt3k0I/m5t/W2ozM8d6v+GwIBQpUh9GthNfWjNW21vvP0cjEguvB0dPkjfD1FNbj4tPA9YLW79HY825XEUsNm/+KgMnZIj3e4M2DxcLWj+lGVRQcGSMMWgMKCEUQVl55WlYVRmBfCUVcaVgJAQcVHQRHF0OC+tXQ09AlPZaXq5TbpUEWCBAbDGhfBhlNH10RFURcncTqjrrxhvjblqSzSUYSCRoZE1BfFhcUGEkWHAQRQ0kaCwoPQkwACwZ5BVEBWBIJGhkTUN/p2oL179yvw4Op50JKRQVVERNfAwdNQ0lJGx8RCw4CVhRNBwQe"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setNotice(Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setNoticeNo(I)V

    const-string v2, "09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXEpWCx9cEhpSW1MLABFaVxFLDUBI09rpjfjz09rojNbOBVEBWBQPDB4TGA1NTBwSCQ8KRV8aCxkEGQRCC00HBB4WQFwOWwodWENLCwARWlcRSw1TDkATCBlZRBgaGh5dSg8KXQpVCQIFFgIZAQwJRAAWWxwLUVRYSl8JRVxfBhlNGVsHEkQUQkVME04YVV1dShdfEghOCA0DTQhYD0wXRBtWXhZSFEdECBFVCwARWksbTUcDFQ5IVxIaEQFbVV1FH1hdCQlBDlYJDAYYEUwMBB5cBg=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setVersion(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setVersionNo(I)V

    .line 6
    new-instance v2, Lcom/comeback/data/ui/main/bean/AD;

    invoke-direct {v2}, Lcom/comeback/data/ui/main/bean/AD;-><init>()V

    const-string v3, "XxYXFFFcFksaB1kODgMHDlhMAUkIF1cdHQNASB4DDw4YGgoFBhpPWhcDW0gSGgREVhgTUVpGFgdEVwZUV1pNAUcF"

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/main/bean/AD;->setImage(Ljava/lang/String;)V

    const-string v3, "XxYXFBhJFhwEEUNJGgsKD0JMAAsG"

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/main/bean/AD;->setTargetUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setLaunch(Lcom/comeback/data/ui/main/bean/AD;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Lcom/comeback/data/ui/main/bean/AD;

    invoke-direct {v4}, Lcom/comeback/data/ui/main/bean/AD;-><init>()V

    const-string v5, "XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUFdZW0QPVwdWXRALAEJRBAUeX1VbVFNWUFkQCgRAU1dQGgxQUxkIEwM="

    .line 12
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setImage(Ljava/lang/String;)V

    .line 13
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setTargetUrl(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v4, Lcom/comeback/data/ui/main/bean/AD;

    invoke-direct {v4}, Lcom/comeback/data/ui/main/bean/AD;-><init>()V

    const-string v5, "XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8FVldZU0QCVwcADkdaUUNUUQUZXFNZD1oFBQpHXFBHV1dfHAhQWxkIEwM="

    .line 16
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setImage(Ljava/lang/String;)V

    .line 17
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setTargetUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v4, Lcom/comeback/data/ui/main/bean/AD;

    invoke-direct {v4}, Lcom/comeback/data/ui/main/bean/AD;-><init>()V

    const-string v5, "XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUldaBUQGVwABXEINUUdfBVJODFVfBFIHAltDDgsWVQ1XSl1TDRkIEwM="

    .line 20
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setImage(Ljava/lang/String;)V

    .line 21
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setTargetUrl(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v4, Lcom/comeback/data/ui/main/bean/AD;

    invoke-direct {v4}, Lcom/comeback/data/ui/main/bean/AD;-><init>()V

    const-string v5, "XxYXFBhJFhwDD1dJSVpRX1YUTQcIXAsDQl8EUFcIBkQHVwdWDUQAVUUCA1IeXlFaAAZbAghFDANCBAZeTg8BDhkIEwM="

    .line 24
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/comeback/data/ui/main/bean/AD;->setImage(Ljava/lang/String;)V

    .line 25
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/comeback/data/ui/main/bean/AD;->setTargetUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setBanner(Ljava/util/List;)V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v3, Lcom/comeback/data/ui/main/bean/HomeBean;

    invoke-direct {v3}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>()V

    const-string v4, "XxYXFBhJFhwLCwNWT0QABFpNEBAKB1BQXA9ZBh8PEERbDQQLWl1JXRQ="

    .line 30
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/comeback/data/ui/main/bean/HomeBean;->setIconUrl(Ljava/lang/String;)V

    const-string v4, "XxYXFBhJFhwEEUNJAAMCBl4DFUoNBlc="

    .line 31
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/comeback/data/ui/main/bean/HomeBean;->setUrl(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, v1}, Lcom/comeback/data/ui/main/bean/HomeBean;->setType(I)V

    const-string v1, "0erygvPc37rag4XyEQkMBQ=="

    .line 33
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/comeback/data/ui/main/bean/HomeBean;->setDescribe(Ljava/lang/String;)V

    const-string v1, "0evKgdrm"

    .line 34
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/comeback/data/ui/main/bean/HomeBean;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/main/bean/ConfigBean;->setExtra(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getAllUpdateUrl()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->lanzou:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->lanzou:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x6

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 9
    div-int/lit8 v2, v2, 0x7

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-static {v5}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Uw=="

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4

    .line 14
    :cond_2
    invoke-static {}, Lc/a/a/b/g/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 16
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getConfig()Lcom/comeback/data/ui/main/bean/ChannelConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->config:Lcom/comeback/data/ui/main/bean/ChannelConfig;

    return-object v0
.end method

.method public getDialogNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->dialogNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/HomeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->extra:Ljava/util/List;

    return-object v0
.end method

.method public getIosShare()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->iosShare:Ljava/lang/String;

    return-object v0
.end method

.method public getIosShareText()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PQpWgdTY0LPsjprYkf3NhIv4"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->iosShare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanzou()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->lanzou:Ljava/util/List;

    return-object v0
.end method

.method public getLaunch()Lcom/comeback/data/ui/main/bean/AD;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launchs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launchs:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launchs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/main/bean/AD;

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launch:Lcom/comeback/data/ui/main/bean/AD;

    return-object v0
.end method

.method public getLaunchs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launchs:Ljava/util/List;

    return-object v0
.end method

.method public getNewShareTexts()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newShareTexts:Ljava/util/List;

    return-object v0
.end method

.method public getNewUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lc/a/a/b/g/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewUrls()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeNo()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->noticeNo:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->shareTexts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->shareTexts:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->shareTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->shareText:Ljava/lang/String;

    return-object v0
.end method

.method public getShareText2()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newShareTexts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newShareTexts:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newShareTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTask()Lcom/comeback/data/ui/main/bean/InstallTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->task:Lcom/comeback/data/ui/main/bean/InstallTask;

    return-object v0
.end method

.method public getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/InstallTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrls:Ljava/util/List;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->versionNo:I

    return v0
.end method

.method public isForce()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->force:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getVersionNo()I

    move-result v0

    .line 3
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {v2}, Lc/a/a/b/g/h;->R(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->banner:Ljava/util/List;

    return-void
.end method

.method public setConfig(Lcom/comeback/data/ui/main/bean/ChannelConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->config:Lcom/comeback/data/ui/main/bean/ChannelConfig;

    return-void
.end method

.method public setDialogNotice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->dialogNotice:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/HomeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->extra:Ljava/util/List;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->force:Z

    return-void
.end method

.method public setIosShare(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->iosShare:Ljava/lang/String;

    return-void
.end method

.method public setLanzou(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->lanzou:Ljava/util/List;

    return-void
.end method

.method public setLaunch(Lcom/comeback/data/ui/main/bean/AD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launch:Lcom/comeback/data/ui/main/bean/AD;

    return-void
.end method

.method public setLaunchs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/AD;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->launchs:Ljava/util/List;

    return-void
.end method

.method public setNewShareTexts(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newShareTexts:Ljava/util/List;

    return-void
.end method

.method public setNewUrls(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->newUrls:Ljava/util/List;

    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->notice:Ljava/lang/String;

    return-void
.end method

.method public setNoticeNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->noticeNo:I

    return-void
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->shareText:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lcom/comeback/data/ui/main/bean/InstallTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->task:Lcom/comeback/data/ui/main/bean/InstallTask;

    return-void
.end method

.method public setTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/main/bean/InstallTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->tasks:Ljava/util/List;

    return-void
.end method

.method public setUpdateNotice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateNotice:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersionNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/main/bean/ConfigBean;->versionNo:I

    return-void
.end method
