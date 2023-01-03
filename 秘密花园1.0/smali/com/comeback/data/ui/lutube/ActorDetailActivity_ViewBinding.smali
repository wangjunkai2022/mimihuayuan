.class public Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "ActorDetailActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    const-string v0, "UQsGCA9THloFLlEGHE0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900fa

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->ivHead:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902dc

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJVsSFh5E"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902aa

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIFsLFAUUTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902ba

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "UQsGCA9THkcFIFsLFAUUTA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    .line 8
    iput-object p2, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;Lcom/comeback/data/ui/lutube/ActorDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->c:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->ivHead:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvFollow:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
