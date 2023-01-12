.class public Lcom/comeback/data/ui/live/LiveChanelActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "LiveChanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/live/LiveChanelActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/live/bean/LiveChannel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/live/LiveChanelActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/LiveChanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/LiveChanelActivity$a;->f:Lcom/comeback/data/ui/live/LiveChanelActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/live/bean/LiveChannel;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/live/LiveChanelActivity$a;->f:Lcom/comeback/data/ui/live/LiveChanelActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/live/LiveChanelActivity;->r(Lcom/comeback/data/ui/live/LiveChanelActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/live/LiveChanelActivity$a;->f:Lcom/comeback/data/ui/live/LiveChanelActivity;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/live/bean/LiveChannel;->getData()Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;->getLists()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
