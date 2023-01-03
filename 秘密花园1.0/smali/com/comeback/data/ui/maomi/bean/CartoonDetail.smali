.class public Lcom/comeback/data/ui/maomi/bean/CartoonDetail;
.super Lf/e/a/f/j;
.source "CartoonDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;

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
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->data:Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->data:Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail;->message:Ljava/lang/String;

    return-void
.end method
