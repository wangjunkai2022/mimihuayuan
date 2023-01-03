.class public Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment_ViewBinding;
.super Ljava/lang/Object;
.source "Rang2Fragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    const-string v0, "UQsGCA9THkEFIUEOHA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f9

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvGuide:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFJ1cTFxhE"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f2

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKFEQXw=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090203

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvNew:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKUYOHwMNCltF"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090205

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvOriginal:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFM1oEFxwGGRA="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f09020f

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvUncover:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFJVsRHRhE"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvCover:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvGuide:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvNew:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvOriginal:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvUncover:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/Rang2Fragment;->rvCover:Landroidx/recyclerview/widget/RecyclerView;

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
