.class public Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CucumberShortActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/CucumberShortActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    const-string v0, "UQsGCA9THl4nEHcPFwMADhBCAgoPU1RWBw5bA1hNDAV0DgoHAFQ="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09029e

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEHcPFwMADhA="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvChoice:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;Lcom/comeback/data/ui/cucumber/CucumberShortActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGYCGwUOBlIMB0NLEldXUwtRExAFB0sQDQ0nBxpaWFQ="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902f9

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGYCGwUOBlIMB0M="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvRecommend:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;Lcom/comeback/data/ui/cucumber/CucumberShortActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEHMOCgZES1YMB0QGFk1bHAIUQBcEIAdeAQhD"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902bb

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEHMOCgZE"

    .line 12
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvGirl:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;Lcom/comeback/data/ui/cucumber/CucumberShortActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4lD1EQCAsEDkVF"

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f09034d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060021

    .line 17
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->colorThird:I

    const v0, 0x7f0600c5

    .line 18
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->colorWhite:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/CucumberShortActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvChoice:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvRecommend:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mTvGirl:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberShortActivity_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
