.class public Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AddCollectActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/main/AddCollectActivity;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/AddCollectActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/AddCollectActivity;

    const-string v0, "UQsGCA9THkcFM0YLXw=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09032d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/main/AddCollectActivity;->tvUrl:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THlYHKFUKHU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090083

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/comeback/data/ui/main/AddCollectActivity;->etName:Landroid/widget/EditText;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902fe

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;Lcom/comeback/data/ui/main/AddCollectActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/AddCollectActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->b:Lcom/comeback/data/ui/main/AddCollectActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/main/AddCollectActivity;->tvUrl:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/main/AddCollectActivity;->etName:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/comeback/data/ui/main/AddCollectActivity_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
