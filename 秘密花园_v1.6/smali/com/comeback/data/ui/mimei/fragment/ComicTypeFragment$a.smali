.class public Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "ComicTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/mimei/bean/ComicHomeType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->p(Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;

    .line 4
    iget v2, v0, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->j:I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getNewX()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "0f7jjNTi36jHgKLX"

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getNewX()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 7
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v2}, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;-><init>(Landroid/content/Context;ZLf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getType()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;

    .line 10
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 11
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->getInfo()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4}, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    new-instance v4, Lf/a/a/a/l/g;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v5, 0xf

    .line 13
    invoke-virtual {v4, v5, v1, v5, v1}, Lf/a/a/a/l/j;->q(IIII)V

    .line 14
    invoke-virtual {v4, v5}, Lf/a/a/a/l/g;->D(I)V

    .line 15
    invoke-virtual {v4, v5}, Lf/a/a/a/l/g;->C(I)V

    .line 16
    iput-boolean v1, v4, Lf/a/a/a/l/g;->s:Z

    .line 17
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v7, v3, v4}, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getRanking()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "0ezxjMr/35Xv"

    .line 19
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getRanking()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getKorea_end()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "0szvg9Dg0KzagIjM"

    .line 21
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getKorea_end()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getKorea_serial()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "3939jNbO0KzagIjM"

    .line 23
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getKorea_serial()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getRecommend()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "0t7ZgeHo373bjrn3"

    .line 25
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;->getRecommend()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/mimei/fragment/ComicTypeFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    return-void
.end method
