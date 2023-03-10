.class public Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;
.super Ljava/lang/Object;
.source "TiktopBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OwnerBean"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public followed:Z

.field public nickname:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isFollowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->followed:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setFollowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->followed:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean$VideosBean$OwnerBean;->uuid:Ljava/lang/String;

    return-void
.end method
