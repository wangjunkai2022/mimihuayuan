.class public Lcom/comeback/data/ui/maomi/fragment/VideoFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "VideoFragment.java"


# instance fields
.field public j:Lcom/comeback/data/ui/maomi/bean/SpecialList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static p(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;Lcom/comeback/data/ui/maomi/bean/HomeData;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/HomeData;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 2
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 4
    new-instance v1, Lf/a/a/a/l/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lf/a/a/a/l/g;-><init>(I)V

    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v2, v3}, Lf/a/a/a/l/j;->q(IIII)V

    .line 6
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->D(I)V

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/a/l/g;->C(I)V

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lf/a/a/a/l/g;->s:Z

    .line 9
    iget-object v2, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static synthetic q(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->mRvList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/d0/m/a;->q()Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lf/e/a/j/d0/l/b;

    invoke-direct {v1, p0}, Lf/e/a/j/d0/l/b;-><init>(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public l(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->j:Lcom/comeback/data/ui/maomi/bean/SpecialList;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->m()V

    .line 3
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object p1

    invoke-interface {p1}, Lf/e/a/j/d0/m/a;->j()Lm/e;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/comeback/data/ui/maomi/fragment/VideoFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/maomi/fragment/VideoFragment$a;-><init>(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 6
    new-instance p1, Lf/a/a/a/l/m;

    invoke-direct {p1}, Lf/a/a/a/l/m;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/maomi/adapter/HomeHeaderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/comeback/data/ui/maomi/adapter/HomeHeaderAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 8
    new-instance p1, Lf/a/a/a/l/l;

    invoke-direct {p1}, Lf/a/a/a/l/l;-><init>()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v0, v0, v0}, Lf/a/a/a/l/j;->p(IIII)V

    .line 10
    new-instance v1, Lcom/comeback/data/ui/commom/PPTAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->j:Lcom/comeback/data/ui/maomi/bean/SpecialList;

    invoke-direct {v1, v2, p1, v3}, Lcom/comeback/data/ui/commom/PPTAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/commom/PPTAdapter$c;)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    new-instance p1, Lf/e/a/j/d0/l/a;

    invoke-direct {p1, p0}, Lf/e/a/j/d0/l/a;-><init>(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)V

    .line 13
    iput-object p1, v1, Lcom/comeback/data/ui/commom/PPTAdapter;->c:Lcom/comeback/data/ui/commom/PPTAdapter$b;

    .line 14
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 15
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    return-void
.end method

.method public synthetic r(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->j:Lcom/comeback/data/ui/maomi/bean/SpecialList;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/SpecialList;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/maomi/bean/SpecialList$DataBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SpecialList$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SpecialList$DataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SpecialList$DataBean;->getDescribe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/SpecialList$DataBean;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/comeback/data/ui/maomi/SpecialDetailActivity;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
