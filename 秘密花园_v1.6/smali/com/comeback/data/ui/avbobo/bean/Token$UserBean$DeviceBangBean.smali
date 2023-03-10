.class public Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceBangBean"
.end annotation


# instance fields
.field public fingerprint:Ljava/lang/String;

.field public regDeviceIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDeviceIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;->regDeviceIp:Ljava/lang/String;

    return-object v0
.end method

.method public setFingerprint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;->fingerprint:Ljava/lang/String;

    return-void
.end method

.method public setRegDeviceIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$DeviceBangBean;->regDeviceIp:Ljava/lang/String;

    return-void
.end method
