.class public Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;
.super Ld/c/b;
.source "AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding;-><init>(Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding;Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;->c:Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding$a;->c:Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->a:Lcom/comeback/data/widget/viewpager/AdPagerAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/widget/viewpager/AdPagerAdapter;->e:Lcom/comeback/data/widget/viewpager/AdPagerAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->b:Lf/e/a/g/a;

    invoke-interface {v0, p1}, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$a;->a(Lf/e/a/g/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->b:Lf/e/a/g/a;

    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
