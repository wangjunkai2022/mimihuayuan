.class public Lcom/comeback/data/ui/aimeiju/AimeijuActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "AimeijuActivity.java"


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

.field public c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

.field public navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;
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
    new-instance v0, Lf/e/a/j/a/a;

    invoke-direct {v0, p0}, Lf/e/a/j/a/a;-><init>(Lcom/comeback/data/ui/aimeiju/AimeijuActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c001f

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->b:Ljava/util/ArrayList;

    const-string v1, "Bw=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->t(Ljava/lang/String;)Lcom/comeback/data/ui/aimeiju/HomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->b:Ljava/util/ArrayList;

    const-string v1, "Bg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->t(Ljava/lang/String;)Lcom/comeback/data/ui/aimeiju/HomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->b:Ljava/util/ArrayList;

    const-string v1, "BQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->t(Ljava/lang/String;)Lcom/comeback/data/ui/aimeiju/HomeFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->b:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->D(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09016b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f090172

    if-eq p1, v0, :cond_1

    const v0, 0x7f090178

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1
.end method
