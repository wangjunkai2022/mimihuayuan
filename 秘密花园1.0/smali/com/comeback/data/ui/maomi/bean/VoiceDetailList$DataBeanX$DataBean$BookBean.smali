.class public Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;
.super Ljava/lang/Object;
.source "VoiceDetailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookBean"
.end annotation


# instance fields
.field public browses:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public praises:Ljava/lang/String;

.field public status:I

.field public thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowses()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->browses:Ljava/lang/String;

    const-string v2, "0c7Cgvne36fN"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPraises()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->praises:Ljava/lang/String;

    const-string v2, "09jZjMz63I3kg4rvkN/9"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->status:I

    return v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->status:I

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->thumb:Ljava/lang/String;

    return-void
.end method
