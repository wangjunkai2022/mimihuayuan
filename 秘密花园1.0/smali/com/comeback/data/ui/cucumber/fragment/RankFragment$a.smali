.class public Lcom/comeback/data/ui/cucumber/fragment/RankFragment$a;
.super Ljava/lang/Object;
.source "RankFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/RankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->ivBg:Landroid/widget/ImageView;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;->g:[I

    .line 3
    aget p1, v0, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
