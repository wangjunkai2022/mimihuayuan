.class public Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "HotWordAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;

    const-string v0, "UQsGCA9THkcFKFUKHU1DClkGQwkOB1FcF0YTEBkeAAMQ"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902e5

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->tvName:Landroid/widget/TextView;

    .line 5
    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->tvName:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder_ViewBinding;->c:Landroid/view/View;

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
