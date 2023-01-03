.class public Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;
.super Ljava/lang/Object;
.source "CucumberShortActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/CucumberShortActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

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

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvRecommend:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvGirl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvChoice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvChoice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvGirl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvRecommend:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->l(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvChoice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvRecommend:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->m(Landroid/widget/TextView;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity$a;->a:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvGirl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->l(Landroid/widget/TextView;)V

    :cond_2
    :goto_0
    return-void
.end method
