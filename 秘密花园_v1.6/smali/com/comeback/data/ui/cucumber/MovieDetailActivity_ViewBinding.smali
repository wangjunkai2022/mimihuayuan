.class public Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MovieDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlETGQMPTA=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvDetail:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFJVsLFA8AHxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900f4

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THloFJVsLFA8AHxA="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THloFNUAGCiIGClNF"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090115

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivStarHead:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFNUAGCiQCBlJF"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090318

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNUAGCiMNH0UNRA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090317

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNUAGCj0MGVxF"

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031a

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarWork:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFNUAGCj0MGVxF"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f09020e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvStarWork:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEfNUAGCk1DClkGQwkOB1FcF0YTCBY8Cg5AIQ8NCBhcV1Q="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901f0

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkEfNUAGCk0="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rlStar:Landroid/widget/RelativeLayout;

    .line 17
    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;Lcom/comeback/data/ui/cucumber/MovieDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkEFKl0UDE0="

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090200

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/MovieDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvDetail:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvIntro:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivCollect:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->ivStarHead:Lcom/comeback/data/widget/RatioImageView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarIntro:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->tvStarWork:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvStarWork:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rlStar:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/MovieDetailActivity_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
