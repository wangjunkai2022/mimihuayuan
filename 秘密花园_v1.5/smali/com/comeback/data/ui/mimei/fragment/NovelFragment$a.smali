.class public Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "NovelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/fragment/NovelFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/mimei/bean/NovelHomeType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/mimei/fragment/NovelFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/fragment/NovelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/NovelFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/NovelHomeType;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/NovelFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/mimei/fragment/NovelFragment;->p(Lcom/comeback/data/ui/mimei/fragment/NovelFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/fragment/NovelFragment$a;->f:Lcom/comeback/data/ui/mimei/fragment/NovelFragment;

    if-eqz v0, :cond_1

    .line 4
    new-instance v2, Lf/a/a/a/l/c;

    invoke-direct {v2}, Lf/a/a/a/l/c;-><init>()V

    .line 5
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;-><init>(Landroid/content/Context;ZLf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    const-string v2, "0f7jgv3D3IP8jpvT"

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;->getNewX()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comeback/data/ui/mimei/fragment/NovelFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "39L/gc3K373bjrn3"

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;->getRecommend()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comeback/data/ui/mimei/fragment/NovelFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;->getType()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$TypeBean;

    .line 10
    new-instance v4, Lf/a/a/a/l/c;

    invoke-direct {v4}, Lf/a/a/a/l/c;-><init>()V

    .line 11
    iget-object v5, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/HomeTitle2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$TypeBean;->getInfo()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$TypeBean$InfoBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$TypeBean$InfoBean;->getName()Ljava/lang/String;

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

    new-instance v6, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$TypeBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v7, v3, v4}, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    const-string v1, "09jZgtvn35XvRmAoKFtT"

    .line 18
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType;->getSuccess()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean;->getRanking()Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/NovelHomeType$SuccessBean$RankingBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/mimei/fragment/NovelFragment;->q(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
.end method
