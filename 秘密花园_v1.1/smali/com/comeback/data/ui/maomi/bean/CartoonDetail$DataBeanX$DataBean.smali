.class public Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "CartoonDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public browses:I

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public is_praise:Z

.field public liked:I

.field public name:Ljava/lang/String;

.field public praises:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowses()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->browses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0c7Cgt780ZT7"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLiked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->liked:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPraises()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->praises:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "09jZjMz63I3kg4rvkN/9"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIs_praise()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->is_praise:Z

    return v0
.end method

.method public setBrowses(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->browses:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->image:Ljava/lang/String;

    return-void
.end method

.method public setIs_praise(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->is_praise:Z

    return-void
.end method

.method public setLiked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->liked:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPraises(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/CartoonDetail$DataBeanX$DataBean;->praises:I

    return-void
.end method
