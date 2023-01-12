.class public Lcom/comeback/data/ui/nana/fragment/RecommendFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "RecommendFragment.java"


# instance fields
.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static q(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;Lcom/comeback/data/ui/nana/bean/MenuBean;I)V
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/MenuBean;->getResponse()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    .line 4
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lf/e/a/j/h0/m/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lf/e/a/j/h0/m/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v1

    .line 5
    new-instance v2, Lf/e/a/j/h0/l/a;

    invoke-direct {v2, p0, p2, v0, p1}, Lf/e/a/j/h0/l/a;-><init>(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;ILcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lcom/comeback/data/ui/nana/bean/MenuBean;)V

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public static synthetic r(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static s(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lcom/comeback/data/ui/nana/bean/VideoListBean;)V
    .locals 4

    if-eqz p0, :cond_3

    const-string v0, "VQMNCg4B"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean;->getResponse()Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->getVideos()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/e/a/g/a;

    .line 6
    invoke-interface {v0}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lf/a/a/a/l/i;

    invoke-direct {p2}, Lf/a/a/a/l/i;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lf/e/a/j/h0/l/b;

    invoke-direct {v3, p0}, Lf/e/a/j/h0/l/b;-><init>(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)V

    invoke-direct {v1, v2, p2, p1, v3}, Lcom/comeback/data/ui/nana/adapter/BannerAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0}, Lf/a/a/a/l/c;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    new-instance p1, Lf/a/a/a/l/g;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v0, 0x5

    .line 13
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->D(I)V

    .line 14
    invoke-virtual {p1, v0}, Lf/a/a/a/l/g;->C(I)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p1, Lf/a/a/a/l/g;->s:Z

    .line 16
    iget-object v0, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v1, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean;->getResponse()Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->getVideos()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p0, p2, p1}, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :goto_1
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static t(Ljava/lang/String;)Lcom/comeback/data/base/BaseFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "QQsHAQQsTUoDAw=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QQsHAQQsTUoDAw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->f()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->j:Ljava/lang/String;

    sget-object v1, Lf/e/a/j/h0/m/d;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lf/e/a/j/h0/m/b;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;-><init>(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
