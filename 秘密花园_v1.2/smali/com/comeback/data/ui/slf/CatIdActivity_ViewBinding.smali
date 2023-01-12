.class public Lcom/comeback/data/ui/slf/CatIdActivity_ViewBinding;
.super Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;
.source "CatIdActivity_ViewBinding.java"


# instance fields
.field public c:Lcom/comeback/data/ui/slf/CatIdActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/CatIdActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/slf/CatIdActivity_ViewBinding;->c:Lcom/comeback/data/ui/slf/CatIdActivity;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/slf/CatIdActivity;->tvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/CatIdActivity_ViewBinding;->c:Lcom/comeback/data/ui/slf/CatIdActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/slf/CatIdActivity_ViewBinding;->c:Lcom/comeback/data/ui/slf/CatIdActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/slf/CatIdActivity;->tvTitle:Landroid/widget/TextView;

    .line 4
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity_ViewBinding;->a()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
