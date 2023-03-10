.class public Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/iqiyi/bean/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenBean"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public expiresIn:I

.field public ext:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->expiresIn:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->expiresIn:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->ext:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/bean/AppInfo$TokenBean;->username:Ljava/lang/String;

    return-void
.end method
