.class public Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;
    }
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public ban:Z

.field public beforeRegFlag:Z

.field public code:Ljava/lang/String;

.field public commentBan:Z

.field public createTime:Ljava/lang/String;

.field public deviceBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;

.field public invited:Z

.field public lastLoginDevice:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;

.field public level:I

.field public mobileBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;

.field public platform:Ljava/lang/String;

.field public pushManId:Ljava/lang/String;

.field public regType:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userCreateTime:Ljava/lang/String;

.field public vip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceBang()Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->deviceBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;

    return-object v0
.end method

.method public getLastLoginDevice()Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->lastLoginDevice:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->level:I

    return v0
.end method

.method public getMobileBang()Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->mobileBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPushManId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->pushManId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->regType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->userCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isBan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->ban:Z

    return v0
.end method

.method public isBeforeRegFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->beforeRegFlag:Z

    return v0
.end method

.method public isCommentBan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->commentBan:Z

    return v0
.end method

.method public isInvited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->invited:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->vip:Z

    return v0
.end method

.method public setBan(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->ban:Z

    return-void
.end method

.method public setBeforeRegFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->beforeRegFlag:Z

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setCommentBan(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->commentBan:Z

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDeviceBang(Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->deviceBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;

    return-void
.end method

.method public setInvited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->invited:Z

    return-void
.end method

.method public setLastLoginDevice(Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->lastLoginDevice:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->level:I

    return-void
.end method

.method public setMobileBang(Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->mobileBang:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$MobileBangBean;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->platform:Ljava/lang/String;

    return-void
.end method

.method public setPushManId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->pushManId:Ljava/lang/String;

    return-void
.end method

.method public setRegType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->regType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->userCreateTime:Ljava/lang/String;

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->vip:Z

    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;->_id:Ljava/lang/String;

    return-void
.end method
