.class public Lf/e/a/j/i/i/a;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/i/i/a;->a:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/i/i/a;->a:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iput-object p1, v0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;->i:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lf/e/a/j/i/i/a;->a:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
