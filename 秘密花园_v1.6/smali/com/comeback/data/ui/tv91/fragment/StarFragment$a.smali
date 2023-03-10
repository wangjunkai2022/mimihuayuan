.class public Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "StarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/fragment/StarFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/tv91/bean/StarBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/tv91/fragment/StarFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/StarFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;->g:Lcom/comeback/data/ui/tv91/fragment/StarFragment;

    iput p2, p0, Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tv91/bean/StarBean;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;->g:Lcom/comeback/data/ui/tv91/fragment/StarFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/tv91/fragment/StarFragment;->m(Lcom/comeback/data/ui/tv91/fragment/StarFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/fragment/StarFragment$a;->g:Lcom/comeback/data/ui/tv91/fragment/StarFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/tv91/fragment/StarFragment;->n(Lcom/comeback/data/ui/tv91/fragment/StarFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/StarBean;->getMessage()Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/StarBean$MessageBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
