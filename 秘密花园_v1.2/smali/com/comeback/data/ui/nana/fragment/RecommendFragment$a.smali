.class public Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;
.super Lm/j;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/nana/bean/MenuBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;->e:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;->e:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->p(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/nana/bean/MenuBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/nana/fragment/RecommendFragment$a;->e:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/nana/fragment/RecommendFragment;->q(Lcom/comeback/data/ui/nana/fragment/RecommendFragment;Lcom/comeback/data/ui/nana/bean/MenuBean;I)V

    return-void
.end method
