.class public Lcom/comeback/data/ui/cucumber/CucumberActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "CucumberActivity.java"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public rgTab:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/cucumber/CucumberActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cucumber/CucumberActivity$a;-><init>(Lcom/comeback/data/ui/cucumber/CucumberActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/cucumber/CucumberActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c003e

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

    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/cucumber/fragment/ColumnFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/cucumber/fragment/RankFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->rgTab:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/CucumberActivity;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/g/h/c;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/g/h/c;->b:Lf/e/a/j/g/h/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
