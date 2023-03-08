.class public Lcom/comeback/data/ui/ins/InsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/ins/InsActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/InsActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ins/InsActivity_ViewBinding;->b:Lcom/comeback/data/ui/ins/InsActivity;

    const-string v0, "UQsGCA9THl0SEF0AGR4KBFlF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v2, 0x7f09015e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p1, Lcom/comeback/data/ui/ins/InsActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/widget/CustomViewPager;

    iput-object p2, p1, Lcom/comeback/data/ui/ins/InsActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/InsActivity_ViewBinding;->b:Lcom/comeback/data/ui/ins/InsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/ins/InsActivity_ViewBinding;->b:Lcom/comeback/data/ui/ins/InsActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/ins/InsActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/ins/InsActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
