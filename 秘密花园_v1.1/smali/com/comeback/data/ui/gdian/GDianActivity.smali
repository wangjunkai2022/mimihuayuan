.class public Lcom/comeback/data/ui/gdian/GDianActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "GDianActivity.java"


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
    new-instance v0, Lf/e/a/j/l/a;

    invoke-direct {v0, p0}, Lf/e/a/j/l/a;-><init>(Lcom/comeback/data/ui/gdian/GDianActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/gdian/GDianActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0053

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

    iput-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lcom/comeback/data/ui/gdian/fragment/VideoFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/gdian/fragment/VideoFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/gdian/fragment/ImageFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/gdian/fragment/ImageFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/gdian/fragment/NovelFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/gdian/fragment/NovelFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/gdian/fragment/LiveFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/gdian/fragment/LiveFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->D(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    return v1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 5
    :sswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/GDianActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f09016b -> :sswitch_3
        0x7f09016c -> :sswitch_2
        0x7f090171 -> :sswitch_1
        0x7f09017b -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/l/e/e;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/l/e/e;->b:Lf/e/a/j/l/e/e;
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
