.class public Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;
.super Ljava/lang/Object;
.source "AnimateHomeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;,
        Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$BannerBean;,
        Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    }
.end annotation


# instance fields
.field public banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public continued:Ljava/lang/Object;

.field public korea_end:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

.field public korea_serial:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

.field public newX:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .annotation runtime Lf/i/b/b0/b;
        value = "new"
    .end annotation
.end field

.field public ranking:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

.field public recommend:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

.field public series:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiAnimateItem;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getContinued()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->continued:Ljava/lang/Object;

    return-object v0
.end method

.method public getKorea_end()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->korea_end:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-object v0
.end method

.method public getKorea_serial()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->korea_serial:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-object v0
.end method

.method public getNewX()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->newX:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-object v0
.end method

.method public getRanking()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->ranking:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-object v0
.end method

.method public getRecommend()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->recommend:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-object v0
.end method

.method public getType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->type:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->type:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->category:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->category:Ljava/util/List;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->banner:Ljava/util/List;

    return-void
.end method

.method public setContinued(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->continued:Ljava/lang/Object;

    return-void
.end method

.method public setKorea_end(Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->korea_end:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-void
.end method

.method public setKorea_serial(Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->korea_serial:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-void
.end method

.method public setNewX(Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->newX:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-void
.end method

.method public setRanking(Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->ranking:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-void
.end method

.method public setRecommend(Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->recommend:Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    return-void
.end method

.method public setType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->type:Ljava/util/List;

    return-void
.end method
