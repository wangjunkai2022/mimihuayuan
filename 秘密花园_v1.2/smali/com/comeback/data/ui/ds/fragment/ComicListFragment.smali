.class public Lcom/comeback/data/ui/ds/fragment/ComicListFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "ComicListFragment.java"


# instance fields
.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
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

.method public static h(Ljava/util/List;)Lcom/comeback/data/ui/ds/fragment/ComicListFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;)",
            "Lcom/comeback/data/ui/ds/fragment/ComicListFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "WwsQEA=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    new-instance p0, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;

    invoke-direct {p0}, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "WwsQEA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0c014d

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    new-instance v0, Lcom/comeback/data/ui/ds/adapter/RealTimeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/ds/adapter/RealTimeAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/ds/fragment/ComicListFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
