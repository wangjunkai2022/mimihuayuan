.class public Lcom/comeback/data/ui/mimei/SearchActivity$a;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/mimei/bean/HotSearch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/mimei/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/SearchActivity$a;->e:Lcom/comeback/data/ui/mimei/SearchActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/HotSearch;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/SearchActivity$a;->e:Lcom/comeback/data/ui/mimei/SearchActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/mimei/SearchActivity;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/comeback/data/ui/mimei/adapter/TagAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/SearchActivity$a;->e:Lcom/comeback/data/ui/mimei/SearchActivity;

    new-instance v2, Lf/e/a/j/e0/b;

    invoke-direct {v2, p0}, Lf/e/a/j/e0/b;-><init>(Lcom/comeback/data/ui/mimei/SearchActivity$a;)V

    invoke-direct {v0, v1, v2}, Lcom/comeback/data/ui/mimei/adapter/TagAdapter;-><init>(Landroid/content/Context;Lcom/comeback/data/ui/mimei/adapter/TagAdapter$a;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/mimei/SearchActivity$a;->e:Lcom/comeback/data/ui/mimei/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/mimei/SearchActivity;->rvTags:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HotSearch;->getSuccess()Lcom/comeback/data/ui/mimei/bean/HotSearch$SuccessBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/HotSearch$SuccessBean;->getHot()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/SearchActivity$a;->e:Lcom/comeback/data/ui/mimei/SearchActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/mimei/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
