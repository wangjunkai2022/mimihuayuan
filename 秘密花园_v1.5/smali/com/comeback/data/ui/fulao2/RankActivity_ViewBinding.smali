.class public Lcom/comeback/data/ui/fulao2/RankActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RankActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fulao2/RankActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/RankActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/RankActivity_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/RankActivity;

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/RankActivity;->ivCover:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fulao2/RankActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/fulao2/RankActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/RankActivity_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/RankActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/RankActivity_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/RankActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/RankActivity;->ivCover:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/RankActivity;->tvTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/RankActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
