.class public Lcom/comeback/data/ui/isiyu/MainActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "MainActivity.java"


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
    new-instance v0, Lcom/comeback/data/ui/isiyu/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/isiyu/MainActivity$a;-><init>(Lcom/comeback/data/ui/isiyu/MainActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/isiyu/MainActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0071

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->b:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/isiyu/fragment/HomeFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/isiyu/fragment/NewFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/isiyu/fragment/NewFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/isiyu/fragment/SpecialFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/isiyu/fragment/SpecialFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->b:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->D(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->rgTab:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/isiyu/MainActivity;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
