.class public Lcom/comeback/data/ui/xj/bean/PlayUrl;
.super Lf/e/a/f/k;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

.field public errmsg:Ljava/lang/String;

.field public retcode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->data:Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetcode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->retcode:I

    return v0
.end method

.method public setData(Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->data:Lcom/comeback/data/ui/xj/bean/PlayUrl$DataBean;

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setRetcode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xj/bean/PlayUrl;->retcode:I

    return-void
.end method
