.class public Lcom/comeback/data/ui/cm/fragment/RankFragment$a;
.super Ljava/lang/Object;
.source "RankFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cm/fragment/RankFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cm/fragment/RankFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/fragment/RankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cm/fragment/RankFragment;

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
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cm/fragment/RankFragment;

    iget-object p1, p1, Lcom/comeback/data/ui/cm/fragment/RankFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0901d5

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cm/fragment/RankFragment;

    iget-object p1, p1, Lcom/comeback/data/ui/cm/fragment/RankFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0901d2

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/cm/fragment/RankFragment$a;->a:Lcom/comeback/data/ui/cm/fragment/RankFragment;

    iget-object p1, p1, Lcom/comeback/data/ui/cm/fragment/RankFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0901d4

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method
