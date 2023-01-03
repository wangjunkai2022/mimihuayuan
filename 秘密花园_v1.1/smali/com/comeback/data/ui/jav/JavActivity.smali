.class public Lcom/comeback/data/ui/jav/JavActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "JavActivity.java"


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
    new-instance v0, Lf/e/a/j/u/a;

    invoke-direct {v0, p0}, Lf/e/a/j/u/a;-><init>(Lcom/comeback/data/ui/jav/JavActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/jav/JavActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/jav/JavActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0075

    return v0
.end method

.method public e()V
    .locals 7

    .line 1
    sget-object v0, Lf/e/a/k/b;->g0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lf/e/a/k/b;->g0:Ljava/lang/String;

    sput-object v0, Lf/e/a/j/u/e/a;->a:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->b:Ljava/util/ArrayList;

    .line 6
    new-instance v2, Lcom/comeback/data/ui/jav/fragment/RankFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/jav/fragment/RankFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/jav/fragment/SearchFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/jav/fragment/SearchFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/jav/fragment/ActorFragment;

    invoke-direct {v2}, Lcom/comeback/data/ui/jav/fragment/ActorFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v2, p0, Lcom/comeback/data/ui/jav/JavActivity;->b:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v2, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/jav/JavActivity;->b:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 12
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v3, 0x7f090174

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/jav/JavActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v3, p0, Lcom/comeback/data/ui/jav/JavActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 14
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-string v3, "XQMVOx8aSUA="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v0, 0x7f0c00e2

    .line 17
    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 18
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f09031c

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902d9

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902a4

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09029a

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09034a

    .line 23
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "0P3Gjerg3Yn1"

    .line 24
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v6, Lf/e/a/j/u/b;

    invoke-direct {v6, p0, v1}, Lf/e/a/j/u/b;-><init>(Lcom/comeback/data/ui/jav/JavActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 26
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 28
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0f7Pjcni0LLggozckMzijKPKh97llKyZlumDgefPheKJjd/ojO+y1OfT0drJgszc0MXYgsbW3LbFgo/xkcjygrbx"

    .line 29
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public synthetic l(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09015b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f090173

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090179

    if-eq p1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/JavActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    return-void
.end method
