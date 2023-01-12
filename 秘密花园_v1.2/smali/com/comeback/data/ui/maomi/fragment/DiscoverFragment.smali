.class public Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "DiscoverFragment.java"


# instance fields
.field public g:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

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

    const v0, 0x7f0c0130

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "RwMEAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-static {}, Lf/e/a/j/d0/m/d;->a()Lf/e/a/j/d0/m/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/d0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/d0/m/a;->h(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment$a;-><init>(Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment;->g:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/fragment/DiscoverFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090131

    if-eq p1, v0, :cond_2

    const v0, 0x7f090133

    if-eq p1, v0, :cond_1

    const v0, 0x7f090139

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/NovelActivity;->n(Landroid/content/Context;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/CartoonActivity;->l(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/VoiceActivity;->n(Landroid/content/Context;)V

    return-void
.end method
