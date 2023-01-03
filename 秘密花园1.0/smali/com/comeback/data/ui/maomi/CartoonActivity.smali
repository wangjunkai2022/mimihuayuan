.class public Lcom/comeback/data/ui/maomi/CartoonActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "CartoonActivity.java"


# instance fields
.field public mRvHot:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mRvNew:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mRvRecommend:Landroidx/recyclerview/widget/RecyclerView;
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

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/maomi/CartoonActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0099

    return v0
.end method

.method public e()V
    .locals 7

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvNew:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v1, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvNew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvNew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 10
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvHot:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v2, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v4, p0, Lcom/comeback/data/ui/maomi/CartoonActivity;->mRvHot:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "RwMEAQ=="

    .line 15
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 16
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 17
    :goto_0
    invoke-static {}, Lf/e/a/j/c0/m/d;->a()Lf/e/a/j/c0/m/a;

    move-result-object v4

    const-string v5, "RQcACwYeXF0X"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lf/e/a/j/c0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lf/e/a/j/c0/m/a;->g(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v4

    .line 18
    new-instance v5, Lcom/comeback/data/ui/maomi/CartoonActivity$a;

    invoke-direct {v5, p0, v0}, Lcom/comeback/data/ui/maomi/CartoonActivity$a;-><init>(Lcom/comeback/data/ui/maomi/CartoonActivity;Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;)V

    .line 19
    invoke-virtual {p0, v4, v5}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 20
    invoke-static {}, Lf/e/a/j/c0/m/d;->a()Lf/e/a/j/c0/m/a;

    move-result-object v0

    const-string v4, "QhIHBR8W"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lf/e/a/j/c0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lf/e/a/j/c0/m/a;->g(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 21
    new-instance v4, Lcom/comeback/data/ui/maomi/CartoonActivity$b;

    invoke-direct {v4, p0, v1}, Lcom/comeback/data/ui/maomi/CartoonActivity$b;-><init>(Lcom/comeback/data/ui/maomi/CartoonActivity;Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;)V

    .line 22
    invoke-virtual {p0, v0, v4}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 23
    invoke-static {}, Lf/e/a/j/c0/m/d;->a()Lf/e/a/j/c0/m/a;

    move-result-object v0

    const-string v1, "Rw0TEQcSSw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf/e/a/j/c0/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lf/e/a/j/c0/m/a;->g(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/comeback/data/ui/maomi/CartoonActivity$c;

    invoke-direct {v1, p0, v2}, Lcom/comeback/data/ui/maomi/CartoonActivity$c;-><init>(Lcom/comeback/data/ui/maomi/CartoonActivity;Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;)V

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    const-string p1, "0ufLjejb34/YgaDc"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "XgwHARM="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/comeback/data/ui/maomi/CartoonListActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string p1, "0tLsg9fl373bjrn3"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RQcACwYeXF0X"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/comeback/data/ui/maomi/CartoonListActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_2
    const-string p1, "0f7jjNTi36jHgKLX"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QhIHBR8W"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/comeback/data/ui/maomi/CartoonListActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_3
    const-string p1, "0f7Pgvf73oHNg7np"

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Rw0TEQcSSw=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/comeback/data/ui/maomi/CartoonListActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900c7 -> :sswitch_3
        0x7f0900c9 -> :sswitch_2
        0x7f0900cb -> :sswitch_1
        0x7f090293 -> :sswitch_0
    .end sparse-switch
.end method
