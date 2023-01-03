.class public Lf/e/a/j/j0/b/b;
.super Ljava/lang/Object;
.source "LouFengDetailActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/j0/b/b;->a:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "09rJgNHJ3YzSgLXI"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lf/e/a/j/j0/b/b;->a:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf/e/a/j/j0/b/b;->a:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
