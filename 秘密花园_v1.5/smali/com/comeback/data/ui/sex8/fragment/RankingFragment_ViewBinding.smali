.class public Lcom/comeback/data/ui/sex8/fragment/RankingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RankingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/fragment/RankingFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment_ViewBinding;->b:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THkEUMlUFXw=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901e1

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p1, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->rgTab:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment_ViewBinding;->b:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment_ViewBinding;->b:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->rgTab:Landroid/widget/RadioGroup;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
