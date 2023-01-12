.class public Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "TagAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

    const-string v0, "UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090320

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMlUAXw=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->tvTag:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THloFJVwCGwFE"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f2

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->ivCheck:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->tvTag:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->ivCheck:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;->c:Landroid/view/View;

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
