.class public Lcom/comeback/data/ui/cucumber/ActorDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ActorDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/cucumber/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/ActorDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/ActorDetailActivity;

    const-string v0, "UQsGCA9THkUaA0M3GQ0GGRA="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090357

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const-string v0, "UQsGCA9THloFJFNA"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f0

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->ivBg:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THloFLlEGHE0="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f0900fc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFJVsSFh5E"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b1

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oBF00="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cd

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkERVxM="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->rb1:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkERVBM="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0901c7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->rb2:Landroid/widget/RadioButton;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkdF"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901a2

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p1, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->radioGroup:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/ActorDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/cucumber/ActorDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->ivBg:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->rb1:Landroid/widget/RadioButton;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->rb2:Landroid/widget/RadioButton;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->radioGroup:Landroid/widget/RadioGroup;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
