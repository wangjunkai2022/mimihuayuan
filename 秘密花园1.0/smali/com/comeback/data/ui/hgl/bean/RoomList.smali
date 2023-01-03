.class public Lcom/comeback/data/ui/hgl/bean/RoomList;
.super Lf/e/a/f/j;
.source "RoomList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hgl/bean/RoomList$ZhuboBean;
    }
.end annotation


# instance fields
.field public zhubo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/RoomList$ZhuboBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getZhubo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/RoomList$ZhuboBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/RoomList;->zhubo:Ljava/util/List;

    return-object v0
.end method

.method public setZhubo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hgl/bean/RoomList$ZhuboBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/RoomList;->zhubo:Ljava/util/List;

    return-void
.end method
