.class public Lcom/comeback/data/ui/tv91/fragment/TypeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "TypeFragment.java"


# instance fields
.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

.field public h:Lcom/comeback/data/ui/tv91/bean/Tags;

.field public ivCancel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
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


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0141

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;-><init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/tv91/adapter/TagAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->g:Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-static {}, Lf/e/a/j/o0/i/b;->a()Lf/e/a/j/o0/i/a;

    move-result-object v0

    invoke-static {}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->buildTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/o0/i/a;->d(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$b;-><init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method
