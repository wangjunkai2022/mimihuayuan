.class public Lcom/comeback/data/ui/km/bean/PicList;
.super Lf/e/a/f/j;
.source "PicList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km/bean/PicList$DataBean;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/km/bean/PicList$DataBean;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km/bean/PicList;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/km/bean/PicList$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList;->data:Lcom/comeback/data/ui/km/bean/PicList$DataBean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km/bean/PicList;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/km/bean/PicList$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList;->data:Lcom/comeback/data/ui/km/bean/PicList$DataBean;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList;->message:Ljava/lang/String;

    return-void
.end method
