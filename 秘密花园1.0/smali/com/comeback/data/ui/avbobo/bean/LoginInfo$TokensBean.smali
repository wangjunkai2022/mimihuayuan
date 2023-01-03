.class public Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/LoginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokensBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;,
        Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;
    }
.end annotation


# instance fields
.field public loginToken:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;

.field public notifyMessage:Ljava/lang/Object;

.field public status:I

.field public token:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginToken()Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->loginToken:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;

    return-object v0
.end method

.method public getNotifyMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->notifyMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->status:I

    return v0
.end method

.method public getToken()Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->token:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;

    return-object v0
.end method

.method public setLoginToken(Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->loginToken:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$LoginTokenBean;

    return-void
.end method

.method public setNotifyMessage(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->notifyMessage:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->status:I

    return-void
.end method

.method public setToken(Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;->token:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean$TokenBean;

    return-void
.end method
