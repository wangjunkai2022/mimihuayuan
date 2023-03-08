.class public Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AimeijuActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/aimeiju/AimeijuActivity;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/AimeijuActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->b:Lcom/comeback/data/ui/aimeiju/AimeijuActivity;

    const-string v0, "UQsGCA9THl0SEF0AGR4KBFlF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v2, 0x7f09015e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p1, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09030b

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;Lcom/comeback/data/ui/aimeiju/AimeijuActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->b:Lcom/comeback/data/ui/aimeiju/AimeijuActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->b:Lcom/comeback/data/ui/aimeiju/AimeijuActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/comeback/data/ui/aimeiju/AimeijuActivity_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
