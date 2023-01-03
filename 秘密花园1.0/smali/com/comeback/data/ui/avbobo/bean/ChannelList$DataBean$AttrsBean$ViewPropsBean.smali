.class public Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPropsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;
    }
.end annotation


# instance fields
.field public containerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;

.field public contentContainerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;

.field public layout:Ljava/lang/String;

.field public refNumber:I

.field public useScrollView:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainerCustomStyle()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->containerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;

    return-object v0
.end method

.method public getContentContainerCustomStyle()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->contentContainerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->layout:Ljava/lang/String;

    return-object v0
.end method

.method public getRefNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->refNumber:I

    return v0
.end method

.method public isUseScrollView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->useScrollView:Z

    return v0
.end method

.method public setContainerCustomStyle(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->containerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContainerCustomStyleBean;

    return-void
.end method

.method public setContentContainerCustomStyle(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->contentContainerCustomStyle:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean$ContentContainerCustomStyleBean;

    return-void
.end method

.method public setLayout(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->layout:Ljava/lang/String;

    return-void
.end method

.method public setRefNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->refNumber:I

    return-void
.end method

.method public setUseScrollView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;->useScrollView:Z

    return-void
.end method
