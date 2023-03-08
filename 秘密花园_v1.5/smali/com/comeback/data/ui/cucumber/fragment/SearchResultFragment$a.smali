.class public Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/cucumber/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    iput p2, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/VideoList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->m(Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/VideoList;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;->n(Lcom/comeback/data/ui/cucumber/fragment/SearchResultFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/VideoList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
