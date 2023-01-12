.class public Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DNActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/dn/DNActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/DNActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->b:Lcom/comeback/data/ui/dn/DNActivity;

    const-string v0, "UQsGCA9THl4nEHoCD01DClkGQwkOB1FcF0YTDxceRA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902ea

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEHoCD00="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/dn/DNActivity;->mTvNew:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGYCGwUOBlIMB0NLEldXUwtRExAFB0sQEAYHBB5UVh0CEw=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090303

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

    iput-object v1, p1, Lcom/comeback/data/ui/dn/DNActivity;->mTvRecommend:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4lD1EQCAsEDkVF"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090358

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/dn/DNActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "WgcXDAQXGRQQCVgLHQkXTA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900f4

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQAA1UVGwJE"

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090112

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->f:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06005b

    .line 19
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/comeback/data/ui/dn/DNActivity;->colorThird:I

    const v0, 0x7f0600c6

    .line 20
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/comeback/data/ui/dn/DNActivity;->colorWhite:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->b:Lcom/comeback/data/ui/dn/DNActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->b:Lcom/comeback/data/ui/dn/DNActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvNew:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvRecommend:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/dn/DNActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
