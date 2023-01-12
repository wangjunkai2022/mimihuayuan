.class public abstract Lcom/comeback/data/base/BaseRealmListActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "BaseRealmListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/a/g0;",
        ">",
        "Lcom/comeback/data/base/BaseActivity;"
    }
.end annotation


# instance fields
.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
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


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0030

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRealmListActivity;->o()Lg/a/j0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/comeback/data/base/BaseRealmListActivity;->tvHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/base/BaseRealmListActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRealmListActivity;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/comeback/data/base/BaseRealmListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRealmListActivity;->m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseRealmListActivity;->l()Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/comeback/data/base/BaseRealmListActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_1
    invoke-virtual {v0}, Lg/a/u;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Lg/a/u;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/a/g0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public abstract l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/comeback/data/base/BaseAbstractAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()Lg/a/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/j0<",
            "TT;>;"
        }
    .end annotation
.end method
