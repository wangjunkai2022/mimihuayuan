.class public Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "SearchActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/gkj/SearchActivity;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/SearchActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/SearchActivity;

    const-string v0, "UQsGCA9THlYHNVEGCgkLTA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090084

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/SearchActivity;->etSearch:Landroid/widget/EditText;

    const-string v0, "UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18JAgVUBw9D"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900ef

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THloFJVUJGw8PTA=="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/gkj/SearchActivity;->ivCancel:Landroid/widget/ImageView;

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;Lcom/comeback/data/ui/gkj/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkEFNFEEFwcODlkGRA=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090208

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/gkj/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/SearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/SearchActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/SearchActivity;->etSearch:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/SearchActivity;->ivCancel:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/gkj/SearchActivity_ViewBinding;->d:Landroid/view/View;

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
