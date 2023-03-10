.class public Lcom/comeback/data/ui/xj/MainActivity;
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
    new-instance v0, Lf/e/a/j/s0/a;

    invoke-direct {v0, p0}, Lf/e/a/j/s0/a;-><init>(Lcom/comeback/data/ui/xj/MainActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/xj/MainActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00c9

    return v0
.end method

.method public e()V
    .locals 9

    .line 1
    sget-object v0, Lf/e/a/k/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lf/e/a/k/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0c00e7

    .line 2
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f090327

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902e2

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902ab

    .line 6
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902a1

    .line 7
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090355

    .line 8
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v8, "0P3Gjerg3Yn1"

    .line 9
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v8, Lf/e/a/j/s0/d;

    invoke-direct {v8, p0, v3}, Lf/e/a/j/s0/d;-><init>(Lcom/comeback/data/ui/xj/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0x8

    .line 11
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "3sT6jP760ZT1j5b2nvbujr3Dhv3DlIKHleyQiMTmhs21hP34jeGU1efY0cPJgtfO2N7vjMTE3pv+g6Tpke3ug5j3"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const-string v0, "FFBVVlJBfw=="

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    .line 19
    new-instance v3, Lcom/comeback/data/ui/xj/fragment/HomeFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/xj/fragment/HomeFragment;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/comeback/data/ui/xj/fragment/ChannelFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/xj/fragment/ChannelFragment;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/comeback/data/ui/xj/fragment/ShortFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/xj/fragment/ShortFragment;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/comeback/data/ui/xj/fragment/HotFragment;

    invoke-direct {v3}, Lcom/comeback/data/ui/xj/fragment/HotFragment;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v3, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-static {v3, v4, v0}, Lf/b/a/a/a;->D(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 24
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v3, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/comeback/data/ui/xj/MainActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v2, v5}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/comeback/data/widget/CustomViewPager;->setScrollable(Z)V

    .line 26
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 27
    iget-object v0, p0, Lcom/comeback/data/ui/xj/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/comeback/data/ui/xj/MainActivity;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

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

    packed-switch p1, :pswitch_data_0

    return v1

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/xj/MainActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090150
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
