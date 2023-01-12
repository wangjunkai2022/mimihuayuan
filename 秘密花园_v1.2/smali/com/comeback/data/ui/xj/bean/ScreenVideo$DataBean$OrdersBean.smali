.class public Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;
.super Ljava/lang/Object;
.source "ScreenVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrdersBean"
.end annotation


# instance fields
.field public keyid:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->keyid:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->keyid:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;->value:Ljava/lang/String;

    return-void
.end method
