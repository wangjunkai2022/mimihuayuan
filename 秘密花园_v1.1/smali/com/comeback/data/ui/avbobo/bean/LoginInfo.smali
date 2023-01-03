.class public Lcom/comeback/data/ui/avbobo/bean/LoginInfo;
.super Lf/e/a/f/j;
.source "LoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;
    }
.end annotation


# instance fields
.field public errors:Ljava/lang/Object;

.field public message:Ljava/lang/Object;

.field public status:I

.field public tokens:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->errors:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->status:I

    return v0
.end method

.method public getTokens()Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->tokens:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;

    return-object v0
.end method

.method public setErrors(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->errors:Ljava/lang/Object;

    return-void
.end method

.method public setMessage(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->message:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->status:I

    return-void
.end method

.method public setTokens(Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LoginInfo;->tokens:Lcom/comeback/data/ui/avbobo/bean/LoginInfo$TokensBean;

    return-void
.end method
