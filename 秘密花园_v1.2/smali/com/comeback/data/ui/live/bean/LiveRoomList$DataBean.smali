.class public Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;
.super Ljava/lang/Object;
.source "LiveRoomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/live/bean/LiveRoomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;
    }
.end annotation


# instance fields
.field public lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/live/bean/LiveRoomList;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/bean/LiveRoomList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;->this$0:Lcom/comeback/data/ui/live/bean/LiveRoomList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;->lists:Ljava/util/List;

    return-object v0
.end method

.method public setLists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean$RoomList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;->lists:Ljava/util/List;

    return-void
.end method
