.class public Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SecretGardenActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/main/SecretGardenActivity;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/SecretGardenActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    const-string v0, "UQsGCA9THkccCVgFGRhE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f090276

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "UQsGCA9THlESCFoCCk0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/viewpager/PageView;

    const v2, 0x7f090048

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/viewpager/PageView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    const-string v0, "UQsGCA9THkcFKFsTEQkGTA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/MarqueeTextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/MarqueeTextView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    const-string v0, "UQsGCA9THl8fKFsTEQkGTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090133

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fKFsTEQkGTA=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->llNotice:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;Lcom/comeback/data/ui/main/SecretGardenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl8fJ1BA"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090122

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->llAd:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THkEFJ1BA"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f3

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFMF0DHQVE"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090210

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvVideo:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKFsRHQZE"

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090204

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvNovel:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKlsSHg8NDBA="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090202

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvLoufeng:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKUAPHRhE"

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090206

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THloFOVYAXw=="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ee

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->iv_bg:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFOUICChkKBFlF"

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09032f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/main/SecretGardenActivity;->tv_version:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/SecretGardenActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->llNotice:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->llAd:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvAd:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvVideo:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvNovel:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvLoufeng:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->rvOther:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->iv_bg:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/main/SecretGardenActivity;->tv_version:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/comeback/data/ui/main/SecretGardenActivity_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
