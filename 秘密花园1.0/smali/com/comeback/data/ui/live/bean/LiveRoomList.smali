.class public Lcom/comeback/data/ui/live/bean/LiveRoomList;
.super Lf/e/a/f/j;
.source "LiveRoomList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList;->data:Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;

    return-object v0
.end method

.method public setData(Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList;->data:Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;

    return-void
.end method
