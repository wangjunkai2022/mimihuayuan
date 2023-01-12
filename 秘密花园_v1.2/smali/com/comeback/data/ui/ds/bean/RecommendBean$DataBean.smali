.class public Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;
.super Ljava/lang/Object;
.source "RecommendBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ds/bean/RecommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    }
.end annotation


# instance fields
.field public cnxh:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public jphc1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public jphc2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public mzsx:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public mzxm:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public rmtj1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public rmtj2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

.field public top:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCnxh()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->cnxh:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getJphc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getJphc1()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->access$000(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getJphc2()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->access$000(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getJphc1()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->jphc1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getJphc2()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->jphc2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getMzsx()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->mzsx:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getMzxm()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->mzxm:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getRmtj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getRmtj1()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->access$000(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->getRmtj1()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;->access$000(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRmtj1()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->rmtj1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getRmtj2()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->rmtj2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public getTop()Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->top:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-object v0
.end method

.method public setCnxh(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->cnxh:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setJphc1(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->jphc1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setJphc2(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->jphc2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setMzsx(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->mzsx:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setMzxm(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->mzxm:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setRmtj1(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->rmtj1:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setRmtj2(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->rmtj2:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method

.method public setTop(Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean;->top:Lcom/comeback/data/ui/ds/bean/RecommendBean$DataBean$DataBeanX;

    return-void
.end method
