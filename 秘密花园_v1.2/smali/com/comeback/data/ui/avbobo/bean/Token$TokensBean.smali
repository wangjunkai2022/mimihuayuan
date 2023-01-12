.class public Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokensBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;
    }
.end annotation


# instance fields
.field public loginToken:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;

.field public token:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginToken()Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;->loginToken:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;

    return-object v0
.end method

.method public getToken()Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;->token:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;

    return-object v0
.end method

.method public setLoginToken(Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;->loginToken:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$LoginTokenBean;

    return-void
.end method

.method public setToken(Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;->token:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean$TokenBean;

    return-void
.end method
