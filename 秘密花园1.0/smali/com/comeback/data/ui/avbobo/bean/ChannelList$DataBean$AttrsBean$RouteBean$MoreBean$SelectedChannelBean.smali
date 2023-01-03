.class public Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean$SelectedChannelBean;
.super Ljava/lang/Object;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedChannelBean"
.end annotation


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean$SelectedChannelBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelList$DataBean$AttrsBean$RouteBean$MoreBean$SelectedChannelBean;->id:Ljava/lang/String;

    return-void
.end method
