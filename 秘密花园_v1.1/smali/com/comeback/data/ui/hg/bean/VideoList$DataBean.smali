.class public Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hg/bean/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;,
        Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;,
        Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;,
        Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;,
        Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;
    }
.end annotation


# instance fields
.field public address:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;

.field public allCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;

.field public allJCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;

.field public cover:Ljava/lang/String;

.field public gmtCreate:Ljava/lang/String;

.field public id:I

.field public jThumbnail:Ljava/lang/String;

.field public mins:Ljava/lang/String;

.field public movDesc:Ljava/lang/String;

.field public movName:Ljava/lang/String;

.field public movScore:Ljava/lang/String;

.field public movSize:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;

.field public movSn:Ljava/lang/String;

.field public movSnOri:Ljava/lang/String;

.field public playCnt:I

.field public primevalCover:Ljava/lang/String;

.field public relTagName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public score:Ljava/lang/String;

.field public selector:Ljava/lang/String;

.field public strPlayCnt:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public userId:Ljava/lang/Object;

.field public vipFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->address:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;

    return-object v0
.end method

.method public getAllCovers()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->allCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;

    return-object v0
.end method

.method public getAllJCovers()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->allJCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getMovScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0urlRBdT"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getStrPlayCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fx5D"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->gmtCreate:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSnOri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->id:I

    return v0
.end method

.method public getJThumbnail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->jThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getMins()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->mins:Ljava/lang/String;

    return-object v0
.end method

.method public getMovDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMovName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movName:Ljava/lang/String;

    return-object v0
.end method

.method public getMovScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movScore:Ljava/lang/String;

    return-object v0
.end method

.method public getMovSize()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSize:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;

    return-object v0
.end method

.method public getMovSn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSn:Ljava/lang/String;

    return-object v0
.end method

.method public getMovSnOri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSnOri:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->playCnt:I

    return v0
.end method

.method public getPlayName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getAddress()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$000(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BlJbVDs="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$100(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AFBTNA=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$200(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "A1pTNA=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$300(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BFRTNA=="

    .line 10
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$400(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "BVZTNA=="

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getPlayUrl()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->getAddress()Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$000(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->get_$1080P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$100(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->get_$720P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$200(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->get_$480P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$300(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->get_$360P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->access$400(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->get_$240P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getPrimevalCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->primevalCover:Ljava/lang/String;

    return-object v0
.end method

.method public getRelTagName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->relTagName:Ljava/util/List;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->selector:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPlayCnt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->strPlayCnt:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->userId:Ljava/lang/Object;

    return-object v0
.end method

.method public getVipFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->vipFlag:I

    return v0
.end method

.method public setAddress(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->address:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;

    return-void
.end method

.method public setAllCovers(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->allCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllCoversBean;

    return-void
.end method

.method public setAllJCovers(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->allJCovers:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AllJCoversBean;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->id:I

    return-void
.end method

.method public setJThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->jThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setMins(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->mins:Ljava/lang/String;

    return-void
.end method

.method public setMovDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movDesc:Ljava/lang/String;

    return-void
.end method

.method public setMovName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movName:Ljava/lang/String;

    return-void
.end method

.method public setMovScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movScore:Ljava/lang/String;

    return-void
.end method

.method public setMovSize(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSize:Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;

    return-void
.end method

.method public setMovSn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSn:Ljava/lang/String;

    return-void
.end method

.method public setMovSnOri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->movSnOri:Ljava/lang/String;

    return-void
.end method

.method public setPlayCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->playCnt:I

    return-void
.end method

.method public setPrimevalCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->primevalCover:Ljava/lang/String;

    return-void
.end method

.method public setRelTagName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->relTagName:Ljava/util/List;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setSelector(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->selector:Ljava/lang/String;

    return-void
.end method

.method public setStrPlayCnt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->strPlayCnt:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->userId:Ljava/lang/Object;

    return-void
.end method

.method public setVipFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;->vipFlag:I

    return-void
.end method
