.class public Lcom/comeback/data/ui/xj/fragment/ChannelFragment;
.super Lcom/comeback/data/base/BaseVRefreshFragment;
.source "ChannelFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/comeback/data/ui/xj/fragment/ChannelFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseVRefreshFragment;->m()V

    return-void
.end method

.method public static q(Lcom/comeback/data/ui/xj/fragment/ChannelFragment;Lcom/comeback/data/ui/xj/bean/Channel;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel;->getData()Lcom/comeback/data/ui/xj/bean/Channel$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->getActorrows()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel;->getData()Lcom/comeback/data/ui/xj/bean/Channel$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->getRows()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/comeback/data/base/BaseRefreshFragment;->g:I

    if-ne v2, v1, :cond_0

    .line 4
    new-instance v2, Lf/a/a/a/l/l;

    invoke-direct {v2}, Lf/a/a/a/l/l;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/xj/adapter/VStarAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/comeback/data/ui/xj/adapter/VStarAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    .line 8
    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getVodrows()Ljava/util/List;

    move-result-object v2

    .line 9
    new-instance v3, Lf/a/a/a/l/c;

    invoke-direct {v3}, Lf/a/a/a/l/c;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/xj/adapter/VTitle1Adapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0, v3}, Lcom/comeback/data/ui/xj/adapter/VTitle1Adapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 11
    new-instance v0, Lf/a/a/a/l/g;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lf/a/a/a/l/g;-><init>(I)V

    const/4 v3, 0x5

    .line 12
    invoke-virtual {v0, v3}, Lf/a/a/a/l/g;->D(I)V

    .line 13
    invoke-virtual {v0, v3}, Lf/a/a/a/l/g;->C(I)V

    .line 14
    iput-boolean v1, v0, Lf/a/a/a/l/g;->s:Z

    .line 15
    iget-object v3, p0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 16
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0143

    return v0
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
    invoke-static {}, Lf/e/a/j/s0/f/b;->a()Lf/e/a/j/s0/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/e/a/j/s0/f/a;->b(I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/xj/fragment/ChannelFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/xj/fragment/ChannelFragment$a;-><init>(Lcom/comeback/data/ui/xj/fragment/ChannelFragment;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
