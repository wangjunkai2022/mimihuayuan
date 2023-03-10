.class public Lcom/comeback/data/ui/xj/SpecialDetailActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "SpecialDetailActivity.java"


# instance fields
.field public e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

.field public f:Lcom/comeback/data/ui/xj/bean/Special;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;-><init>()V

    return-void
.end method

.method public static u(Lcom/comeback/data/ui/xj/SpecialDetailActivity;Lcom/comeback/data/ui/xj/bean/Special;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Special;->getData()Lcom/comeback/data/ui/xj/bean/Special$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->getRow()Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->v()V

    .line 3
    iput-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->f:Lcom/comeback/data/ui/xj/bean/Special;

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1, v1}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lf/a/a/a/l/g;->s:Z

    .line 6
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Special;->getData()Lcom/comeback/data/ui/xj/bean/Special$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->getVodrows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public static w(Landroid/content/Context;Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/xj/SpecialDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/xj/SpecialDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    iput-object v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    const-string v0, "XgY="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "FAQFVl1BAAE1"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 4
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;->e()V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    return-void

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->f:Lcom/comeback/data/ui/xj/bean/Special;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k()Lf/j/a/a/f/i;

    .line 3
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getSpid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->g:Ljava/lang/String;

    .line 7
    :cond_1
    invoke-static {}, Lf/e/a/j/s0/g/b;->a()Lf/e/a/j/s0/g/a;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Lf/e/a/j/s0/g/a;->c(Ljava/lang/String;)Lm/e;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/comeback/data/ui/xj/SpecialDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/xj/SpecialDetailActivity$a;-><init>(Lcom/comeback/data/ui/xj/SpecialDetailActivity;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->v()V

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->h:Z

    .line 3
    new-instance v0, Lf/a/a/a/l/m;

    invoke-direct {v0}, Lf/a/a/a/l/m;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v2, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;

    iget-object v3, p0, Lcom/comeback/data/ui/xj/SpecialDetailActivity;->e:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-direct {v2, p0, v0, v3}, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;-><init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
