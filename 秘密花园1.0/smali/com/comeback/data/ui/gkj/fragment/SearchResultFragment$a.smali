.class public Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/gkj/bean/SpecialBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;

    iput p2, p0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/SpecialBean;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;->p(Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment$a;->g:Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;

    .line 5
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;->j:Ljava/lang/String;

    const-string v3, "Bg=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v3, v3}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v2

    .line 7
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 8
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/comeback/data/ui/gkj/fragment/SearchResultFragment;->j:Ljava/lang/String;

    const-string v4, "AQ=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 10
    invoke-static {v2, v3, v3}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v2

    .line 11
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 12
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_2
    :goto_0
    return-void
.end method
