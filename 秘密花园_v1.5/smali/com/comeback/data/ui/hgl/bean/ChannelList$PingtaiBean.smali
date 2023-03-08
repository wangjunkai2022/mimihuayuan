.class public Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hgl/bean/ChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingtaiBean"
.end annotation


# instance fields
.field public Number:Ljava/lang/String;

.field public address:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public xinimg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getXinimg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->xinimg:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->Number:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setXinimg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->xinimg:Ljava/lang/String;

    return-void
.end method
