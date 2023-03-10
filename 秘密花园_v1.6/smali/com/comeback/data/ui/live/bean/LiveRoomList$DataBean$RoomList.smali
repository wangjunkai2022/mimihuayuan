.class public Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;
.super Ljava/lang/Object;
.source "LiveRoomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoomList"
.end annotation


# instance fields
.field public img:Ljava/lang/String;

.field public play_url:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->this$1:Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->play_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->img:Ljava/lang/String;

    return-void
.end method

.method public setPlay_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->play_url:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;->title:Ljava/lang/String;

    return-void
.end method
