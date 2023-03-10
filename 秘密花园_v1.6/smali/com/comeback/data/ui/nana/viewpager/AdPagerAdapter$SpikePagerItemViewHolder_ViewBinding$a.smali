.class public Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;
.super Ld/c/b;
.source "AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding;Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;->e:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->b:Lf/e/a/g/a;

    check-cast v0, Lf/e/a/j/h0/l/b;

    .line 5
    iget-object v0, v0, Lf/e/a/j/h0/l/b;->a:Lcom/comeback/data/ui/nana/fragment/RecommendFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/nana/MovieDetailActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->b:Lf/e/a/g/a;

    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
