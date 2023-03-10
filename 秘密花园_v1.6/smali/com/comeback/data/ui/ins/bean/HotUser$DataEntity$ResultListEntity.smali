.class public Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;
.super Ljava/lang/Object;
.source "HotUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;
    }
.end annotation


# instance fields
.field public follow:Z

.field public hasUnreadSnap:Z

.field public headImgUrl:Ljava/lang/String;

.field public headImgUrlv:Ljava/lang/String;

.field public heat:Ljava/lang/String;

.field public igtvNum:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;

.field public userId:Ljava/lang/String;

.field public userPrivacy:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;

.field public username:Ljava/lang/String;

.field public vipLevel:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->this$1:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImgUrl()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->headImgUrl:Ljava/lang/String;

    const-string v2, "GRYbEA=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadImgUrlv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->headImgUrlv:Ljava/lang/String;

    return-object v0
.end method

.method public getHeat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->heat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgtvNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->igtvNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrivacy()Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->userPrivacy:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->vipLevel:I

    return v0
.end method

.method public isFollow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->follow:Z

    return v0
.end method

.method public isHasUnreadSnap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->hasUnreadSnap:Z

    return v0
.end method

.method public setFollow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->follow:Z

    return-void
.end method

.method public setHasUnreadSnap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->hasUnreadSnap:Z

    return-void
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeadImgUrlv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->headImgUrlv:Ljava/lang/String;

    return-void
.end method

.method public setHeat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->heat:Ljava/lang/String;

    return-void
.end method

.method public setIgtvNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->igtvNum:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->sign:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserPrivacy(Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->userPrivacy:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity$UserPrivacyEntity;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->username:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->vipLevel:I

    return-void
.end method
