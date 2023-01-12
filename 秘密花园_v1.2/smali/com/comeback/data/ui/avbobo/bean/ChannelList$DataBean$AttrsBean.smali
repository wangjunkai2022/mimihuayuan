.class public Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;
    }
.end annotation


# instance fields
.field public allowChange:Z

.field public hideHeader:Z

.field public route:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;

.field public showMore:Z

.field public style:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;

.field public subView:Ljava/lang/String;

.field public view:Ljava/lang/String;

.field public viewProps:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoute()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->route:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;

    return-object v0
.end method

.method public getStyle()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->style:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;

    return-object v0
.end method

.method public getSubView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->subView:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->view:Ljava/lang/String;

    return-object v0
.end method

.method public getViewProps()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->viewProps:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;

    return-object v0
.end method

.method public isAllowChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->allowChange:Z

    return v0
.end method

.method public isHideHeader()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->hideHeader:Z

    return v0
.end method

.method public isShowMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->showMore:Z

    return v0
.end method

.method public setAllowChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->allowChange:Z

    return-void
.end method

.method public setHideHeader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->hideHeader:Z

    return-void
.end method

.method public setRoute(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->route:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->showMore:Z

    return-void
.end method

.method public setStyle(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->style:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$StyleBean;

    return-void
.end method

.method public setSubView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->subView:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->view:Ljava/lang/String;

    return-void
.end method

.method public setViewProps(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;->viewProps:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$ViewPropsBean;

    return-void
.end method
