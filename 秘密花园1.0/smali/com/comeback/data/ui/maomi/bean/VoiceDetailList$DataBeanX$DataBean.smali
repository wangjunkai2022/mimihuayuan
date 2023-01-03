.class public Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;
.super Ljava/lang/Object;
.source "VoiceDetailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;
    }
.end annotation


# instance fields
.field public anchor_id:Ljava/lang/String;

.field public book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

.field public book_id:I

.field public create_at:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public liked:Ljava/lang/Object;

.field public name:Ljava/lang/String;

.field public plays:Ljava/lang/String;

.field public praises:Ljava/lang/String;

.field public special_id:Ljava/lang/String;

.field public update_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBook()Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    return-object v0
.end method

.method public getBook_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book_id:I

    return v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->getThumb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLiked()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->liked:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlays()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->plays:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->getBrowses()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->plays:Ljava/lang/String;

    const-string v2, "0c7Cgvne36fN"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPraises()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->praises:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;->getPraises()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->praises:Ljava/lang/String;

    const-string v2, "09jZjMz63I3kg4rvkN/9"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecial_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->special_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->update_at:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchor_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->anchor_id:Ljava/lang/String;

    return-void
.end method

.method public setBook(Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book:Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean$BookBean;

    return-void
.end method

.method public setBook_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->book_id:I

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setLiked(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->liked:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlays(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->plays:Ljava/lang/String;

    return-void
.end method

.method public setPraises(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->praises:Ljava/lang/String;

    return-void
.end method

.method public setSpecial_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->special_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VoiceDetailList$DataBeanX$DataBean;->update_at:Ljava/lang/String;

    return-void
.end method
