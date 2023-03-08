.class public Lcom/comeback/data/ui/hgl/bean/ChannelList;
.super Lf/e/a/f/k;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;
    }
.end annotation


# instance fields
.field public pingtai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getPingtai()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList;->pingtai:Ljava/util/List;

    return-object v0
.end method

.method public setPingtai(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ChannelList;->pingtai:Ljava/util/List;

    return-void
.end method
