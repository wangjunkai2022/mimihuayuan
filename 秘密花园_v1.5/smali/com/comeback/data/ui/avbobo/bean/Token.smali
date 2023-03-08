.class public Lcom/comeback/data/ui/avbobo/bean/Token;
.super Lf/e/a/f/k;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;,
        Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;
    }
.end annotation


# instance fields
.field public appConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;

.field public tokens:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;

.field public user:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppConfig()Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->appConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;

    return-object v0
.end method

.method public getTokens()Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->tokens:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;

    return-object v0
.end method

.method public getUser()Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->user:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;

    return-object v0
.end method

.method public setAppConfig(Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->appConfig:Lcom/comeback/data/ui/avbobo/bean/Token$AppConfigBean;

    return-void
.end method

.method public setTokens(Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->tokens:Lcom/comeback/data/ui/avbobo/bean/Token$TokensBean;

    return-void
.end method

.method public setUser(Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token;->user:Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;

    return-void
.end method
