.class public Lcom/comeback/data/ui/cucumber/bean/LogBean;
.super Lf/e/a/f/j;
.source "LogBean.java"


# instance fields
.field public equiCompany:Ljava/lang/String;

.field public equiId:Ljava/lang/String;

.field public equiModel:Ljava/lang/String;

.field public liveVersion:Ljava/lang/String;

.field public netInfo:Ljava/lang/String;

.field public os:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getEquiCompany()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getEquiId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiId:Ljava/lang/String;

    return-object v0
.end method

.method public getEquiModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiModel:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->liveVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNetInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->netInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->os:I

    return v0
.end method

.method public setEquiCompany(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiCompany:Ljava/lang/String;

    return-void
.end method

.method public setEquiId(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc/a/a/b/g/h;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x15

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiId:Ljava/lang/String;

    return-void
.end method

.method public setEquiId2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiId:Ljava/lang/String;

    return-void
.end method

.method public setEquiModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->equiModel:Ljava/lang/String;

    return-void
.end method

.method public setLiveVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->liveVersion:Ljava/lang/String;

    return-void
.end method

.method public setNetInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->netInfo:Ljava/lang/String;

    return-void
.end method

.method public setOs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/LogBean;->os:I

    return-void
.end method
