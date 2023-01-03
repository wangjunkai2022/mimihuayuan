.class public Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "AnimateTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->p(Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;

    .line 4
    iget v2, v0, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->j:I

    if-eqz v2, :cond_0

    const-string v2, "0f7jgv3D3LnbgaDc"

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getNewX()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getType()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;

    .line 8
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 9
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;->getInfo()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean$InfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean$InfoBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4}, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 10
    new-instance v4, Lf/a/a/a/l/g;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v5, 0xf

    .line 11
    invoke-virtual {v4, v5, v1, v5, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 12
    invoke-virtual {v4, v5}, Lf/a/a/a/l/g;->D(I)V

    .line 13
    invoke-virtual {v4, v5}, Lf/a/a/a/l/g;->C(I)V

    .line 14
    iput-boolean v1, v4, Lf/a/a/a/l/g;->s:Z

    .line 15
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$TypeBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v7, v3, v4}, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_1
    const-string v1, "0ezxjMr/35Xv"

    .line 16
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getRanking()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "0szvg9Dg0KzagIjM"

    .line 17
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getKorea_end()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "3939jNbO0KzagIjM"

    .line 18
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getKorea_serial()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "0t7ZgeHo373bjrn3"

    .line 19
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean;->getRecommend()Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/AnimateHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/mimei/fragment/AnimateTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
