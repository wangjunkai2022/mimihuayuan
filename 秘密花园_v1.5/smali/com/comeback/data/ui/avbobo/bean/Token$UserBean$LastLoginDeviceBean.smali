.class public Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/Token$UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastLoginDeviceBean"
.end annotation


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceSystemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;->deviceSystemName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSystemName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/Token$UserBean$LastLoginDeviceBean;->deviceSystemName:Ljava/lang/String;

    return-void
.end method
