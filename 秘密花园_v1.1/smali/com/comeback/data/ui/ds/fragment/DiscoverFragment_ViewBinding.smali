.class public Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;
.source "DiscoverFragment_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    const-string v0, "UQsGCA9THkcSBAVA"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090249

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THkcSBAZA"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024a

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THloFNVEGCgkLTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090110

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "UQsGCA9THloFNVEGCgkLTA=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->ivSearch:Landroid/widget/ImageView;

    .line 7
    iput-object p2, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding$a;-><init>(Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->tab1:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->tab2:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->ivSearch:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;->d:Landroid/view/View;

    .line 8
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshFragment_ViewBinding;->a()V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
