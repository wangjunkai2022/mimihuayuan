.class public Lcom/comeback/data/ui/hgl/MyLiveActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "MyLiveActivity.java"


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
    new-instance v0, Lf/e/a/j/p/a;

    invoke-direct {v0, p0}, Lf/e/a/j/p/a;-><init>(Lcom/comeback/data/ui/hgl/MyLiveActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    const-string v0, "0f7Pjcni0LLggaDWnNHGj4/pAhQbm4ytluydg8DghfWBjd/oj8uy287b0cnxgsDu09rogePkWEMDg7nUneXMjZrBhtzTl4SMlPKcgeTGismmi+L3hM+11ff53Nfaj8fM0szVg/H336fcgLjmm+rh"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/comeback/data/ui/hgl/MyLiveActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0064

    return v0
.end method

.method public e()V
    .locals 6

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lcom/comeback/data/ui/hgl/fragment/HotFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/hgl/fragment/HotFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;->n(Z)Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->b:Ljava/util/ArrayList;

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "VAoCCgUWVQI="

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    new-instance v3, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/hgl/fragment/ChannelFragment;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v2, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->b:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v5}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0, v4}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/hgl/MyLiveActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09015e -> :sswitch_2
        0x7f09015f -> :sswitch_1
        0x7f09016a -> :sswitch_0
    .end sparse-switch
.end method
