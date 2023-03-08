.class public Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserInfoEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;
    }
.end annotation


# instance fields
.field public follow:Z

.field public hasUnreadSnap:Z

.field public headImgUrl:Ljava/lang/String;

.field public headImgUrlv:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public subscriptionPrice:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

.field public userFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;

.field public userPrivacy:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;

.field public username:Ljava/lang/String;

.field public vipEndTime:Ljava/lang/String;

.field public vipLevel:I

.field public vipStartTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->this$2:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImgUrlv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->headImgUrlv:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->subscriptionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userFlagList:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrivacy()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userPrivacy:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipLevel:I

    return v0
.end method

.method public getVipStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public isFollow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->follow:Z

    return v0
.end method

.method public isHasUnreadSnap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->hasUnreadSnap:Z

    return v0
.end method

.method public setFollow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->follow:Z

    return-void
.end method

.method public setHasUnreadSnap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->hasUnreadSnap:Z

    return-void
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeadImgUrlv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->headImgUrlv:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->sign:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->subscriptionPrice:Ljava/lang/String;

    return-void
.end method

.method public setUserFlagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userFlagList:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserPrivacy(Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->userPrivacy:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity$UserPrivacyEntity;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->username:Ljava/lang/String;

    return-void
.end method

.method public setVipEndTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipEndTime:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipLevel:I

    return-void
.end method

.method public setVipStartTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->vipStartTime:Ljava/lang/String;

    return-void
.end method
