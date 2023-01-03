.class public Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;
.super Ljava/lang/Object;
.source "RankingFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/sex8/fragment/RankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/fragment/RankingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;->a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const/4 p1, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;->a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    iget-object p2, p2, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :sswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;->a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    iget-object p2, p2, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :sswitch_2
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;->a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    iget-object p2, p2, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 4
    :sswitch_3
    iget-object p2, p0, Lcom/comeback/data/ui/sex8/fragment/RankingFragment$a;->a:Lcom/comeback/data/ui/sex8/fragment/RankingFragment;

    iget-object p2, p2, Lcom/comeback/data/ui/sex8/fragment/RankingFragment;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901c6 -> :sswitch_3
        0x7f0901cf -> :sswitch_2
        0x7f0901d2 -> :sswitch_1
        0x7f0901d7 -> :sswitch_0
    .end sparse-switch
.end method
