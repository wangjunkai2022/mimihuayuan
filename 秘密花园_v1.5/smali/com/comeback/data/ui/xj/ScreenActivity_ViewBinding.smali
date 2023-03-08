.class public Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "ScreenActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/xj/ScreenActivity;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/ScreenActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/ScreenActivity;

    const-string v0, "UQsGCA9THl4nB1ZWXw=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZVXw=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZUXw=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f09024f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZTXw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090250

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZSXw=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090251

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZRXw=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZQXw=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090253

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "UQsGCA9THl4nB1ZfXw=="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090254

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900ee

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;Lcom/comeback/data/ui/xj/ScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090112

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;Lcom/comeback/data/ui/xj/ScreenActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/ScreenActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/xj/ScreenActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab1:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab2:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab3:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab4:Lcom/google/android/material/tabs/TabLayout;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab5:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab6:Lcom/google/android/material/tabs/TabLayout;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab7:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/xj/ScreenActivity;->mTab8:Lcom/google/android/material/tabs/TabLayout;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/xj/ScreenActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
