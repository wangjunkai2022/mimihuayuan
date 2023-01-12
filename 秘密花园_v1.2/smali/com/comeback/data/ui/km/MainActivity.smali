.class public Lcom/comeback/data/ui/km/MainActivity;
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

.field public c:Lm/j;

.field public d:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

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
    new-instance v0, Lf/e/a/j/x/a;

    invoke-direct {v0, p0}, Lf/e/a/j/x/a;-><init>(Lcom/comeback/data/ui/km/MainActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/km/MainActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c007b

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

    iput-object v1, p0, Lcom/comeback/data/ui/km/MainActivity;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Lcom/comeback/data/ui/km/DisCoverFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/km/DisCoverFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/km/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/km/MineFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/km/MineFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "aAMTFDQFXEEAD1sJ"

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BkxSSlw="

    const-string v4, "aAYGEgIQXGwHH0QC"

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ehcuEQ=="

    const-string v4, "aAYGEgIQXGwFA0YUEQUN"

    .line 8
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUxTSlo="

    const-string v4, "aBEHDzQFXEEAD1sJ"

    .line 9
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BVE="

    const-string v4, "UwMXBQ=="

    .line 10
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cVNTISpEfQNBVQJRTiwiWwVUW1JbQwEBRycAXj5TV1I="

    const-string v4, "RAsE"

    .line 11
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UQABXQ1ADlEVXwBVTV9SCAEDUl1TRQ4EEl9QX0kJW14="

    .line 12
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lf/e/a/j/x/g/d;->a()Lf/e/a/j/x/g/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lf/e/a/j/x/g/a;->d(Ljava/util/Map;)Lm/e;

    move-result-object v1

    .line 14
    new-instance v2, Lf/e/a/j/x/f;

    invoke-direct {v2, p0}, Lf/e/a/j/x/f;-><init>(Lcom/comeback/data/ui/km/MainActivity;)V

    iput-object v2, p0, Lcom/comeback/data/ui/km/MainActivity;->c:Lm/j;

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 16
    iget-object v1, p0, Lcom/comeback/data/ui/km/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v2, p0, Lcom/comeback/data/ui/km/MainActivity;->b:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/km/MainActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/comeback/data/ui/km/MainActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090169

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090173

    if-eq p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/km/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/km/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v2
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/MainActivity;->c:Lm/j;

    .line 3
    iget-object v0, v0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    .line 4
    const-class v0, Lf/e/a/j/x/g/d;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lf/e/a/j/x/g/d;->b:Lf/e/a/j/x/g/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
