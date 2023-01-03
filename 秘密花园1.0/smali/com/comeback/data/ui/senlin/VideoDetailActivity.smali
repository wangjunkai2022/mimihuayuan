.class public Lcom/comeback/data/ui/senlin/VideoDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "VideoDetailActivity.java"

# interfaces
.implements Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$a;


# instance fields
.field public d:Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

.field public e:Ljava/lang/String;

.field public mIvBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static r(Lcom/comeback/data/ui/senlin/VideoDetailActivity;Lcom/comeback/data/ui/senlin/bean/SenlinDetail;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    iput-object p1, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->d:Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;->getVod_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->mTvDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->d:Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;->getVod_content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->d:Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;->getVod_pic()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->mIvBg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    iget-object p0, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->d:Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    invoke-virtual {p0}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;->getVod_play_urlList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "39fngtHj3YvRg5DW"

    .line 10
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/senlin/VideoDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00af

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    invoke-direct {v0, p0, p0}, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$a;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 4

    .line 1
    invoke-static {}, Lf/e/a/j/i0/f/b;->a()Lf/e/a/j/i0/f/a;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VgE="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwcXBQIf"

    const-string v3, "XgYQ"

    invoke-static {v2, v0, v1, v3}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1, v0}, Lf/e/a/j/i0/f/a;->a(Ljava/util/HashMap;)Lm/e;

    move-result-object p1

    .line 6
    new-instance v0, Lf/e/a/j/i0/c;

    invoke-direct {v0, p0}, Lf/e/a/j/i0/c;-><init>(Lcom/comeback/data/ui/senlin/VideoDetailActivity;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
