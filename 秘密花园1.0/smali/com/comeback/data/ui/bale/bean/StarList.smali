.class public Lcom/comeback/data/ui/bale/bean/StarList;
.super Lf/e/a/f/j;
.source "StarList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;
    }
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public result:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList;->result:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/bale/bean/StarList;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList;->result:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/bale/bean/StarList;->status:I

    return-void
.end method
