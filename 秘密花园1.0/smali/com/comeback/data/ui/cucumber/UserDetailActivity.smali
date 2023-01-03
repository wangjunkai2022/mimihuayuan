.class public Lcom/comeback/data/ui/cucumber/UserDetailActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "UserDetailActivity.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public ivBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivHead:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rb1:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rb2:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VA0HAQ=="

    .line 2
    invoke-static {v1, v0, p1, p0, v0}, Lf/b/a/a/a;->v(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "VA0HAQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0041

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->c:Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/comeback/data/ui/cucumber/fragment/UserVideoFragment;->o(Ljava/lang/String;I)Lcom/comeback/data/ui/cucumber/fragment/UserVideoFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->b:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/comeback/data/ui/cucumber/fragment/UserVideoFragment;->o(Ljava/lang/String;I)Lcom/comeback/data/ui/cucumber/fragment/UserVideoFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->c:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;-><init>(Lcom/comeback/data/ui/cucumber/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 10
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/g/h/a;->g(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/comeback/data/ui/cucumber/UserDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/cucumber/UserDetailActivity$b;-><init>(Lcom/comeback/data/ui/cucumber/UserDetailActivity;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
