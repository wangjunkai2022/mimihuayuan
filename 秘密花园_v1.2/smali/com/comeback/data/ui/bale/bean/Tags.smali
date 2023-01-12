.class public Lcom/comeback/data/ui/bale/bean/Tags;
.super Lf/e/a/f/k;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;
    }
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public result:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/Tags;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/Tags;->result:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/Tags;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/Tags;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/Tags;->result:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/Tags;->status:I

    return-void
.end method
