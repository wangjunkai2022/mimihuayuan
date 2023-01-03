.class public Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainerCustomStyleBean"
.end annotation


# instance fields
.field public marginTop:I

.field public overflow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;->marginTop:I

    return v0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;->overflow:Ljava/lang/String;

    return-object v0
.end method

.method public setMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;->marginTop:I

    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;->overflow:Ljava/lang/String;

    return-void
.end method
