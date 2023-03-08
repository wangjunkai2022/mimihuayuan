.class public Lcom/comeback/data/ui/jhlf/JHLFActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "JHLFActivity.java"


# static fields
.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public flProgress:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public loading:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvAd:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/jhlf/JHLFActivity;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    const-class v1, Lf/e/a/j/w/h/c;

    monitor-enter v1

    .line 2
    :try_start_0
    sput-object v0, Lf/e/a/j/w/h/c;->c:Lf/e/a/j/w/h/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v1

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lf/e/a/j/w/h/c;->d:Z

    .line 5
    invoke-static {}, Lf/e/a/j/w/h/c;->a()Lf/e/a/j/w/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/w/h/a;->c()Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lf/e/a/j/w/g;

    invoke-direct {v1, p0}, Lf/e/a/j/w/g;-><init>(Lcom/comeback/data/ui/jhlf/JHLFActivity;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v1

    throw p0

    .line 9
    :cond_0
    throw v0
.end method

.method public static m(Lcom/comeback/data/ui/jhlf/JHLFActivity;Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;->getAd2()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->tv_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    sget-object v1, Lcom/comeback/data/ui/jhlf/JHLFActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;->getWebSite()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    new-instance v0, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object p0, p0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c001d

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {}, Lf/e/a/j/w/h/c;->a()Lf/e/a/j/w/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/w/h/a;->c()Lm/e;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/comeback/data/ui/jhlf/JHLFActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/jhlf/JHLFActivity$a;-><init>(Lcom/comeback/data/ui/jhlf/JHLFActivity;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
