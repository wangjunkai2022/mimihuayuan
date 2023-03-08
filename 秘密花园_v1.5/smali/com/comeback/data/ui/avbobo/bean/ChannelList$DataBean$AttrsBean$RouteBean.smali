.class public Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;
    }
.end annotation


# instance fields
.field public more:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMore()Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;->more:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;

    return-object v0
.end method

.method public setMore(Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean;->more:Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;

    return-void
.end method
