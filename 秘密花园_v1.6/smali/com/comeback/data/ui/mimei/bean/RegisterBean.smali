.class public Lcom/comeback/data/ui/mimei/bean/RegisterBean;
.super Lf/e/a/f/k;
.source "RegisterBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;
    }
.end annotation


# instance fields
.field public success:Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getSuccess()Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean;->success:Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;

    return-object v0
.end method

.method public setSuccess(Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean;->success:Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;

    return-void
.end method
