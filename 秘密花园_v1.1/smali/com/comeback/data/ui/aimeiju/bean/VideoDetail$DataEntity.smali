.class public Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;
    }
.end annotation


# instance fields
.field public addtime:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public cion:Ljava/lang/String;

.field public cname:Ljava/lang/String;

.field public comment_count:I

.field public daoyan:Ljava/lang/String;

.field public dhits:I

.field public diqu:Ljava/lang/String;

.field public fid:Ljava/lang/String;

.field public hits:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public look:I

.field public looktime:I

.field public name:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;

.field public type:Ljava/lang/String;

.field public vip:Ljava/lang/String;

.field public year:Ljava/lang/String;

.field public yuyan:Ljava/lang/String;

.field public zhuyan:Ljava/lang/String;

.field public zu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->this$0:Lcom/comeback/data/ui/aimeiju/bean/VideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddtime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->addtime:Ljava/lang/String;

    return-object v0
.end method

.method public getAllInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0NPYgfX41o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cname:Ljava/lang/String;

    const-string v2, "F0KG+NuWtYmc2q4="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->diqu:Ljava/lang/String;

    const-string v2, "F0KG3d+Xgo6c2q4="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cion:Ljava/lang/String;

    return-object v0
.end method

.method public getCname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->comment_count:I

    return v0
.end method

.method public getDaoyan()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0s3fgtfn1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->daoyan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->dhits:I

    return v0
.end method

.method public getDiqu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->diqu:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getHits()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0fDOgv/N1o/p"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->hits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLook()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->look:I

    return v0
.end method

.method public getLooktime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->looktime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "39Plg/jQ0Zz3g7zh"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->pf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->year:Ljava/lang/String;

    return-object v0
.end method

.method public getYuyan()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->yuyan:Ljava/lang/String;

    return-object v0
.end method

.method public getZhuyan()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->zhuyan:Ljava/lang/String;

    return-object v0
.end method

.method public getZu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->zu:Ljava/util/List;

    return-object v0
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->addtime:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cion:Ljava/lang/String;

    return-void
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->cname:Ljava/lang/String;

    return-void
.end method

.method public setComment_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->comment_count:I

    return-void
.end method

.method public setDaoyan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->daoyan:Ljava/lang/String;

    return-void
.end method

.method public setDhits(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->dhits:I

    return-void
.end method

.method public setDiqu(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->diqu:Ljava/lang/String;

    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->fid:Ljava/lang/String;

    return-void
.end method

.method public setHits(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->hits:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->info:Ljava/lang/String;

    return-void
.end method

.method public setLook(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->look:I

    return-void
.end method

.method public setLooktime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->looktime:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->pf:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->pic:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->state:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->tags:Ljava/util/List;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->vip:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->year:Ljava/lang/String;

    return-void
.end method

.method public setYuyan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->yuyan:Ljava/lang/String;

    return-void
.end method

.method public setZhuyan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->zhuyan:Ljava/lang/String;

    return-void
.end method

.method public setZu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity$ZuEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/bean/VideoDetail$DataEntity;->zu:Ljava/util/List;

    return-void
.end method
