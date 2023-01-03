.class public Lcom/comeback/data/ui/tv91/MainActivity;
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

.field public c:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

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
    new-instance v0, Lf/e/a/j/n0/a;

    invoke-direct {v0, p0}, Lf/e/a/j/n0/a;-><init>(Lcom/comeback/data/ui/tv91/MainActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/tv91/MainActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00bf

    return v0
.end method

.method public e()V
    .locals 7

    const-string v0, "FFMmVS5CfA=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/HomeFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/fragment/HomeFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/tv91/fragment/StarFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/fragment/StarFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->c:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/tv91/MainActivity;->b:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v3, 0x7f090174

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v3, p0, Lcom/comeback/data/ui/tv91/MainActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 13
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v3, "QxRaVTQHUEMA"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v0, v0, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v0, 0x7f0c00e2

    .line 16
    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 17
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f09031c

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902d9

    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902a4

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09029a

    .line 21
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09034a

    .line 22
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "0P3Gjerg3Yn1"

    .line 23
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v6, Lf/e/a/j/n0/e;

    invoke-direct {v6, p0, v1}, Lf/e/a/j/n0/e;-><init>(Lcom/comeback/data/ui/tv91/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 25
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 27
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "BkyGwumVp6+V9JmB7NSK66iH2cKN9pvcz+rcyM+C3P/S+f2N7P7fpcOOi/yd78aNpc+F8NWamIZ5VBqB6seF/4mE9NKC5obV69jTw8KD9/LfzcyL1//fuvOAqO6d19KMvuWK59aVoY2Uwo5TndrsjaDUjNjnm4mbleO6gsfBi9SsaFBKjeSe1s7X0+7/jtvg0fzVgdX73JfpiYjrn8rXg5DBherOlraQlfGUgcv/hP+zh+vPhM+11tXk0vnkj8fx0c7CjNTo3LbWgKbKnv7dj4/vh97tlomClf6bg8DhhfWB"

    .line 28
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_0
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
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 5
    :sswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f090169 -> :sswitch_3
        0x7f090171 -> :sswitch_2
        0x7f090178 -> :sswitch_1
        0x7f090179 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/comeback/data/ui/tv91/MainActivity;->c:Lcom/comeback/data/ui/tv91/fragment/NovelFragment;

    .line 2
    iget-object v1, v0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/tv91/fragment/NovelFragment;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
