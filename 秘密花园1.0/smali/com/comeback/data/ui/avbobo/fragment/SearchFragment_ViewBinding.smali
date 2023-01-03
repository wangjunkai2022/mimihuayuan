.class public Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

    const-string v0, "UQsGCA9THl4lD1EQKAsEDkVF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f09034c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THl4nB1YrGRMMHkNF"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkAWB0YEECMNG0IWRA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090220

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->searchInput:Landroid/widget/EditText;

    const-string v0, "UQsGCA9THkcFNVEGCgkLTBcDDQBLHlxHGwlQR18ZBgpFAQtD"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090301

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "UQsGCA9THkcFNVEGCgkLTA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iput-object p2, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->b:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->mViewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->searchInput:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
