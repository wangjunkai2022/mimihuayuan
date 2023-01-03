.class public Lcom/comeback/data/ui/bale/ScreenActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ScreenActivity.java"


# static fields
.field public static e:Lcom/comeback/data/ui/bale/bean/ScreenBean;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->d:I

    return-void
.end method

.method public static m(Landroid/content/Context;II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/bale/ScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "QwMELQ8="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XgY="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->b:I

    const-string v0, "QwMELQ8="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "FFNVVVNBCg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    sget-object v0, Lcom/comeback/data/ui/bale/ScreenActivity;->e:Lcom/comeback/data/ui/bale/bean/ScreenBean;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lf/e/a/j/d/e/b;->a()Lf/e/a/j/d/e/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/d/e/a;->f()Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/bale/ScreenActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/bale/ScreenActivity$a;-><init>(Lcom/comeback/data/ui/bale/ScreenActivity;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/bale/ScreenActivity;->l()V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 10

    .line 1
    sget-object v0, Lcom/comeback/data/ui/bale/ScreenActivity;->e:Lcom/comeback/data/ui/bale/bean/ScreenBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/bale/bean/ScreenBean;->getResult()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;

    .line 4
    invoke-virtual {v3}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;->getId()I

    move-result v3

    iget v4, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->c:I

    invoke-static {v3, v4}, Lcom/comeback/data/ui/bale/fragment/ScreenFragment;->o(II)Lcom/comeback/data/base/BaseFragment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    .line 10
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;

    invoke-virtual {v8}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 11
    iget v8, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->b:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;

    invoke-virtual {v9}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 12
    iput v7, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->d:I

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {v3, v4, v6, v1}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget v1, p0, Lcom/comeback/data/ui/bale/ScreenActivity;->d:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
