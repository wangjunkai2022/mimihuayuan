.class public Lcom/comeback/data/ui/live/LiveListActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "LiveListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/live/LiveListActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/live/bean/LiveRoomList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/live/LiveListActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/LiveListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/LiveListActivity$a;->f:Lcom/comeback/data/ui/live/LiveListActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/live/bean/LiveRoomList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/live/LiveListActivity$a;->f:Lcom/comeback/data/ui/live/LiveListActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/live/LiveListActivity;->r(Lcom/comeback/data/ui/live/LiveListActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/live/LiveListActivity$a;->f:Lcom/comeback/data/ui/live/LiveListActivity;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/live/bean/LiveRoomList;->getData()Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/live/bean/LiveRoomList$DataBean;->getLists()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
