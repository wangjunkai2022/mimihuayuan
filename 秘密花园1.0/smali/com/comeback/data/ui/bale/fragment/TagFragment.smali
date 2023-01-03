.class public Lcom/comeback/data/ui/bale/fragment/TagFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "TagFragment.java"


# instance fields
.field public rvTags:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvType:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvSelectCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static h(Lcom/comeback/data/ui/bale/fragment/TagFragment;Lcom/comeback/data/ui/bale/bean/Tags;)V
    .locals 6

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags;->getResult()Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;->getTags()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;-><init>()V

    const-string v2, "0ufLjejb"

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags;->getResult()Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean;->getAllTags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;->setList(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lf/e/a/j/d/d/b;

    invoke-direct {v3, p0}, Lf/e/a/j/d/d/b;-><init>(Lcom/comeback/data/ui/bale/fragment/TagFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/comeback/data/ui/bale/adapter/TagAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/adapter/TagAdapter$a;)V

    .line 7
    iget-object v2, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object v3, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment;->rvType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v2, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lf/e/a/j/d/d/c;

    invoke-direct {v4, p0, v1}, Lf/e/a/j/d/d/c;-><init>(Lcom/comeback/data/ui/bale/fragment/TagFragment;Lcom/comeback/data/ui/bale/adapter/TagAdapter;)V

    invoke-direct {v2, v3, v4}, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$a;)V

    .line 12
    iget-object p0, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment;->rvType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p0, v2, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, v0, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

    invoke-virtual {p0}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;->getList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f5

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/d/e/b;->a()Lf/e/a/j/d/e/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/d/e/a;->j()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/bale/fragment/TagFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/bale/fragment/TagFragment$a;-><init>(Lcom/comeback/data/ui/bale/fragment/TagFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
