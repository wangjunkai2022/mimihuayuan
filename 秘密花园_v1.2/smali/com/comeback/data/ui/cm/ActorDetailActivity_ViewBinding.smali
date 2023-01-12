.class public Lcom/comeback/data/ui/cm/ActorDetailActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "ActorDetailActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/cm/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/ActorDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cm/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/cm/ActorDetailActivity;

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THloFJFNA"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f0

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THloFLlEGHE0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f0900fc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFJVsSFh5E"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b1

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oBF00="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cd

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

    const-string p1, "UQsGCA9THlIDFnYGCiYCElgXF0M="

    .line 10
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090045

    invoke-static {p2, v1, p1, v0}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/cm/ActorDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cm/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/cm/ActorDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

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
