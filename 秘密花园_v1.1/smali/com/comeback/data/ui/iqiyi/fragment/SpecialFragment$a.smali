.class public Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "SpecialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;->g:Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;

    iput p2, p0, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/iqiyi/bean/VideoInfo;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;->g:Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;->m(Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment$a;->g:Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;->n(Lcom/comeback/data/ui/iqiyi/fragment/SpecialFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
