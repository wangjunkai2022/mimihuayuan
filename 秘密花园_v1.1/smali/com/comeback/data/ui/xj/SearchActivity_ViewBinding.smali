.class public Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "SearchActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/xj/SearchActivity;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/SearchActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/SearchActivity;

    const-string v0, "UQsGCA9THkAWB0YEECMNG0IWRA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090220

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    const-string v0, "UQsGCA9THkEWBU0EFA8RPV4HFEM="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901da

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkcFKFs1HRkWB0NF"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090137

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/comeback/data/ui/xj/SearchActivity;->tvNoResult:Landroid/view/View;

    const-string v0, "WgcXDAQXGRQQB1oEHQZE"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090056

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;Lcom/comeback/data/ui/xj/SearchActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/SearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/SearchActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/xj/SearchActivity;->searchInput:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/xj/SearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/xj/SearchActivity;->tvNoResult:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/xj/SearchActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
