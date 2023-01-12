.class public Lcom/comeback/data/ui/gkj/ScreenActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "ScreenActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/gkj/ScreenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/ScreenActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/ScreenActivity;

    const-string v0, "UQsGCA9THkEFKl0UDFtE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090201

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0UDFhE"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090202

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0UDFlE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090203

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList3:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0UDF5E"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090204

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList4:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEFKl0UDF9E"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090205

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList5:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/ScreenActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/gkj/ScreenActivity_ViewBinding;->c:Lcom/comeback/data/ui/gkj/ScreenActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList1:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList2:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList3:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList4:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/gkj/ScreenActivity;->rvList5:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

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
