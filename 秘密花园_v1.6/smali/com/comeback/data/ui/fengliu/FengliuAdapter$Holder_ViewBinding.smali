.class public Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "FengliuAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNUAGDA9E"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvState:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFL1oTCgVE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ce

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ1ADCg8QGBA="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090298

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvAddress:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const-string v0, "WgcXDAQXGRQEB0AEEE0="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09013c

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvState:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->tvAddress:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuAdapter$Holder_ViewBinding;->c:Landroid/view/View;

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
