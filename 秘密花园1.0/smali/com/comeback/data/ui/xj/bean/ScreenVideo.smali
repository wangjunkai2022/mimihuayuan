.class public Lcom/comeback/data/ui/xj/bean/ScreenVideo;
.super Lf/e/a/f/j;
.source "ScreenVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

.field public errmsg:Ljava/lang/String;

.field public retcode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->data:Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetcode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->retcode:I

    return v0
.end method

.method public setData(Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->data:Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setRetcode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo;->retcode:I

    return-void
.end method
