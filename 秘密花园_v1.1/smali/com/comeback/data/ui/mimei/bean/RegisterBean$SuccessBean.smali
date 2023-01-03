.class public Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;
.super Ljava/lang/Object;
.source "RegisterBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/RegisterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessBean"
.end annotation


# instance fields
.field public token:Ljava/lang/String;

.field public universal_id:Ljava/lang/String;

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dQcCFg4BGQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniversal_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->universal_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->user_id:I

    return v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUniversal_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->universal_id:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/mimei/bean/RegisterBean$SuccessBean;->user_id:I

    return-void
.end method
